//
//  CyclicRotation.h
//  CSWarmingInterview
//
//  Created by Manuel Mosso on 9/10/18.
//  Copyright © 2018 Manuel Mosso. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CyclicRotation : NSObject
+(NSMutableArray*)byByOneSolution:(NSMutableArray*)array rotations:(int)k;
+(NSMutableArray*)reverseBasedsolution:(NSMutableArray*)array rotations:(int)k;
@end
