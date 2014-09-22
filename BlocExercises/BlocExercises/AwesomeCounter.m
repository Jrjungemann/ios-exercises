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
    
    if (number < otherNumber) {
        
        NSMutableString *greaterThan = [[NSMutableString alloc] init];
        [greaterThan appendString:[NSString stringWithFormat:@"%ld", (long)number]];
        while (number < otherNumber) {
            ++number;
            [greaterThan appendString:[NSString stringWithFormat:@"%ld", (long)number]];
        }
        
        return greaterThan;
        
    }
    
    if (number > otherNumber) {
        
        NSMutableString *lessThan = [[NSMutableString alloc] init];
        [lessThan appendString:[NSString stringWithFormat:@"%ld", (long)otherNumber]];
        while (number > otherNumber) {
            ++otherNumber;
            [lessThan appendString:[NSString stringWithFormat:@"%ld", (long)otherNumber]];
        }
        return lessThan;
    }
    
    if (number == otherNumber) {
        NSMutableString *equals = [[NSMutableString alloc] init];
        while (number == otherNumber) {
            [equals appendString:[NSString stringWithFormat:@"%ld", (long)number]];
            return equals;
        }
    }
    
    return nil;
}

@end
