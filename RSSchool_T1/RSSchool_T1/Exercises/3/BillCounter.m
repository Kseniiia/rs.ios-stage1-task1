#import "BillCounter.h"

@implementation BillCounter

// Complete the following fuction
- (NSString*)compareResultForBill:(NSArray<NSNumber*>*)bill notIncludingElementWithIndex:(NSInteger)index withGivenSum:(NSNumber*)sum {
    
    NSUInteger count = [bill count];
    NSUInteger allSum = 0;
    NSInteger diff;
    
    for (NSUInteger i = 0; i < count; i++) {
        if (i != index) {
            allSum += [[bill objectAtIndex:i] integerValue];
        }
    }
    
    allSum = allSum / 2;
    
    if (allSum == [sum integerValue]) {
        return @"Bon Appetit";
    }
    else {
        diff = [sum integerValue] - allSum;
        
        return [NSString stringWithFormat:@"%ld", diff];
    }
}

@end
