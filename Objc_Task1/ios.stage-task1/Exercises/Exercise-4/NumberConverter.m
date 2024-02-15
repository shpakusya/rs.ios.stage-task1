#import "NumberConverter.h"

@implementation NumberConverter

- (NSArray *)numberConverter:(NSNumber *)number {
    NSMutableArray *convertedM = [[NSMutableArray alloc] init]; 
    NSUInteger intNumber = abs([number intValue]);

    if(number != nil){
        NSUInteger i;
        
        for(i  = 10; i<intNumber; i=i*10){
            NSInteger intToArray = intNumber%i;
            intNumber = intNumber - intToArray;
            NSString *numToArray = [NSString stringWithFormat:@"%ld", intToArray/(i/10)];
            [convertedM addObject:numToArray];
        }
        
        NSString *numToArray = [NSString stringWithFormat:@"%ld", intNumber/(i/10)];
        [convertedM addObject:numToArray];

    }

    return convertedM;
}

@end
