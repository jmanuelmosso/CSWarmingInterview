//
//  FrogJmp.m
//  CSWarmingInterview
//
//  Created by Manuel Mosso on 9/26/18.
//  Copyright © 2018 Manuel Mosso. All rights reserved.
//

#import "FrogJmp.h"

@implementation FrogJmp

/*
 P R O B L E M
 A small frog wants to get to the other side of the road. The frog is currently located
 at position X and wants to get to a position greater than or equal to Y. T
 he small frog always jumps a fixed distance, D.
 
 Count the minimal number of jumps that the small frog must perform to reach its target.
 
 Write a function:
 
 int solution(int X, int Y, int D);
 
 that, given three integers X, Y and D, returns the minimal number of jumps
 from position X to a position equal to or greater than Y.
 
 For example, given:
 
 X = 10
 Y = 85
 D = 30
 the function should return 3, because the frog will be positioned as follows:
 
 after the first jump, at position 10 + 30 = 40
 after the second jump, at position 10 + 30 + 30 = 70
 after the third jump, at position 10 + 30 + 30 + 30 = 100
 Write an efficient algorithm for the following assumptions:
 
 X, Y and D are integers within the range [1..1,000,000,000];
 X ≤ Y.
 */



/*
Solution results given by Codility
- Task Score: 100%
- Correctness: 100%
- Performance: 100%

Time Complexity given by Codility:
- The time complexity is O(1)
*/
+(int)solution:(int)x y:(int)y d:(int)d {
    
    /******** Algorithm Explanation  ********/
    
    // FACTS
    //      I realized that the formula:    [x+(n*d)] >= y    satisfies the required frog jumps
    //      then, the forrmula to find the 'n' required jumps is the following:
    //      n = (y-x)/d
    
    // STEP 1
    //     Implement the formula in code
    //     Be careful dealing with the floating point, it should be double
    //     use the function 'ceil' as a resource to round to the next integer.

    double n = ((double)y - (double)x) / (double)d; // O(1)
    n = ceil(n);
    return (int)n;
}
@end
