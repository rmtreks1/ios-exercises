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
        id favoriteDrink = character[@"favorite drink"];
        [favoriteDrinksForStars addObject:favoriteDrink];
        }
    return favoriteDrinksForStars;
    }


- (NSDictionary *)dictionaryWithQuoteAddedToStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    /* WORK HERE */
    return @{};
}

@end
