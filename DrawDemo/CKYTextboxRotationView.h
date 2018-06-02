//
//  CKYTextboxRotationView.h
//  DrawDemo
//
//  Created by perfay on 2018/5/25.
//  Copyright © 2018年 perfay. All rights reserved.
//

#import "CKYRotationView.h"
#import "CKYRotationViewItem.h"

@interface CKYTextboxRotationView : CKYRotationView

+ (id)rotationViewWithItem:(CKYRotationViewItem *)arg1;
@property(nonatomic) _Bool isBegin; // @synthesize isBegin=_isBegin;
@property(nonatomic) double textAniDuration; // @synthesize textAniDuration=_textAniDuration;
- (void)updateDuration:(id)arg1;
- (void)setEleTime:(CDStruct_1b6d18a9)arg1 allTime:(CDStruct_1b6d18a9)arg2;
- (void)endSynchor;
- (void)beganSynchro;
- (void)updataColor:(id)arg1;
- (void)updataStyle:(id)arg1;
- (void)dealloc;
- (id)initWithFrame:(struct CGRect)arg1;

@end
