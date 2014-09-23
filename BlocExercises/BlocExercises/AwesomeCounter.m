//
//  AwesomeCounter.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "AwesomeCounter.h"

@implementation AwesomeCounter

- (NSString *) stringWithNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    if (number > otherNumber) {
        NSInteger temp = otherNumber; // 6 bytes -> stack, 6 bytes represent one large ass number, read out the binary value 01010101010001001010101010101010…
        otherNumber = number;
        number = temp;
    }
    
    NSMutableString *returnString = [NSMutableString new];
    [returnString appendString:[NSString stringWithFormat:@"%ld", (long)number]];
    while (number < otherNumber) {
        ++number;
        [returnString appendString:[NSString stringWithFormat:@"%ld", (long)number]];
    }
    
    return returnString;
}

@end
