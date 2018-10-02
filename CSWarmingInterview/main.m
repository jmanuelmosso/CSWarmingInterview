//
//  main.m
//  CSWarmingInterview
//
//  Created by Manuel Mosso on 9/10/18.
//  Copyright © 2018 Manuel Mosso. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CodilitySolutions.h"
#import "HackerRankSolutions.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        #pragma - Codility Challenges
        [CodilitySolutions testBinaryGapForNumber:9];
        [CodilitySolutions testCyclicRotationWithArray:@[@3, @8, @9, @7, @6] rotations:-2];
        [CodilitySolutions testOddOccurrencesWithArray:@[@7, @3, @5, @4, @5, @3, @4]];
        [CodilitySolutions testPermMissingElementWithArray:@[@1, @3, @4, @5, @2]];
        [CodilitySolutions testFrogJumpsFor:3 y:999111321 d:7];
        [CodilitySolutions testTapeEquilibriumSolution:@[@3,@1,@2,@4,@3]];
        #pragma - Hacker Rank Challenges
    }
    return 0;
}
