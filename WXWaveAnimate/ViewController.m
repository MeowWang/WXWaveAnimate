//
//  ViewController.m
//  WXWaveAnimate
//
//  Created by 王雪利 on 15/8/20.
//  Copyright (c) 2015年 王雪利. All rights reserved.
//

#import "ViewController.h"
#import "TableViewController.h"

@interface ViewController ()
{
    int _percentage;
}
@property (nonatomic, strong)UILabel *discriptionLabel;
@property (nonatomic, strong)UITextField *percentTxtView;
@property (nonatomic, strong)UIButton *pushButton;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CGFloat R0 = 56/255.0;
    CGFloat G0 = 189/255.0;
    CGFloat B0 = 174/255.0;
    
    [self.navigationController.navigationBar setBarTintColor:[UIColor colorWithRed:R0 green:G0 blue:B0 alpha:1]];
    [self.navigationController.navigationBar setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor orangeColor],NSForegroundColorAttributeName, nil]];
    
    [self.view setBackgroundColor:KBackgroundColor];

    [self addLabel];
    [self addTextfield];
    [self addBtn];
    [self arrangeUI];
}

- (void)addLabel
{
    self.discriptionLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 60)];
    [self.discriptionLabel setBackgroundColor:[UIColor clearColor]];
    [self.discriptionLabel setTextColor:[UIColor orangeColor]];
    [self.discriptionLabel setTextAlignment:NSTextAlignmentCenter];
    [self.discriptionLabel setText:@"please set percent 0-100"];
    [self.discriptionLabel setFont:[UIFont fontWithName:@"Futura-CondensedMedium" size:25]];
    
    [self.view addSubview:self.discriptionLabel];
    
//    echo "# TEST" >> README.md
//    git init
//    git add README.md
//    git commit -m "first commit"
//    git remote add origin https://MeowWang:wxlwxl123@github.com/MeowWang/TEST.git
//    git push -u origin master
}

- (void)addTextfield
{
    self.percentTxtView = [[UITextField alloc]initWithFrame:CGRectMake(0, 0, 90, 30)];
//    [self.percentTxtView ]
    [self.percentTxtView setBackgroundColor:[UIColor whiteColor]];
    [self.percentTxtView setTextColor:[UIColor colorWithRed:165/255.0 green:165/255.0 blue:165/255.0 alpha:1]];
    [self.percentTxtView setFont:[UIFont fontWithName:nil size:13]];
    [self.percentTxtView setPlaceholder:@"0~100"];
    
    CGRect frame = self.percentTxtView.frame;
    frame.size.width = 7;
    UIView *leftView = [[UIView alloc]initWithFrame:frame];
    self.percentTxtView.leftView = leftView;
    self.percentTxtView.leftViewMode = UITextFieldViewModeAlways;
    [self.percentTxtView.layer setCornerRadius:5];
    [self.percentTxtView.layer setBorderColor:[UIColor colorWithRed:123/255.0 green:178/255.0 blue:169/255.0 alpha:1].CGColor];
    [self.percentTxtView.layer setBorderWidth:0.5];
    [self.view addSubview:self.percentTxtView];
}

- (void)addBtn
{
    self.pushButton = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, 70, 30)];
    [self.pushButton setTitle:@"PUSH" forState:UIControlStateNormal];
    [self.pushButton setTitleColor:[UIColor colorWithRed:220/255.0 green:220/255.0 blue:220/255.0 alpha:1] forState:UIControlStateNormal];
//    [self.pushButton setTitleColor:[UIColor colorWithRed:115/255.0 green:115/255.0 blue:115/255.0 alpha:1] forState:UIControlStateSelected];
    [self.pushButton setBackgroundColor:[UIColor clearColor]];
    [self.pushButton addTarget:self action:@selector(pushTableVC) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.pushButton];
}

- (void)pushTableVC
{
    _percentage = [self.percentTxtView.text intValue];
    TableViewController *tableVC = [[TableViewController alloc]init];
    [tableVC setPercent:_percentage];
    [self.navigationController pushViewController:tableVC animated:YES];
    
}

- (void)arrangeUI
{
    [self.discriptionLabel setCenter:CGPointMake(self.view.frame.size.width/2, 110)];
    
    [self.percentTxtView setFrame:CGRectMake(self.percentTxtView.frame.origin.x, CGRectGetMaxY(self.discriptionLabel.frame) + 10, self.percentTxtView.frame.size.width, self.percentTxtView.frame.size.height)];
    [self.percentTxtView setCenter:CGPointMake(self.view.frame.size.width/2, self.percentTxtView.center.y)];
    
    [self.pushButton setFrame:CGRectMake(self.percentTxtView.frame.origin.x, CGRectGetMaxY(self.percentTxtView.frame)+5, self.pushButton.frame.size.width, self.pushButton.frame.size.height)];
    [self.pushButton setCenter:CGPointMake(self.view.frame.size.width/2, self.pushButton.center.y)];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
