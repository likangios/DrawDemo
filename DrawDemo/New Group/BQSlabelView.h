//
//     Generated by class-dump 3.5 (64 bit).
//
//     class-dump is Copyright (C) 1997-1998, 2000-2001, 2004-2013 by Steve Nygard.
//

#import <UIKit/UIKit.h>
#import "CKYStyleModel.h"

@interface BQSlabelView : UIView

@property(strong, nonatomic) UIImageView *imageView;
@property(strong, nonatomic) UIImage *colorImage2;
@property(strong, nonatomic) UIImage *colorImage1;
@property(strong, nonatomic) UIFont *font;
@property(copy, nonatomic) NSString *text;
@property(strong, nonatomic) CKYStyleModel *model;

- (BOOL)stringContainsEmoji:(id)arg1;
- (id)getImageWithColor:(id)arg1 mColor:(id)arg2;
- (void)layoutSubviews;
- (void)initConfig;
- (id)initWithFrame:(CGRect)frame;

@end

