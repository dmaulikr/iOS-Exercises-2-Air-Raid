//
//  KLBTurret.m
//  Air Raid
//
//  Created by Chase Gosingtian on 8/19/14.
//  Copyright (c) 2014 KLab Cyscorpions, Inc. All rights reserved.
//

#import "KLBTurret.h"
#import "KLBBullet.h"
#import "KLBShip.h"

@implementation KLBTurret

@synthesize angle = _angle,
            firingSpeed = _firingSpeed,
            bullet = _bullet,
            turretType = _turretType,
            owner = _owner;

#pragma mark - Dealloc
- (void) dealloc {
    [_owner release];
    [_bullet release];
    
    _owner = nil;
    _bullet = nil;
    
    [super dealloc];
}

#pragma mark - Initializers
// Designated Initializer
- (instancetype) initWithTurretType:(TurretTypes)t owner:(KLBShip *)o {
    self = [super init];
    KLBBullet *bulletInit;
    if (self) {
        bool playerBullet = false;
        if ([o isPlayer]) playerBullet = true;
        switch (t)
        {
            case ttMachineGun:
                bulletInit = [[KLBBullet alloc] initWithBulletType:btMachineGun playerBullet:playerBullet];
                [self setTurretType:t angle:0.0 firingSpeed:0.1 bullet:bulletInit];
                break;
            case ttCannon:
                bulletInit = [[KLBBullet alloc] initWithBulletType:btCannon playerBullet:playerBullet];
                [self setTurretType:t angle:0.0 firingSpeed:1.0 bullet:bulletInit];
                break;
            case ttDefault:
                bulletInit = [[KLBBullet alloc] initWithBulletType:btDefault playerBullet:playerBullet];
                [self setTurretType:t angle:0.0 firingSpeed:0.5 bullet:bulletInit];
                break;
                default:
                bulletInit = [[KLBBullet alloc] initWithBulletType:btDefault playerBullet:playerBullet];
                [self setTurretType:t angle:0.0 firingSpeed:0.5 bullet:bulletInit];
                break;
        }
        //[bulletInit release];
        
        _owner = o;
    }
    
    return self;
}

- (instancetype) init {
    self = [super init];
    if (self) {
        self = [self initWithTurretType:ttDefault owner:nil];
    }
    return self;
}

#pragma mark - Getters and Setters
- (void) setAngle:(CGFloat)angle {
    _angle = angle;
}

- (void) setTurretType:(TurretTypes)t angle:(CGFloat)a firingSpeed:(CGFloat)f bullet:(KLBBullet *)b {
    _turretType = t;
    _angle = a;
    _firingSpeed = f;
    _bullet = b;
}

- (CGFloat) firingSpeed {
    return _firingSpeed;
}

- (KLBBullet *) bullet {
    return _bullet;
}

- (KLBShip *) owner {
    return _owner;
}

@end