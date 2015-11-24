//
//  CSTRadarStatisticsView.m
//  RaderViewDemo2
//
//  Created by 曾鹏飞 on 15/11/23.
//  Copyright (c) 2015年 chunshuitang. All rights reserved.
//

//雷达统计图

#import "CSTRadarStatisticsView.h"
#import "RadarModel.h"

@implementation CSTRadarStatisticsView
{
    CSTRadarView *radarView;
    
}

- (instancetype)initWithFrame:(CGRect)frame modelsArr:(NSArray *)arr
{
    self = [super initWithFrame:frame];
    if (self) {
        self.modelsArr=arr;
        radarView=[[CSTRadarView alloc] initWithFrame:CGRectMake(0, 0, frame.size.width-50*2, frame.size.height-50*2) models:arr ];
        radarView.modelsArr=[NSArray arrayWithArray:arr];
        radarView.center=self.center;
        
        [self addSubview:radarView];
        
//        self.backgroundColor=[UIColor orangeColor];
        
        for (int i=0; i<4; i++) {
            
            CGFloat pointX,pointY1,pointY2;
            
            switch (i) {
                case 0:
                    pointX=0;
                    pointY1=frame.size.height/2.0-15;
                    pointY2=frame.size.height/2.0+5;

                    break;
                case 1:
                    pointX=frame.size.width/2.0-20;
                    pointY1=frame.size.height-40;
                    pointY2=frame.size.height-20;

                    break;
                case 2:
                    pointX=frame.size.width-40;
                    pointY1=frame.size.height/2.0-15;
                    pointY2=frame.size.height/2.0+5;
                    
                    break;
                case 3:
                    pointX=frame.size.width/2.0-20;
                    pointY1=10;
                    pointY2=30;
                    break;
                default:
                    break;
            }
            
            UILabel *lab1=[[UILabel alloc] initWithFrame:CGRectMake(pointX, pointY1, 50, 15)];
            lab1.font=[UIFont systemFontOfSize:13];
            lab1.text=[self.modelsArr[i] name];
            lab1.textAlignment=NSTextAlignmentCenter;
            
            UILabel *lab2=[[UILabel alloc] initWithFrame:CGRectMake(pointX, pointY2, 50, 15)];
            lab2.font=[UIFont systemFontOfSize:13];
            lab2.text=[NSString stringWithFormat:@"%d",(int)[self.modelsArr[i] currentValue]];
            lab2.textAlignment=NSTextAlignmentCenter;
            
            if (i%2==1) {
                lab1.center=CGPointMake(self.center.x, lab1.center.y);
                lab2.center=CGPointMake(self.center.x, lab2.center.y);
            }
            
            
            [self addSubview:lab1];
            [self addSubview:lab2];
            
            lab2.tag=10+i;
        }
        
        
    }
    return self;
}


-(void)refreshData
{
    radarView.modelsArr=self.modelsArr;
    [radarView setNeedsDisplay];
    
    for (int i=0; i<4; i++) {
        UILabel *lab=(UILabel *)[self viewWithTag:10+i];
        
        lab.text=[NSString stringWithFormat:@"%d",(int)[self.modelsArr[i] currentValue]];

    }
}

@end
