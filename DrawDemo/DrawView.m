//
//  DrawView.m
//  DrawDemo
//
//  Created by perfay on 2018/5/25.
//  Copyright © 2018年 perfay. All rights reserved.
//

#import "DrawView.h"

@implementation DrawView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    [super drawRect:rect];
    CGContextRef context =  UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(context, 1.0);
    CGContextSetRGBFillColor (context,  1, 1, 1, 1.0);
    UIFont  *font = [UIFont boldSystemFontOfSize:11.0];
    [@"fan\ngyp" drawInRect:CGRectMake(40, 40, 80, 20) withFont:font];
    
    
}


@end
