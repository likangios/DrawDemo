//
//  CKYRotationView.h
//  DrawDemo
//
//  Created by perfay on 2018/5/25.
//  Copyright © 2018年 perfay. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CKYRotationViewItem.h"
@interface CKYRotationView : UIView

+ (id)rotationViewWithItem:(id)arg1;
@property(retain, nonatomic) UIView *rightView; // @synthesize rightView=_rightView;
@property(retain, nonatomic) UIView *bottomView; // @synthesize bottomView=_bottomView;
@property(retain, nonatomic) UIView *leftView; // @synthesize leftView=_leftView;
@property(retain, nonatomic) UIView *topView; // @synthesize topView=_topView;
@property(retain, nonatomic) UIView *lbView; // @synthesize lbView=_lbView;
@property(retain, nonatomic) UIView *ltView; // @synthesize ltView=_ltView;
@property(retain, nonatomic) UIView *rtView; // @synthesize rtView=_rtView;
@property(retain, nonatomic) UIView *rbView; // @synthesize rbView=_rbView;
@property(nonatomic) double orginAngle; // @synthesize orginAngle=_orginAngle;
@property(nonatomic) struct CGPoint lastMoveCenter; // @synthesize lastMoveCenter=_lastMoveCenter;
@property(nonatomic) struct CGSize orginSize; // @synthesize orginSize=_orginSize;
@property(nonatomic) double yScale; // @synthesize yScale=_yScale;
@property(nonatomic) double xScale; // @synthesize xScale=_xScale;
@property(nonatomic) double angle; // @synthesize angle=_angle;
@property(nonatomic) double xiebian; // @synthesize xiebian=_xiebian;
@property(retain, nonatomic) UIView *contentView; // @synthesize contentView=_contentView;
@property(nonatomic) long long contentViewType; // @synthesize contentViewType=_contentViewType;
@property(retain, nonatomic) CKYRotationViewItem *rotationItem; // @synthesize rotationItem=_rotationItem;
- (id)hitTest:(struct CGPoint)arg1 withEvent:(id)arg2;
//- (void)setEleTime:(CDStruct_1b6d18a9)arg1 allTime:(CDStruct_1b6d18a9)arg2;
- (void)endSynchor;
- (void)beganSynchro;
- (struct CGPoint)getBottomPoint;
- (struct CGPoint)getRightPoint;
- (struct CGPoint)getLeftPoint;
- (struct CGPoint)getTopPoint;
- (struct CGPoint)getLeftBottomPoint;
- (struct CGPoint)getLeftTopPoint;
- (struct CGPoint)getRightTopPoint;
- (struct CGPoint)getRightBottomPoint;
- (struct CGRect)getRotationRect;
- (void)updataContentView;
- (void)turnOverV;
- (void)turnOverH;
- (void)changeHeight:(double)arg1;
- (void)changeWidth:(double)arg1;
- (void)initConfig;
//- (id)initWithFrame:(struct CGRect)arg1;
//- (id)initWithCoder:(id)arg1;
@end
