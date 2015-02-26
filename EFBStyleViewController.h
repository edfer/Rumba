//
//  EFBStyleViewController.h
//  Rumba
//
//  Created by Eduardo on 15/02/15.
//  Copyright (c) 2015 Edfer. All rights reserved.
//

@import UIKit;
#import "EFBStyles.h"
#import "SamplePlayer.h"
#import "EFBStylesTableViewController.h"

@interface EFBStyleViewController : UIViewController <UISplitViewControllerDelegate, StylesTableViewControllerDelegate>

@property (strong, nonatomic) EFBStyles *model;

@property (strong, nonatomic) IBOutlet UILabel *rythmNameView;
@property (strong, nonatomic) IBOutlet UILabel *historyView;
@property (weak, nonatomic) IBOutlet UIImageView *photoView;
@property (strong, nonatomic) SamplePlayer *player;

-(id) initWithModel:(EFBStyles *)aModel;

-(IBAction)playSampleFile:(id)sender;
-(IBAction)displayWebContent:(id)sender;


@end
