//
//  EFBWebViewController.m
//  Rumba
//
//  Created by Eduardo on 16/02/15.
//  Copyright (c) 2015 Edfer. All rights reserved.
//

#import "EFBWebViewController.h"
#import "EFBStylesTableViewController.h"

@interface EFBWebViewController ()

@end

@implementation EFBWebViewController

-(id) initWithModel:(EFBStyles *)model{
    
    if (self = [super initWithNibName:nil
                               bundle:nil]){
    
    _model=model;
    self.title = self.model.rythmName;
        }
    return self;
    
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
    NSNotificationCenter *nc = [NSNotificationCenter defaultCenter];
    
    [nc addObserver:self
           selector:@selector(notifyThatRythmDidChange:)
               name:STYLE_NOTIFICATION_NAME
             object:nil];
    
    self.webView.delegate = self;
    
    [self syncWebModelWithView];


}
///*
-(BOOL)            webView:(UIWebView *)webView
shouldStartLoadWithRequest:(NSURLRequest *)request
            navigationType:(UIWebViewNavigationType)navigationType{
    
    if ((navigationType == UIWebViewNavigationTypeLinkClicked)||(UIWebViewNavigationTypeFormSubmitted)) {
        return NO;
    }else{
        return YES;
    }
}
//*/
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

-(void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    
    NSNotificationCenter *nc = [NSNotificationCenter defaultCenter];
    
    [nc removeObserver:self];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Notifications

-(void)notifyThatRythmDidChange:(NSNotification *)n{
    
    EFBStyles *newRythm = [n.userInfo objectForKey:STYLE_KEY];
    
    self.model = newRythm;
    
    [self syncWebModelWithView];
    
}

#pragma mark - Utils

-(void) syncWebModelWithView{
    
    NSURLRequest *r = [NSURLRequest
                       requestWithURL:self.model.webLink];
    
    [self.webView loadRequest:r];
}








@end
