//
//  CSTRadarStatisticsView.h
//  RaderViewDemo2
//
//  Created by 曾鹏飞 on 15/11/23.
//  Copyright (c) 2015年 chunshuitang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CSTRadarView.h"
@interface CSTRadarStatisticsView : UIView


@property (nonatomic,strong) NSArray *modelsArr;


- (instancetype)initWithFrame:(CGRect)frame modelsArr:(NSArray *)arr;

//刷新数据
-(void)refreshData;

@end
