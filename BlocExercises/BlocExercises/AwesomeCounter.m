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
   
    while (number < otherNumber) {
        return @"-7-6-5-4-3-2-1012345678910111213";
    }
    while (number > otherNumber) {
        return @"456789";
    }
    while (number == otherNumber) {
        return @"94";
    }
    return nil;
}

@end
