//
//  StuffRememberer.m
//  BlocExercises
//
//  Created by Aaron on 6/12/14.
//
//

#import "StuffRememberer.h"

@implementation StuffRememberer

- (void) rememberThisArrayForLater:(NSMutableArray *)arrayToRemember {
    self.rememberedArray = arrayToRemember;
}

- (void) copyThisArrayForLater:(NSMutableArray *)arrayToCopy {
    self.rememberedToCopyArray = arrayToCopy;
}

- (void) rememberThisFloatForLater:(CGFloat)floatToRemember {
    self.rememberedFloat = floatToRemember;
    // don't understand why we need the & symbol
}

- (NSMutableArray *) arrayYouShouldRemember {
    if ([self rememberedArray] != nil) {
       return [self rememberedArray];
    }
    return nil;
}

- (NSMutableArray *) arrayYouShouldCopy {
    if ([self rememberedToCopyArray] != nil) {
        return [self rememberedToCopyArray];
    }
    return nil;
}

- (CGFloat) floatYouShouldRemember {
    if ([self rememberedFloat] != NSNotFound) {
        return [self rememberedFloat];
    }
    return NSNotFound;
  
}

@end