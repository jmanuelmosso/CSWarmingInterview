//
//  CodilitySolutions.m
//  CSWarmingInterview
//
//  Created by Manuel Mosso on 9/10/18.
//  Copyright © 2018 Manuel Mosso. All rights reserved.
//

#import "CodilitySolutions.h"

@implementation CodilitySolutions

#pragma - mark Arrays Problems
+(void)testCyclicRotationWithArray:(NSArray *)array rotations:(int)k {
    NSLog(@"Original Array: %@ Rotations: %i", [array description], k);
    NSArray *reversedArrayOne =  [CyclicRotation byByOneSolution:[NSMutableArray arrayWithArray:array] rotations:k];
    NSArray *reversedArrayTwo =  [CyclicRotation reverseBasedsolution:[NSMutableArray arrayWithArray:array] rotations:k];
    NSLog(@"One By One Solution: %@", reversedArrayOne);
    NSLog(@"Reversed Based Solution: %@", reversedArrayTwo);
}

+(void)testOddOccurrencesWithArray:(NSArray *)array {
    int res = [OddOccurrencesInArray XORSolution:[NSMutableArray arrayWithArray:array]];
    NSLog(@"Element Appeared Once: %i", res);
}


@end