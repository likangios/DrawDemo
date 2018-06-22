//
//  CKYStyleModel.h
//  DrawDemo
//
//  Created by luck on 2018/5/27.
//  Copyright © 2018年 perfay. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface CKYStyleModel : NSObject
+ (id)sytleModelWithDict:(id)arg1;
@property(strong, nonatomic) UIColor *endColor;
@property(strong, nonatomic) UIColor *startColor;
@property(nonatomic) CGFloat textAlpha;
@property(nonatomic) CGFloat textColorSize;
@property(retain, nonatomic) UIColor *textColor;
@property(nonatomic) CGFloat miaobianAlpha;
@property(nonatomic) CGFloat miaobianSize;
@property(retain, nonatomic) UIColor *miaobianColor; 
- (id)copyStyleModel;
- (id)init;
- (id)getDict;
@end
