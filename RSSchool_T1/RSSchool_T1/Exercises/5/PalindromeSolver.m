#import "PalindromeSolver.h"

@implementation PalindromeSolver

// Complete the highestValuePalindrome function below.
- (NSString *) highestValuePalindrome:(NSString *)s n:(NSNumber *)n k:(NSNumber *)k {
    
    NSUInteger length = [n unsignedIntegerValue];
    NSUInteger count = 0;
    
    for (NSUInteger i = 0; i < length / 2; i++) {
        if ([s characterAtIndex:i] != [s characterAtIndex:length - i - 1]) {
            count++;
        }
    }
    
    NSUInteger kk = [k unsignedIntegerValue];
    if (count > kk) {
        return @"-1";
    }
    
    NSMutableString *palindrome = [s mutableCopy];
    
    NSUInteger d = kk - count;
    for (NSUInteger i = 0; i < length / 2; i++) {
        unichar ch1 = [s characterAtIndex:i];
        unichar ch2 = [s characterAtIndex:length - i - 1];
        
        unichar ch = (ch1 > ch2 ? ch1 : ch2);
        
        NSUInteger p = (ch1 == ch2 ? 2 : 1);
        if (d >= p && ch != '9') {
            d -= p;
            ch = '9';
        }
        
        if (ch != ch1) {
            [palindrome replaceCharactersInRange:NSMakeRange(i, 1) withString:[NSString stringWithCharacters:&ch length:1]];
        }
        
        if (ch != ch2) {
            [palindrome replaceCharactersInRange:NSMakeRange(length - i - 1, 1) withString:[NSString stringWithCharacters:&ch length:1]];
        }
    }
    
    return palindrome;
}

@end
