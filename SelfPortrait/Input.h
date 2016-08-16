//
//  Input.h
//  SelfPortrait
//
//  Created by Princess Sampson on 8/16/16.
//  Copyright © 2016 Princess Sampson. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Input : NSObject

BOOL getStringFromUser(char name[], int nameLength);

NSInteger getNumberFromUser(int maxValidChoice);

@end
