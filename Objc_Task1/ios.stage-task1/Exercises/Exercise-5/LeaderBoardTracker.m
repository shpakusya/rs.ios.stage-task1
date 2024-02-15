#import "LeaderBoardTracker.h"

@interface LeaderBoardTracker()

@property (nonatomic, strong) NSArray <NSNumber *> *playersPlaces;

@end

@implementation LeaderBoardTracker

- (NSArray <NSNumber *> *)trackLeaderBoard:(NSArray <NSNumber *> *)rankedArray
                               playerArray:(NSArray <NSNumber *> *)playerArray {
    NSMutableArray *ranks = [[NSMutableArray alloc] init];
    
    NSOrderedSet *orderedSet = [NSOrderedSet orderedSetWithArray:rankedArray];
    NSMutableArray *rankedClear = [[orderedSet array] mutableCopy];
    
    for (NSUInteger i = 0; i<playerArray.count; i++) {
        if(rankedArray.count == 0){
            [ranks addObject:@(1)];
        }else if([rankedClear indexOfObject:playerArray[i]] < rankedClear.count){
            [ranks addObject:@([rankedClear indexOfObject:playerArray[i]]+1)];
        }else{
            if([playerArray[i] intValue]<[rankedClear.lastObject intValue]){
                [ranks addObject:@(rankedClear.count+1)];
            }else{
                for (NSUInteger y = 0; y<rankedClear.count; y++) {
                    if([playerArray[i] intValue] > [rankedClear[y] intValue]){
                        [ranks addObject:@(y+1)];
                        break;
                    }
                }
            }
        }
    }
    
    return ranks;
}

@end
