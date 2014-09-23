//
//  MarysAppleHandler.m
//  BlocExercises
//
//  Created by Aaron on 6/8/14.
//
//

#import "MarysAppleHandler.h"

@implementation MarysAppleHandler

- (NSString *) itemMaryCanPurchaseForDollars:(NSInteger)dollars {
    if (dollars <= 4) {
        return (@"get out of my store");
    } else if (dollars == 5) {
        return (@"have some gum");
    } else if (dollars >= 6 && dollars < 1000) {
        return (@"have an apple");
    } else if (dollars >= 1000 && dollars < 1000000000) {
        return (@"have an Apple computer");
    }
    
//    NSLog(@"For $%ld, Mary can: %@", (long)dollars, itemToReturn);
    
    return  @"have The Big Apple";
}

- (NSUInteger) dollarCostForAppleFlavoredVodka {

    NSUInteger cost = self.getsDiscount ? 18 : 24;
    return cost;
}

@end
