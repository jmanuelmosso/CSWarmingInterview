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
    //TODO: Add explanation  here
    int isPermutation = 1;
    int n = (int)[array count];
    if (n==0) {
        isPermutation=0;
    }
    else {
        NSSet *elements = [NSSet setWithArray:array];
        int  target = 1;
        for (int i=0; i<n;i++){
            if (![elements containsObject:@(target)]) {
                isPermutation = 0;
                return isPermutation;
            }
            target++;
        }
    }
    return isPermutation;
}

@end
