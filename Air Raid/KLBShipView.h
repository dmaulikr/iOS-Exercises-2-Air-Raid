//
//  KLBShipView.h
//  Air Raid
//
//  Created by Chase Gosingtian on 8/19/14.
//  Copyright (c) 2014 KLab Cyscorpions, Inc. All rights reserved.
//

#import <UIKit/UIKit.h>
@class KLBShip;

@interface KLBShipView : UIImageView

- (instancetype)initWithCoordinates:(CGPoint)coordinates;
- (void)updateCoordinatesX:(CGFloat)x Y:(CGFloat)y;

@end
