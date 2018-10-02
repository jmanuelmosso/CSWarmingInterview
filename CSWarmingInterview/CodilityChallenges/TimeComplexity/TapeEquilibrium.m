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


 */




/// 100 en todo devuelto por codility
// O(n) devuelto por codility
+(int)subarraySolution:(NSArray*) array {

    int n = (int)[array count];
    
    if (n==0) {
        return 0;
    }
    
    if (n==1) {
        return (int)array[0];
    }

    int totalSum = 0;
    for (int i=0; i<n; i++){
         totalSum += [[array objectAtIndex:i] intValue];
    }
    
    int minDifference = 0;
    int leftSum = 0;
    
    for (int i=0; i<(n-1); i++) {
        leftSum += [[array objectAtIndex:i] intValue];
        int difference = ABS(leftSum-(totalSum-leftSum));
        if (i==0){
            minDifference = difference;
        }
        else if (difference<minDifference){
            minDifference = difference;
        }
    }
    return minDifference;

}




@end
