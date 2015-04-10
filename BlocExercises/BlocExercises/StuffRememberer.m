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
    /* WORK HERE */
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
    /* WORK HERE */
    return 0.0f;
}

@end