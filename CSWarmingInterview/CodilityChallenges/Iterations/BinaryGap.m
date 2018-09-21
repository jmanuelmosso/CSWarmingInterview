//
//  BinaryGap.m
//  CSWarmingInterview
//
//  Created by Manuel Mosso on 9/20/18.
//  Copyright © 2018 Manuel Mosso. All rights reserved.
//

#import "BinaryGap.h"

@implementation BinaryGap

/*
 P R O B L E M
 Task description
 A binary gap within a positive integer N is any maximal sequence of consecutive zeros
 that is surrounded by ones at both ends in the binary representation of N.
 
 For example, number 9 has binary representation 1001 and contains a binary gap of length 2.
 The number 529 has binary representation 1000010001 and contains two binary gaps:
 one of length 4 and one of length 3. The number 20 has binary representation 10100 and contains
 one binary gap of length 1. The number 15 has binary representation 1111 and has no binary gaps.
 The number 32 has binary representation 100000 and has no binary gaps.
 
 Write a function:
 
 int solution(int N);
 
 that, given a positive integer N, returns the length of its longest binary gap. T
 he function should return 0 if N doesn't contain a binary gap.
 
 For example, given N = 1041 the function should return 5, because N has binary representation 10000010001
 and so its longest binary gap is of length 5. Given N = 32 the function should return 0,
 because N has binary representation '100000' and thus no binary gaps.
 
 Write an efficient algorithm for the following assumptions:
 
 N is an integer within the range [1..2,147,483,647].
*/




/*
Solution results given by Codility
- Task Score: 100%
- Correctness: 100%
- Performance: Not assesed

Time Complexity:
- The worst case time complexity is O(n)
*/
+(int)solutionOne:(int)n {
    
    BOOL start = NO;
    int candidates = 0;
    int gapCounter = 0;
    
    while(n){
        // Getting the bits representation one by one
        NSString *bit = (n & 1) ? @"1": @"0";
        n /= 2;
        
        // Looking for gaps
        if ( start  && [bit isEqualToString:@"0"]) {
            candidates++;
        }
        else if ( start  && [bit isEqualToString:@"1"]) {
            // At least one '1' exist as a close pattern
            if (candidates > gapCounter) {
                gapCounter = candidates;
            }
            candidates = 0;
        }
        else if ([bit isEqualToString:@"1"]) {
            start = YES; // At least one '1' exist as an open pattern
        }
    }
    return gapCounter;
}







@end
