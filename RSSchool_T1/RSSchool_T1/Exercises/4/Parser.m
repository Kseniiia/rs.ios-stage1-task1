#import "Parser.h"

@implementation Parser

// Complete the parseString function below.
- (NSArray <NSString*>*)parseString:(NSString*)string {
    
    NSMutableArray *array = [[NSMutableArray alloc] init];
    NSUInteger length = [string length];
    NSUInteger numOpen;
    
    for (NSUInteger i = 0; i < length; i++) {
        unichar openBracket = [string characterAtIndex:i];
        if (openBracket == '(' || openBracket == '[' || openBracket == '<') {
            numOpen = 0;
            for (NSUInteger j = i + 1; j < length; j++) {
                unichar closeBracket = [string characterAtIndex:j];
                if (closeBracket == openBracket) {
                    numOpen++;
                } else {
                    if ((closeBracket == ')' && openBracket == '(') || (closeBracket == ']' && openBracket == '[') || (closeBracket == '>' && openBracket == '<')) {
                        if (numOpen == 0) {
                            NSString *substr = [string substringWithRange:NSMakeRange(i + 1, j - (i + 1))];
                            [array addObject:substr];
                            break;
                        } else {
                            numOpen--;
                        }
                    }
                }
            }
        }
    }
    
    return array;
}

@end
