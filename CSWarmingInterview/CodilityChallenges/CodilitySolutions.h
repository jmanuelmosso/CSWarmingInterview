//
//  CodilitySolutions.h
//  CSWarmingInterview
//
//  Created by Manuel Mosso on 9/10/18.
//  Copyright © 2018 Manuel Mosso. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CodilitySolutions : NSObject
#pragma - mark Iterations Problems
+(void)testBinaryGapForNumber:(int)n;
#pragma - mark Arrays Problems
+(void)testCyclicRotationWithArray:(NSArray *)array rotations:(int)k;
+(void)testOddOccurrencesWithArray:(NSArray *)array;
#pragma - mark Time Complexity Problems
+(void)testPermMissingElementWithArray:(NSArray *)array;
@end
