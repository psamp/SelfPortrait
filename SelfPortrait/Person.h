//
//  Person.h
//  SelfPortrait
//
//  Created by Princess Sampson on 8/16/16.
//  Copyright © 2016 Princess Sampson. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject {
    NSString *_name;
    NSInteger _age;
    NSString *_favoriteFood;
    NSMutableArray *_interests;
}

- (NSString *)name;
- (void)setName:(NSString *)name;

- (NSInteger)age;
- (void)setAge:(NSInteger)age;

- (NSString *)favoriteFood;

- (NSArray *)interests;
- (void)addInterest:(NSString *)interest;


@end
