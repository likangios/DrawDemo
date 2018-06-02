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
@property(retain, nonatomic) UIColor *endColor; // @synthesize endColor=_endColor;
@property(retain, nonatomic) UIColor *startColor; // @synthesize startColor=_startColor;
@property(nonatomic) double textAlpha; // @synthesize textAlpha=_textAlpha;
@property(nonatomic) double textColorSize; // @synthesize textColorSize=_textColorSize;
@property(retain, nonatomic) UIColor *textColor; // @synthesize textColor=_textColor;
@property(nonatomic) double miaobianAlpha; // @synthesize miaobianAlpha=_miaobianAlpha;
@property(nonatomic) double miaobianSize; // @synthesize miaobianSize=_miaobianSize;
@property(retain, nonatomic) UIColor *miaobianColor; // @synthesize miaobianColor=_miaobianColor;
- (id)copyStyleModel;
- (id)init;
- (id)getDict;
@end
