//
//  StringCheese.m
//  BlocExercises
//
//  Created by Aaron on 6/9/14.
//
//

#import "StringCheese.h"

@implementation StringCheese

- (NSString *) favoriteCheeseStringWithCheese:(NSString *)cheeseName {
    /* WORK HERE
     @code
     NSString *fullSentence = [cheese favoriteCheeseStringWithCheese:@"cheddar"];
     // fullSentence is "My favorite cheese is cheddar."
     @endcode
     */
    NSString *favoriteCheeseHeader = @"My favorite cheese is";
    NSString *favoriteCheeseFullStatement = [NSString stringWithFormat:@"%@ %@.", favoriteCheeseHeader, cheeseName];
   // NSLog(favoriteCheeseFullStatement);
    return favoriteCheeseFullStatement;
}

- (NSString *) cheeseNameWithoutCheeseSuffix:(NSString *)cheeseName {
    /* WORK HERE */
    /**
     Removes "cheese" from the end of a string about cheese and only returns
     the name of the cheese.
     
     Example usage:
     
     @code
     NSString *shortName = [cheese cheeseNameWithoutCheeseSuffix:@"mozarella cheese"];
     // shortName is "mozarella"
     @endcode
     
     @param cheeseName
     The name of the favorite cheese
     
     @return Returns the name of the favorite cheese without the word "cheese".
     */
    NSRange cheeseRange = [cheeseName rangeOfString:@" cheese" options:NSCaseInsensitiveSearch];
    NSString *cheeseNameOnly = [cheeseName stringByReplacingCharactersInRange:cheeseRange withString:@""];
    
    // Printing out to console to test
    NSLog(cheeseNameOnly);
    
    return cheeseNameOnly;
}

- (NSString *) numberOfCheesesStringWithCheeseCount:(NSUInteger)cheeseCount {
    if (cheeseCount == 1) {
        /* WORK HERE, ASSUMING THERE IS 1 CHEESE */
    } else {
        /* WORK HERE, ASSUMING THERE ARE 2+ CHEESES */
    }
    
    /*
     (You will learn more about if/else statements in the next checkpoint.)
     */
    
    return nil;
}

@end
