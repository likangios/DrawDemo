//
//  BQSlabelView.m
//  DrawDemo
//
//  Created by perfay on 2018/6/22.
//  Copyright © 2018年 perfay. All rights reserved.
//

#import "BQSlabelView.h"

@implementation BQSlabelView

//----- (00000001000F0A1C) ----------------------------------------------------
// local variable allocation has failed, the output may be wrong!
- (id)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        [self initConfig];
    }
    return self;
}
/*
BQSlabelView *__cdecl -[BQSlabelView initWithFrame:](BQSlabelView *self, SEL a2, CGRect a3)
{
    BQSlabelView *v3; // x0
    BQSlabelView *v4; // x19
    BQSlabelView *v6; // [xsp+0h] [xbp-20h]
    __objc2_class *v7; // [xsp+8h] [xbp-18h]
    
    v6 = self;
    v7 = &OBJC_CLASS___BQSlabelView;
    v3 = (BQSlabelView *)objc_msgSendSuper2(
                                            &v6,
                                            "initWithFrame:",
                                            a3.var0.var0,
                                            a3.var0.var1,
                                            a3.var1.var0,
                                            a3.var1.var1,
                                            self,
                                            &OBJC_CLASS___BQSlabelView);
    v4 = v3;
    if ( v3 )
        -[BQSlabelView initConfig](v3, "initConfig");
    return v4;
}
// 1000F0A1C: fragmented variable at 0:d0.8,8:d1.8,16:d2.8,24:d3.8 may be wrong
// 101D5F7C0: using guessed type __objc2_class OBJC_CLASS___BQSlabelView;
*/
-(void)initConfig{
    UIColor *v3 = [UIColor clearColor];
    self.backgroundColor = v3;
    UIImageView *v5 = [[UIImageView alloc]initWithFrame:self.bounds];
    self.imageView = v5;
    self.imageView.contentMode = UIViewContentModeScaleToFill;
    [self addSubview:self.imageView];
}

/*
//----- (00000001000F0A74) ----------------------------------------------------
void __cdecl -[BQSlabelView initConfig](BQSlabelView *self, SEL a2)
{
    BQSlabelView *v2; // x19
    __int64 v3; // x0
    void *v4; // x20
    void *v5; // x0
    void *v6; // x0
    __int64 v7; // x0
    
    v2 = self;
    objc_msgSend(&OBJC_CLASS___UIColor, "clearColor");
    v3 = objc_retainAutoreleasedReturnValue();
    objc_msgSend(v2, "setBackgroundColor:", v3);
    objc_release();
    v4 = objc_msgSend(&OBJC_CLASS___UIImageView, "alloc");
    objc_msgSend(v2, "bounds");
    v5 = objc_msgSend(v4, "initWithFrame:");
    -[BQSlabelView setImageView:](v2, "setImageView:", v5);
    objc_release();
    -[BQSlabelView imageView](v2, "imageView");
    v6 = (void *)objc_retainAutoreleasedReturnValue();
    objc_msgSend(v6, "setContentMode:", 1LL);
    objc_release();
    -[BQSlabelView imageView](v2, "imageView");
    v7 = objc_retainAutoreleasedReturnValue();
    objc_msgSend(v2, "addSubview:", v7);
    objc_release();
}
*/

- (void)layoutSubviews{
    [super layoutSubviews];
    self.imageView.frame = self.bounds;
}
/*
//----- (00000001000F0B94) ----------------------------------------------------
void __cdecl -[BQSlabelView layoutSubviews](BQSlabelView *self, SEL a2)
{
    BQSlabelView *v2; // x19
    void *v3; // x20
    BQSlabelView *v4; // [xsp+0h] [xbp-20h]
    __objc2_class *v5; // [xsp+8h] [xbp-18h]
    
    v2 = self;
    v4 = self;
    v5 = &OBJC_CLASS___BQSlabelView;
    objc_msgSendSuper2(&v4, "layoutSubviews", self, &OBJC_CLASS___BQSlabelView);
    -[BQSlabelView imageView](v2, "imageView");
    v3 = (void *)objc_retainAutoreleasedReturnValue();
    objc_msgSend(v2, "bounds");
    objc_msgSend(v3, "setFrame:");
    objc_release();
}
// 101D5F7C0: using guessed type __objc2_class OBJC_CLASS___BQSlabelView;
*/

- (void)setFont:(UIFont *)font{
    
    if (!font) {
        font =[UIFont systemFontOfSize:40];
    }
    _font = font;
}
/*
//----- (00000001000F0C18) ----------------------------------------------------
void __cdecl -[BQSlabelView setFont:](BQSlabelView *self, SEL a2, id a3)
{
    BQSlabelView *v3; // x19
    __int64 v4; // x20
    __int64 v5; // x21
    UIFont *v6; // x0
    
    v3 = self;
    v4 = objc_retain();
    if ( !v4 )
    {
        objc_msgSend(&OBJC_CLASS___UIFont, "systemFontOfSize:", 40.0);
        v5 = objc_retainAutoreleasedReturnValue();
        objc_release();
        v4 = v5;
    }
    v6 = v3->_font;
    v3->_font = (UIFont *)v4;
    objc_release();
}

//----- (00000001000F0C90) ----------------------------------------------------
void __cdecl -[BQSlabelView setText:](BQSlabelView *self, SEL a2, id a3)
{
    objc_storeStrong();
}
*/

- (void)setModel:(CKYStyleModel *)model{
    _model = model;
    if (_model.startColor) {
        _model.textColor = _model.startColor;
    }
    CKYStyleModel *v9 = [_model copyStyleModel];
    v9.textColorSize = _model.textColorSize;
    UIColor *v11 = v9.textColor;
    UIColor *v12 = v9.miaobianColor;
    self.imageView.image = [self getImageWithColor:v11 mColor:v12];
}
/*
//----- (00000001000F0CA4) ----------------------------------------------------
void __cdecl -[BQSlabelView setModel:](BQSlabelView *self, SEL a2, id a3)
{
    BQSlabelView *v3; // x19
    CKYStyleModel *v4; // x20
    __int64 v5; // x22
    __int64 v6; // x0
    CKYStyleModel *v7; // x22
    void *v8; // x21
    void *v9; // x20
    void *v10; // x22
    __int64 v11; // x23
    __int64 v12; // x0
    __int64 v13; // x0
    
    v3 = self;
    v4 = (CKYStyleModel *)objc_retain();
    -[CKYStyleModel startColor](v4, "startColor");
    v5 = objc_retainAutoreleasedReturnValue();
    objc_release();
    if ( v5 )
    {
        -[CKYStyleModel startColor](v4, "startColor");
        v6 = objc_retainAutoreleasedReturnValue();
        -[CKYStyleModel setTextColor:](v4, "setTextColor:", v6);
        objc_release();
    }
    v7 = v3->_model;
    v3->_model = v4;
    v8 = (void *)objc_retain();
    objc_release();
    v9 = objc_msgSend(v8, "copyStyleModel");
    objc_msgSend(v8, "textColorSize");
    objc_msgSend(v9, "setTextColorSize:");
    -[BQSlabelView imageView](v3, "imageView");
    v10 = (void *)objc_retainAutoreleasedReturnValue();
    objc_msgSend(v9, "textColor");
    v11 = objc_retainAutoreleasedReturnValue();
    objc_msgSend(v9, "miaobianColor");
    v12 = objc_retainAutoreleasedReturnValue();
    -[BQSlabelView getImageWithColor:mColor:](v3, "getImageWithColor:mColor:", v11, v12);
    v13 = objc_retainAutoreleasedReturnValue();
    objc_msgSend(v10, "setImage:", v13);
    objc_release();
    objc_release();
    objc_release();
    objc_release();
    objc_release();
    objc_release();
}
*/

- (UIImage *)getImageWithColor:(UIColor *)textColor mColor:(UIColor *)miaobiaoColor{
    
    UIColor *v5 = textColor;
    UIColor *v6 = miaobiaoColor;
    
    CKYStyleModel *v7 = self.model;
    if (v7.startColor) {
        if (v7.endColor) {
            self.model.textColor = self.model.startColor;
        }
    }
    CGFloat v14 = self.frame.size.width;
    CGFloat v16 = self.frame.size.height;
    NSString *v17 = self.text;
    NSMutableParagraphStyle *v18 = [NSMutableParagraphStyle defaultParagraphStyle];
    v18.lineBreakMode = NSLineBreakByWordWrapping;
    v18.alignment = NSTextAlignmentLeft;
    CGFloat v22 = self.model.textColorSize;
    CGFloat v25 = (v22 + self.model.miaobianSize) * 8.0;
    
    CGFloat v28 = v25 * self.font.pointSize / 40.0;
    
    UIFont *v33 = [self.font fontWithSize:self.font.pointSize - v28 * 0.5];
    CGFloat v36 = v5.red;
    CGFloat v38 = v5.green;
    CGFloat v40 = v5.blue;
    UIColor *v43 = [UIColor colorWithRed:v36 green:v38 blue:v40 alpha:self.model.textAlpha];
    
    NSDictionary *
    
}
/*
//----- (00000001000F0E44) ----------------------------------------------------
id __cdecl -[BQSlabelView getImageWithColor:mColor:](BQSlabelView *self, SEL a2, id a3, id a4)
{
    BQSlabelView *v4; // x22
    void *v5; // x20
    void *v6; // x24
    void *v7; // x0
    void *v8; // x0
    __int64 v9; // x25
    void *v10; // x19
    void *v11; // x0
    __int64 v12; // x0
    double v13; // d0
    double v14; // d15
    double v15; // d1
    double v16; // d9
    void *v17; // x27
    void *v18; // x0
    void *v19; // x21
    void *v20; // x0
    double v21; // d0
    double v22; // d10
    void *v23; // x0
    double v24; // d0
    double v25; // d8
    void *v26; // x0
    double v27; // d0
    double v28; // d10
    void *v29; // x19
    void *v30; // x0
    __int64 v31; // x25
    double v32; // d0
    __int64 v33; // x21
    char **v34; // x26
    double v35; // d0
    double v36; // d11
    double v37; // d0
    double v38; // d12
    double v39; // d0
    double v40; // d13
    void *v41; // x0
    double v42; // d0
    __int64 v43; // x19
    double v44; // d1
    double v45; // d11
    double v46; // d3
    double v47; // d10
    double v48; // d0
    double v49; // d12
    double v50; // d1
    double v51; // d13
    double v52; // d2
    double v53; // d14
    void *v54; // x0
    void *v55; // x0
    char v56; // w20
    void *v57; // x0
    void *v58; // x0
    double v59; // d0
    double v60; // d15
    void *v61; // x0
    void *v62; // x0
    void *v63; // ST38_8
    void *v64; // ST30_8
    __int64 v65; // d0
    void *v66; // ST20_8
    void *v67; // ST18_8
    __int64 v68; // d0
    void *v69; // ST10_8
    void *v70; // ST08_8
    __int64 v71; // d0
    void *v72; // x0
    void *v73; // x0
    __int64 v74; // d0
    void *v75; // x0
    void *v76; // x0
    __int64 v77; // d0
    void *v78; // x0
    void *v79; // x0
    __int64 v80; // d0
    void *v81; // x20
    void *v82; // x0
    double v83; // d0
    double v84; // d15
    char *v85; // x21
    double v86; // d0
    double v87; // d15
    double v88; // d0
    double v89; // d10
    double v90; // d0
    double v91; // d8
    void *v92; // x0
    double v93; // d0
    __int64 v94; // x21
    __int64 v95; // x24
    void *v96; // x0
    double v97; // d0
    double v98; // d8
    void *v99; // x0
    void *v100; // x0
    id result; // x0
    __int64 v102; // [xsp+70h] [xbp-1F0h]
    __int64 v103; // [xsp+78h] [xbp-1E8h]
    __int64 v104; // [xsp+80h] [xbp-1E0h]
    double v105; // [xsp+B8h] [xbp-1A8h]
    __int64 v106; // [xsp+E8h] [xbp-178h]
    __int64 v107; // [xsp+F8h] [xbp-168h]
    __int64 v108; // [xsp+110h] [xbp-150h]
    __int64 v109; // [xsp+118h] [xbp-148h]
    __int64 v110; // [xsp+120h] [xbp-140h]
    __int64 v111; // [xsp+128h] [xbp-138h]
    __int64 v112; // [xsp+130h] [xbp-130h]
    __int64 v113; // [xsp+138h] [xbp-128h]
    __int64 v114; // [xsp+140h] [xbp-120h]
    __int64 v115; // [xsp+148h] [xbp-118h]
    __int64 v116; // [xsp+150h] [xbp-110h]
    __int64 v117; // [xsp+158h] [xbp-108h]
    __int64 v118; // [xsp+160h] [xbp-100h]
    __int64 v119; // [xsp+168h] [xbp-F8h]
    __int64 v120; // [xsp+170h] [xbp-F0h]
    __int64 v121; // [xsp+178h] [xbp-E8h]
    __int128 v122; // [xsp+180h] [xbp-E0h]
    __int64 v123; // [xsp+198h] [xbp-C8h]
    __int64 v124; // [xsp+1A0h] [xbp-C0h]
    __int64 v125; // [xsp+1A8h] [xbp-B8h]
    __int64 v126; // [xsp+1B0h] [xbp-B0h]
    __int64 v127; // [xsp+1B8h] [xbp-A8h]
    __int64 v128; // [xsp+1C0h] [xbp-A0h]
    __int64 v129; // [xsp+1C8h] [xbp-98h]
    
    v4 = self;
    v5 = (void *)objc_retain();
    v6 = (void *)objc_retain();
    objc_autoreleasePoolPush();
    -[BQSlabelView model](v4, "model");
    v7 = (void *)objc_retainAutoreleasedReturnValue();
    objc_msgSend(v7, "startColor");
    if ( objc_retainAutoreleasedReturnValue() )
    {
        -[BQSlabelView model](v4, "model");
        v8 = (void *)objc_retainAutoreleasedReturnValue();
        objc_msgSend(v8, "endColor");
        v9 = objc_retainAutoreleasedReturnValue();
        objc_release();
        objc_release();
        objc_release();
        objc_release();
        if ( !v9 )
            goto LABEL_5;
        -[BQSlabelView model](v4, "model");
        v10 = (void *)objc_retainAutoreleasedReturnValue();
        -[BQSlabelView model](v4, "model");
        v11 = (void *)objc_retainAutoreleasedReturnValue();
        objc_msgSend(v11, "startColor");
        v12 = objc_retainAutoreleasedReturnValue();
        objc_msgSend(v10, "setTextColor:", v12);
        objc_release();
    }
    objc_release();
    objc_release();
LABEL_5:
    objc_msgSend(v4, "size");
    v14 = v13;
    objc_msgSend(v4, "size");
    v16 = v15;
    -[BQSlabelView text](v4, "text");
    v17 = (void *)objc_retainAutoreleasedReturnValue();
    objc_msgSend(&OBJC_CLASS___NSMutableParagraphStyle, "defaultParagraphStyle");
    v18 = (void *)objc_retainAutoreleasedReturnValue();
    v19 = objc_msgSend(v18, "mutableCopy");
    objc_release();
    objc_msgSend(v19, "setLineBreakMode:", 0LL);
    objc_msgSend(v19, "setAlignment:", 1LL);
    -[BQSlabelView model](v4, "model");
    v20 = (void *)objc_retainAutoreleasedReturnValue();
    objc_msgSend(v20, "textColorSize");
    v22 = v21;
    -[BQSlabelView model](v4, "model");
    v23 = (void *)objc_retainAutoreleasedReturnValue();
    objc_msgSend(v23, "miaobianSize");
    v25 = (v22 + v24) * 8.0;
    -[BQSlabelView font](v4, "font");
    v26 = (void *)objc_retainAutoreleasedReturnValue();
    objc_msgSend(v26, "pointSize");
    v28 = v25 * v27 / 40.0;
    objc_release();
    objc_release();
    objc_release();
    -[BQSlabelView font](v4, "font");
    v29 = (void *)objc_retainAutoreleasedReturnValue();
    -[BQSlabelView font](v4, "font");
    v30 = (void *)objc_retainAutoreleasedReturnValue();
    v31 = (__int64)v19;
    objc_msgSend(v30, "pointSize");
    objc_msgSend(v29, "fontWithSize:", v32 - v28 * 0.5);
    v33 = objc_retainAutoreleasedReturnValue();
    objc_release();
    objc_release();
    v34 = &selRef_setPlusParams_;
    objc_msgSend(v5, "red");
    v36 = v35;
    objc_msgSend(v5, "green");
    v38 = v37;
    objc_msgSend(v5, "blue");
    v40 = v39;
    -[BQSlabelView model](v4, "model");
    v41 = (void *)objc_retainAutoreleasedReturnValue();
    objc_msgSend(v41, "textAlpha");
    objc_msgSend(&OBJC_CLASS___UIColor, "colorWithRed:green:blue:alpha:", v36, v38, v40, v42);
    v43 = objc_retainAutoreleasedReturnValue();
    objc_release();
    v104 = NSFontAttributeName;
    v123 = NSFontAttributeName;
    v107 = v33;
    v126 = v33;
    v103 = NSForegroundColorAttributeName;
    v124 = NSForegroundColorAttributeName;
    v127 = v43;
    v102 = NSParagraphStyleAttributeName;
    v125 = NSParagraphStyleAttributeName;
    v128 = v31;
    objc_msgSend(&OBJC_CLASS___NSDictionary, "dictionaryWithObjects:forKeys:count:", &v126, &v123, 3LL);
    v106 = objc_retainAutoreleasedReturnValue();
    objc_msgSend(v17, "sizeWithAttributes:");
    v45 = v44;
    objc_msgSend(v4, "bounds");
    v47 = (v46 - v45) * 0.5;
    objc_msgSend(v4, "bounds");
    v49 = v48;
    objc_msgSend(v4, "bounds");
    v51 = v50 + v47;
    objc_msgSend(v4, "bounds");
    v53 = v52;
    -[BQSlabelView model](v4, "model");
    v54 = (void *)objc_retainAutoreleasedReturnValue();
    objc_msgSend(v54, "startColor");
    v105 = v14;
    if ( !objc_retainAutoreleasedReturnValue() )
    {
        objc_release();
        objc_release();
        v81 = 0LL;
        goto LABEL_14;
    }
    -[BQSlabelView model](v4, "model");
    v55 = (void *)objc_retainAutoreleasedReturnValue();
    objc_msgSend(v55, "endColor");
    if ( !objc_retainAutoreleasedReturnValue() )
    {
        objc_release();
        objc_release();
        objc_release();
        goto LABEL_13;
    }
    v56 = (unsigned __int64)-[BQSlabelView stringContainsEmoji:](v4, "stringContainsEmoji:", v17);
    objc_release();
    objc_release();
    objc_release();
    objc_release();
    if ( v56 & 1 )
    {
    LABEL_13:
        v81 = 0LL;
        v34 = &selRef_setPlusParams_;
        goto LABEL_14;
    }
    UIGraphicsBeginImageContextWithOptions();
    UIGraphicsGetCurrentContext();
    -[BQSlabelView text](v4, "text");
    v57 = (void *)objc_retainAutoreleasedReturnValue();
    objc_msgSend(v57, "drawInRect:withAttributes:", v106, v49, v51, v53, v45);
    objc_release();
    -[BQSlabelView model](v4, "model");
    v58 = (void *)objc_retainAutoreleasedReturnValue();
    objc_msgSend(v58, "textColorSize");
    v60 = v59;
    objc_release();
    if ( v60 != 0.0 )
    {
        CGContextSetTextDrawingMode();
        -[BQSlabelView model](v4, "model");
        v61 = (void *)objc_retainAutoreleasedReturnValue();
        objc_msgSend(v61, "textColorSize");
        -[BQSlabelView font](v4, "font");
        v62 = (void *)objc_retainAutoreleasedReturnValue();
        objc_msgSend(v62, "pointSize");
        CGContextSetLineWidth();
        objc_release();
        objc_release();
        objc_msgSend(v17, "drawInRect:withAttributes:", v106, v49, v51, v53, v45);
    }
    CGBitmapContextCreateImage();
    CGContextClearRect();
    CGContextTranslateCTM();
    CGContextScaleCTM();
    CGContextClipToMask();
    CGColorSpaceCreateDeviceRGB();
    v122 = xmmword_101517530;
    -[BQSlabelView model](v4, "model");
    v63 = (void *)objc_retainAutoreleasedReturnValue();
    objc_msgSend(v63, "endColor");
    v64 = (void *)objc_retainAutoreleasedReturnValue();
    objc_msgSend(v64, "red");
    v114 = v65;
    -[BQSlabelView model](v4, "model");
    v66 = (void *)objc_retainAutoreleasedReturnValue();
    objc_msgSend(v66, "endColor");
    v67 = (void *)objc_retainAutoreleasedReturnValue();
    objc_msgSend(v67, "green");
    v115 = v68;
    -[BQSlabelView model](v4, "model");
    v69 = (void *)objc_retainAutoreleasedReturnValue();
    objc_msgSend(v69, "endColor");
    v70 = (void *)objc_retainAutoreleasedReturnValue();
    objc_msgSend(v70, "blue");
    v116 = v71;
    v117 = 4607182418800017408LL;
    -[BQSlabelView model](v4, "model");
    v72 = (void *)objc_retainAutoreleasedReturnValue();
    objc_msgSend(v72, "startColor");
    v73 = (void *)objc_retainAutoreleasedReturnValue();
    objc_msgSend(v73, "red");
    v118 = v74;
    -[BQSlabelView model](v4, "model");
    v75 = (void *)objc_retainAutoreleasedReturnValue();
    objc_msgSend(v75, "startColor");
    v76 = (void *)objc_retainAutoreleasedReturnValue();
    objc_msgSend(v76, "green");
    v119 = v77;
    -[BQSlabelView model](v4, "model");
    v78 = (void *)objc_retainAutoreleasedReturnValue();
    objc_msgSend(v78, "startColor");
    v79 = (void *)objc_retainAutoreleasedReturnValue();
    objc_msgSend(v79, "blue");
    v120 = v80;
    v121 = 4607182418800017408LL;
    objc_release();
    objc_release();
    objc_release();
    objc_release();
    objc_release();
    objc_release();
    objc_release();
    objc_release();
    objc_release();
    objc_release();
    objc_release();
    objc_release();
    CGGradientCreateWithColorComponents();
    CGContextDrawLinearGradient();
    CGColorSpaceRelease();
    CGGradientRelease();
    CGImageRelease();
    UIGraphicsGetImageFromCurrentImageContext();
    v81 = (void *)objc_retainAutoreleasedReturnValue();
    UIGraphicsEndImageContext();
    v34 = &selRef_setPlusParams_;
LABEL_14:
    UIGraphicsBeginImageContextWithOptions();
    UIGraphicsGetCurrentContext();
    -[BQSlabelView model](v4, "model");
    v82 = (void *)objc_retainAutoreleasedReturnValue();
    objc_msgSend(v82, "miaobianSize");
    v84 = v83;
    objc_release();
    if ( v84 > 0.0 )
    {
        v85 = v34[242];
        objc_msgSend(v6, "red");
        v87 = v86;
        objc_msgSend(v6, "green");
        v89 = v88;
        objc_msgSend(v6, "blue");
        v91 = v90;
        -[BQSlabelView model](v4, "model");
        v92 = (void *)objc_retainAutoreleasedReturnValue();
        objc_msgSend(v92, "miaobianAlpha");
        objc_msgSend(v85, "colorWithRed:green:blue:alpha:", v87, v89, v91, v93);
        v94 = objc_retainAutoreleasedReturnValue();
        objc_release();
        v108 = v104;
        v111 = v107;
        v112 = v94;
        v109 = v103;
        v110 = v102;
        v113 = v31;
        objc_msgSend(&OBJC_CLASS___NSDictionary, "dictionaryWithObjects:forKeys:count:", &v111, &v108, 3LL);
        v95 = objc_retainAutoreleasedReturnValue();
        CGContextSetTextDrawingMode();
        objc_msgSend(v17, "drawInRect:withAttributes:", v95, v49, v51, v53, v45);
        CGContextSetTextDrawingMode();
        CGContextSetLineWidth();
        objc_msgSend(v17, "drawInRect:withAttributes:", v95, v49, v51, v53, v45);
        objc_release();
        objc_release();
    }
    CGContextSetBlendMode();
    if ( v81 )
    {
        objc_msgSend(v81, "drawInRect:", 0.0, 0.0, v105, v16);
    }
    else
    {
        CGContextSetTextDrawingMode();
        objc_msgSend(v17, "drawInRect:withAttributes:", v106, v49, v51, v53, v45);
        -[BQSlabelView model](v4, "model");
        v96 = (void *)objc_retainAutoreleasedReturnValue();
        objc_msgSend(v96, "textColorSize");
        v98 = v97;
        objc_release();
        if ( v98 != 0.0 )
        {
            CGContextSetTextDrawingMode();
            -[BQSlabelView model](v4, "model");
            v99 = (void *)objc_retainAutoreleasedReturnValue();
            objc_msgSend(v99, "textColorSize");
            -[BQSlabelView font](v4, "font");
            v100 = (void *)objc_retainAutoreleasedReturnValue();
            objc_msgSend(v100, "pointSize");
            CGContextSetLineWidth();
            objc_release();
            objc_release();
            objc_msgSend(v17, "drawInRect:withAttributes:", v106, v49, v51, v53, v45);
        }
    }
    UIGraphicsGetImageFromCurrentImageContext();
    objc_retainAutoreleasedReturnValue();
    UIGraphicsEndImageContext();
    objc_release();
    objc_release();
    objc_release();
    objc_release();
    objc_release();
    objc_release();
    objc_autoreleasePoolPop();
    objc_release();
    result = (id)objc_release();
    if ( __stack_chk_guard == v129 )
        result = (id)objc_autoreleaseReturnValue();
    return result;
}
// 101517530: using guessed type __int128 xmmword_101517530;
// 101D4D000: using guessed type char *selRef_setPlusParams_;

//----- (00000001000F1BA8) ----------------------------------------------------
bool __cdecl -[BQSlabelView stringContainsEmoji:](BQSlabelView *self, SEL a2, id a3)
{
    void *v3; // x0
    void *v4; // x19
    void *v5; // x0
    char v6; // w20
    void **v8; // [xsp+8h] [xbp-58h]
    __int64 v9; // [xsp+10h] [xbp-50h]
    __int64 (__fastcall *v10)(__int64); // [xsp+18h] [xbp-48h]
    void *v11; // [xsp+20h] [xbp-40h]
    __int64 *v12; // [xsp+28h] [xbp-38h]
    __int64 v13; // [xsp+30h] [xbp-30h]
    __int64 *v14; // [xsp+38h] [xbp-28h]
    __int64 v15; // [xsp+40h] [xbp-20h]
    char v16; // [xsp+48h] [xbp-18h]
    
    v3 = (void *)objc_retain();
    v4 = v3;
    v13 = 0LL;
    v14 = &v13;
    v15 = 137975824384LL;
    v16 = 0;
    v5 = objc_msgSend(v3, "length");
    v8 = _NSConcreteStackBlock;
    v9 = 3254779904LL;
    v10 = sub_1000F1C80;
    v11 = &unk_101A78D90;
    v12 = &v13;
    objc_msgSend(v4, "enumerateSubstringsInRange:options:usingBlock:", 0LL, v5, 2LL, &v8);
    v6 = *((_BYTE *)v14 + 24);
    _Block_object_dispose(&v13, 8);
    objc_release();
    return v6;
}

//----- (00000001000F1C80) ----------------------------------------------------
__int64 __fastcall sub_1000F1C80(__int64 a1)
{
    __int64 v1; // x20
    void *v2; // x0
    void *v3; // x19
    unsigned int v4; // w0
    unsigned int v5; // w22
    
    v1 = a1;
    v2 = (void *)objc_retain();
    v3 = v2;
    v4 = (unsigned __int64)objc_msgSend(v2, "characterAtIndex:", 0LL);
    v5 = v4;
    if ( v4 >> 10 == 54 )
    {
        if ( (unsigned __int64)objc_msgSend(v3, "length") >= 2
            && ((unsigned int)objc_msgSend(v3, "characterAtIndex:", 1LL) + (v5 << 10) - 56732672) >> 9 <= 0x14 )
        {
            *(_BYTE *)(*(_QWORD *)(*(_QWORD *)(v1 + 32) + 8LL) + 24LL) = 1;
        }
    }
    else if ( v4 - 8448 <= 0x6BF )
    {
        *(_BYTE *)(*(_QWORD *)(*(_QWORD *)(v1 + 32) + 8LL) + 24LL) = 1;
    }
    return objc_release();
}

//----- (00000001000F1D58) ----------------------------------------------------
void __fastcall sub_1000F1D58(__int64 a1, __int64 a2)
{
    _Block_object_assign((void *)(a1 + 32), *(const void **)(a2 + 32), 8);
}

//----- (00000001000F1D68) ----------------------------------------------------
void __fastcall sub_1000F1D68(__int64 a1)
{
    _Block_object_dispose(*(const void **)(a1 + 32), 8);
}

//----- (00000001000F1D74) ----------------------------------------------------
CKYStyleModel *__cdecl -[BQSlabelView model](BQSlabelView *self, SEL a2)
{
    return self->_model;
}

//----- (00000001000F1D84) ----------------------------------------------------
NSString *__cdecl -[BQSlabelView text](BQSlabelView *self, SEL a2)
{
    return (NSString *)_objc_getProperty(self, a2, 16LL, 0LL);
}
// 102769B28: using guessed type __int64 __fastcall _objc_getProperty(_QWORD, _QWORD, _QWORD, _QWORD);

//----- (00000001000F1D94) ----------------------------------------------------
UIFont *__cdecl -[BQSlabelView font](BQSlabelView *self, SEL a2)
{
    return self->_font;
}

//----- (00000001000F1DA4) ----------------------------------------------------
UIImage *__cdecl -[BQSlabelView colorImage1](BQSlabelView *self, SEL a2)
{
    return self->_colorImage1;
}

//----- (00000001000F1DB4) ----------------------------------------------------
void __cdecl -[BQSlabelView setColorImage1:](BQSlabelView *self, SEL a2, id a3)
{
    objc_storeStrong();
}

//----- (00000001000F1DC8) ----------------------------------------------------
UIImage *__cdecl -[BQSlabelView colorImage2](BQSlabelView *self, SEL a2)
{
    return self->_colorImage2;
}

//----- (00000001000F1DD8) ----------------------------------------------------
void __cdecl -[BQSlabelView setColorImage2:](BQSlabelView *self, SEL a2, id a3)
{
    objc_storeStrong();
}

//----- (00000001000F1DEC) ----------------------------------------------------
UIImageView *__cdecl -[BQSlabelView imageView](BQSlabelView *self, SEL a2)
{
    return self->_imageView;
}

//----- (00000001000F1DFC) ----------------------------------------------------
void __cdecl -[BQSlabelView setImageView:](BQSlabelView *self, SEL a2, id a3)
{
    objc_storeStrong();
}

//----- (00000001000F1E10) ----------------------------------------------------
void __cdecl -[BQSlabelView .cxx_destruct](BQSlabelView *self, SEL a2)
{
    objc_storeStrong();
    objc_storeStrong();
    objc_storeStrong();
    objc_storeStrong();
    objc_storeStrong();
    objc_storeStrong();
}
 */

@end
