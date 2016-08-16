//
//  Input.m
//  SelfPortrait
//
//  Created by Princess Sampson on 8/16/16.
//  Copyright © 2016 Princess Sampson. All rights reserved.
//

#import "Input.h"

@implementation Input

NSString* getStringFromUser(int strLength, NSString *prompt) {
    char *result = NULL;
    char* str = malloc(sizeof(char) * strLength);
    
    while (result != str || ([@(str) length] <= 1 || [@(str) length] > strLength)) {
        NSLog(@"%@", prompt);
        fpurge(stdin);
        result = fgets(str, strLength, stdin);
    }
    
    return @(str);
}

NSInteger getNumberFromUser(int maxValidChoice, NSString *prompt) {
    NSInteger choice = -1;
    int numberOfItemsScanned = 0;
    NSInteger minValidChoice = 0;
    
    while (numberOfItemsScanned != 1 || (choice < minValidChoice || choice > maxValidChoice)) {
        NSLog(@"%@", prompt);
        fpurge(stdin);
        numberOfItemsScanned = scanf("%ld", &choice);
    }
    
    return choice;
}

@end
