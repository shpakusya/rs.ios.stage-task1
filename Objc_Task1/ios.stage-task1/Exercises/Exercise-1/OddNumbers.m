//
//  OddNumbers.m
//  ios.stage-task1
//
//  Created by Alex Tsybulko on 4.05.21.
//

#import <Foundation/Foundation.h>
#import "OddNumbers.h"

@implementation OddNumbers

- (NSInteger)oddNumbers:(NSArray <NSNumber *> *)array {
    NSUInteger oddCount = 0;
    
    for(NSNumber *num in array){
        NSUInteger intNum = [num intValue];
        
        if(intNum % 2){
            oddCount++;
        }
    }
    
    return oddCount;
}

@end
