#ifndef LearningOC_Boss_h
#define LearningOC_Boss_h
#import "Person.h"

@interface Boss: NSObject {
    
}

+ (void) setMaximumWorkerCapacity: (int) capacity;
+ (void) setDefaultPaycheckForWorkers: (double) paycheck;
- (void) hireWorker: (Person*) worker;
- (void) payWorkers;

@property NSMutableArray *workers;

@end

#endif
