//
//  StarTrekArrays.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekArrays.h"

@implementation StarTrekArrays

- (NSArray *) arrayOfStarTrekCharactersFromString:(NSString *)characterString {
    
    return [characterString componentsSeparatedByString:@";"];
}

- (NSString *) stringOfStarTrekCharactersFromArray:(NSArray *)characterArray {
    
    return [characterArray componentsJoinedByString:@";"];
}

- (NSArray *) alphabeticallySortedStarTrekCharactersFromArray:(NSArray *)characterArray {
    
    return [characterArray sortedArrayUsingSelector:@selector(localizedCaseInsensitiveCompare:)];
}
    
- (BOOL) characterArrayContainsWorf:(NSArray *)characterArray {
    
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF CONTAINS[c] 'Worf'"];

    NSArray *test = [characterArray filteredArrayUsingPredicate:predicate];
        if (test.count == 0){
        return NO;
    }
    return YES;
}

@end
