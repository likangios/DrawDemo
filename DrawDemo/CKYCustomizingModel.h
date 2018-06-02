//
//  CKYCustomizingModel.h
//  DrawDemo
//
//  Created by luck on 2018/5/27.
//  Copyright © 2018年 perfay. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CKYCustomizingModel : NSObject

+ (id)customizingModelWithDict:(id)arg1;
+ (id)customizingModelWithWebPPath:(id)arg1;
+ (void)clearCache;
+ (id)customizingModelGetCache;
@property(nonatomic) _Bool isFromePreview; // @synthesize isFromePreview=_isFromePreview;
@property(nonatomic) long long originalId; // @synthesize originalId=_originalId;
@property(nonatomic) long long originId; // @synthesize originId=_originId;
@property(nonatomic) double height; // @synthesize height=_height;
@property(nonatomic) double width; // @synthesize width=_width;
@property(retain, nonatomic) NSMutableArray *itemArray; // @synthesize itemArray=_itemArray;
@property(retain, nonatomic) BQSCusBackImageModel *backInfoModel; // @synthesize backInfoModel=_backInfoModel;
- (void).cxx_destruct;
- (id)copyCustommizingModel;
- (id)getDict;
@end
