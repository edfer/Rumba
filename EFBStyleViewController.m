//
//  EFBStyleViewController.m
//  Rumba
//
//  Created by Eduardo on 15/02/15.
//  Copyright (c) 2015 Edfer. All rights reserved.
//

#import "EFBStyleViewController.h"
#import "SamplePlayer.h"
#import "EFBWebViewController.h"


@interface EFBStyleViewController ()

@end

@implementation EFBStyleViewController

-(id) initWithModel:(EFBStyles *)aModel{
    
    if (self = [super initWithNibName:nil
                               bundle:nil]) {
        _model = aModel;
        self.title = self.model.rythmName;
        
        
    }
    return self;
}

/*
 
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}
*/
-(void) viewWillAppear:(BOOL)animated{
    
    [super viewWillAppear:animated];
    
    [self syncModelWithView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)playSampleFile:(id)sender{
    
    self.player = [SamplePlayer samplePlayer];
    [self.player playSoundData:self.model.soundSample];
    
}


-(IBAction)displayWebContent:(id)sender{
    
    EFBWebViewController * webVC = [[EFBWebViewController alloc]initWithModel:self.model];
    
    [self.navigationController pushViewController:webVC
                                         animated:NO];
    
}

-(void)syncModelWithView{
    
    self.rythmNameView.text = self.model.rythmName;
    self.historyView.text = self.model.history;
    self.photoView.image = self.model.photo;
    
    [self.historyView setNumberOfLines:0];
    
}

#pragma mark - splitVC Delegate

-(void) splitViewController:(UISplitViewController *)svc
    willChangeToDisplayMode:(UISplitViewControllerDisplayMode)displayMode{
    
    if (displayMode == UISplitViewControllerDisplayModePrimaryHidden) {
        self.navigationItem.rightBarButtonItem = svc.displayModeButtonItem;
    }else if (displayMode == UISplitViewControllerDisplayModeAllVisible){
        self.navigationItem.rightBarButtonItem = nil;
    }
    
}

#pragma mark - stylesTableViewControllerDelegate
-(void) stylesTableViewController:(EFBStylesTableViewController *)stylesCountVC
                   didSelectStyle:(EFBStyles *)model{
    
    self.model = model;
    //self.title = model.rythmName;
    [self syncModelWithView];
    
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
