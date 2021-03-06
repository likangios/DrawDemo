//
//     Generated by class-dump 3.5 (64 bit).
//
//     class-dump is Copyright (C) 1997-1998, 2000-2001, 2004-2013 by Steve Nygard.
//

#import "BQSCustomizingVCManageDelegate.h"
#import "UIGestureRecognizerDelegate.h"
#import "UIScrollViewDelegate.h"

@class CKYCustomizingViewControllerDelegate;

@protocol CKYCustomizingViewControllerDelegate <NSObject>
- (void)customizingViewHiddenDelete;
- (void)customizingViewShowDelete;
- (void)customizingViewWillChangeText:(NSString *)arg1;
- (void)customizingViewControllerDidCustomizing:(long long)arg1;
@end

@class BQSCusBackImageView, BQSShowDeleteView, BQSVideoProces, CAShapeLayer, CKYBorderView, CKYCustomizingModel, CKYRotationView, CKYRotationViewItem, NSString, NSTimer, NSUndoManager, UIButton, UIImageView, UILabel, UIScrollView;

@interface CKYCustomizingViewController : UIViewController <UIGestureRecognizerDelegate, UIScrollViewDelegate, BQSCustomizingVCManageDelegate>
{
    id <CKYCustomizingViewControllerDelegate> _delegate;
    CKYCustomizingModel *_customizingModel;
    UIButton *_rotationButton;
    UIButton *_deleteBtn;
    UIImageView *_hMoveBtn;
    CAShapeLayer *_borderLayerW;
    CAShapeLayer *_borderLayerBS;
    CKYBorderView *_borderView;
    UILabel *_scrollViewScaleLabel;
    UIScrollView *_scrollView;
    CKYRotationView *_currentView;
    BQSCusBackImageView *_backImageView;
    NSTimer *_timer;
    NSTimer *_animateTimer;
    CKYRotationViewItem *_ASRTextViewItem;
    NSUndoManager *_myUndoManager;
    BQSShowDeleteView *_showDeleteView;
    BQSVideoProces *_videoProces;
    struct CGRect _aotuModelRect;
}

+ (id)customizingViewControllerWithFrame:(struct CGRect)arg1 model:(id)arg2;
@property(retain, nonatomic) BQSVideoProces *videoProces; // @synthesize videoProces=_videoProces;
@property(retain, nonatomic) BQSShowDeleteView *showDeleteView; // @synthesize showDeleteView=_showDeleteView;
@property(retain, nonatomic) NSUndoManager *myUndoManager; // @synthesize myUndoManager=_myUndoManager;
@property(retain, nonatomic) CKYRotationViewItem *ASRTextViewItem; // @synthesize ASRTextViewItem=_ASRTextViewItem;
@property(retain, nonatomic) NSTimer *animateTimer; // @synthesize animateTimer=_animateTimer;
@property(retain, nonatomic) NSTimer *timer; // @synthesize timer=_timer;
@property(nonatomic) struct CGRect aotuModelRect; // @synthesize aotuModelRect=_aotuModelRect;
@property(retain, nonatomic) BQSCusBackImageView *backImageView; // @synthesize backImageView=_backImageView;
@property(retain, nonatomic) CKYRotationView *currentView; // @synthesize currentView=_currentView;
@property(retain, nonatomic) UIScrollView *scrollView; // @synthesize scrollView=_scrollView;
@property(retain, nonatomic) UILabel *scrollViewScaleLabel; // @synthesize scrollViewScaleLabel=_scrollViewScaleLabel;
@property(retain, nonatomic) CKYBorderView *borderView; // @synthesize borderView=_borderView;
@property(retain, nonatomic) CAShapeLayer *borderLayerBS; // @synthesize borderLayerBS=_borderLayerBS;
@property(retain, nonatomic) CAShapeLayer *borderLayerW; // @synthesize borderLayerW=_borderLayerW;
@property(retain, nonatomic) UIImageView *hMoveBtn; // @synthesize hMoveBtn=_hMoveBtn;
@property(retain, nonatomic) UIButton *deleteBtn; // @synthesize deleteBtn=_deleteBtn;
@property(retain, nonatomic) UIButton *rotationButton; // @synthesize rotationButton=_rotationButton;
@property(retain, nonatomic) CKYCustomizingModel *customizingModel; // @synthesize customizingModel=_customizingModel;
@property(nonatomic) __weak id <CKYCustomizingViewControllerDelegate> delegate; // @synthesize delegate=_delegate;
- (void).cxx_destruct;
- (double)getKWithPoint1:(struct CGPoint)arg1 point2:(struct CGPoint)arg2;
- (double)getTriangleZBwithX:(double)arg1 ZB:(double)arg2;
- (double)getAHeightWithA:(double)arg1 B:(double)arg2 C:(double)arg3;
- (double)getScrollViewScale;
- (void)updataBackInfoStatus;
- (void)updataCustomizingVCManage;
- (void)scrollViewDidZoom:(id)arg1;
- (id)viewForZoomingInScrollView:(id)arg1;
- (void)showBorderView;
- (void)updateLayerWithA:(struct CGPoint)arg1 B:(struct CGPoint)arg2 C:(struct CGPoint)arg3 D:(struct CGPoint)arg4;
- (void)showHandleTools;
- (void)showAllHandleTools;
- (_Bool)handleCurrentView;
- (void)hiddenAllHandleTools;
- (void)hiddenHandleTools;
- (void)hMogeBtnPan:(id)arg1;
- (void)deleteBtnClick:(id)arg1;
- (void)resetTextRedo:(id)arg1;
- (void)resetTextUndo:(id)arg1;
- (void)resetTextUndoWithCurrentView:(id)arg1 resetView:(id)arg2;
- (void)resetTextView;
- (void)rotationBtnPan:(id)arg1;
- (void)initHandleTools;
- (void)cameraManagerAddBackground:(id)arg1;
- (void)textToolViewChangeContourColor:(id)arg1;
- (void)textToolViewChangeContourSize:(id)arg1;
- (void)textToolViewChangeTextColor:(id)arg1;
- (void)textToolViewChangeTextSize:(id)arg1;
@property(readonly, nonatomic) _Bool isCanChangeScale;
- (void)copyItem;
- (void)moveDown;
- (void)moveUp;
- (_Bool)gestureRecognizer:(id)arg1 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)arg2;
- (void)viewPinchHandle:(id)arg1;
- (void)viewRotationHandle:(id)arg1;
- (void)viewPanHandle:(id)arg1;
- (void)viewTapHandel:(id)arg1;
- (void)initGestureRecognizer;
- (void)rotationRedo:(id)arg1;
- (void)rotationUndo:(id)arg1;
- (void)setUndo;
- (void)backImageRedo:(id)arg1;
- (void)backImageUndo:(id)arg1;
- (void)setBackImageUndo;
@property(readonly, nonatomic) _Bool isCanGoback;
@property(readonly, nonatomic) _Bool isCanRedo;
- (void)redo;
- (void)goback;
- (void)updataWorkWithDict:(id)arg1;
- (void)clearDrawboardUndo:(id)arg1;
- (void)setClearDrawboardUndo;
- (void)clearDrawboard;
- (double)getMakeContentViewY;
- (id)getScreenshot;
- (double)getCurAniDuration;
- (id)getTextItem;
- (id)getLayerInfo;
- (void)synthetiseData:(_Bool)arg1 completion:(CDUnknownBlockType)arg2;
- (void)updateAotuModelRect;
- (struct CGPoint)checkPoint:(struct CGPoint)arg1;
- (id)getCurrentCustomizingModel;
- (id)cutImage;
- (void)updateCustomizingModel;
- (id)save;
- (void)rotationViewTapHandle:(id)arg1;
- (id)getCurrentRotationItem;
- (void)addRotationRedo:(id)arg1;
- (void)addRotationUndo:(id)arg1;
- (void)replaceCurrentItem:(id)arg1;
- (void)addRotationViewWithItemWithoutAnimation:(id)arg1;
- (void)addRotationViewWithItemWithoutSelect:(id)arg1;
- (void)addRotationViewWithItem:(id)arg1 isSetUndo:(_Bool)arg2;
- (void)saveWork;
- (void)viewWillDisappear:(_Bool)arg1;
- (void)viewDidAppear:(_Bool)arg1;
- (void)viewWillAppear:(_Bool)arg1;
- (void)dealloc;
- (void)clearInfo;
- (void)initNotification;
- (void)remoCustomizingVC;
- (void)initTimer;
- (void)viewDidLoad;
- (id)init;

// Remaining properties
@property(readonly, copy) NSString *debugDescription;
@property(readonly, copy) NSString *description;
@property(readonly) unsigned long long hash;
@property(readonly) Class superclass;

@end

