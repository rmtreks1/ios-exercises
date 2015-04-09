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
    if (cheeseRange.location==NSNotFound) {
        return cheeseName;
    };
    NSString *cheeseNameOnly = [cheeseName stringByReplacingCharactersInRange:cheeseRange withString:@""];
    
    // Printing out to console to test
//    NSLog(cheeseNameOnly);
    
    return cheeseNameOnly;
}

/**
 Creates a string indicating a the number of cheeses.
 
 Example usage:
 
 @code
 NSString *phrase = [cheese numberOfCheesesStringWithCheeseCount:4];
 // phrase is "4 cheeses"
 
 NSString *phrase2 = [cheese numberOfCheesesStringWithCheeseCount:1];
 // phrase2 is "1 cheese"
 @endcode
 
 @param cheeseCount
 The number of cheeses.
 
 @return Returns a string indicating a the number of cheeses.
 */




- (NSString *) numberOfCheesesStringWithCheeseCount:(NSUInteger)cheeseCount {
    if (cheeseCount == 1) {

        return [NSString stringWithFormat:@"%ld cheese", cheeseCount];
    } else {
        /* WORK HERE, ASSUMING THERE ARE 2+ CHEESES */
        return [NSString stringWithFormat:@"%ld cheeses", cheeseCount];
    }
    
    /*
     (You will learn more about if/else statements in the next checkpoint.)
     */
    
    return nil;
}

@end
