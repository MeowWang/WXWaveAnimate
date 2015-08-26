//
//  TableViewCell.m
//  WXWaveAnimate
//
//  Created by 王雪利 on 15/8/24.
//  Copyright (c) 2015年 王雪利. All rights reserved.
//

#import "TableViewCell.h"

@implementation TableViewCell

- (instancetype)initWithType:(int)type withFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setFrame:frame];
        self.type = type;
        self.backgroundColor = KBackgroundColor;
        [self setUpUI];
    }
    return self;
}

- (void)setUpUI
{
    self.rotateView  = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"fb_rotation.png"]];
    [self.rotateView setFrame:CGRectMake(0, 0, self.frame.size.height-20, self.frame.size.height-20)];
    [self.rotateView setCenter:self.center];
//    [self.rotateView.layer setCornerRadius:self.rotateView.frame.size.width/2];
    [self.rotateView setBackgroundColor:[UIColor clearColor]];
    [self.rotateView setClipsToBounds:YES];
    [self addSubview:self.rotateView];
    
    self.waveView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"fb_wave.png"]];
    [self.waveView setFrame:CGRectMake(0, 0, self.rotateView.frame.size.width-11, self.rotateView.frame.size.width-11)];
    [self.waveView.layer setPosition:CGPointMake(self.rotateView.frame.size.width/2, self.rotateView.frame.size.height/2)];
    [self.waveView.layer setCornerRadius:self.waveView.frame.size.width/2];
    [self.waveView setClipsToBounds:YES];
    self.waveView.alpha = self.waveAlpha;
    [self.waveView setBackgroundColor:[UIColor clearColor]];
    [self.rotateView addSubview:self.waveView];
    
    UILabel *percentLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, self.rotateView.frame.size.width, self.rotateView.frame.size.width/3 -3)];
    [percentLabel setCenter:CGPointMake(self.rotateView.frame.size.width/2, self.rotateView.frame.size.height/2)];
    percentLabel.font = [UIFont fontWithName:nil size:percentLabel.frame.size.height - 4];
    percentLabel.textAlignment = NSTextAlignmentCenter;
    percentLabel.text = [NSString stringWithFormat:@"%d%%",self.percent];
    percentLabel.textColor = self.textColor;
    [self.rotateView addSubview:percentLabel];
    UILabel *txtLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, CGRectGetMaxY(percentLabel.frame) + 2, self.rotateView.frame.size.width/2, self.rotateView.frame.size.width/6)];
    [txtLabel setCenter:CGPointMake(self.rotateView.frame.size.width/2, txtLabel.center.y)];
    txtLabel.font = [UIFont fontWithName:nil size:txtLabel.frame.size.height - 8];
    txtLabel.textAlignment = NSTextAlignmentCenter;
//    [txtLabel setBackgroundColor:[UIColor blueColor]];
    txtLabel.text = @"总评分";
    txtLabel.textColor = self.textColor;
    [self.rotateView addSubview:txtLabel];
    [self addAnimation];
}

- (void)addAnimation
{
    switch (self.type) {
        case 0:
            
            break;
        case 1:
            
            break;
        case 2:
            
            break;
        case 3:
            
            break;
            
        default:
            break;
    }
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
