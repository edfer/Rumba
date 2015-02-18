//
//  SamplePlayer.m
//  Rumba
//
//  Created by Eduardo on 15/02/15.
//  Copyright (c) 2015 Edfer. All rights reserved.
//

#import "SamplePlayer.h"

@implementation SamplePlayer

+(id)samplePlayer{
    
    return [[[self class] alloc] init];
}

-(void)playSoundData:(NSData *) data{
    
    NSError *err = nil;
    
    self.player = [[AVAudioPlayer alloc] initWithData:data error:&err];
    self.player.numberOfLoops = 0;
    
    if (err) {
        NSLog(@"Error reproducing %@", err);
    }else{
        
        [self.player play];
    }
    
}

-(void)playSampleFile:(NSURL *) aSoundFile{
    
    NSData *soundData = [NSData dataWithContentsOfURL:aSoundFile];
    
    [self playSoundData:soundData];
    
}


@end
