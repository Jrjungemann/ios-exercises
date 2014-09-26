//
//  NumberHandler.m
//  BlocExercises
//
//  Created by Aaron on 6/11/14.
//
//

#import "NumberHandler.h"

@implementation NumberHandler

- (NSNumber *) numberThatIsTwiceAsBigAsNumber:(NSNumber *)number {
    
    NSInteger unboxing = [number integerValue] * 2;
    NSNumber *boxing = [NSNumber numberWithInteger:unboxing];

    return boxing;
}

- (NSArray *) arrayOfNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    
    NSMutableArray *arrayOfNumbers = [NSMutableArray new];
    
    if (number > otherNumber) {
        NSInteger temp = otherNumber;
        otherNumber = number;
        number = temp;
    }
    
    [arrayOfNumbers addObject:[NSNumber numberWithLong:number]];
    
    while (number < otherNumber) {
        number++;
        [arrayOfNumbers addObject:[NSNumber numberWithLong:number]];
    }
    return arrayOfNumbers;
}

- (NSInteger) lowestNumberInArray:(NSArray *)arrayOfNumbers {
   
    NSNumber *lowestNumber = arrayOfNumbers[0];
    
    for (NSNumber* number in arrayOfNumbers) {
//      number is the current object being called
        if (number.integerValue < lowestNumber.integerValue) {
//      you can only compare simple types with ==, <, etc....
            lowestNumber = number;
        }
    }
    
    return lowestNumber.intValue;
//    return [lowestNumber intValue] this way works too
}

@end
