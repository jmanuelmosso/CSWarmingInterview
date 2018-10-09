//
//  MissingInteger.m
//  CSWarmingInterview
//
//  Created by Manuel Mosso on 10/3/18.
//  Copyright © 2018 Manuel Mosso. All rights reserved.
//

#import "MissingInteger.h"

@implementation MissingInteger

/*
 P R O B L E M
 
 Write a function:  int solution(NSMutableArray *A);
 
 that, given an array A of N integers, returns the smallest positive integer
 (greater than 0) that does not occur in A.
 
 For example, given A = [1, 3, 6, 4, 1, 2], the function should return 5.
 
 Given A = [1, 2, 3], the function should return 4.
 
 Given A = [−1, −3], the function should return 1.
 
 Write an efficient algorithm for the following assumptions:
 
 N is an integer within the range [1..100,000];
 each element of array A is an integer within the range [−1,000,000..1,000,000].
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
    //       Check for edge cases - when the array is empty [], we should return 1
    // STEP 2
    //       Generate NSSet from the Array in oder to eliminate possible duplicates
    // STEP 3
	//		Implement a loop taking in consideration:
    //       	N always starts from 1 and so on (1,2,3...n)
	//			There is always one missing element in the array
	//			So, in the Array we sould have N => (1,2,3...n+1)
	//
	// STEP 4
	//		Look for the current element in the SET
	//		If the element does't exist, that means we have found the smallest one missing element.
	//		Break the loop.
    
    
    // STEP 1
    int smallestCandidate = 0;
    int n = (int)[array count];
    if (n==0) {
        smallestCandidate = 1;
    }
    else {
        // STEP 2
        NSSet *elements = [NSSet setWithArray:array];
        
        // STEP 3
        for (int i=1; i<=(n+1); i++) {
            BOOL exist = [elements containsObject:@(i)];
            if(!exist) {
				// STEP 4
                smallestCandidate = i;
                return smallestCandidate;
            }
        }
    }
    return smallestCandidate;
}

@end
