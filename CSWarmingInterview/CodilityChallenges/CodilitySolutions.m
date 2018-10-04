//
//  CodilitySolutions.m
//  CSWarmingInterview
//
//  Created by Manuel Mosso on 9/10/18.
//  Copyright © 2018 Manuel Mosso. All rights reserved.
//

#import "CodilitySolutions.h"
#import "CyclicRotation.h"
#import "OddOccurrencesInArray.h"
#import "BinaryGap.h"
#import "PermMissingElem.h"
#import "FrogJmp.h"
#import "TapeEquilibrium.h"
#import "PermCheck.h"
#import "MissingInteger.h"

@implementation CodilitySolutions
#pragma - mark Iterations Problems
+(void)testBinaryGapForNumber:(int)n {
    int longestGap = [BinaryGap solutionOne:n];
    NSLog(@"Longest Gap Method One: %i", longestGap);
    longestGap = [BinaryGap solutionTwo:n];
    NSLog(@"Longest Gap Method Two: %i", longestGap);
}

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

#pragma - mark Time Complexity Problems
+(void)testPermMissingElementWithArray:(NSArray *)array {
    int missingElement = [PermMissingElem SETSolution:[NSMutableArray arrayWithArray:array]];
    NSLog(@"Missing Element in the Array: %i", missingElement);
    missingElement = [PermMissingElem XORSolution:[NSMutableArray arrayWithArray:array]];
    NSLog(@"Missing Element in the Array: %i", missingElement);
}

+(void)testFrogJumpsFor:(int)x y:(int)y d:(int)d {
    int jumps = [FrogJmp solution:x y:y d:d];
    NSLog(@"Frog Jumps: %i", jumps);
}

+(void)testTapeEquilibriumSolution:(NSArray*)array{
    int minimumDifference = [TapeEquilibrium solution:array];
    NSLog(@"Minimum Difference: %i", minimumDifference);
}

#pragma - mark Counting Elements Problems
+(void)testPermCheckSolution:(NSArray *)array {
    int isPermutation = [PermCheck solution:[NSMutableArray arrayWithArray:array]];
    NSLog(@"Is permutation?: %i", isPermutation);
}

//missing problems here...
+(void)testMissingIntegerSolution:(NSArray *)array {
    int missingInteger = [MissingInteger solution:[NSMutableArray arrayWithArray:array]];
    NSLog(@"Missing Integer: %i", missingInteger);
}


@end
