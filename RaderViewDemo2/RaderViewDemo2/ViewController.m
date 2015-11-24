//
//  ViewController.m
//  RaderViewDemo2
//
//  Created by 曾鹏飞 on 15/11/23.
//  Copyright (c) 2015年 chunshuitang. All rights reserved.
//

#import "ViewController.h"
#import "CSTRadarStatisticsView.h"

@interface ViewController ()

@end

@implementation ViewController
{
    CSTRadarStatisticsView *raderView;
}

- (void)viewDidLoad {
    [super viewDidLoad];


    
    
    NSMutableArray *modelsArr=[NSMutableArray array];
    for (int i=0 ; i<4 ; i++) {
        RadarModel *model=[[RadarModel alloc] init];
        model.name=[NSString stringWithFormat:@"name%d",i];
        model.currentValue=15.0;
        model.maxValue=40.0;
        [modelsArr addObject:model];
    }
    raderView=[[CSTRadarStatisticsView alloc] initWithFrame:CGRectMake(0, 0, 300, 300) modelsArr:modelsArr];

    [self.view addSubview:raderView];
    raderView.center=self.view.center;
    
//    self.view.backgroundColor=[UIColor orangeColor];
}
- (IBAction)click:(id)sender {
    NSMutableArray *modelsArr=[NSMutableArray array];
    for (int i=0 ; i<4 ; i++) {
        RadarModel *model=[[RadarModel alloc] init];
        model.name=[NSString stringWithFormat:@"name%d",i];
        model.currentValue=arc4random()%40;
        model.maxValue=40.0;
        [modelsArr addObject:model];
    }
    
    
    raderView.modelsArr=modelsArr;
    [raderView refreshData];
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
