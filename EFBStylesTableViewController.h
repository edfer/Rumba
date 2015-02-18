//
//  EFBStylesTableViewController.h
//  Rumba
//
//  Created by Eduardo on 16/02/15.
//  Copyright (c) 2015 Edfer. All rights reserved.
//

@import UIKit;
#import "EFBStylesCount.h"

@class EFBStylesTableViewController;


@protocol StylesTableViewControllerDelegate <NSObject>

-(void) stylesTableViewController:(EFBStylesTableViewController *)stylesCountVC
                   didSelectStyle:(EFBStyles *)model;

@end

@interface EFBStylesTableViewController : UITableViewController

@property (strong, nonatomic) EFBStylesCount *model;
@property (weak, nonatomic) id <StylesTableViewControllerDelegate> delegate;

-(id) initWithModel:(EFBStylesCount *)aModel
          withStyle:(UITableViewStyle)aStyle;

@end
