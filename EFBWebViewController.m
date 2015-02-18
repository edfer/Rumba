//
//  EFBWebViewController.m
//  Rumba
//
//  Created by Eduardo on 16/02/15.
//  Copyright (c) 2015 Edfer. All rights reserved.
//

#import "EFBWebViewController.h"

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

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
