//
//  EFBStylesCount.h
//  Rumba
//
//  Created by Eduardo on 16/02/15.
//  Copyright (c) 2015 Edfer. All rights reserved.
//

@import Foundation;
#import "EFBStyles.h"

@interface EFBStylesCount : NSObject

@property (readonly, nonatomic) NSUInteger tumbaoCount;
@property (readonly, nonatomic) NSUInteger rumbaCount;
@property (readonly, nonatomic) NSUInteger bombaCount;
@property (readonly, nonatomic) NSUInteger plenaCount;


-(EFBStyles *)tumbaoStyleAtIndex:(NSUInteger)index;
-(EFBStyles *)rumbaStyleAtIndex:(NSUInteger)index;
-(EFBStyles *)bombaStyleAtIndex:(NSUInteger)index;
-(EFBStyles *)plenaStyleAtIndex:(NSUInteger)index;


@end
