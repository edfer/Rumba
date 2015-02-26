//
//  EFBStylesTableViewController.h
//  Rumba
//
//  Created by Eduardo on 16/02/15.
//  Copyright (c) 2015 Edfer. All rights reserved.
//

@import UIKit;
#import "EFBStylesCount.h"

#define TUMBAO 0
#define RUMBA 1
#define BOMBA 2
#define PLENA 3

#define STYLE_NOTIFICATION_NAME @"styleName"
#define STYLE_KEY @"key"

@class EFBStylesTableViewController;


@protocol StylesTableViewControllerDelegate <NSObject>

-(void) stylesTableViewController:(EFBStylesTableViewController *)stylesCountVC
                   didSelectStyle:(EFBStyles *)model;

@end

@interface EFBStylesTableViewController : UITableViewController <StylesTableViewControllerDelegate>

@property (strong, nonatomic) EFBStylesCount *model;
@property (weak, nonatomic) id <StylesTableViewControllerDelegate> delegate;

-(id) initWithModel:(EFBStylesCount *)aModel
          withStyle:(UITableViewStyle)aStyle;

@end
