#import <Foundation/Foundation.h>
#import "Person.h"

@implementation Person {
    
}

- (void) pay: (int) amount {
    self.balance += amount;
}

- (id) init {
    self = [super init];
    self.balance = 0;
    return self;
}

@end
