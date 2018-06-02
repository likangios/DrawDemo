//
//     Generated by class-dump 3.5 (64 bit).
//
//     class-dump is Copyright (C) 1997-1998, 2000-2001, 2004-2013 by Steve Nygard.
//

#import "UIView.h"

#import "BQSPhraseViewDelegate.h"
#import "UITextViewDelegate.h"

@class BQSPhraseView, NSString, TWEmojiKeyBoard, UIButton, UITextView;

@interface CKYAddTextView : UIView <UITextViewDelegate, BQSPhraseViewDelegate>
{
    TWEmojiKeyBoard *keyBoard;
    _Bool _isHiddenDate;
    id <CKYAddTextViewDelegate> _delegate;
    NSString *_text;
    UIView *_backView;
    UIView *_contentView;
    BQSPhraseView *_phraseView;
    UIButton *_dateBtn;
    UIButton *_emojiBtn;
    UIButton *_finishBtn;
    UITextView *_textView;
}

@property(retain, nonatomic) UITextView *textView; // @synthesize textView=_textView;
@property(retain, nonatomic) UIButton *finishBtn; // @synthesize finishBtn=_finishBtn;
@property(retain, nonatomic) UIButton *emojiBtn; // @synthesize emojiBtn=_emojiBtn;
@property(retain, nonatomic) UIButton *dateBtn; // @synthesize dateBtn=_dateBtn;
@property(retain, nonatomic) BQSPhraseView *phraseView; // @synthesize phraseView=_phraseView;
@property(retain, nonatomic) UIView *contentView; // @synthesize contentView=_contentView;
@property(retain, nonatomic) UIView *backView; // @synthesize backView=_backView;
@property(nonatomic) _Bool isHiddenDate; // @synthesize isHiddenDate=_isHiddenDate;
@property(copy, nonatomic) NSString *text; // @synthesize text=_text;
@property(nonatomic) __weak id <CKYAddTextViewDelegate> delegate; // @synthesize delegate=_delegate;
- (void).cxx_destruct;
- (void)phraseView:(id)arg1 selectString:(id)arg2;
- (void)textViewDidChange:(id)arg1;
- (void)textViewDidChangeSelection:(id)arg1;
- (void)finishBtnClick:(id)arg1;
- (void)emojiKeyBoardEndEditing;
- (void)willHidden:(id)arg1;
- (void)willShow:(id)arg1;
- (void)cancelView;
- (void)emojiBtnClick:(id)arg1;
- (void)dateClick:(id)arg1;
- (void)initConfig;
- (id)initWithFrame:(struct CGRect)arg1;
- (void)dealloc;

// Remaining properties
@property(readonly, copy) NSString *debugDescription;
@property(readonly, copy) NSString *description;
@property(readonly) unsigned long long hash;
@property(readonly) Class superclass;

@end

