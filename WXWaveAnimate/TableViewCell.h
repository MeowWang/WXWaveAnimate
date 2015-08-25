//
//  TableViewCell.h
//  WXWaveAnimate
//
//  Created by 王雪利 on 15/8/24.
//  Copyright (c) 2015年 王雪利. All rights reserved.
//

#import <UIKit/UIKit.h>
#define KBackgroundColor [UIColor colorWithRed:53/255.0 green:188/255.0 blue:167/255.0 alpha:1]

@interface TableViewCell : UITableViewCell
@property (nonatomic, strong)UIImageView *rotateView;
@property (nonatomic, strong)UIImageView *waveView;
@property (nonatomic, assign)int type;

- (instancetype)initWithType:(int)type withFrame:(CGRect)frame;

@end
