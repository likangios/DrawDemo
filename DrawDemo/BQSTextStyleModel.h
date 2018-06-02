//
//  BQSTextStyleModel.h
//  DrawDemo
//
//  Created by luck on 2018/5/27.
//  Copyright © 2018年 perfay. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CKYStyleModel.h"

@interface BQSTextStyleModel : NSObject

+ (id)textStyleModelwithStyleModel:(id)arg1;
+ (id)textStyleModelWithDict:(id)arg1;
@property(copy, nonatomic) NSString *fontName; // @synthesize fontName=_fontName;
@property(retain, nonatomic) CKYStyleModel *styleModel; // @synthesize styleModel=_styleModel;
@property(nonatomic) double aniDuration; // @synthesize aniDuration=_aniDuration;
@property(nonatomic) long long animationType; // @synthesize animationType=_animationType;
@property(copy, nonatomic) NSString *thumbnail; // @synthesize thumbnail=_thumbnail;
@property(nonatomic) double thumbnailW; // @synthesize thumbnailW=_thumbnailW;
@property(nonatomic) struct CGRect textRect; // @synthesize textRect=_textRect;
@property(nonatomic) struct CGSize imageSize; // @synthesize imageSize=_imageSize;
@property(copy, nonatomic) NSString *textboxImageName; // @synthesize textboxImageName=_textboxImageName;
- (void).cxx_destruct;
- (id)copyTextStyleModel;
- (id)getDict;

@end
