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
    [self.waveView setFrame:CGRectMake(0, 0, self.rotateView.frame.size.width-4, self.rotateView.frame.size.width-4)];
    [self.waveView.layer setPosition:self.rotateView.center];
//    [self.waveView setCenter:self.rotateView.center];
    [self.waveView.layer setCornerRadius:self.waveView.frame.size.width/2];
    [self.waveView setClipsToBounds:YES];
    [self.waveView setBackgroundColor:[UIColor clearColor]];
    [self.rotateView addSubview:self.waveView];

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
