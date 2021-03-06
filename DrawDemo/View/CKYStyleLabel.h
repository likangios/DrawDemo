//
//     Generated by class-dump 3.5 (64 bit).
//
//     class-dump is Copyright (C) 1997-1998, 2000-2001, 2004-2013 by Steve Nygard.
//

#import "UIView.h"

@class CKYStyleModel, NSString, UIFont;

@interface CKYStyleLabel : UIView
{
    CKYStyleModel *_model;
    NSString *_text;
    UIFont *_font;
}

@property(retain, nonatomic) UIFont *font; // @synthesize font=_font;
@property(copy, nonatomic) NSString *text; // @synthesize text=_text;
@property(retain, nonatomic) CKYStyleModel *model; // @synthesize model=_model;
- (void).cxx_destruct;
- (id)getImage;
- (void)drawRect:(struct CGRect)arg1;
- (void)initConfig;
- (id)initWithFrame:(struct CGRect)arg1;

@end

