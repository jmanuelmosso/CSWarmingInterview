//
//  PermMissingElem.m
//  CSWarmingInterview
//
//  Created by Manuel Mosso on 9/26/18.
//  Copyright © 2018 Manuel Mosso. All rights reserved.
//

#import "PermMissingElem.h"

@implementation PermMissingElem

/*
 P R O B L E M
 An array A consisting of N different integers is given. The array contains integers in the range [1..(N + 1)],
 which means that exactly one element is missing.
 
 Your goal is to find that missing element.
 
 Write a function:
 
 int solution(NSMutableArray *A);
 
 that, given an array A, returns the value of the missing element.
 
 For example, given array A such that:
 
 A[0] = 2
 A[1] = 3
 A[2] = 1
 A[3] = 5
 the function should return 4, as it is the missing element.
 
 Write an efficient algorithm for the following assumptions:
 
 N is an integer within the range [0..100,000];
 the elements of A are all distinct;
 each element of array A is an integer within the range [1..(N + 1)].
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
    
    // FACTS
    //      Use of a NSSet to verify if the missing element exist or not.
    //      Edge case: when the array is empty [], we should return 1

    // STEP 1
    //     validate the edge case

    // STEP 2
    //      Generate a NSSet with the array elements in order to search an element faster
    
    // STEP 3
    //      Use a for loop and find the current 'i' in the NSSset
    //      If an elements doesn't exist in the NSSet, that means it's the missing element.

    int n = (int)[array count];
    int missing = 0;
    // STEP 1
    if (n == 0) {
        missing = 1;
        return missing;
    }
    else {
        // STEP 2
        NSSet *elements = [NSSet setWithArray:array];
        
        // STEP 3
        for (int i = 1; i <= (n+1); i++) {
            // O(N) or O(N * log(N)) depending of  required iterations
            if (![elements containsObject:[NSNumber numberWithInt:i]]) {
                missing = i;
                return missing;
            }
        }
        return  missing;
    }
}

@end
