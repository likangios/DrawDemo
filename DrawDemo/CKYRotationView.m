//
//  CKYRotationView.m
//  DrawDemo
//
//  Created by perfay on 2018/5/25.
//  Copyright © 2018年 perfay. All rights reserved.
//

#import "CKYRotationView.h"

@implementation CKYRotationView


//----- (00000001000F56AC) ----------------------------------------------------
CKYRotationView *__cdecl -[CKYRotationView initWithCoder:](CKYRotationView *self, SEL a2, id a3)
{
    CKYRotationView *v3; // x0
    CKYRotationView *v4; // x19
    CKYRotationView *v6; // [xsp+0h] [xbp-20h]
    __objc2_class *v7; // [xsp+8h] [xbp-18h]
    
    v6 = self;
    v7 = &OBJC_CLASS___CKYRotationView;
    v3 = (CKYRotationView *)objc_msgSendSuper2(&v6, "initWithCoder:", a3, self, &OBJC_CLASS___CKYRotationView);
    v4 = v3;
    if ( v3 )
        -[CKYRotationView initConfig](v3, "initConfig");
    return v4;
}
// 101D5FA40: using guessed type __objc2_class OBJC_CLASS___CKYRotationView;

//----- (00000001000F5704) ----------------------------------------------------
// local variable allocation has failed, the output may be wrong!
CKYRotationView *__cdecl -[CKYRotationView initWithFrame:](CKYRotationView *self, SEL a2, CGRect a3)
{
    CKYRotationView *v3; // x0
    CKYRotationView *v4; // x19
    CKYRotationView *v6; // [xsp+0h] [xbp-20h]
    __objc2_class *v7; // [xsp+8h] [xbp-18h]
    
    v6 = self;
    v7 = &OBJC_CLASS___CKYRotationView;
    v3 = (CKYRotationView *)objc_msgSendSuper2(
                                               &v6,
                                               "initWithFrame:",
                                               a3.var0.var0,
                                               a3.var0.var1,
                                               a3.var1.var0,
                                               a3.var1.var1,
                                               self,
                                               &OBJC_CLASS___CKYRotationView);
    v4 = v3;
    if ( v3 )
        -[CKYRotationView initConfig](v3, "initConfig");
    return v4;
}
// 1000F5704: fragmented variable at 0:d0.8,8:d1.8,16:d2.8,24:d3.8 may be wrong
// 101D5FA40: using guessed type __objc2_class OBJC_CLASS___CKYRotationView;

//----- (00000001000F575C) ----------------------------------------------------
void __cdecl -[CKYRotationView initConfig](CKYRotationView *self, SEL a2)
{
    CKYRotationView *v2; // x19
    __int64 v3; // x0
    double v4; // d1
    double v5; // d8
    double v6; // d3
    double v7; // d8
    double v8; // d1
    double v9; // d8
    double v10; // d0
    double v11; // d9
    double v12; // d2
    double v13; // d9
    double v14; // d0
    void *v15; // x0
    void *v16; // x0
    __int64 v17; // x0
    void *v18; // x0
    void *v19; // x0
    __int64 v20; // x0
    void *v21; // x0
    void *v22; // x0
    __int64 v23; // x0
    void *v24; // x0
    void *v25; // x0
    __int64 v26; // x0
    void *v27; // x0
    void *v28; // x0
    __int64 v29; // x0
    void *v30; // x0
    void *v31; // x0
    __int64 v32; // x0
    void *v33; // x0
    void *v34; // x0
    __int64 v35; // x0
    void *v36; // x0
    void *v37; // x0
    __int64 v38; // x0
    
    v2 = self;
    objc_msgSend(&OBJC_CLASS___UIColor, "colorWithWhite:alpha:");
    v3 = objc_retainAutoreleasedReturnValue();
    objc_msgSend(v2, "setBackgroundColor:", v3);
    objc_release();
    -[CKYRotationView setXScale:](v2, "setXScale:", 1.0);
    -[CKYRotationView setYScale:](v2, "setYScale:", 1.0);
    -[CKYRotationView setAngle:](v2, "setAngle:", 0.0);
    objc_msgSend(v2, "frame");
    v5 = v4;
    objc_msgSend(v2, "frame");
    v7 = v5 + v6;
    objc_msgSend(v2, "center");
    v9 = v7 - v8;
    objc_msgSend(v2, "frame");
    v11 = v10;
    objc_msgSend(v2, "frame");
    v13 = v11 + v12;
    objc_msgSend(v2, "center");
    v2->_orginAngle = atan2(v9, v13 - v14);
    v15 = objc_msgSend(&OBJC_CLASS___UIView, "alloc");
    v16 = objc_msgSend(v15, "init");
    -[CKYRotationView setRbView:](v2, "setRbView:", v16);
    objc_release();
    -[CKYRotationView rbView](v2, "rbView");
    v17 = objc_retainAutoreleasedReturnValue();
    objc_msgSend(v2, "addSubview:", v17);
    objc_release();
    v18 = objc_msgSend(&OBJC_CLASS___UIView, "alloc");
    v19 = objc_msgSend(v18, "init");
    -[CKYRotationView setRtView:](v2, "setRtView:", v19);
    objc_release();
    -[CKYRotationView rtView](v2, "rtView");
    v20 = objc_retainAutoreleasedReturnValue();
    objc_msgSend(v2, "addSubview:", v20);
    objc_release();
    v21 = objc_msgSend(&OBJC_CLASS___UIView, "alloc");
    v22 = objc_msgSend(v21, "init");
    -[CKYRotationView setLtView:](v2, "setLtView:", v22);
    objc_release();
    -[CKYRotationView ltView](v2, "ltView");
    v23 = objc_retainAutoreleasedReturnValue();
    objc_msgSend(v2, "addSubview:", v23);
    objc_release();
    v24 = objc_msgSend(&OBJC_CLASS___UIView, "alloc");
    v25 = objc_msgSend(v24, "init");
    -[CKYRotationView setLbView:](v2, "setLbView:", v25);
    objc_release();
    -[CKYRotationView lbView](v2, "lbView");
    v26 = objc_retainAutoreleasedReturnValue();
    objc_msgSend(v2, "addSubview:", v26);
    objc_release();
    v27 = objc_msgSend(&OBJC_CLASS___UIView, "alloc");
    v28 = objc_msgSend(v27, "init");
    -[CKYRotationView setTopView:](v2, "setTopView:", v28);
    objc_release();
    -[CKYRotationView topView](v2, "topView");
    v29 = objc_retainAutoreleasedReturnValue();
    objc_msgSend(v2, "addSubview:", v29);
    objc_release();
    v30 = objc_msgSend(&OBJC_CLASS___UIView, "alloc");
    v31 = objc_msgSend(v30, "init");
    -[CKYRotationView setLeftView:](v2, "setLeftView:", v31);
    objc_release();
    -[CKYRotationView leftView](v2, "leftView");
    v32 = objc_retainAutoreleasedReturnValue();
    objc_msgSend(v2, "addSubview:", v32);
    objc_release();
    v33 = objc_msgSend(&OBJC_CLASS___UIView, "alloc");
    v34 = objc_msgSend(v33, "init");
    -[CKYRotationView setBottomView:](v2, "setBottomView:", v34);
    objc_release();
    -[CKYRotationView bottomView](v2, "bottomView");
    v35 = objc_retainAutoreleasedReturnValue();
    objc_msgSend(v2, "addSubview:", v35);
    objc_release();
    v36 = objc_msgSend(&OBJC_CLASS___UIView, "alloc");
    v37 = objc_msgSend(v36, "init");
    -[CKYRotationView setRightView:](v2, "setRightView:", v37);
    objc_release();
    -[CKYRotationView rightView](v2, "rightView");
    v38 = objc_retainAutoreleasedReturnValue();
    objc_msgSend(v2, "addSubview:", v38);
    objc_release();
}

//----- (00000001000F5BF0) ----------------------------------------------------
void __cdecl -[CKYRotationView changeWidth:](CKYRotationView *self, SEL a2, double a3)
{
    double v3; // d8
    CKYRotationView *v4; // x19
    double v5; // d2
    double v6; // d8
    double v7; // d0
    double v8; // d8
    double v9; // d0
    double v10; // d0
    bool v11; // nf
    void *v12; // x0
    double v13; // d0
    double v14; // d8
    double v15; // d0
    double v16; // d8
    void *v17; // x0
    double v18; // d1
    double v19; // d9
    double v20; // d0
    double v21; // d0
    void *v22; // x0
    double v23; // d1
    double v24; // d8
    double v25; // d0
    double v26; // d8
    void *v27; // x0
    double v28; // d0
    double v29; // d9
    double v30; // d0
    __int128 v31; // [xsp+0h] [xbp-110h]
    __int128 v32; // [xsp+10h] [xbp-100h]
    __int128 v33; // [xsp+20h] [xbp-F0h]
    __int128 v34; // [xsp+30h] [xbp-E0h]
    __int128 v35; // [xsp+40h] [xbp-D0h]
    __int128 v36; // [xsp+50h] [xbp-C0h]
    __int128 v37; // [xsp+60h] [xbp-B0h]
    __int128 v38; // [xsp+70h] [xbp-A0h]
    __int128 v39; // [xsp+80h] [xbp-90h]
    __int128 v40; // [xsp+90h] [xbp-80h]
    __int128 v41; // [xsp+A0h] [xbp-70h]
    __int128 v42; // [xsp+B0h] [xbp-60h]
    
    v3 = a3;
    v4 = self;
    objc_msgSend(self, "bounds");
    v6 = v3 / v5;
    -[CKYRotationView xScale](v4, "xScale");
    v8 = v6 / v7;
    -[CKYRotationView xScale](v4, "xScale");
    v10 = v9 * v8;
    if ( v10 > 0.02 )
        v11 = v10 < 4.0;
    else
        v11 = 0;
    if ( v11 )
    {
        -[CKYRotationView setXScale:](v4, "setXScale:");
        -[CKYRotationView angle](v4, "angle");
        CGAffineTransformMakeRotation();
        -[CKYRotationView xScale](v4, "xScale");
        -[CKYRotationView yScale](v4, "yScale");
        v34 = v40;
        v35 = v41;
        v36 = v42;
        CGAffineTransformScale();
        v41 = v38;
        v42 = v39;
        v40 = v37;
        v31 = v37;
        v32 = v38;
        v33 = v39;
        objc_msgSend(v4, "setTransform:", &v31, v37, v38, v39, v34, v35, v36);
        -[CKYRotationView rotationItem](v4, "rotationItem");
        v12 = (void *)objc_retainAutoreleasedReturnValue();
        objc_msgSend(v12, "size");
        v14 = v13;
        -[CKYRotationView xScale](v4, "xScale");
        v16 = fabs(v14 * v15);
        -[CKYRotationView rotationItem](v4, "rotationItem");
        v17 = (void *)objc_retainAutoreleasedReturnValue();
        objc_msgSend(v17, "size");
        v19 = v18;
        -[CKYRotationView yScale](v4, "yScale");
        v21 = hypot(v16, fabs(v19 * v20));
        -[CKYRotationView setXiebian:](v4, "setXiebian:", v21 * 0.5);
        objc_release();
        objc_release();
        -[CKYRotationView rotationItem](v4, "rotationItem");
        v22 = (void *)objc_retainAutoreleasedReturnValue();
        objc_msgSend(v22, "size");
        v24 = v23;
        -[CKYRotationView yScale](v4, "yScale");
        v26 = v24 * v25;
        -[CKYRotationView rotationItem](v4, "rotationItem");
        v27 = (void *)objc_retainAutoreleasedReturnValue();
        objc_msgSend(v27, "size");
        v29 = v28;
        -[CKYRotationView xScale](v4, "xScale");
        v4->_orginAngle = atan2(v26, v29 * v30);
        objc_release();
        objc_release();
    }
}

//----- (00000001000F5E68) ----------------------------------------------------
void __cdecl -[CKYRotationView changeHeight:](CKYRotationView *self, SEL a2, double a3)
{
    double v3; // d8
    CKYRotationView *v4; // x19
    double v5; // d3
    double v6; // d8
    double v7; // d0
    double v8; // d8
    double v9; // d0
    double v10; // d0
    bool v11; // nf
    void *v12; // x0
    double v13; // d0
    double v14; // d8
    double v15; // d0
    double v16; // d8
    void *v17; // x0
    double v18; // d1
    double v19; // d9
    double v20; // d0
    double v21; // d0
    void *v22; // x0
    double v23; // d1
    double v24; // d8
    double v25; // d0
    double v26; // d8
    void *v27; // x0
    double v28; // d0
    double v29; // d9
    double v30; // d0
    __int128 v31; // [xsp+0h] [xbp-110h]
    __int128 v32; // [xsp+10h] [xbp-100h]
    __int128 v33; // [xsp+20h] [xbp-F0h]
    __int128 v34; // [xsp+30h] [xbp-E0h]
    __int128 v35; // [xsp+40h] [xbp-D0h]
    __int128 v36; // [xsp+50h] [xbp-C0h]
    __int128 v37; // [xsp+60h] [xbp-B0h]
    __int128 v38; // [xsp+70h] [xbp-A0h]
    __int128 v39; // [xsp+80h] [xbp-90h]
    __int128 v40; // [xsp+90h] [xbp-80h]
    __int128 v41; // [xsp+A0h] [xbp-70h]
    __int128 v42; // [xsp+B0h] [xbp-60h]
    
    v3 = a3;
    v4 = self;
    objc_msgSend(self, "bounds");
    v6 = v3 / v5;
    -[CKYRotationView yScale](v4, "yScale");
    v8 = v6 / v7;
    -[CKYRotationView yScale](v4, "yScale");
    v10 = v9 * v8;
    if ( v10 > 0.02 )
        v11 = v10 < 4.0;
    else
        v11 = 0;
    if ( v11 )
    {
        -[CKYRotationView setYScale:](v4, "setYScale:");
        -[CKYRotationView angle](v4, "angle");
        CGAffineTransformMakeRotation();
        -[CKYRotationView xScale](v4, "xScale");
        -[CKYRotationView yScale](v4, "yScale");
        v34 = v40;
        v35 = v41;
        v36 = v42;
        CGAffineTransformScale();
        v41 = v38;
        v42 = v39;
        v40 = v37;
        v31 = v37;
        v32 = v38;
        v33 = v39;
        objc_msgSend(v4, "setTransform:", &v31, v37, v38, v39, v34, v35, v36);
        -[CKYRotationView rotationItem](v4, "rotationItem");
        v12 = (void *)objc_retainAutoreleasedReturnValue();
        objc_msgSend(v12, "size");
        v14 = v13;
        -[CKYRotationView xScale](v4, "xScale");
        v16 = fabs(v14 * v15);
        -[CKYRotationView rotationItem](v4, "rotationItem");
        v17 = (void *)objc_retainAutoreleasedReturnValue();
        objc_msgSend(v17, "size");
        v19 = v18;
        -[CKYRotationView yScale](v4, "yScale");
        v21 = hypot(v16, fabs(v19 * v20));
        -[CKYRotationView setXiebian:](v4, "setXiebian:", v21 * 0.5);
        objc_release();
        objc_release();
        -[CKYRotationView rotationItem](v4, "rotationItem");
        v22 = (void *)objc_retainAutoreleasedReturnValue();
        objc_msgSend(v22, "size");
        v24 = v23;
        -[CKYRotationView yScale](v4, "yScale");
        v26 = v24 * v25;
        -[CKYRotationView rotationItem](v4, "rotationItem");
        v27 = (void *)objc_retainAutoreleasedReturnValue();
        objc_msgSend(v27, "size");
        v29 = v28;
        -[CKYRotationView xScale](v4, "xScale");
        v4->_orginAngle = atan2(v26, v29 * v30);
        objc_release();
        objc_release();
    }
}

//----- (00000001000F60E0) ----------------------------------------------------
void __cdecl -[CKYRotationView turnOverH](CKYRotationView *self, SEL a2)
{
    CKYRotationView *v2; // x19
    void *v3; // x21
    void *v4; // x0
    int v5; // w0
    
    v2 = self;
    -[CKYRotationView rotationItem](self, "rotationItem");
    v3 = (void *)objc_retainAutoreleasedReturnValue();
    -[CKYRotationView rotationItem](v2, "rotationItem");
    v4 = (void *)objc_retainAutoreleasedReturnValue();
    v5 = (unsigned __int64)objc_msgSend(v4, "turnOverH");
    objc_msgSend(v3, "setTurnOverH:", v5 ^ 1u);
    objc_release();
    objc_release();
    -[CKYRotationView updataContentView](v2, "updataContentView");
}

//----- (00000001000F6174) ----------------------------------------------------
void __cdecl -[CKYRotationView turnOverV](CKYRotationView *self, SEL a2)
{
    CKYRotationView *v2; // x19
    void *v3; // x21
    void *v4; // x0
    int v5; // w0
    
    v2 = self;
    -[CKYRotationView rotationItem](self, "rotationItem");
    v3 = (void *)objc_retainAutoreleasedReturnValue();
    -[CKYRotationView rotationItem](v2, "rotationItem");
    v4 = (void *)objc_retainAutoreleasedReturnValue();
    v5 = (unsigned __int64)objc_msgSend(v4, "turnOverV");
    objc_msgSend(v3, "setTurnOverV:", v5 ^ 1u);
    objc_release();
    objc_release();
    -[CKYRotationView updataContentView](v2, "updataContentView");
}

//----- (00000001000F6208) ----------------------------------------------------
void __cdecl -[CKYRotationView updataContentView](CKYRotationView *self, SEL a2)
{
    CKYRotationView *v2; // x19
    void *v3; // x0
    int v4; // w22
    void *v5; // x0
    int v6; // w20
    void *v7; // x19
    __int128 *v8; // x2
    __int128 v9; // [xsp+0h] [xbp-1B0h]
    __int128 v10; // [xsp+10h] [xbp-1A0h]
    __int128 v11; // [xsp+20h] [xbp-190h]
    __int128 v12; // [xsp+30h] [xbp-180h]
    __int128 v13; // [xsp+40h] [xbp-170h]
    __int128 v14; // [xsp+50h] [xbp-160h]
    __int128 v15; // [xsp+60h] [xbp-150h]
    __int128 v16; // [xsp+70h] [xbp-140h]
    __int128 v17; // [xsp+80h] [xbp-130h]
    __int128 v18; // [xsp+90h] [xbp-120h]
    __int128 v19; // [xsp+A0h] [xbp-110h]
    __int128 v20; // [xsp+B0h] [xbp-100h]
    __int128 v21; // [xsp+C0h] [xbp-F0h]
    __int128 v22; // [xsp+D0h] [xbp-E0h]
    __int128 v23; // [xsp+E0h] [xbp-D0h]
    __int128 v24; // [xsp+F0h] [xbp-C0h]
    __int128 v25; // [xsp+100h] [xbp-B0h]
    __int128 v26; // [xsp+110h] [xbp-A0h]
    __int128 v27; // [xsp+120h] [xbp-90h]
    __int128 v28; // [xsp+130h] [xbp-80h]
    __int128 v29; // [xsp+140h] [xbp-70h]
    __int128 v30; // [xsp+150h] [xbp-60h]
    __int128 v31; // [xsp+160h] [xbp-50h]
    __int128 v32; // [xsp+170h] [xbp-40h]
    
    v2 = self;
    -[CKYRotationView rotationItem](self, "rotationItem");
    v3 = (void *)objc_retainAutoreleasedReturnValue();
    v4 = (unsigned __int64)objc_msgSend(v3, "turnOverH");
    objc_release();
    -[CKYRotationView rotationItem](v2, "rotationItem");
    v5 = (void *)objc_retainAutoreleasedReturnValue();
    v6 = (unsigned __int64)objc_msgSend(v5, "turnOverV");
    objc_release();
    -[CKYRotationView contentView](v2, "contentView");
    v7 = (void *)objc_retainAutoreleasedReturnValue();
    if ( v4 )
    {
        if ( v6 )
        {
            CGAffineTransformMakeScale();
            v29 = v32;
            v28 = v31;
            v27 = v30;
            v8 = &v27;
        }
        else
        {
            CGAffineTransformMakeScale();
            v23 = v26;
            v22 = v25;
            v21 = v24;
            v8 = &v21;
        }
    }
    else if ( v6 )
    {
        CGAffineTransformMakeScale();
        v17 = v20;
        v16 = v19;
        v15 = v18;
        v8 = &v15;
    }
    else
    {
        CGAffineTransformMakeScale();
        v11 = v14;
        v10 = v13;
        v9 = v12;
        v8 = &v9;
    }
    objc_msgSend(v7, "setTransform:", v8, v9, v10, v11);
    objc_release();
}

//----- (00000001000F63B4) ----------------------------------------------------
CGRect __cdecl -[CKYRotationView getRotationRect](CKYRotationView *self, SEL a2)
{
    double v2; // d0
    double v3; // d1
    double v4; // d2
    double v5; // d3
    CGRect result; // 0:d0.8,8:d1.8,16:d2.8,24:d3.8
    
    objc_msgSend(self, "frame");
    result.var1.var1 = v5;
    result.var1.var0 = v4;
    result.var0.var1 = v3;
    result.var0.var0 = v2;
    return result;
}

//----- (00000001000F63C0) ----------------------------------------------------
CGPoint __cdecl -[CKYRotationView getRightBottomPoint](CKYRotationView *self, SEL a2)
{
    CKYRotationView *v2; // x19
    void *v3; // x0
    double v4; // d2
    double v5; // d8
    double v6; // d3
    double v7; // d9
    double v8; // d2
    double v9; // d10
    double v10; // d3
    double v11; // d11
    void *v12; // x0
    void *v13; // x0
    double v14; // d0
    double v15; // d8
    double v16; // d1
    double v17; // d9
    double v18; // d2
    double v19; // d10
    double v20; // d3
    double v21; // d11
    __int64 v22; // x0
    double v23; // d0
    double v24; // d8
    double v25; // d1
    double v26; // d9
    double v27; // d0
    double v28; // d1
    CGPoint result; // 0:d0.8,8:d1.8
    
    v2 = self;
    -[CKYRotationView rbView](self, "rbView");
    v3 = (void *)objc_retainAutoreleasedReturnValue();
    objc_msgSend(v3, "frame");
    v5 = v4;
    v7 = v6;
    objc_release();
    objc_msgSend(v2, "bounds");
    v9 = v8;
    objc_msgSend(v2, "bounds");
    v11 = v10;
    -[CKYRotationView rbView](v2, "rbView");
    v12 = (void *)objc_retainAutoreleasedReturnValue();
    objc_msgSend(v12, "setFrame:", v9, v11, v5, v7);
    objc_release();
    -[CKYRotationView rbView](v2, "rbView");
    v13 = (void *)objc_retainAutoreleasedReturnValue();
    objc_msgSend(v13, "frame");
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    objc_msgSend(v2, "superview");
    v22 = objc_retainAutoreleasedReturnValue();
    objc_msgSend(v2, "convertRect:toView:", v22, v15, v17, v19, v21);
    v24 = v23;
    v26 = v25;
    objc_release();
    objc_release();
    v27 = v24;
    v28 = v26;
    result.var1 = v28;
    result.var0 = v27;
    return result;
}

//----- (00000001000F6524) ----------------------------------------------------
CGPoint __cdecl -[CKYRotationView getRightTopPoint](CKYRotationView *self, SEL a2)
{
    CKYRotationView *v2; // x19
    void *v3; // x0
    double v4; // d2
    double v5; // d8
    double v6; // d3
    double v7; // d9
    double v8; // d2
    double v9; // d10
    void *v10; // x0
    void *v11; // x0
    double v12; // d0
    double v13; // d8
    double v14; // d1
    double v15; // d9
    double v16; // d2
    double v17; // d10
    double v18; // d3
    double v19; // d11
    __int64 v20; // x0
    double v21; // d0
    double v22; // d8
    double v23; // d1
    double v24; // d9
    double v25; // d0
    double v26; // d1
    CGPoint result; // 0:d0.8,8:d1.8
    
    v2 = self;
    -[CKYRotationView rtView](self, "rtView");
    v3 = (void *)objc_retainAutoreleasedReturnValue();
    objc_msgSend(v3, "frame");
    v5 = v4;
    v7 = v6;
    objc_release();
    objc_msgSend(v2, "bounds");
    v9 = v8;
    -[CKYRotationView rtView](v2, "rtView");
    v10 = (void *)objc_retainAutoreleasedReturnValue();
    objc_msgSend(v10, "setFrame:", v9, 0.0, v5, v7);
    objc_release();
    -[CKYRotationView rtView](v2, "rtView");
    v11 = (void *)objc_retainAutoreleasedReturnValue();
    objc_msgSend(v11, "frame");
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    objc_msgSend(v2, "superview");
    v20 = objc_retainAutoreleasedReturnValue();
    objc_msgSend(v2, "convertRect:toView:", v20, v13, v15, v17, v19);
    v22 = v21;
    v24 = v23;
    objc_release();
    objc_release();
    v25 = v22;
    v26 = v24;
    result.var1 = v26;
    result.var0 = v25;
    return result;
}

//----- (00000001000F6674) ----------------------------------------------------
CGPoint __cdecl -[CKYRotationView getLeftTopPoint](CKYRotationView *self, SEL a2)
{
    CKYRotationView *v2; // x19
    void *v3; // x0
    double v4; // d2
    double v5; // d8
    double v6; // d3
    double v7; // d9
    void *v8; // x0
    void *v9; // x0
    double v10; // d0
    double v11; // d8
    double v12; // d1
    double v13; // d9
    double v14; // d2
    double v15; // d10
    double v16; // d3
    double v17; // d11
    __int64 v18; // x0
    double v19; // d0
    double v20; // d8
    double v21; // d1
    double v22; // d9
    double v23; // d0
    double v24; // d1
    CGPoint result; // 0:d0.8,8:d1.8
    
    v2 = self;
    -[CKYRotationView ltView](self, "ltView");
    v3 = (void *)objc_retainAutoreleasedReturnValue();
    objc_msgSend(v3, "frame");
    v5 = v4;
    v7 = v6;
    objc_release();
    -[CKYRotationView ltView](v2, "ltView");
    v8 = (void *)objc_retainAutoreleasedReturnValue();
    objc_msgSend(v8, "setFrame:", 0.0, 0.0, v5, v7);
    objc_release();
    -[CKYRotationView ltView](v2, "ltView");
    v9 = (void *)objc_retainAutoreleasedReturnValue();
    objc_msgSend(v9, "frame");
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    objc_msgSend(v2, "superview");
    v18 = objc_retainAutoreleasedReturnValue();
    objc_msgSend(v2, "convertRect:toView:", v18, v11, v13, v15, v17);
    v20 = v19;
    v22 = v21;
    objc_release();
    objc_release();
    v23 = v20;
    v24 = v22;
    result.var1 = v24;
    result.var0 = v23;
    return result;
}

//----- (00000001000F67B0) ----------------------------------------------------
CGPoint __cdecl -[CKYRotationView getLeftBottomPoint](CKYRotationView *self, SEL a2)
{
    CKYRotationView *v2; // x19
    void *v3; // x0
    double v4; // d2
    double v5; // d8
    double v6; // d3
    double v7; // d9
    double v8; // d3
    double v9; // d10
    void *v10; // x0
    void *v11; // x0
    double v12; // d0
    double v13; // d8
    double v14; // d1
    double v15; // d9
    double v16; // d2
    double v17; // d10
    double v18; // d3
    double v19; // d11
    __int64 v20; // x0
    double v21; // d0
    double v22; // d8
    double v23; // d1
    double v24; // d9
    double v25; // d0
    double v26; // d1
    CGPoint result; // 0:d0.8,8:d1.8
    
    v2 = self;
    -[CKYRotationView lbView](self, "lbView");
    v3 = (void *)objc_retainAutoreleasedReturnValue();
    objc_msgSend(v3, "frame");
    v5 = v4;
    v7 = v6;
    objc_release();
    objc_msgSend(v2, "bounds");
    v9 = v8;
    -[CKYRotationView lbView](v2, "lbView");
    v10 = (void *)objc_retainAutoreleasedReturnValue();
    objc_msgSend(v10, "setFrame:", 0.0, v9, v5, v7);
    objc_release();
    -[CKYRotationView lbView](v2, "lbView");
    v11 = (void *)objc_retainAutoreleasedReturnValue();
    objc_msgSend(v11, "frame");
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    objc_msgSend(v2, "superview");
    v20 = objc_retainAutoreleasedReturnValue();
    objc_msgSend(v2, "convertRect:toView:", v20, v13, v15, v17, v19);
    v22 = v21;
    v24 = v23;
    objc_release();
    objc_release();
    v25 = v22;
    v26 = v24;
    result.var1 = v26;
    result.var0 = v25;
    return result;
}

//----- (00000001000F6900) ----------------------------------------------------
CGPoint __cdecl -[CKYRotationView getTopPoint](CKYRotationView *self, SEL a2)
{
    CKYRotationView *v2; // x19
    void *v3; // x0
    double v4; // d2
    double v5; // d8
    double v6; // d3
    double v7; // d9
    double v8; // d2
    double v9; // d10
    void *v10; // x0
    void *v11; // x0
    double v12; // d0
    double v13; // d8
    double v14; // d1
    double v15; // d9
    double v16; // d2
    double v17; // d10
    double v18; // d3
    double v19; // d11
    __int64 v20; // x0
    double v21; // d0
    double v22; // d8
    double v23; // d1
    double v24; // d9
    double v25; // d0
    double v26; // d1
    CGPoint result; // 0:d0.8,8:d1.8
    
    v2 = self;
    -[CKYRotationView topView](self, "topView");
    v3 = (void *)objc_retainAutoreleasedReturnValue();
    objc_msgSend(v3, "frame");
    v5 = v4;
    v7 = v6;
    objc_release();
    objc_msgSend(v2, "bounds");
    v9 = v8 * 0.5;
    -[CKYRotationView topView](v2, "topView");
    v10 = (void *)objc_retainAutoreleasedReturnValue();
    objc_msgSend(v10, "setFrame:", v9, 0.0, v5, v7);
    objc_release();
    -[CKYRotationView topView](v2, "topView");
    v11 = (void *)objc_retainAutoreleasedReturnValue();
    objc_msgSend(v11, "frame");
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    objc_msgSend(v2, "superview");
    v20 = objc_retainAutoreleasedReturnValue();
    objc_msgSend(v2, "convertRect:toView:", v20, v13, v15, v17, v19);
    v22 = v21;
    v24 = v23;
    objc_release();
    objc_release();
    v25 = v22;
    v26 = v24;
    result.var1 = v26;
    result.var0 = v25;
    return result;
}

//----- (00000001000F6A54) ----------------------------------------------------
CGPoint __cdecl -[CKYRotationView getLeftPoint](CKYRotationView *self, SEL a2)
{
    CKYRotationView *v2; // x19
    void *v3; // x0
    double v4; // d2
    double v5; // d8
    double v6; // d3
    double v7; // d9
    double v8; // d3
    double v9; // d10
    void *v10; // x0
    void *v11; // x0
    double v12; // d0
    double v13; // d8
    double v14; // d1
    double v15; // d9
    double v16; // d2
    double v17; // d10
    double v18; // d3
    double v19; // d11
    __int64 v20; // x0
    double v21; // d0
    double v22; // d8
    double v23; // d1
    double v24; // d9
    double v25; // d0
    double v26; // d1
    CGPoint result; // 0:d0.8,8:d1.8
    
    v2 = self;
    -[CKYRotationView leftView](self, "leftView");
    v3 = (void *)objc_retainAutoreleasedReturnValue();
    objc_msgSend(v3, "frame");
    v5 = v4;
    v7 = v6;
    objc_release();
    objc_msgSend(v2, "bounds");
    v9 = v8 * 0.5;
    -[CKYRotationView leftView](v2, "leftView");
    v10 = (void *)objc_retainAutoreleasedReturnValue();
    objc_msgSend(v10, "setFrame:", 0.0, v9, v5, v7);
    objc_release();
    -[CKYRotationView leftView](v2, "leftView");
    v11 = (void *)objc_retainAutoreleasedReturnValue();
    objc_msgSend(v11, "frame");
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    objc_msgSend(v2, "superview");
    v20 = objc_retainAutoreleasedReturnValue();
    objc_msgSend(v2, "convertRect:toView:", v20, v13, v15, v17, v19);
    v22 = v21;
    v24 = v23;
    objc_release();
    objc_release();
    v25 = v22;
    v26 = v24;
    result.var1 = v26;
    result.var0 = v25;
    return result;
}

//----- (00000001000F6BA8) ----------------------------------------------------
CGPoint __cdecl -[CKYRotationView getRightPoint](CKYRotationView *self, SEL a2)
{
    CKYRotationView *v2; // x19
    void *v3; // x0
    double v4; // d2
    double v5; // d8
    double v6; // d3
    double v7; // d9
    double v8; // d2
    double v9; // d10
    double v10; // d3
    double v11; // d11
    void *v12; // x0
    void *v13; // x0
    double v14; // d0
    double v15; // d8
    double v16; // d1
    double v17; // d9
    double v18; // d2
    double v19; // d10
    double v20; // d3
    double v21; // d11
    __int64 v22; // x0
    double v23; // d0
    double v24; // d8
    double v25; // d1
    double v26; // d9
    double v27; // d0
    double v28; // d1
    CGPoint result; // 0:d0.8,8:d1.8
    
    v2 = self;
    -[CKYRotationView rightView](self, "rightView");
    v3 = (void *)objc_retainAutoreleasedReturnValue();
    objc_msgSend(v3, "frame");
    v5 = v4;
    v7 = v6;
    objc_release();
    objc_msgSend(v2, "bounds");
    v9 = v8;
    objc_msgSend(v2, "bounds");
    v11 = v10 * 0.5;
    -[CKYRotationView rightView](v2, "rightView");
    v12 = (void *)objc_retainAutoreleasedReturnValue();
    objc_msgSend(v12, "setFrame:", v9, v11, v5, v7);
    objc_release();
    -[CKYRotationView rightView](v2, "rightView");
    v13 = (void *)objc_retainAutoreleasedReturnValue();
    objc_msgSend(v13, "frame");
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    objc_msgSend(v2, "superview");
    v22 = objc_retainAutoreleasedReturnValue();
    objc_msgSend(v2, "convertRect:toView:", v22, v15, v17, v19, v21);
    v24 = v23;
    v26 = v25;
    objc_release();
    objc_release();
    v27 = v24;
    v28 = v26;
    result.var1 = v28;
    result.var0 = v27;
    return result;
}

//----- (00000001000F6D10) ----------------------------------------------------
CGPoint __cdecl -[CKYRotationView getBottomPoint](CKYRotationView *self, SEL a2)
{
    CKYRotationView *v2; // x19
    void *v3; // x0
    double v4; // d2
    double v5; // d8
    double v6; // d3
    double v7; // d9
    double v8; // d2
    double v9; // d10
    double v10; // d3
    double v11; // d11
    void *v12; // x0
    void *v13; // x0
    double v14; // d0
    double v15; // d8
    double v16; // d1
    double v17; // d9
    double v18; // d2
    double v19; // d10
    double v20; // d3
    double v21; // d11
    __int64 v22; // x0
    double v23; // d0
    double v24; // d8
    double v25; // d1
    double v26; // d9
    double v27; // d0
    double v28; // d1
    CGPoint result; // 0:d0.8,8:d1.8
    
    v2 = self;
    -[CKYRotationView bottomView](self, "bottomView");
    v3 = (void *)objc_retainAutoreleasedReturnValue();
    objc_msgSend(v3, "frame");
    v5 = v4;
    v7 = v6;
    objc_release();
    objc_msgSend(v2, "bounds");
    v9 = v8 * 0.5;
    objc_msgSend(v2, "bounds");
    v11 = v10;
    -[CKYRotationView bottomView](v2, "bottomView");
    v12 = (void *)objc_retainAutoreleasedReturnValue();
    objc_msgSend(v12, "setFrame:", v9, v11, v5, v7);
    objc_release();
    -[CKYRotationView bottomView](v2, "bottomView");
    v13 = (void *)objc_retainAutoreleasedReturnValue();
    objc_msgSend(v13, "frame");
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    objc_msgSend(v2, "superview");
    v22 = objc_retainAutoreleasedReturnValue();
    objc_msgSend(v2, "convertRect:toView:", v22, v15, v17, v19, v21);
    v24 = v23;
    v26 = v25;
    objc_release();
    objc_release();
    v27 = v24;
    v28 = v26;
    result.var1 = v28;
    result.var0 = v27;
    return result;
}

//----- (00000001000F6E78) ----------------------------------------------------
id __cdecl +[CKYRotationView rotationViewWithItem:](CKYRotationView_meta *self, SEL a2, id a3)
{
    CKYRotationView *v3; // x0
    
    v3 = objc_msgSend(&OBJC_CLASS___CKYRotationView, "alloc", a3);
    objc_msgSend(v3, "init");
    return (id)objc_autoreleaseReturnValue();
}
// 101D5FA40: using guessed type __objc2_class OBJC_CLASS___CKYRotationView;

//----- (00000001000F6EA8) ----------------------------------------------------
void __cdecl -[CKYRotationView setXScale:](CKYRotationView *self, SEL a2, double a3)
{
    double v3; // d8
    void *v4; // x0
    
    v3 = a3;
    self->_xScale = a3;
    -[CKYRotationView rotationItem](self, "rotationItem");
    v4 = (void *)objc_retainAutoreleasedReturnValue();
    objc_msgSend(v4, "setXScale:", v3);
    objc_release();
}

//----- (00000001000F6F04) ----------------------------------------------------
void __cdecl -[CKYRotationView setYScale:](CKYRotationView *self, SEL a2, double a3)
{
    double v3; // d8
    void *v4; // x0
    
    v3 = a3;
    self->_yScale = a3;
    -[CKYRotationView rotationItem](self, "rotationItem");
    v4 = (void *)objc_retainAutoreleasedReturnValue();
    objc_msgSend(v4, "setYScale:", v3);
    objc_release();
}

//----- (00000001000F6F60) ----------------------------------------------------
void __cdecl -[CKYRotationView setAngle:](CKYRotationView *self, SEL a2, double a3)
{
    double v3; // d8
    void *v4; // x0
    
    v3 = a3;
    self->_angle = a3;
    -[CKYRotationView rotationItem](self, "rotationItem");
    v4 = (void *)objc_retainAutoreleasedReturnValue();
    objc_msgSend(v4, "setAngle:", v3);
    objc_release();
}

//----- (00000001000F6FC8) ----------------------------------------------------
// local variable allocation has failed, the output may be wrong!
id __cdecl -[CKYRotationView hitTest:withEvent:](CKYRotationView *self, SEL a2, CGPoint a3, id a4)
{
    CKYRotationView *v5; // [xsp+0h] [xbp-20h]
    __objc2_class *v6; // [xsp+8h] [xbp-18h]
    
    v5 = self;
    v6 = &OBJC_CLASS___CKYRotationView;
    objc_msgSendSuper2(&v5, "hitTest:withEvent:", a4, a3.var0, a3.var1, self, &OBJC_CLASS___CKYRotationView);
    if ( objc_retainAutoreleasedReturnValue() )
        objc_retain();
    objc_release();
    return (id)objc_autoreleaseReturnValue();
}
// 1000F6FC8: fragmented variable at 0:d0.8,8:d1.8 may be wrong
// 101D5FA40: using guessed type __objc2_class OBJC_CLASS___CKYRotationView;

//----- (00000001000F7038) ----------------------------------------------------
CKYRotationViewItem *__cdecl -[CKYRotationView rotationItem](CKYRotationView *self, SEL a2)
{
    return self->_rotationItem;
}

//----- (00000001000F7048) ----------------------------------------------------
void __cdecl -[CKYRotationView setRotationItem:](CKYRotationView *self, SEL a2, id a3)
{
    objc_storeStrong();
}

//----- (00000001000F705C) ----------------------------------------------------
signed __int64 __cdecl -[CKYRotationView contentViewType](CKYRotationView *self, SEL a2)
{
    return self->_contentViewType;
}

//----- (00000001000F706C) ----------------------------------------------------
void __cdecl -[CKYRotationView setContentViewType:](CKYRotationView *self, SEL a2, signed __int64 a3)
{
    self->_contentViewType = a3;
}

//----- (00000001000F707C) ----------------------------------------------------
UIView *__cdecl -[CKYRotationView contentView](CKYRotationView *self, SEL a2)
{
    return self->_contentView;
}

//----- (00000001000F708C) ----------------------------------------------------
void __cdecl -[CKYRotationView setContentView:](CKYRotationView *self, SEL a2, id a3)
{
    objc_storeStrong();
}

//----- (00000001000F70A0) ----------------------------------------------------
double __cdecl -[CKYRotationView xiebian](CKYRotationView *self, SEL a2)
{
    return self->_xiebian;
}

//----- (00000001000F70B0) ----------------------------------------------------
void __cdecl -[CKYRotationView setXiebian:](CKYRotationView *self, SEL a2, double a3)
{
    self->_xiebian = a3;
}

//----- (00000001000F70C0) ----------------------------------------------------
double __cdecl -[CKYRotationView angle](CKYRotationView *self, SEL a2)
{
    return self->_angle;
}

//----- (00000001000F70D0) ----------------------------------------------------
double __cdecl -[CKYRotationView xScale](CKYRotationView *self, SEL a2)
{
    return self->_xScale;
}

//----- (00000001000F70E0) ----------------------------------------------------
double __cdecl -[CKYRotationView yScale](CKYRotationView *self, SEL a2)
{
    return self->_yScale;
}

//----- (00000001000F70F0) ----------------------------------------------------
CGSize __cdecl -[CKYRotationView orginSize](CKYRotationView *self, SEL a2)
{
    double v2; // d0
    double v3; // d1
    CGSize result; // 0:d0.8,8:d1.8
    
    v2 = self->_orginSize.var0;
    v3 = self->_orginSize.var1;
    result.var1 = v3;
    result.var0 = v2;
    return result;
}

//----- (00000001000F7104) ----------------------------------------------------
// local variable allocation has failed, the output may be wrong!
void __cdecl -[CKYRotationView setOrginSize:](CKYRotationView *self, SEL a2, CGSize a3)
{
    double *v3; // x8
    
    v3 = &self->_orginSize.var0;
    *v3 = a3.var0;
    v3[1] = a3.var1;
}
// 1000F7104: fragmented variable at 0:d0.8,8:d1.8 may be wrong

//----- (00000001000F7118) ----------------------------------------------------
CGPoint __cdecl -[CKYRotationView lastMoveCenter](CKYRotationView *self, SEL a2)
{
    double v2; // d0
    double v3; // d1
    CGPoint result; // 0:d0.8,8:d1.8
    
    v2 = self->_lastMoveCenter.var0;
    v3 = self->_lastMoveCenter.var1;
    result.var1 = v3;
    result.var0 = v2;
    return result;
}

//----- (00000001000F712C) ----------------------------------------------------
// local variable allocation has failed, the output may be wrong!
void __cdecl -[CKYRotationView setLastMoveCenter:](CKYRotationView *self, SEL a2, CGPoint a3)
{
    double *v3; // x8
    
    v3 = &self->_lastMoveCenter.var0;
    *v3 = a3.var0;
    v3[1] = a3.var1;
}
// 1000F712C: fragmented variable at 0:d0.8,8:d1.8 may be wrong

//----- (00000001000F7140) ----------------------------------------------------
double __cdecl -[CKYRotationView orginAngle](CKYRotationView *self, SEL a2)
{
    return self->_orginAngle;
}

//----- (00000001000F7150) ----------------------------------------------------
void __cdecl -[CKYRotationView setOrginAngle:](CKYRotationView *self, SEL a2, double a3)
{
    self->_orginAngle = a3;
}

//----- (00000001000F7160) ----------------------------------------------------
UIView *__cdecl -[CKYRotationView rbView](CKYRotationView *self, SEL a2)
{
    return self->_rbView;
}

//----- (00000001000F7170) ----------------------------------------------------
void __cdecl -[CKYRotationView setRbView:](CKYRotationView *self, SEL a2, id a3)
{
    objc_storeStrong();
}

//----- (00000001000F7184) ----------------------------------------------------
UIView *__cdecl -[CKYRotationView rtView](CKYRotationView *self, SEL a2)
{
    return self->_rtView;
}

//----- (00000001000F7194) ----------------------------------------------------
void __cdecl -[CKYRotationView setRtView:](CKYRotationView *self, SEL a2, id a3)
{
    objc_storeStrong();
}

//----- (00000001000F71A8) ----------------------------------------------------
UIView *__cdecl -[CKYRotationView ltView](CKYRotationView *self, SEL a2)
{
    return self->_ltView;
}

//----- (00000001000F71B8) ----------------------------------------------------
void __cdecl -[CKYRotationView setLtView:](CKYRotationView *self, SEL a2, id a3)
{
    objc_storeStrong();
}

//----- (00000001000F71CC) ----------------------------------------------------
UIView *__cdecl -[CKYRotationView lbView](CKYRotationView *self, SEL a2)
{
    return self->_lbView;
}

//----- (00000001000F71DC) ----------------------------------------------------
void __cdecl -[CKYRotationView setLbView:](CKYRotationView *self, SEL a2, id a3)
{
    objc_storeStrong();
}

//----- (00000001000F71F0) ----------------------------------------------------
UIView *__cdecl -[CKYRotationView topView](CKYRotationView *self, SEL a2)
{
    return self->_topView;
}

//----- (00000001000F7200) ----------------------------------------------------
void __cdecl -[CKYRotationView setTopView:](CKYRotationView *self, SEL a2, id a3)
{
    objc_storeStrong();
}

//----- (00000001000F7214) ----------------------------------------------------
UIView *__cdecl -[CKYRotationView leftView](CKYRotationView *self, SEL a2)
{
    return self->_leftView;
}

//----- (00000001000F7224) ----------------------------------------------------
void __cdecl -[CKYRotationView setLeftView:](CKYRotationView *self, SEL a2, id a3)
{
    objc_storeStrong();
}

//----- (00000001000F7238) ----------------------------------------------------
UIView *__cdecl -[CKYRotationView bottomView](CKYRotationView *self, SEL a2)
{
    return self->_bottomView;
}

//----- (00000001000F7248) ----------------------------------------------------
void __cdecl -[CKYRotationView setBottomView:](CKYRotationView *self, SEL a2, id a3)
{
    objc_storeStrong();
}

//----- (00000001000F725C) ----------------------------------------------------
UIView *__cdecl -[CKYRotationView rightView](CKYRotationView *self, SEL a2)
{
    return self->_rightView;
}

//----- (00000001000F726C) ----------------------------------------------------
void __cdecl -[CKYRotationView setRightView:](CKYRotationView *self, SEL a2, id a3)
{
    objc_storeStrong();
}

//----- (00000001000F7280) ----------------------------------------------------
void __cdecl -[CKYRotationView .cxx_destruct](CKYRotationView *self, SEL a2)
{
    objc_storeStrong();
    objc_storeStrong();
    objc_storeStrong();
    objc_storeStrong();
    objc_storeStrong();
    objc_storeStrong();
    objc_storeStrong();
    objc_storeStrong();
    objc_storeStrong();
    objc_storeStrong();
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
