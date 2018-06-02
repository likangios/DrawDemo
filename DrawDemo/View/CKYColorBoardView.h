//
//     Generated by class-dump 3.5 (64 bit).
//
//     class-dump is Copyright (C) 1997-1998, 2000-2001, 2004-2013 by Steve Nygard.
//

#import "UIView.h"

@class UIBezierPath, UIImage;

@interface CKYColorBoardView : UIView
{
    UIBezierPath *path;
    UIImage *_image;
    char *_data;
    id <CKYColorBoardViewDelegate> _delegate;
}

@property(nonatomic) __weak id <CKYColorBoardViewDelegate> delegate; // @synthesize delegate=_delegate;
- (void).cxx_destruct;
- (void)getPixelColorAtLocation:(struct CGPoint)arg1;
- (void)quse:(struct CGPoint)arg1;
- (void)touchesCancelled:(id)arg1 withEvent:(id)arg2;
- (void)touchesEnded:(id)arg1 withEvent:(id)arg2;
- (void)touchesMoved:(id)arg1 withEvent:(id)arg2;
- (void)touchesBegan:(id)arg1 withEvent:(id)arg2;
- (id)initWithFrame:(struct CGRect)arg1 imageName:(id)arg2;

@end

