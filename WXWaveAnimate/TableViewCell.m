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
//        self.type = type;
        self.backgroundColor = KBackgroundColor;
        [self setUpUI];
    }
    return self;
}

- (void)setWaveAlpha:(double)waveAlpha
{
    _waveAlpha = waveAlpha;
    self.waveView.alpha = waveAlpha;
}

- (void)setTextColor:(UIColor *)textColor
{
    if (_textColor != textColor) {
        _textColor = textColor;
    }
    self.percentLabel.textColor = textColor;
    self.txtLabel.textColor = textColor;
}

- (void)setPercent:(int)percent
{
    _percent = percent;
    self.percentLabel.text = [NSString stringWithFormat:@"%d%%",percent];
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
    
    self.percentLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, self.rotateView.frame.size.width, self.rotateView.frame.size.width/3 -3)];
    [self.percentLabel setCenter:CGPointMake(self.rotateView.frame.size.width/2, self.rotateView.frame.size.height/2)];
    self.percentLabel.font = [UIFont systemFontOfSize:self.percentLabel.frame.size.height - 7 weight:0.5]; //[UIFont fontWithName:nil size:self.percentLabel.frame.size.height - 7];
    self.percentLabel.textAlignment = NSTextAlignmentCenter;
    self.percentLabel.text = [NSString stringWithFormat:@"%d%%",self.percent];
    
    [self.rotateView addSubview:self.percentLabel];
    self.txtLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, CGRectGetMaxY(self.percentLabel.frame), self.rotateView.frame.size.width/2, self.rotateView.frame.size.width/6)];
    [self.txtLabel setCenter:CGPointMake(self.rotateView.frame.size.width/2, self.txtLabel.center.y)];
    self.txtLabel.font = [UIFont fontWithName:nil size:self.txtLabel.frame.size.height - 8];
    self.txtLabel.textAlignment = NSTextAlignmentCenter;
//    [txtLabel setBackgroundColor:[UIColor blueColor]];
    self.txtLabel.text = @"总评分";
    [self.rotateView addSubview:self.txtLabel];
    [self addAnimation];
}

- (void)addAnimation
{
    CABasicAnimation *levelAnimation = [CABasicAnimation animationWithKeyPath:@"position.x"];
    CABasicAnimation *straightAnimation = [CABasicAnimation animationWithKeyPath:@"position.y"];
    if (self.animationLevelType == AnimationLevelType_KeepRoll) {
        
    }
    else
    {
        
    }
    
    if (self.animationStraightType == AnimationStraightType_RiseUpStraight) {
        
    }
    else
    {
        
    }
}

- (void)beginAnimation
{
    
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
