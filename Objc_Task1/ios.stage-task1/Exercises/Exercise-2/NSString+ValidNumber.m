#import "NSString+ValidNumber.h"

@implementation NSString (ValidNumber)

- (BOOL)isValidNumber {
    BOOL result = NO;
    
    NSNumberFormatter *f = [[NSNumberFormatter alloc] init];
    f.numberStyle = NSNumberFormatterDecimalStyle;
    NSNumber *myNumber = [f numberFromString:self];
    
    if(myNumber != nil){
        result = YES;
    }
        
    
    return result;
}

@end
