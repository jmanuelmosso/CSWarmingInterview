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
+(void)testCyclicRotationWithArray:(NSMutableArray *)array rotations:(int)k {
    [CyclicRotation byByOneSolution:[NSMutableArray arrayWithArray:array] rotations:k];
    [CyclicRotation reverseBasedsolution:[NSMutableArray arrayWithArray:array] rotations:k];
}

@end
