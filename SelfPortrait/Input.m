//
//  Input.m
//  SelfPortrait
//
//  Created by Princess Sampson on 8/16/16.
//  Copyright © 2016 Princess Sampson. All rights reserved.
//

#import "Input.h"

@implementation Input

BOOL getStringFromUser(char name[], int nameLength) {
    char *result = NULL;
    
    while (result != name) {
        fpurge(stdin);
        result = fgets(name, nameLength, stdin);
    }
    
    return YES;
}

NSInteger getNumberFromUser(int maxValidChoice) {
    NSInteger choice = 0;
    int numberOfItemsScanned = 0;
    int firstValidChoice = 0;
    
    fpurge(stdin);
    numberOfItemsScanned = scanf("%ld", &choice);
    if ((numberOfItemsScanned == 1) && (choice >= firstValidChoice) && (choice <= maxValidChoice)) {
        return choice;
    }
    
    return -1;
}

@end
