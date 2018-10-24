//
//  PermCheck.m
//  CSWarmingInterview
//
//  Created by Manuel Mosso on 10/2/18.
//  Copyright © 2018 Manuel Mosso. All rights reserved.
//

#import "PermCheck.h"

@implementation PermCheck

/*
 P R O B L E M
 A non-empty array A consisting of N integers is given.
 
 A permutation is a sequence containing each element from 1 to N once, and only once.
 
 For example, array A such that:
 
 A[0] = 4
 A[1] = 1
 A[2] = 3
 A[3] = 2
 is a permutation, but array A such that:
 
 A[0] = 4
 A[1] = 1
 A[2] = 3
 is not a permutation, because value 2 is missing.
 
 The goal is to check whether array A is a permutation.
 
 Write a function:
 
 int solution(NSMutableArray *A);
 that, given an array A, returns 1 if array A is a permutation and 0 if it is not.
 
 For example, given array A such that:
 
 A[0] = 4
 A[1] = 1
 A[2] = 3
 A[3] = 2
 the function should return 1.
 
 Given array A such that:
 
 A[0] = 4
 A[1] = 1
 A[2] = 3
 the function should return 0.
 
 Write an efficient algorithm for the following assumptions:
 
 N is an integer within the range [1..100,000];
 each element of array A is an integer within the range [1..1,000,000,000].
*/


/*
Solution results given by Codility
- Task Score: 100%
- Correctness: 100%
- Performance: 100%

Time Complexity given by Codility:
- The worst case time complexity is O(N) or O(N * log(N))
*/
+(int)solution:(NSMutableArray*)array {
	
	/******** Algorithm Explanation  ********/
	// STEP 1
	//       Check for edge cases - when the array is empty [], we should return 0
	// STEP 2
	//		Generate NSSet from the Array in oder to eliminate possible duplicates
	//		NSSet also has better performance on search elements
	// STEP 3
	//		Implement a loop taking in consideration:
	//			So, to be a permutation, in the Array we MUST have N => (1,2,3...n)
	//			they don't need to be necessary ordered, but should conntain all the elemements from 1 to n
	//
	// STEP 4
	//		Look for the current target in the SET
	//		If the target does't exist, that means  is not a permutation
	//		Break the loop.
	
	
	// STEP 1
    int isPermutation = 1;
    int n = (int)[array count];
    if (n==0) {
        isPermutation=0;
    }
    else {
		// STEP 2
        NSSet *elements = [NSSet setWithArray:array];
        int  target = 1;
		// STEP 3
		while (target <= n) {
			// STEP 4
			if (![elements containsObject:@(target)]) {
				isPermutation = 0;
				return isPermutation;
			}
			target++;
		}
		
    }
    return isPermutation;
}
// Last commit 
@end
