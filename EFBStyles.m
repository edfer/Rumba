//
//  EFBStyles.m
//  Rumba
//
//  Created by Eduardo on 15/02/15.
//  Copyright (c) 2015 Edfer. All rights reserved.
//

#import "EFBStyles.h"

@implementation EFBStyles








// Class method.

+(instancetype) newStyleRythmName:(NSString *) aName
                      soundSample:(NSData *) aSample
                            photo:(UIImage *)aPhoto
                          history:(NSString *) theHistory
                          webLink:(NSURL *)newLink{
    
    return [[self alloc] initWithRythmName:aName
                               soundSample:aSample
                                     photo:aPhoto
                                   history:theHistory
                                   webLink:newLink];
    
}


// Designated.

-(id) initWithRythmName:(NSString *) aName
            soundSample:(NSData *) aSample
                  photo:(UIImage *)aPhoto
                history:(NSString *) theHistory
                webLink:(NSURL *)newLink{
    
    if (self = [super init]) {
       
        _rythmName = aName;
        _soundSample = aSample;
        _photo = aPhoto;
        _history = theHistory;
        _webLink = newLink;
        
    }
    
    return self;
}

@end
