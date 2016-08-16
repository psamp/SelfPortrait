//
//  main.m
//  SelfPortrait
//
//  Created by Princess Sampson on 8/16/16.
//  Copyright © 2016 Princess Sampson. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *p = [Person new];
        [p setName:@"Angelica Schuyler"];
        [p setAge:24];
        
        [p addInterest:@"Reading books"];
        [p addInterest:@"Letter writing"];
        [p addInterest:@"Including women in the sequel"];
        
        NSLog(@"%@", p);
    }
    return 0;
}
