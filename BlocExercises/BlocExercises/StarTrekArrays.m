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
    /* WORK HERE */
    NSArray *cast = [characterString componentsSeparatedByString:@";"];
    return cast;
}

- (NSString *) stringOfStarTrekCharactersFromArray:(NSArray *)characterArray {
    /* WORK HERE */
    NSString *castString = [characterArray componentsJoinedByString:@";"];
    return castString;
}

- (NSArray *) alphabeticallySortedStarTrekCharactersFromArray:(NSArray *)characterArray {
    /* WORK HERE */
    NSMutableArray *characterArrayMutable = [NSMutableArray arrayWithArray:characterArray];
  //  NSLog([characterArrayMutable componentsJoinedByString:@";"]);
    
    NSSortDescriptor *sortThisAlphabetically = [[NSSortDescriptor alloc] initWithKey:nil ascending:YES selector:@selector(localizedCaseInsensitiveCompare:)];
    [characterArrayMutable sortUsingDescriptors: @[sortThisAlphabetically]];
//    NSLog([characterArrayMutable componentsJoinedByString:@";"]);
    return characterArrayMutable;
}

- (BOOL) characterArrayContainsWorf:(NSArray *)characterArray {
    /* WORK HERE */
    return NO;
}

@end
