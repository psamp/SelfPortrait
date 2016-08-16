//
//  main.m
//  SelfPortrait
//
//  Created by Princess Sampson on 8/16/16.
//  Copyright © 2016 Princess Sampson. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Input.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        BOOL addingInterests = YES;
        Person *p = [Person new];
        
        [p setName:getStringFromUser(30, @"What's your name? 30 characters or less, please.")];
        [p setAge:getNumberFromUser(150, @"What's your age? I won't believe you if you say you're older than 150.")];
        
        while (addingInterests) {
            
            for (int i = 0; i < 3; i++) {
                [p addInterest:getStringFromUser(30, @"Enter a hobby, passion, or interest. 30 characters or less.")];
            }
            
            if (getNumberFromUser(1, @"Are you done addding things? Enter 0 for yes, 1 for no.") == 0) {
                addingInterests = NO;
            }
        }
        
        NSLog(@"%@", p);
    }
    return 0;
}
