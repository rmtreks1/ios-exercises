//
//  AwesomeCounter.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "AwesomeCounter.h"

@implementation AwesomeCounter

- (NSString *) stringWithNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    /* WORK HERE */
    
    NSInteger lowerLimit = MIN(number, otherNumber);
    NSInteger upperLimit = MAX(number, otherNumber);
    
    NSMutableString *awesomeCounterString;
    
    awesomeCounterString = [[NSMutableString alloc] init];
    
    for (NSInteger counter = lowerLimit; counter <= upperLimit; counter++) {
        [awesomeCounterString appendString:[NSMutableString stringWithFormat:@"%ld", counter]];
        
    };

//    [awesomeCounterString appendString:[NSMutableString stringWithFormat:@"%ld", upperLimit]];
    
    //NSLog(awesomeCounterString);
    
    
    
    
    return awesomeCounterString;
}

@end
