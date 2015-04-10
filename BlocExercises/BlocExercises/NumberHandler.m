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
    // ideally should check the type that is coming in.
    int newNumberInt = [number intValue]*2;
    NSNumber *newNumber = [NSNumber numberWithInt:newNumberInt];
    
    return newNumber;
}

- (NSArray *) arrayOfNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    NSMutableArray *arrayOfNumbers = [[NSMutableArray alloc]init];
    
    NSInteger lowerLimit = MIN(number, otherNumber);
    NSInteger upperLimit = MAX(number, otherNumber);
    
    for (NSInteger numberToAdd = lowerLimit; numberToAdd <= upperLimit; numberToAdd++) {
        [arrayOfNumbers addObject:@(numberToAdd)];
    }
    
    
    return arrayOfNumbers;
}

- (NSInteger) lowestNumberInArray:(NSArray *)arrayOfNumbers {
    // sort the array in ascending order
    
    NSMutableArray *mutuableArrayOfNumbers = [arrayOfNumbers mutableCopy];
    NSSortDescriptor *ascendingSorter = [[NSSortDescriptor alloc] initWithKey:nil ascending:YES];
    [mutuableArrayOfNumbers sortUsingDescriptors:@[ascendingSorter]];
    
    
    
    return [mutuableArrayOfNumbers[0] integerValue];
}

@end
