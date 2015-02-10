#import <Foundation/Foundation.h>
#import "Person.h"
#import "Boss.h"

int main(int argc, const char *argv[]) {
    @autoreleasepool {
        [Boss setDefaultPaycheckForWorkers: 100.50];
        [Boss setMaximumWorkerCapacity: 100];
        Boss *boss = [[Boss alloc] init];
        for (int i = 0; i < 100; i++) {
            [boss hireWorker: [[Person alloc] init]];
        }
        [boss payWorkers];
        NSLog(@"Worker one's balance: %f", (double) [[[boss workers] objectAtIndex: 0] balance]);
    }
    return 0;
}
