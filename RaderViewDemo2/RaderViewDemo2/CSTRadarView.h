//
//  CSTRadarView.h
//  RaderViewDemo2
//
//  Created by 曾鹏飞 on 15/11/23.
//  Copyright (c) 2015年 chunshuitang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RadarModel.h"

@interface CSTRadarView : UIView

- (id)initWithFrame:(CGRect)frame models:(NSArray *)arr;


@property (nonatomic,strong) NSArray *modelsArr;


@end
