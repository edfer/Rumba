//
//  EFBWebViewController.h
//  Rumba
//
//  Created by Eduardo on 16/02/15.
//  Copyright (c) 2015 Edfer. All rights reserved.
//

@import UIKit;
#import "EFBStyles.h"

@interface EFBWebViewController : UIViewController <UIWebViewDelegate>

@property (strong, nonatomic) EFBStyles *model;
@property (weak, nonatomic) IBOutlet UIWebView *webView;
//@property (weak, nonatomic) IBOutlet UIActivityViewController *activityView;

-(id) initWithModel:(EFBStyles *)model;

@end
