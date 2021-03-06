//
//     Generated by class-dump 3.5 (64 bit).
//
//     class-dump is Copyright (C) 1997-1998, 2000-2001, 2004-2013 by Steve Nygard.
//

#import "UIImageView.h"

@class AVPlayer, AVPlayerLayer, BQSCusBackImageModel, UIView;

@interface BQSCusBackImageView : UIImageView
{
    _Bool _isNeedLayoutItemsView;
    struct CGRect _itemsViewFrame;
    BQSCusBackImageModel *_backInfoModel;
    _Bool _isAppear;
    UIView *_itemsView;
    UIImageView *_imageView;
    double _duration;
    AVPlayer *_player;
    AVPlayerLayer *_playerLayer;
    UIView *_topMaskingView;
    UIView *_bottomMaskingView;
    UIView *_leftMaskingView;
    UIView *_rightMaskingView;
}

@property(retain, nonatomic) UIView *rightMaskingView; // @synthesize rightMaskingView=_rightMaskingView;
@property(retain, nonatomic) UIView *leftMaskingView; // @synthesize leftMaskingView=_leftMaskingView;
@property(retain, nonatomic) UIView *bottomMaskingView; // @synthesize bottomMaskingView=_bottomMaskingView;
@property(retain, nonatomic) UIView *topMaskingView; // @synthesize topMaskingView=_topMaskingView;
@property(nonatomic) _Bool isAppear; // @synthesize isAppear=_isAppear;
@property(retain, nonatomic) AVPlayerLayer *playerLayer; // @synthesize playerLayer=_playerLayer;
@property(retain, nonatomic) AVPlayer *player; // @synthesize player=_player;
@property(readonly, nonatomic) double duration; // @synthesize duration=_duration;
@property(retain, nonatomic) UIImageView *imageView; // @synthesize imageView=_imageView;
@property(retain, nonatomic) UIView *itemsView; // @synthesize itemsView=_itemsView;
- (void).cxx_destruct;
- (struct CGPoint)getBottomPointWithRotationView:(id)arg1;
- (struct CGPoint)getRightPointWithRotationView:(id)arg1;
- (struct CGPoint)getLeftPointWithRotationView:(id)arg1;
- (struct CGPoint)getTopPointWithRotationView:(id)arg1;
- (struct CGPoint)getLeftTopPointWithRotationView:(id)arg1;
- (struct CGPoint)getLeftBottomPointWithRotationView:(id)arg1;
- (struct CGPoint)getRightTopPointWithRotationView:(id)arg1;
- (struct CGPoint)getRightBottomPointWithRotationView:(id)arg1;
- (struct CGRect)getRotationRectWithRotationView:(id)arg1;
- (void)setEleTime:(CDStruct_1b6d18a9)arg1 allTime:(CDStruct_1b6d18a9)arg2;
- (void)endSynchro;
- (void)beganSynchro;
- (double)maxGifDuration;
- (_Bool)isHaveGif;
- (id)hitTest:(struct CGPoint)arg1 withEvent:(id)arg2;
- (void)applicationDidBecomeActive:(id)arg1;
- (void)applicationDidEnterBackground:(id)arg1;
- (void)playerItemDidReachEnd:(id)arg1;
- (void)setBackColorString:(id)arg1;
- (void)setImgURLPath:(id)arg1;
- (void)stopNotification;
- (void)setupNotification;
- (void)removeThePlayer;
- (void)setDuration:(double)arg1;
- (void)setAssetPath:(id)arg1;
- (void)startVoice;
- (void)clearBadAsset;
@property(retain, nonatomic) BQSCusBackImageModel *backInfoModel;
- (struct CGRect)updateAotuItemsMaxRect;
- (struct CGPoint)checkPoint:(struct CGPoint)arg1;
- (void)layoutSubviews;
- (void)cancelAutoUpdateItemsView;
- (struct CGRect)autoUpdateItemsView;
- (void)initConfig;
- (id)initWithFrame:(struct CGRect)arg1;
- (void)willDisappear;
- (void)willAppear;
- (void)dealloc;

@end

