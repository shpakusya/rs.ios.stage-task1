#import "NSArray+MinRotated.h"

@implementation NSArray (MinRotated)

- (NSNumber *)minRotated {
    
    if (self == nil || self.count == 0)
          return nil;
      
      NSInteger first = 0;
      NSInteger last = self.count - 1;
      
      while (first < last) {
          NSInteger middle = first + (last - first)/2;
          if([self[middle] intValue] > [self[last] intValue])
             first = middle + 1;
          else
             last = middle;
      }
      return self[last];
}

@end
