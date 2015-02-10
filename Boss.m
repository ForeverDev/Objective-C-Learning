//
//  Boss.m
//  LearningOC
//
//  Created by David Wilson on 2/10/15.
//  Copyright (c) 2015 Wilson. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Boss.h"
#import "Person.h"

static int workerCapacity = 50;
static double defaultPaycheck = 50;

@implementation Boss {
    
}

+ (void) setMaximumWorkerCapacity: (int) capacity {
    workerCapacity = capacity;
}

+ (void) setDefaultPaycheckForWorkers: (double) paycheck {
    defaultPaycheck = paycheck;
}

- (void) hireWorker: (Person*) worker {
    if (self.workers.count < workerCapacity) {
        [self.workers addObject: worker];
    } else {
        NSLog(@"A boss attempted to hire a worked, but his maximum worker capacity has been exceeded!");
    }
}

- (void) payWorkers {
    for (int i = 0; i < self.workers.count; i++) {
        [[self.workers objectAtIndex: i] pay: defaultPaycheck];
    }
}

- (id) init {
    self = [super init];
    self.workers = [[NSMutableArray alloc] initWithCapacity: workerCapacity];
    return self;
}

@end
