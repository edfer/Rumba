//
//  EFBStyles.h
//  Rumba
//
//  Created by Eduardo on 15/02/15.
//  Copyright (c) 2015 Edfer. All rights reserved.
//

@import Foundation;
@import UIKit;

@interface EFBStyles : NSObject

@property (strong, nonatomic) NSString * rythmName;
@property (strong, nonatomic) NSData * soundSample;
@property (strong, nonatomic) UIImage * photo;
@property (strong, nonatomic) NSString * history;
@property (strong, nonatomic) NSURL *webLink;

// Class method.

+(instancetype) newStyleRythmName:(NSString *) aName
                      soundSample:(NSData *) aSample
                            photo:(UIImage *)aPhoto
                          history:(NSString *) theHistory
                          webLink:(NSURL *)newLink;;


// Designated.

-(id) initWithRythmName:(NSString *) aName
            soundSample:(NSData *) aSample
                  photo:(UIImage *)aPhoto
                history:(NSString *) theHistory
                webLink:(NSURL *)newLink;

-(id) initWithRythmName:(NSString *) aName;
@end
