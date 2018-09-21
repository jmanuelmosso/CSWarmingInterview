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
    
    
    /******** Algorithm Explanation  ********/
    
    // FACTS
    //      Every valid gap starts with a '1' and close with another '1', with at least one 'zero' betwen them.
    //      1001  - Is a valid gap
    //      00100 - Isn't a valid gap
    //      10100 - has a valid gap
    //      11111 - Isn't a valid gap

    
    // STEP 1
    //     Get bits representation one by one from the Rigth to the Left
    //     That means, for n=4, I'll get first a Zero, then another Zero, then a One, finally a Zero.  [0,1,0,0]
    //     4 -> 0100
    // STEP 2
    //      Start looking for the first '1' - since our flag 'start' is false in the first iteration, we'll look
    //      for the first occurrence of '1', that means we have a valid start pattern and we change the flag 'start' to true
    //      for the next iterations we should validate if the current bit is '0' and use a counter, in this case 'candidates'.
    //      Only if, there is another '1' in the incoming bits, we are sure that we have a valid binary gap, then we compare
    //      our previous 'candidates' with our current 'gapCounter' in order to keep the highest one.
    //      In case that there isn't another '1' to close the gap, we never change the value of 'gapCounter' and we return zero 0
    
    while(n){
        // STEP 1
        NSString *bit = (n & 1) ? @"1": @"0";
        n /= 2;
        
        // STEP 2
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
