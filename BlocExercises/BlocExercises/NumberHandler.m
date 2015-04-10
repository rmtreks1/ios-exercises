//
//  NumberHandler.m
//  BlocExercises
//
//  Created by Aaron on 6/11/14.
//
//

#import "NumberHandler.h"

@implementation NumberHandler

- (NSNumber *) numberThatIsTwiceAsBigAsNumber:(NSNumber *)number {
    int newNumberInt = [number intValue]*2;
    NSNumber *newNumber = [NSNumber numberWithInt:newNumberInt];
    
    return newNumber;
}

- (NSArray *) arrayOfNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    NSMutableArray *arrayOfNumbers = [[NSMutableArray alloc]init];
    
    NSInteger lowerLimit = MIN(number, otherNumber);
    NSInteger upperLimit = MAX(number, otherNumber);
    
    for (NSInteger numberToAdd = lowerLimit; numberToAdd <= upperLimit; numberToAdd++) {
        [arrayOfNumbers addObject:[NSNumber numberWithInteger:numberToAdd]];
    }
    
    
    return arrayOfNumbers;
}

- (NSInteger) lowestNumberInArray:(NSArray *)arrayOfNumbers {
    /* WORK HERE */
    return 0;
}

@end
