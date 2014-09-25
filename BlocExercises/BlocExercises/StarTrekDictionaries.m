//
//  StarTrekDictionaries.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekDictionaries.h"

@implementation StarTrekDictionaries

- (NSString *)favoriteDrinkForStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {

    return [characterDictionary objectForKey: @"favorite drink"];
        
}

- (NSArray *)arrayOfFavoriteDrinksForStarTrekCharacters:(NSArray *)charactersArray {
    
//    Example Aaron gave me after I finished - loops through the dictionary and adds each matched object to array

//    NSMutableArray *array = [NSMutableArray array];

//        for (NSDictionary *characterDictionary in charactersArray) {
//            [array addObject:characterDictionary[@"favorite drink"]];
//        }
//        return array;
    
    
    return [charactersArray valueForKey: @"favorite drink"];
}

- (NSDictionary *)dictionaryWithQuoteAddedToStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    NSMutableDictionary *withQuote = [characterDictionary mutableCopy];

    [withQuote setObject:@"worf worf worf" forKey:@"quote"];
    
    return withQuote;
}

@end
