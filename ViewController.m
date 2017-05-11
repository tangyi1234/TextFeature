//
//  ViewController.m
//  TextFeature
//
//  Created by 汤义 on 17/5/9.
//  Copyright © 2017年 汤义. All rights reserved.
//

#import "ViewController.h"
#import "TextFeature.h"
#define GlobalYellowColor [UIColor colorWithRed:225.0/255.0 green:199.0/255.0 blue:139.0/255.0 alpha:1.0]
#define GlobalProtocalTextFont [UIFont systemFontOfSize:14]
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];    
    NSString *str = [NSString stringWithFormat:@"%@",@"今天是个好天气，有 度"];
    NSArray *arrData = [NSArray arrayWithObjects:@"20", nil];
    UILabel *lbl = [[UILabel alloc] initWithFrame:CGRectMake(0, 80, [UIScreen mainScreen].bounds.size.width, 100)];
    [self.view addSubview:lbl];
    lbl.attributedText = [TextFeature textFeatureStr:str dataArr:arrData dataColor:GlobalYellowColor dataTextFont:GlobalProtocalTextFont];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.

}


@end
