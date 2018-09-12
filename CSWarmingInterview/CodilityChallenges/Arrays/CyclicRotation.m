//
//  CyclicRotation.m
//  CSWarmingInterview
//
//  Created by Manuel Mosso on 9/10/18.
//  Copyright © 2018 Manuel Mosso. All rights reserved.
//

#import "CyclicRotation.h"

@implementation CyclicRotation

/* PROBLEM
 An array A consisting of N integers is given. Rotation of the array means that each element is shifted right by one index,
 and the last element of the array is moved to the first place. For example, the rotation of array A = [3, 8, 9, 7, 6] is [6, 3, 8, 9, 7]
 (elements are shifted right by one index and 6 is moved to the first place).
 
 The goal is to rotate array A K times; that is, each element of A will be shifted to the right K times.
 
 Write a function:
 
 NSMutableArray * solution(NSMutableArray *A, int K);
 
 that, given an array A consisting of N integers and an integer K, returns the array A rotated K times.
 
 For example, given
 
 A = [3, 8, 9, 7, 6]
 K = 3
 the function should return [9, 7, 6, 3, 8]. Three rotations were made:
 
 [3, 8, 9, 7, 6] -> [6, 3, 8, 9, 7]
 [6, 3, 8, 9, 7] -> [7, 6, 3, 8, 9]
 [7, 6, 3, 8, 9] -> [9, 7, 6, 3, 8]
 For another example, given
 
 A = [0, 0, 0]
 K = 1
 the function should return [0, 0, 0]
 
 Given
 
 A = [1, 2, 3, 4]
 K = 4
 the function should return [1, 2, 3, 4]
 
 Assume that:
 
 N and K are integers within the range [0..100];
 each element of array A is an integer within the range [−1,000..1,000].
 In your solution, focus on correctness. The performance of your solution will not be the focus of the assessment.
*/



/*
 Solution results given by Codility
    - Task Score: 100%
    - Correctness: 100%
    - Performance: Not assesed
 
 Time Complexity:
    - The worst case time complexity is O(n*k)
*/
+(NSMutableArray*)byByOneSolution:(NSMutableArray*)array rotations:(int)k {
    // Checking for edge cases in wich the array doesn't change.
    if (k == 0 || array.count <= 1) {
        return array;
    }
    
    // Calculate the effective number of rotations
    // -> "k % length" removes the abs(k) > n edge case
    // -> "(length + k % length)" deals with the k < 0 edge case
    // -> if k > 0 the final "% length" removes the k > n edge case
    NSInteger n = array.count;
    NSInteger rotations = (n  + k % n ) % n;
    
    
    /******** Algorithm Explanation: Naive Method ********/
    // Rotate one by one based on the efective rotations
    for (int i = 0; i < rotations; i++) {
        id last = array[n-1];
        [array removeLastObject];
        [array insertObject:last atIndex:0];
    }
    return array;
}


/*
 Solution results given by Codility
    - Task Score: 100%
    - Correctness: 100%
    - Performance: Not assesed
 
 Time Complexity:
    - The worst case time complexity is O(3n) => O(n)
 */
+(NSMutableArray*)reverseBasedsolution:(NSMutableArray*)array rotations:(int)k {
    
    // Checking for edge cases in wich the array doesn't change.
    if (k == 0 || array.count <= 1) {
        return array;
    }
    
    // Calculate the effective number of rotations
    // -> "k % length" removes the abs(k) > n edge case
    // -> "(length + k % length)" deals with the k < 0 edge case
    // -> if k > 0 the final "% length" removes the k > n edge case
    NSInteger n = array.count;
    NSInteger rotations = (n  + k % n ) % n;
    
    /******** Algorithm Explanation: Reverse Based ********/
    // 1.- Reverse the whole array
    // 2.- Reverse first k numbers
    // 3.- Reverse last n-k numbers
    
    // 1. Reverse the whole array
    NSArray* reversed = [[array reverseObjectEnumerator] allObjects];
    
    // 2. Reverse first k numbers
    NSRange leftRange = NSMakeRange(0, rotations);
    NSArray* leftPart = [[[reversed objectsAtIndexes:[NSIndexSet indexSetWithIndexesInRange:leftRange]] reverseObjectEnumerator] allObjects];
    
    // 3. Reverse last n-k numbers
    NSRange rightRange = NSMakeRange(rotations, n - rotations);
    NSArray* rightPart = [[[reversed objectsAtIndexes:[NSIndexSet indexSetWithIndexesInRange:rightRange]] reverseObjectEnumerator] allObjects];
    
    // Replace objects in the original array
    [array replaceObjectsInRange:leftRange withObjectsFromArray:leftPart];
    [array replaceObjectsInRange:rightRange withObjectsFromArray:rightPart];
    
    return  array;
}

@end























