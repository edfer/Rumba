//
//  EFBStylesCount.m
//  Rumba
//
//  Created by Eduardo on 16/02/15.
//  Copyright (c) 2015 Edfer. All rights reserved.
//

#import "EFBStylesCount.h"

@interface EFBStylesCount ()

@property (strong, nonatomic) NSArray *tumbao;
@property (strong, nonatomic) NSArray *rumba;
@property (strong, nonatomic) NSArray *bomba;
@property (strong, nonatomic) NSArray *plena;

@end

@implementation EFBStylesCount

-(NSUInteger)tumbaoCount{
    
    return [self.tumbao count];
}

-(NSUInteger)rumbaCount{
    
    return [self.rumba count];
}

-(NSUInteger)bombaCount{
    
    return [self.bomba count];
}

-(NSUInteger)plenaCount{
    
    return [self.plena count];
}

#pragma mark - modelos

-(id)init{
    
    if (self = [super init]) {
        
        
        
        NSBundle *bundle = [NSBundle mainBundle];
        
        NSURL *tumbaoWebURL = [NSURL URLWithString:@"http://en.wikipedia.org/wiki/Tumbao"];
        NSURL *tumbaoSoundURL = [bundle URLForResource:@"0679"
                                         withExtension:@"aiff"];
        NSData *tumbaoSoundData = [NSData dataWithContentsOfURL:tumbaoSoundURL];
        UIImage *tumbaoImage = [UIImage imageNamed:@"IMG_2595.JPG"];
        
        EFBStyles *tumbaoFile = [EFBStyles newStyleRythmName:@"Tumbao"
                                                 soundSample:tumbaoSoundData
                                                       photo:tumbaoImage
                                                     history:@"El Tumbao se puede usar en casi cualquier estilo de música caribeña"
                                                     webLink:tumbaoWebURL];
        
        NSURL *yambuWebURL = [NSURL URLWithString:@"http://en.wikipedia.org/wiki/Rumba#Guaguanc.C3.B3.2C_yamb.C3.BA.2C_columbia"];
        NSURL *yambuSoundURL = [bundle URLForResource:@"0679"
                                        withExtension:@"aiff"];
        NSData *yambuSoundData = [NSData dataWithContentsOfURL:yambuSoundURL];
        UIImage *yambuImage = [UIImage imageNamed:@"IMG_2596.JPG"];
        
        EFBStyles *yambuFile = [EFBStyles newStyleRythmName:@"Yambu"
                                                soundSample:yambuSoundData
                                                      photo:yambuImage
                                                    history:@"Primera fase de la Rumba"
                                                    webLink:yambuWebURL];
        
        EFBStyles *rumbaColombia = [[EFBStyles alloc]initWithRythmName:@"Rumba Colombia"];
        
        EFBStyles *guaguanco =[[EFBStyles alloc]initWithRythmName:@"Guaguanco"];
        
        EFBStyles *bomba = [[EFBStyles alloc]initWithRythmName:@"Bomba"];
        
        EFBStyles *plena = [[EFBStyles alloc]initWithRythmName:@"Plena"];
        
        self.tumbao = @[tumbaoFile];
        self.rumba = @[yambuFile, rumbaColombia, guaguanco];
        self.bomba = @[bomba];
        self.plena = @[plena];
        
    }
    return self;
    
}



#pragma mark - indexes
-(EFBStyles *)tumbaoStyleAtIndex:(NSUInteger)index{
    
    return [self.tumbao objectAtIndex:index];
    
}
-(EFBStyles *)rumbaStyleAtIndex:(NSUInteger)index{
    
   return  [self.rumba objectAtIndex:index];
    
}


-(EFBStyles *)bombaStyleAtIndex:(NSUInteger)index{
    
    return [self.bomba objectAtIndex:index];
    
}
-(EFBStyles *)plenaStyleAtIndex:(NSUInteger)index{
    
    return  [self.plena objectAtIndex:index];

}




@end
