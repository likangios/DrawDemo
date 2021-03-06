//
//     Generated by class-dump 3.5 (64 bit).
//
//     class-dump is Copyright (C) 1997-1998, 2000-2001, 2004-2013 by Steve Nygard.
//

#import "UIView.h"

#import "CKYMainToolViewDelegate.h"

@class BQSBackgroundView, BQSPanToolView, CKYMainToolView, CKYMiddleBaseView, NSMutableArray, NSString, UIButton, UIImageView, YYAnimatedImageView;

@interface CKYToolView : UIView <CKYMainToolViewDelegate>
{
    _Bool _isPlaySound;
    _Bool _isChangeBackgroundAction;
    id <CKYToolViewDelegate> _delegate;
    CKYMainToolView *_mainToolView;
    UIImageView *_bottomBackView;
    CKYMiddleBaseView *_currentBottomView;
    NSMutableArray *_viewArrayM;
    BQSBackgroundView *_backgroundView;
    UIButton *_gobackBtn;
    UIButton *_redoBtn;
    UIButton *_clearBtn;
    YYAnimatedImageView *_voiceBtn;
    BQSPanToolView *_panToolView;
}

+ (id)toolViewWithFrame:(struct CGRect)arg1;
@property(retain, nonatomic) BQSPanToolView *panToolView; // @synthesize panToolView=_panToolView;
@property(retain, nonatomic) YYAnimatedImageView *voiceBtn; // @synthesize voiceBtn=_voiceBtn;
@property(retain, nonatomic) UIButton *clearBtn; // @synthesize clearBtn=_clearBtn;
@property(retain, nonatomic) UIButton *redoBtn; // @synthesize redoBtn=_redoBtn;
@property(retain, nonatomic) UIButton *gobackBtn; // @synthesize gobackBtn=_gobackBtn;
@property(retain, nonatomic) BQSBackgroundView *backgroundView; // @synthesize backgroundView=_backgroundView;
@property(retain, nonatomic) NSMutableArray *viewArrayM; // @synthesize viewArrayM=_viewArrayM;
@property(retain, nonatomic) CKYMiddleBaseView *currentBottomView; // @synthesize currentBottomView=_currentBottomView;
@property(retain, nonatomic) UIImageView *bottomBackView; // @synthesize bottomBackView=_bottomBackView;
@property(retain, nonatomic) CKYMainToolView *mainToolView; // @synthesize mainToolView=_mainToolView;
@property(nonatomic) _Bool isChangeBackgroundAction; // @synthesize isChangeBackgroundAction=_isChangeBackgroundAction;
@property(nonatomic) _Bool isPlaySound; // @synthesize isPlaySound=_isPlaySound;
@property(nonatomic) __weak id <CKYToolViewDelegate> delegate; // @synthesize delegate=_delegate;
- (void).cxx_destruct;
- (void)cancelChangeBackground;
- (void)topViewUpdataIndex:(long long)arg1;
- (void)topView:(id)arg1 clickAtIndex:(long long)arg2 oldIndex:(long long)arg3;
- (void)resetToolView;
- (void)showGeneralToolView;
- (void)showImagetoolView;
- (void)showPanToolView;
- (void)showTextToolView;
- (void)showHomeToolView;
- (void)setClearStatus:(_Bool)arg1;
- (void)setRedoStatus:(_Bool)arg1;
- (void)setGobackStatus:(_Bool)arg1;
- (id)hitTest:(struct CGPoint)arg1 withEvent:(id)arg2;
- (void)stopVoice;
- (void)resetVoiceStatus:(id)arg1;
- (void)voiceBtnClick;
- (void)clearBtnClick:(id)arg1;
- (void)redoBtnClick:(id)arg1;
- (void)gobackBtnClick:(id)arg1;
- (void)observeValueForKeyPath:(id)arg1 ofObject:(id)arg2 change:(id)arg3 context:(void *)arg4;
- (void)initConfig;
- (void)toolViewCannotGoback;
- (void)toolViewCanGoback;
- (void)initNotification;
- (void)dealloc;
- (id)initWithFrame:(struct CGRect)arg1;

// Remaining properties
@property(readonly, copy) NSString *debugDescription;
@property(readonly, copy) NSString *description;
@property(readonly) unsigned long long hash;
@property(readonly) Class superclass;

@end

