//
//  CSTRadarView.m
//  RaderViewDemo2
//
//  Created by 曾鹏飞 on 15/11/23.
//  Copyright (c) 2015年 chunshuitang. All rights reserved.
//

#import "CSTRadarView.h"


#define defLong 20

@implementation CSTRadarView
{
    

    
}

- (id)initWithFrame:(CGRect)frame models:(NSArray *)arr
{
    self = [super initWithFrame:frame];
    if (self) {
        self.modelsArr=arr;
        
        self.backgroundColor=[UIColor clearColor];

    }
    return self;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        
       
    }
    return self;
}


-(void)drawRect:(CGRect)rect
{
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    self.layer.backgroundColor=[[UIColor clearColor] CGColor];

    UIColor *bgColor = [UIColor colorWithRed:1 green:129.0/255 blue:163.0/255 alpha:0.0];
    CGContextSetStrokeColorWithColor(context, bgColor.CGColor);
    CGContextSetFillColorWithColor(context, bgColor.CGColor);
    CGContextAddRect(context, rect);
    CGContextDrawPath(context, kCGPathFillStroke);
//
    self.backgroundColor=[UIColor clearColor];
    
    CGContextFillRect(context, rect);
    
    
    CGFloat itemH = (rect.size.height-2)/10;
    CGFloat itemW = itemH;

    CGContextSetLineWidth(context, 2.0);//设置当前画笔粗细
    for (int i = 5; i > 0; i--) {
        CGFloat to = -M_PI * 0.5 + M_PI * 2 + 0.001; // 初始值
        CGContextAddArc(context, rect.size.width/2.0, rect.size.height/2.0, itemH * i, -M_PI * 0.5, to, 1);
        [[UIColor colorWithRed:1 green:129.0/255 blue:163.0/255 alpha:1] setStroke];
        //        [[UIColor colorWithRed:1 green:1 blue:1 alpha:0.5]setFill];
        
        CGContextDrawPath(context, kCGPathStroke);
    }
    
     CGContextDrawPath(context, kCGPathStroke);
    
    CGContextMoveToPoint(context, rect.size.width/2 - 5.0*itemW, rect.size.height /2.0);
    CGContextAddLineToPoint(context, rect.size.width/2 + 5.0*itemW, rect.size.height/2.0);

    CGContextMoveToPoint(context, rect.size.width/2.0, rect.size.height/2.0-5.0*itemH);
    CGContextAddLineToPoint(context, rect.size.width/2.0, rect.size.height/2.0+5.0*itemH);
    
    
    
    [[UIColor colorWithRed:1 green:129.0/255 blue:163.0/255 alpha:1] setStroke];
    CGContextDrawPath(context, kCGPathStroke);
    
    


    float value0=[self.modelsArr[0] currentValue] / [self.modelsArr[0] maxValue];
    float value1=[self.modelsArr[1] currentValue] / [self.modelsArr[1] maxValue];
    float value2=[self.modelsArr[2] currentValue] / [self.modelsArr[2] maxValue];
    float value3=[self.modelsArr[3] currentValue] / [self.modelsArr[3] maxValue];
    
    if (!self.modelsArr) {
        value0=0.2;
        value1=0.2;
        value2=0.2;
        value3=0.2;
    }
    
    CGContextMoveToPoint(context,rect.size.width/2.0 - value0*itemW*5.0,rect.size.height/2.0);

    
    CGContextAddLineToPoint(context,rect.size.width/2.0,rect.size.height/2.0+value1*itemH*5.0);


    CGContextAddLineToPoint(context,rect.size.width/2.0 + value2*itemW*5.0,rect.size.height/2.0);

    
    CGContextAddLineToPoint(context,rect.size.width/2.0 ,rect.size.height/2.0-value3*itemH*5.0);

    
    
//    CGContextAddLineToPoint(context,rect.size.width/2.0 - value0*itemW*5.0,rect.size.height/2.0);

    
    
    
    [[UIColor colorWithRed:100.0/255 green:200.0/255 blue:173.0/255 alpha:0.4] set];
    
    CGContextDrawPath(context, kCGPathFillStroke);
    

    
//    UIColor *color = [UIColor colorWithRed:1 green:129.0/255 blue:163.0/255 alpha:1];
//    UIFont *font = [UIFont boldSystemFontOfSize:14];
//    
//    for (int i=0; i<self.modelsArr.count; i++) {
//        NSString *name=[self.modelsArr[i] name];
//        
//        CGFloat pointX,pointY;
//        
//        
//        switch (i) {
//            case 0:
//                pointX=0;
//                pointY=rect.size.height/2.0;
//                break;
//            case 1:
//                pointX=rect.size.width/2.0;
//                pointY=rect.size.height/2.0+itemH*5.0+5;
//                break;
//            case 2:
//                pointX=rect.size.width/2.0+itemW*5.0+1;
//                pointY=rect.size.height/2.0;
//
//                break;
//            case 3:
//                pointX=rect.size.width/2.0;
//                pointY=rect.size.height/2.0-itemH*5.0-2;
//                break;
//            default:
//                break;
//        }
//        
//        
//        
//        [name drawAtPoint:CGPointMake(pointX,pointY) withAttributes:@{NSForegroundColorAttributeName : color ,
//                                                                                NSFontAttributeName : font}];
//    }
    
    
}





@end
