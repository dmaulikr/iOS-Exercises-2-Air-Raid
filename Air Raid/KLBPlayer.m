//
//  KLBPlayer.m
//  Air Raid
//
//  Created by Chase Gosingtian on 8/19/14.
//  Copyright (c) 2014 KLab Cyscorpions, Inc. All rights reserved.
//

#import "KLBPlayer.h"

@implementation KLBPlayer

@synthesize score = _score,
            name = _name;

#pragma mark - Initializers
- (instancetype) init {
    self = [super init];
    if (self) {
        _score = 0;
        _name = @"Player";
    }
    return self;
}

#pragma mark - Getters and Setters
- (void) setName:(NSString *)name {
    _name = name;
}

@end