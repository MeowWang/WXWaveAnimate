//
//  TableViewCell.h
//  WXWaveAnimate
//
//  Created by 王雪利 on 15/8/24.
//  Copyright (c) 2015年 王雪利. All rights reserved.
//

#import <UIKit/UIKit.h>
#define KBackgroundColor [UIColor colorWithRed:53/255.0 green:188/255.0 blue:167/255.0 alpha:1]

typedef enum
{
    AnimationStraightType_RiseUpStraight,
    AnimationStraightType_RiseUpAndFall,
}AnimationStraightType;

typedef enum
{
    AnimationLevelType_KeepRoll,
    AnimationLevelType_StopWhenReach,
}AnimationLevelType;

@interface TableViewCell : UITableViewCell
@property (nonatomic, strong)UIImageView *rotateView;
@property (nonatomic, strong)UIImageView *waveView;
@property (nonatomic, strong)UIColor *textColor;
@property (nonatomic, assign)int animationType;
@property (nonatomic, assign)int percent;
@property (nonatomic, assign)double waveAlpha;

- (instancetype)initWithType:(int)type withFrame:(CGRect)frame;

@end
