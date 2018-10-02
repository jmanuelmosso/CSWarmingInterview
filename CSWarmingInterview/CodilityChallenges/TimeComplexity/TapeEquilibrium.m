//
//  TapeEquilibrium.m
//  CSWarmingInterview
//
//  Created by Manuel Mosso on 10/1/18.
//  Copyright © 2018 Manuel Mosso. All rights reserved.
//

#import "TapeEquilibrium.h"

@implementation TapeEquilibrium

/*
 P R O B L E M
 A non-empty array A consisting of N integers is given. Array A represents numbers on a tape.
 Any integer P, such that 0 < P < N, splits this tape into two non-empty parts:

 A[0], A[1], ..., A[P − 1] and A[P], A[P + 1], ..., A[N − 1].
 
 The difference between the two parts is the value of:
 
 |(A[0] + A[1] + ... + A[P − 1]) − (A[P] + A[P + 1] + ... + A[N − 1])|
 
 In other words, it is the absolute difference between the sum of the first part and the sum of the second part.

 For example, consider array A such that:
 
 A[0] = 3
 A[1] = 1
 A[2] = 2
 A[3] = 4
 A[4] = 3
 We can split this tape in four places:
 
 P = 1, difference = |3 − 10| = 7
 P = 2, difference = |4 − 9| = 5
 P = 3, difference = |6 − 7| = 1
 P = 4, difference = |10 − 3| = 7
 Write a function:
 
 int solution(NSMutableArray *A);
 that, given a non-empty array A of N integers, returns the minimal difference that can be achieved.
 
 For example, given:
 
 A[0] = 3
 A[1] = 1
 A[2] = 2
 A[3] = 4
 A[4] = 3
 the function should return 1, as explained above.
 
 Write an efficient algorithm for the following assumptions:
 
 N is an integer within the range [2..100,000];
 each element of array A is an integer within the range [−1,000..1,000].
 */



/*
Solution results given by Codility
- Task Score: 100%
- Correctness: 100%
- Performance: 100%

Time Complexity given by Codility:
- The time complexity is O(n)
*/
+(int)solution:(NSArray*) array {
    /******** Algorithm Explanation  ********/
    
    // FACTS
    //      The formula: |leftSum-(totalSum-leftSum)|  give us the minimum diference, where:
    //      totalSum: is the sum of all the elements of the original array
    //      leftSum: is the sum of the left-elements of the array, it changes during the loop

    
    // STEP 1
    //     Validate Edge cases: if n==0 return 0, if n==1 return the first element of the array
    // STEP 2
    //     Get the total sum of all the elements of the array
    // STEP 3
    //     Calculate te current sum of the elements located in the left side and
    //     apply the formula |leftSum-(totalSum-leftSum)|
    // STEP 4
    //     Get the minimum difference, I used a temp variable 'difference'
    //     in order to compare the current diference with the one saved before.
    
    int n = (int)[array count];
    
    // STEP 1
    if (n==0) {
        return 0;
    }
    
    if (n==1) {
        return (int)array[0];
    }

    // STEP 2 is O(n)
    int totalSum = 0;
    for (int i=0; i<n; i++) {
         totalSum += [[array objectAtIndex:i] intValue];
    }
    
    int minDifference = 0;
    int leftSum = 0;
    
    // Loop is O(n)
    for (int i=0; i<(n-1); i++) {
        
        // STEP 3
        leftSum += [[array objectAtIndex:i] intValue];
        int difference = ABS(leftSum-(totalSum-leftSum));
        
        // STEP 4
        if (i==0){
            minDifference = difference;
        }
        else if (difference < minDifference){
            minDifference = difference;
        }
    }
    return minDifference;
}
@end
