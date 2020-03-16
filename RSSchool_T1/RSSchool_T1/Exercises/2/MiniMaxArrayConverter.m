#import "MiniMaxArrayConverter.h"

@implementation MiniMaxArrayConverter

// Complete the convertFromArray function below.
- (NSArray<NSNumber*>*)convertFromArray:(NSArray<NSNumber*>*)array {
    NSUInteger count = [array count];
    
    if (count > 0) {
        NSUInteger sum = 0;
        for (NSUInteger i = 0; i < count; i++) {
            sum += [[array objectAtIndex:i] unsignedIntegerValue];
        }
        
        NSUInteger minSum, maxSum;
        
        minSum = sum - [[array objectAtIndex:0] unsignedIntegerValue];
        maxSum = minSum;
        
        for (NSUInteger i = 1; i < count; i++) {
            NSUInteger s = sum - [[array objectAtIndex:i] unsignedIntegerValue];
            
            if (s < minSum) {
                minSum = s;
            }
            if (s > maxSum) {
                maxSum = s;
            }
        }
        
        return @[[NSNumber numberWithUnsignedInteger:minSum], [NSNumber numberWithUnsignedInteger:maxSum]];
    }
    
    return @[];
}

@end
