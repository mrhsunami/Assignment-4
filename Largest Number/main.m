//
//  main.m
//  Largest Number
//
//  Created by Nathan Hsu on 2018-02-04.
//  Copyright © 2018 Nathan Hsu. All rights reserved.
//

#import <Foundation/Foundation.h>


id findLargestNumberInArray(NSArray *array) {
    
    id largestNumber = array[0];
    NSUInteger arraySize = array.count;
    for (int i = 1; i < arraySize; i++) {
        if (array[i] > largestNumber) {
            largestNumber = array[i];
        }
    }
    return largestNumber;
    
}


int main(int argc, const char * argv[]) {
    @autoreleasepool {

        NSArray *myArray = @[@3, @7, @6, @8];
        NSArray *secondArray = @[@44, @5, @6];
        
        id largestNumInMyArray = findLargestNumberInArray(myArray);
        NSLog(@"Largest number in the first array is: %@", largestNumInMyArray);
        
        
        id largestNumInSecondArray = findLargestNumberInArray(secondArray);
        NSLog(@"Largest number in the second array is: %@", largestNumInSecondArray);
        
        
    }
    return 0;
}
