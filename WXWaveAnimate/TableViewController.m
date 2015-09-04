//
//  TableViewController.m
//  WXWaveAnimate
//
//  Created by 王雪利 on 15/8/20.
//  Copyright (c) 2015年 王雪利. All rights reserved.
//

#import "TableViewController.h"

#define kCellHeight     [UIScreen mainScreen].bounds.size.height/4

@interface TableViewController ()
{
    int _percent;
}
@property (nonatomic, strong)TableViewCell *cell0;
@property (nonatomic, strong)TableViewCell *cell1;
@property (nonatomic, strong)TableViewCell *cell2;
@property (nonatomic, strong)TableViewCell *cell3;

@end

@implementation TableViewController

- (instancetype)init
{
    self = [super initWithStyle:UITableViewStylePlain];
    
    if (self) {
        
        [self.tableView setBackgroundColor:KBackgroundColor];
        self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        
    }
    
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];

    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

-(void)viewDidAppear:(BOOL)animated
{
    if (self.cell0) {
        [self.cell0 addAnimation];
    }
    if (self.cell1) {
        [self.cell1 addAnimation];
    }
    if (self.cell2) {
        [self.cell2 addAnimation];
    }
    if (self.cell3) {
        [self.cell3 addAnimation];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return 4;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    switch (indexPath.row) {
        case 0:
            if (!self.cell0) {
                self.cell0 = [[TableViewCell alloc]initWithType:0 withFrame:CGRectMake(0, 0, self.tableView.frame.size.width, kCellHeight)];
//                [self.cell0 setBackgroundColor:[UIColor blueColor]];
            }
            self.cell0.percent = self.percent;
            self.cell0.animationLevelType = AnimationLevelType_KeepRoll;
            self.cell0.animationStraightType = AnimationStraightType_RiseUpStraight;
            self.cell0.waveAlpha = 1;
            self.cell0.textColor = [UIColor orangeColor];
            return self.cell0;
            break;
        case 1:
            if (!self.cell1) {
                self.cell1 = [[TableViewCell alloc]initWithType:1 withFrame:CGRectMake(0, 0, self.tableView.frame.size.width, kCellHeight)];
            }
            self.cell1.percent = self.percent;
            self.cell1.animationLevelType = AnimationLevelType_KeepRoll;
            self.cell1.animationStraightType = AnimationStraightType_RiseUpStraight;
            self.cell1.waveAlpha = 0.8;
            self.cell1.textColor = [UIColor colorWithRed:28/255.0 green:125/255.0 blue:115/255.0 alpha:1];
            return self.cell1;
            break;
        case 2:
            if (!self.cell2) {
                self.cell2 = [[TableViewCell alloc]initWithType:2 withFrame:CGRectMake(0, 0, self.tableView.frame.size.width, kCellHeight)];
            }
            self.cell2.percent = self.percent;
            self.cell2.animationLevelType = AnimationLevelType_KeepRoll;
            self.cell2.animationStraightType = AnimationStraightType_RiseUpStraight;
            self.cell2.waveAlpha = 0.5;
            self.cell2.textColor = [UIColor whiteColor];
            return self.cell2;
            break;
        case 3:
            if (!self.cell3) {
                self.cell3 = [[TableViewCell alloc]initWithType:3 withFrame:CGRectMake(0, 0, self.tableView.frame.size.width, kCellHeight)];
            }
            self.cell3.percent = self.percent;
            self.cell3.animationLevelType = AnimationLevelType_KeepRoll;
            self.cell3.animationStraightType = AnimationStraightType_RiseUpStraight;
            self.cell3.waveAlpha = 0.3;
            self.cell3.textColor = [UIColor whiteColor];
            return self.cell3;
            break;
            
        default:
            break;
    }
    return nil;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return kCellHeight;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
