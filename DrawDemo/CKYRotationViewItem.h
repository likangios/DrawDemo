//
//  CKYRotationViewItem.h
//  DrawDemo
//
//  Created by perfay on 2018/5/25.
//  Copyright © 2018年 perfay. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BQSTextStyleModel.h"

@interface CKYRotationViewItem : NSObject

+ (id)itemWithDict:(id)arg1;
@property(nonatomic) long long hMoveBtnPositionType; // @synthesize hMoveBtnPositionType=_hMoveBtnPositionType;
@property(nonatomic) long long vMoveBtnPositionType; // @synthesize vMoveBtnPositionType=_vMoveBtnPositionType;
@property(nonatomic) struct CGSize size; // @synthesize size=_size;
@property(nonatomic) _Bool turnOverV; // @synthesize turnOverV=_turnOverV;
@property(nonatomic) _Bool turnOverH; // @synthesize turnOverH=_turnOverH;
@property(nonatomic) long long index; // @synthesize index=_index;
@property(nonatomic) double toCenterYMargin; // @synthesize toCenterYMargin=_toCenterYMargin;
@property(nonatomic) struct CGPoint center; // @synthesize center=_center;
@property(nonatomic) double yScale; // @synthesize yScale=_yScale;
@property(nonatomic) double xScale; // @synthesize xScale=_xScale;
@property(nonatomic) double angle; // @synthesize angle=_angle;
@property(nonatomic) long long contentViewType; // @synthesize contentViewType=_contentViewType;
@property(copy, nonatomic) NSString *imageURL; // @synthesize imageURL=_imageURL;
@property(retain, nonatomic) BQSTextStyleModel *textStyleModel; // @synthesize textStyleModel=_textStyleModel;
@property(nonatomic) double textFontSize; // @synthesize textFontSize=_textFontSize;
@property(copy, nonatomic) NSString *textFontPath; // @synthesize textFontPath=_textFontPath;
@property(copy, nonatomic) NSString *textFontName; // @synthesize textFontName=_textFontName;
@property(copy, nonatomic) NSString *text; // @synthesize text=_text;
//- (void).cxx_destruct;
- (id)initWithCoder:(id)arg1;
- (void)encodeWithCoder:(id)arg1;
- (id)copyRotationViewItem;
- (id)initWithDict:(id)arg1;
- (id)getDict;
- (id)init;

@end
