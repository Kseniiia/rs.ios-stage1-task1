#import "T1Array.h"

@implementation T1Array

// Complete the following fuction
- (NSArray *)convertToHappy:(NSArray *)sadArray {
    NSMutableArray *happyArray = [sadArray mutableCopy];
    
    bool isHappy;
    
    do {
        isHappy = true;
        int count = (int) [happyArray count];
        for (int i = 1; i < count - 1; i++) {
            int prev = [[happyArray objectAtIndex:i - 1] intValue];
            int curr = [[happyArray objectAtIndex:i] intValue];
            int next = [[happyArray objectAtIndex:i + 1] intValue];
            
            if (prev + next < curr) {
                [happyArray removeObjectAtIndex:i];
                isHappy = false;
                break;
            }
        }
    } while(!isHappy);
    
    return happyArray;
}

@end
