//
//     Generated by class-dump 3.5 (64 bit).
//
//     class-dump is Copyright (C) 1997-1998, 2000-2001, 2004-2013 by Steve Nygard.
//

#import "CKYDrawBaseView.h"

@class UIImage;

@interface CKYEraserToolView : CKYDrawBaseView
{
    UIImage *_image;
}

@property(retain, nonatomic) UIImage *image; // @synthesize image=_image;
- (void).cxx_destruct;
- (void)drawRect:(struct CGRect)arg1;
- (void)setPath:(id)arg1;
- (void)initConfig;
- (id)initWithFrame:(struct CGRect)arg1;

@end
