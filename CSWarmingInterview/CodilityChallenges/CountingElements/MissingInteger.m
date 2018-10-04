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
    //TODO: Add explanation  here
    int smallestCandidate = 0;
    int n = (int)[array count];
    if (n==0) {
        smallestCandidate = 1;
    }
    else {
        NSSet *elements = [NSSet setWithArray:array];
        for (int i=1; i<=(n+1); i++) {
            BOOL exist = [elements containsObject:@(i)];
            if(!exist){
                smallestCandidate = i;
                return smallestCandidate;
            }
        }
    }
    return smallestCandidate;
}

@end
