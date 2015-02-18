//
//  SamplePlayer.h
//  Rumba
//
//  Created by Eduardo on 15/02/15.
//  Copyright (c) 2015 Edfer. All rights reserved.
//

@import Foundation;
@import AVFoundation;

@interface SamplePlayer : NSObject

@property (retain) AVAudioPlayer *player;

+(id)samplePlayer;

-(void)playSampleFile:(NSURL *) aSoundFile;
-(void)playSoundData:(NSData *) data;



@end
