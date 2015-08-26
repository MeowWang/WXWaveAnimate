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
    NSLog(@"%f,%f",self.rotateView.center.x,self.rotateView.center.y);
    NSLog(@"%@",NSStringFromCGRect(self.rotateView.bounds));
//    [self.waveView setCenter:self.rotateView.center];
    [self.waveView.layer setCornerRadius:self.waveView.frame.size.width/2];
    [self.waveView setClipsToBounds:YES];
    [self.waveView setBackgroundColor:[UIColor clearColor]];
    [self.waveView setAlpha:0.5];
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
