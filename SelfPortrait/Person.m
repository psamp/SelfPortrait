//
//  Person.m
//  SelfPortrait
//
//  Created by Princess Sampson on 8/16/16.
//  Copyright © 2016 Princess Sampson. All rights reserved.
//

#import "Person.h"

@implementation Person

- (NSString *)description {
    return [NSString stringWithFormat:@"Hello, it's a pleasure to meet you. My name is %@ and I'm %@ years old. I like eating %@, and my interests include: %@.", [self name], @([self age]), [self favoriteFood], [[self interests] componentsJoinedByString:@", "]];
}

- (NSString *)name {
    return _name;
}

- (void)setName:(NSString *)name {
    _name = name;
}

- (NSInteger)age {
    return _age;
}

- (void)setAge:(NSInteger)age {
    _age = age;
}

- (NSString *)favoriteFood {
    
    if (_favoriteFood == NULL) {
        _favoriteFood = @"macarons";
    }
    
    return _favoriteFood;
}

- (NSArray *)interests {
    
    [self ensureInterestsNotNull];
    
    return _interests;
}

- (void)addInterest:(NSString *)interest{
    
    [self ensureInterestsNotNull];
    
    [_interests addObject:interest];
}

- (void)ensureInterestsNotNull {
    if (_interests == NULL) {
        _interests = [NSMutableArray array];
    }
}

@end
