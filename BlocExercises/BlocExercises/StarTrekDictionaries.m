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
    /* WORK HERE */
    id favoriteDrink = characterDictionary[@"favorite drink"];
    if (favoriteDrink != nil && [favoriteDrink isKindOfClass:[NSString class]]) {
        return favoriteDrink;
    }
    
    return nil;
}



- (NSArray *)arrayOfFavoriteDrinksForStarTrekCharacters:(NSArray *)charactersArray {
    /* Why didn't it work when I tried to call the above method from within this method */
    
    // Create NSMutable Array that can be added to
    NSMutableArray *favoriteDrinksForStars = [[NSMutableArray alloc] init];
    
    for (NSDictionary *character in charactersArray) {
        NSString *favoriteDrink = [self favoriteDrinkForStarTrekCharacterDictionary:character];
        //        id favoriteDrink = character[@"favorite drink"];
        [favoriteDrinksForStars addObject:favoriteDrink];
    }
    return favoriteDrinksForStars;
}


- (NSDictionary *)dictionaryWithQuoteAddedToStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    /* WORK HERE */
    // check if there's already a quote - if yes return the quote
    NSString *quote = characterDictionary[@"quote"];
    if (quote != nil && [quote isKindOfClass:[NSString class]]){
        return characterDictionary;
    }
    
    // if there isn't already an acceptable quote - set one
    NSMutableDictionary *characterDictionaryWithQuote = [characterDictionary mutableCopy];
    [characterDictionaryWithQuote setObject:@"Make it so number 1" forKey:@"quote"];
    
    return characterDictionaryWithQuote;
}

@end
