//
//  CKYRotationViewItem.m
//  DrawDemo
//
//  Created by perfay on 2018/5/25.
//  Copyright © 2018年 perfay. All rights reserved.
//

#import "CKYRotationViewItem.h"

@implementation CKYRotationViewItem

//----- (00000001000E8744) ----------------------------------------------------
CKYRotationViewItem *__cdecl -[CKYRotationViewItem init](CKYRotationViewItem *self, SEL a2)
{
    CKYRotationViewItem *v2; // x0
    CKYRotationViewItem *v3; // x19
    CKYRotationViewItem *v5; // [xsp+0h] [xbp-20h]
    __objc2_class *v6; // [xsp+8h] [xbp-18h]
    
    v5 = self;
    v6 = &OBJC_CLASS___CKYRotationViewItem;
    v2 = (CKYRotationViewItem *)objc_msgSendSuper2(&v5, "init", self, &OBJC_CLASS___CKYRotationViewItem);
    v3 = v2;
    if ( v2 )
    {
        -[CKYRotationViewItem setVMoveBtnPositionType:](v2, "setVMoveBtnPositionType:", 2LL);
        -[CKYRotationViewItem setHMoveBtnPositionType:](v3, "setHMoveBtnPositionType:", 3LL);
    }
    return v3;
}
// 101D5F450: using guessed type __objc2_class OBJC_CLASS___CKYRotationViewItem;

//----- (00000001000E87B4) ----------------------------------------------------
id __cdecl -[CKYRotationViewItem getDict](CKYRotationViewItem *self, SEL a2)
{
    CKYRotationViewItem *v2; // x20
    void *v3; // x19
    void *v4; // x0
    __int64 v5; // x0
    void *v6; // x0
    __int64 v7; // x0
    void *v8; // x0
    __int64 v9; // x0
    void *v10; // x0
    __int64 v11; // x0
    double v12; // d0
    __int64 v13; // x0
    void *v14; // x0
    __int64 v15; // x0
    void *v16; // x0
    __int64 v17; // x0
    double v18; // d0
    __int64 v19; // x0
    double v20; // d0
    __int64 v21; // x0
    double v22; // d0
    __int64 v23; // x0
    double v24; // d0
    __int64 v25; // x0
    double v26; // d1
    double v27; // d0
    __int64 v28; // x0
    double v29; // d0
    __int64 v30; // x0
    double v31; // d1
    double v32; // d0
    __int64 v33; // x0
    void *v34; // x0
    __int64 v35; // x0
    void *v36; // x0
    __int64 v37; // x0
    void *v38; // x0
    __int64 v39; // x0
    void *v40; // x0
    __int64 v41; // x0
    void *v42; // x0
    __int64 v43; // x0
    
    v2 = self;
    objc_msgSend(&OBJC_CLASS___NSMutableDictionary, "dictionary");
    v3 = (void *)objc_retainAutoreleasedReturnValue();
    -[CKYRotationViewItem text](v2, "text");
    v4 = (void *)objc_retainAutoreleasedReturnValue();
    if ( objc_msgSend(v4, "length") )
    {
        -[CKYRotationViewItem text](v2, "text");
        v5 = objc_retainAutoreleasedReturnValue();
        objc_msgSend(v3, "setObject:forKeyedSubscript:", v5, CFSTR("text"));
        objc_release();
    }
    else
    {
        objc_msgSend(v3, "setObject:forKeyedSubscript:", &stru_101B5A050, CFSTR("text"));
    }
    objc_release();
    -[CKYRotationViewItem textStyleModel](v2, "textStyleModel");
    v6 = (void *)objc_retainAutoreleasedReturnValue();
    objc_msgSend(v6, "getDict");
    v7 = objc_retainAutoreleasedReturnValue();
    objc_msgSend(v3, "setObject:forKeyedSubscript:", v7, CFSTR("textStyleModel"));
    objc_release();
    objc_release();
    -[CKYRotationViewItem textFontName](v2, "textFontName");
    v8 = (void *)objc_retainAutoreleasedReturnValue();
    if ( objc_msgSend(v8, "length") )
    {
        -[CKYRotationViewItem textFontName](v2, "textFontName");
        v9 = objc_retainAutoreleasedReturnValue();
        objc_msgSend(v3, "setObject:forKeyedSubscript:", v9, CFSTR("textFontName"));
        objc_release();
    }
    else
    {
        objc_msgSend(v3, "setObject:forKeyedSubscript:", &stru_101B5A050, CFSTR("textFontName"));
    }
    objc_release();
    -[CKYRotationViewItem textFontPath](v2, "textFontPath");
    v10 = (void *)objc_retainAutoreleasedReturnValue();
    if ( objc_msgSend(v10, "length") )
    {
        -[CKYRotationViewItem textFontPath](v2, "textFontPath");
        v11 = objc_retainAutoreleasedReturnValue();
        objc_msgSend(v3, "setObject:forKeyedSubscript:", v11, CFSTR("textFontPath"));
        objc_release();
    }
    else
    {
        objc_msgSend(v3, "setObject:forKeyedSubscript:", &stru_101B5A050, CFSTR("textFontPath"));
    }
    objc_release();
    -[CKYRotationViewItem textFontSize](v2, "textFontSize");
    *(float *)&v12 = v12;
    objc_msgSend(&OBJC_CLASS___NSNumber, "numberWithFloat:", v12);
    v13 = objc_retainAutoreleasedReturnValue();
    objc_msgSend(v3, "setObject:forKeyedSubscript:", v13, CFSTR("textFontSize"));
    objc_release();
    -[CKYRotationViewItem imageURL](v2, "imageURL");
    v14 = (void *)objc_retainAutoreleasedReturnValue();
    if ( objc_msgSend(v14, "length") )
    {
        -[CKYRotationViewItem imageURL](v2, "imageURL");
        v15 = objc_retainAutoreleasedReturnValue();
        objc_msgSend(v3, "setObject:forKeyedSubscript:", v15, CFSTR("imageURL"));
        objc_release();
    }
    else
    {
        objc_msgSend(v3, "setObject:forKeyedSubscript:", &stru_101B5A050, CFSTR("imageURL"));
    }
    objc_release();
    v16 = -[CKYRotationViewItem contentViewType](v2, "contentViewType");
    objc_msgSend(&OBJC_CLASS___NSNumber, "numberWithInteger:", v16);
    v17 = objc_retainAutoreleasedReturnValue();
    objc_msgSend(v3, "setObject:forKeyedSubscript:", v17, CFSTR("contentViewType"));
    objc_release();
    -[CKYRotationViewItem angle](v2, "angle");
    *(float *)&v18 = v18;
    objc_msgSend(&OBJC_CLASS___NSNumber, "numberWithFloat:", v18);
    v19 = objc_retainAutoreleasedReturnValue();
    objc_msgSend(v3, "setObject:forKeyedSubscript:", v19, CFSTR("angle"));
    objc_release();
    -[CKYRotationViewItem xScale](v2, "xScale");
    *(float *)&v20 = v20;
    objc_msgSend(&OBJC_CLASS___NSNumber, "numberWithFloat:", v20);
    v21 = objc_retainAutoreleasedReturnValue();
    objc_msgSend(v3, "setObject:forKeyedSubscript:", v21, CFSTR("xScale"));
    objc_release();
    -[CKYRotationViewItem yScale](v2, "yScale");
    *(float *)&v22 = v22;
    objc_msgSend(&OBJC_CLASS___NSNumber, "numberWithFloat:", v22);
    v23 = objc_retainAutoreleasedReturnValue();
    objc_msgSend(v3, "setObject:forKeyedSubscript:", v23, CFSTR("yScale"));
    objc_release();
    -[CKYRotationViewItem center](v2, "center");
    *(float *)&v24 = v24;
    objc_msgSend(&OBJC_CLASS___NSNumber, "numberWithFloat:", v24);
    v25 = objc_retainAutoreleasedReturnValue();
    objc_msgSend(v3, "setObject:forKeyedSubscript:", v25, CFSTR("centerX"));
    objc_release();
    -[CKYRotationViewItem center](v2, "center");
    *(float *)&v27 = v26;
    objc_msgSend(&OBJC_CLASS___NSNumber, "numberWithFloat:", v27);
    v28 = objc_retainAutoreleasedReturnValue();
    objc_msgSend(v3, "setObject:forKeyedSubscript:", v28, CFSTR("centerY"));
    objc_release();
    -[CKYRotationViewItem size](v2, "size");
    *(float *)&v29 = v29;
    objc_msgSend(&OBJC_CLASS___NSNumber, "numberWithFloat:", v29);
    v30 = objc_retainAutoreleasedReturnValue();
    objc_msgSend(v3, "setObject:forKeyedSubscript:", v30, CFSTR("sizeWidth"));
    objc_release();
    -[CKYRotationViewItem size](v2, "size");
    *(float *)&v32 = v31;
    objc_msgSend(&OBJC_CLASS___NSNumber, "numberWithFloat:", v32);
    v33 = objc_retainAutoreleasedReturnValue();
    objc_msgSend(v3, "setObject:forKeyedSubscript:", v33, CFSTR("sizeHeight"));
    objc_release();
    v34 = -[CKYRotationViewItem index](v2, "index");
    objc_msgSend(&OBJC_CLASS___NSNumber, "numberWithInteger:", v34);
    v35 = objc_retainAutoreleasedReturnValue();
    objc_msgSend(v3, "setObject:forKeyedSubscript:", v35, CFSTR("index"));
    objc_release();
    v36 = -[CKYRotationViewItem turnOverH](v2, "turnOverH");
    objc_msgSend(&OBJC_CLASS___NSNumber, "numberWithBool:", v36);
    v37 = objc_retainAutoreleasedReturnValue();
    objc_msgSend(v3, "setObject:forKeyedSubscript:", v37, CFSTR("turnOverH"));
    objc_release();
    v38 = -[CKYRotationViewItem turnOverV](v2, "turnOverV");
    objc_msgSend(&OBJC_CLASS___NSNumber, "numberWithBool:", v38);
    v39 = objc_retainAutoreleasedReturnValue();
    objc_msgSend(v3, "setObject:forKeyedSubscript:", v39, CFSTR("turnOverV"));
    objc_release();
    v40 = -[CKYRotationViewItem vMoveBtnPositionType](v2, "vMoveBtnPositionType");
    objc_msgSend(&OBJC_CLASS___NSNumber, "numberWithInteger:", v40);
    v41 = objc_retainAutoreleasedReturnValue();
    objc_msgSend(v3, "setObject:forKeyedSubscript:", v41, CFSTR("vMoveBtnPositionType"));
    objc_release();
    v42 = -[CKYRotationViewItem hMoveBtnPositionType](v2, "hMoveBtnPositionType");
    objc_msgSend(&OBJC_CLASS___NSNumber, "numberWithInteger:", v42);
    v43 = objc_retainAutoreleasedReturnValue();
    objc_msgSend(v3, "setObject:forKeyedSubscript:", v43, CFSTR("hMoveBtnPositionType"));
    objc_release();
    return (id)objc_autoreleaseReturnValue();
}
// 101B5A050: using guessed type __CFString stru_101B5A050;
// 101B5CB30: using guessed type __CFString cfstr_Xscale_1;
// 101B5CB50: using guessed type __CFString cfstr_Yscale_1;
// 101B5CB90: using guessed type __CFString cfstr_Angle_1;
// 101B5CBB0: using guessed type __CFString cfstr_Turnoverh_1;
// 101B5CBD0: using guessed type __CFString cfstr_Turnoverv_1;
// 101B5E670: using guessed type __CFString cfstr_Imageurl_3;
// 101B5ED70: using guessed type __CFString cfstr_Text_1;
// 101B60510: using guessed type __CFString cfstr_Vmovebtnpositi_1;
// 101B60530: using guessed type __CFString cfstr_Hmovebtnpositi_1;
// 101B60810: using guessed type __CFString cfstr_Textstylemodel_3;
// 101B60830: using guessed type __CFString cfstr_Textfontname_1;
// 101B60850: using guessed type __CFString cfstr_Textfontpath_1;
// 101B60870: using guessed type __CFString cfstr_Textfontsize_1;
// 101B60890: using guessed type __CFString cfstr_Contentviewtyp_1;
// 101B608B0: using guessed type __CFString cfstr_Centerx_0;
// 101B608D0: using guessed type __CFString cfstr_Centery_0;
// 101B608F0: using guessed type __CFString cfstr_Sizewidth;
// 101B60910: using guessed type __CFString cfstr_Sizeheight;
// 101B60930: using guessed type __CFString cfstr_Index_1;

//----- (00000001000E8F2C) ----------------------------------------------------
id __cdecl +[CKYRotationViewItem itemWithDict:](CKYRotationViewItem_meta *self, SEL a2, id a3)
{
    __int64 v3; // x21
    CKYRotationViewItem *v4; // x0
    CKYRotationViewItem *v5; // x0
    
    v3 = objc_retain();
    v4 = objc_msgSend(&OBJC_CLASS___CKYRotationViewItem, "alloc");
    v5 = -[CKYRotationViewItem init](v4, "init");
    -[CKYRotationViewItem initWithDict:](v5, "initWithDict:", v3);
    objc_release();
    return (id)objc_autoreleaseReturnValue();
}
// 101D5F450: using guessed type __objc2_class OBJC_CLASS___CKYRotationViewItem;

//----- (00000001000E8FA0) ----------------------------------------------------
CKYRotationViewItem *__cdecl -[CKYRotationViewItem initWithDict:](CKYRotationViewItem *self, SEL a2, id a3)
{
    double v3; // d8
    id v4; // x20
    CKYRotationViewItem *v5; // x19
    __int64 v6; // x0
    __int64 v7; // x0
    __int64 v8; // x0
    __int64 v9; // x0
    __int64 v10; // x0
    float v11; // s0
    __int64 v12; // x0
    int v13; // w0
    float v14; // s0
    float v15; // s0
    float v16; // s0
    float v17; // s0
    double v18; // d9
    float v19; // s0
    double v20; // d10
    float v21; // s0
    double v22; // d11
    float v23; // s0
    double v24; // d8
    int v25; // w0
    void *v26; // x0
    void *v27; // x0
    int v28; // w0
    void *v29; // x0
    int v30; // w22
    void *v31; // x20
    double v32; // d0
    double v33; // d8
    double v34; // d1
    
    v4 = a3;
    v5 = self;
    objc_retain();
    objc_msgSend(v4, "stringValueForKey:default:", CFSTR("text"), &stru_101B5A050);
    v6 = objc_retainAutoreleasedReturnValue();
    -[CKYRotationViewItem setText:](v5, "setText:", v6);
    objc_release();
    objc_msgSend(v4, "objectForKeyedSubscript:", CFSTR("textStyleModel"));
    v7 = objc_retainAutoreleasedReturnValue();
    +[BQSTextStyleModel textStyleModelWithDict:](&OBJC_CLASS___BQSTextStyleModel, "textStyleModelWithDict:", v7);
    v8 = objc_retainAutoreleasedReturnValue();
    -[CKYRotationViewItem setTextStyleModel:](v5, "setTextStyleModel:", v8);
    objc_release();
    objc_release();
    objc_msgSend(v4, "stringValueForKey:default:", CFSTR("textFontName"), &stru_101B5A050);
    v9 = objc_retainAutoreleasedReturnValue();
    -[CKYRotationViewItem setTextFontName:](v5, "setTextFontName:", v9);
    objc_release();
    objc_msgSend(v4, "stringValueForKey:default:", CFSTR("textFontPath"), &stru_101B5A050);
    v10 = objc_retainAutoreleasedReturnValue();
    -[CKYRotationViewItem setTextFontPath:](v5, "setTextFontPath:", v10);
    objc_release();
    objc_msgSend(v4, "floatValueForKey:default:", CFSTR("textFontSize"), 0.0);
    -[CKYRotationViewItem setTextFontSize:](v5, "setTextFontSize:", v11);
    objc_msgSend(v4, "stringValueForKey:default:", CFSTR("imageURL"), &stru_101B5A050);
    v12 = objc_retainAutoreleasedReturnValue();
    -[CKYRotationViewItem setImageURL:](v5, "setImageURL:", v12);
    objc_release();
    v13 = (unsigned __int64)objc_msgSend(v4, "intValueForKey:default:", CFSTR("contentViewType"), 1LL);
    -[CKYRotationViewItem setContentViewType:](v5, "setContentViewType:", v13);
    objc_msgSend(v4, "floatValueForKey:default:", CFSTR("angle"), 0.0);
    -[CKYRotationViewItem setAngle:](v5, "setAngle:", v14);
    LODWORD(v3) = 1.0;
    objc_msgSend(v4, "floatValueForKey:default:", CFSTR("xScale"), v3);
    -[CKYRotationViewItem setXScale:](v5, "setXScale:", v15);
    objc_msgSend(v4, "floatValueForKey:default:", CFSTR("yScale"), v3);
    -[CKYRotationViewItem setYScale:](v5, "setYScale:", v16);
    LODWORD(v3) = 1140457472;
    objc_msgSend(v4, "floatValueForKey:default:", CFSTR("centerX"), v3);
    v18 = v17;
    objc_msgSend(v4, "floatValueForKey:default:", CFSTR("centerY"), v3);
    v20 = v19;
    objc_msgSend(v4, "floatValueForKey:default:", CFSTR("sizeWidth"), v3);
    v22 = v21;
    objc_msgSend(v4, "floatValueForKey:default:", CFSTR("sizeHeight"), v3);
    v24 = v23;
    -[CKYRotationViewItem setCenter:](v5, "setCenter:", v18, v20);
    -[CKYRotationViewItem setSize:](v5, "setSize:", v22, v24);
    v25 = (unsigned __int64)objc_msgSend(v4, "intValueForKey:default:", CFSTR("index"), 1LL);
    -[CKYRotationViewItem setIndex:](v5, "setIndex:", v25);
    v26 = objc_msgSend(v4, "boolValueForKey:default:", CFSTR("turnOverH"), 0LL);
    -[CKYRotationViewItem setTurnOverH:](v5, "setTurnOverH:", v26);
    v27 = objc_msgSend(v4, "boolValueForKey:default:", CFSTR("turnOverV"), 0LL);
    -[CKYRotationViewItem setTurnOverV:](v5, "setTurnOverV:", v27);
    v28 = (unsigned __int64)objc_msgSend(v4, "intValueForKey:default:", CFSTR("vMoveBtnPositionType"), 2LL);
    -[CKYRotationViewItem setVMoveBtnPositionType:](v5, "setVMoveBtnPositionType:", v28);
    LODWORD(v4) = (unsigned __int64)objc_msgSend(v4, "intValueForKey:default:", CFSTR("hMoveBtnPositionType"), 3LL);
    objc_release();
    -[CKYRotationViewItem setHMoveBtnPositionType:](v5, "setHMoveBtnPositionType:", (signed int)v4);
    -[CKYRotationViewItem textStyleModel](v5, "textStyleModel");
    v29 = (void *)objc_retainAutoreleasedReturnValue();
    objc_msgSend(v29, "textRect");
    v30 = CGRectIsEmpty();
    objc_release();
    if ( v30 )
    {
        -[CKYRotationViewItem textStyleModel](v5, "textStyleModel");
        v31 = (void *)objc_retainAutoreleasedReturnValue();
        -[CKYRotationViewItem size](v5, "size");
        v33 = v32;
        -[CKYRotationViewItem size](v5, "size");
        objc_msgSend(v31, "setTextRect:", 0.0, 0.0, v33, v34);
        objc_release();
    }
    return v5;
}
// 101B5A050: using guessed type __CFString stru_101B5A050;
// 101B5CB30: using guessed type __CFString cfstr_Xscale_1;
// 101B5CB50: using guessed type __CFString cfstr_Yscale_1;
// 101B5CB90: using guessed type __CFString cfstr_Angle_1;
// 101B5CBB0: using guessed type __CFString cfstr_Turnoverh_1;
// 101B5CBD0: using guessed type __CFString cfstr_Turnoverv_1;
// 101B5E670: using guessed type __CFString cfstr_Imageurl_3;
// 101B5ED70: using guessed type __CFString cfstr_Text_1;
// 101B60510: using guessed type __CFString cfstr_Vmovebtnpositi_1;
// 101B60530: using guessed type __CFString cfstr_Hmovebtnpositi_1;
// 101B60810: using guessed type __CFString cfstr_Textstylemodel_3;
// 101B60830: using guessed type __CFString cfstr_Textfontname_1;
// 101B60850: using guessed type __CFString cfstr_Textfontpath_1;
// 101B60870: using guessed type __CFString cfstr_Textfontsize_1;
// 101B60890: using guessed type __CFString cfstr_Contentviewtyp_1;
// 101B608B0: using guessed type __CFString cfstr_Centerx_0;
// 101B608D0: using guessed type __CFString cfstr_Centery_0;
// 101B608F0: using guessed type __CFString cfstr_Sizewidth;
// 101B60910: using guessed type __CFString cfstr_Sizeheight;
// 101B60930: using guessed type __CFString cfstr_Index_1;
// 101D5F400: using guessed type __objc2_class OBJC_CLASS___BQSTextStyleModel;

//----- (00000001000E94A4) ----------------------------------------------------
id __cdecl -[CKYRotationViewItem copyRotationViewItem](CKYRotationViewItem *self, SEL a2)
{
    CKYRotationViewItem *v2; // x19
    CKYRotationViewItem *v3; // x0
    struct objc_object *v4; // x20
    __int64 v5; // x0
    __int64 v6; // x0
    __int64 v7; // x0
    void *v8; // x0
    void *v9; // x0
    __int64 v10; // x0
    void *v11; // x0
    void *v12; // x0
    void *v13; // x0
    void *v14; // x0
    void *v15; // x0
    void *v16; // x0
    
    v2 = self;
    v3 = objc_msgSend(&OBJC_CLASS___CKYRotationViewItem, "alloc");
    v4 = -[CKYRotationViewItem init](v3, "init");
    -[CKYRotationViewItem text](v2, "text");
    v5 = objc_retainAutoreleasedReturnValue();
    objc_msgSend(v4, "setText:", v5);
    objc_release();
    -[CKYRotationViewItem textFontName](v2, "textFontName");
    v6 = objc_retainAutoreleasedReturnValue();
    objc_msgSend(v4, "setTextFontName:", v6);
    objc_release();
    -[CKYRotationViewItem textFontPath](v2, "textFontPath");
    v7 = objc_retainAutoreleasedReturnValue();
    objc_msgSend(v4, "setTextFontPath:", v7);
    objc_release();
    -[CKYRotationViewItem textFontSize](v2, "textFontSize");
    objc_msgSend(v4, "setTextFontSize:");
    -[CKYRotationViewItem textStyleModel](v2, "textStyleModel");
    v8 = (void *)objc_retainAutoreleasedReturnValue();
    v9 = objc_msgSend(v8, "copyTextStyleModel");
    objc_msgSend(v4, "setTextStyleModel:", v9);
    objc_release();
    objc_release();
    -[CKYRotationViewItem imageURL](v2, "imageURL");
    v10 = objc_retainAutoreleasedReturnValue();
    objc_msgSend(v4, "setImageURL:", v10);
    objc_release();
    v11 = -[CKYRotationViewItem contentViewType](v2, "contentViewType");
    objc_msgSend(v4, "setContentViewType:", v11);
    -[CKYRotationViewItem angle](v2, "angle");
    objc_msgSend(v4, "setAngle:");
    -[CKYRotationViewItem xScale](v2, "xScale");
    objc_msgSend(v4, "setXScale:");
    -[CKYRotationViewItem yScale](v2, "yScale");
    objc_msgSend(v4, "setYScale:");
    -[CKYRotationViewItem center](v2, "center");
    objc_msgSend(v4, "setCenter:");
    v12 = -[CKYRotationViewItem index](v2, "index");
    objc_msgSend(v4, "setIndex:", v12);
    v13 = -[CKYRotationViewItem turnOverH](v2, "turnOverH");
    objc_msgSend(v4, "setTurnOverH:", v13);
    v14 = -[CKYRotationViewItem turnOverV](v2, "turnOverV");
    objc_msgSend(v4, "setTurnOverV:", v14);
    -[CKYRotationViewItem size](v2, "size");
    objc_msgSend(v4, "setSize:");
    v15 = -[CKYRotationViewItem vMoveBtnPositionType](v2, "vMoveBtnPositionType");
    objc_msgSend(v4, "setVMoveBtnPositionType:", v15);
    v16 = -[CKYRotationViewItem hMoveBtnPositionType](v2, "hMoveBtnPositionType");
    objc_msgSend(v4, "setHMoveBtnPositionType:", v16);
    return v4;
}
// 101D5F450: using guessed type __objc2_class OBJC_CLASS___CKYRotationViewItem;

//----- (00000001000E97B8) ----------------------------------------------------
void __cdecl -[CKYRotationViewItem encodeWithCoder:](CKYRotationViewItem *self, SEL a2, id a3)
{
    id v3; // x19
    CKYRotationViewItem *v4; // x20
    __int64 v5; // x0
    
    v3 = a3;
    v4 = self;
    objc_retain();
    -[CKYRotationViewItem getDict](v4, "getDict");
    v5 = objc_retainAutoreleasedReturnValue();
    objc_msgSend(v3, "encodeObject:forKey:", v5, CFSTR("acoderDict"));
    objc_release();
    objc_release();
}
// 101B60950: using guessed type __CFString cfstr_Acoderdict;

//----- (00000001000E9834) ----------------------------------------------------
CKYRotationViewItem *__cdecl -[CKYRotationViewItem initWithCoder:](CKYRotationViewItem *self, SEL a2, id a3)
{
    CKYRotationViewItem *v3; // x20
    __int64 v4; // x19
    CKYRotationViewItem *v5; // x0
    CKYRotationViewItem *v6; // x20
    
    v3 = self;
    objc_msgSend(a3, "decodeObjectForKey:", CFSTR("acoderDict"));
    v4 = objc_retainAutoreleasedReturnValue();
    if ( v4 )
        v5 = -[CKYRotationViewItem initWithDict:](v3, "initWithDict:", v4);
    else
        v5 = -[CKYRotationViewItem init](v3, "init");
    v6 = v5;
    objc_release();
    return v6;
}
// 101B60950: using guessed type __CFString cfstr_Acoderdict;

//----- (00000001000E98B4) ----------------------------------------------------
NSString *__cdecl -[CKYRotationViewItem text](CKYRotationViewItem *self, SEL a2)
{
    return (NSString *)_objc_getProperty(self, a2, 16LL, 0LL);
}
// 102769B28: using guessed type __int64 __fastcall _objc_getProperty(_QWORD, _QWORD, _QWORD, _QWORD);

//----- (00000001000E98C4) ----------------------------------------------------
void __cdecl -[CKYRotationViewItem setText:](CKYRotationViewItem *self, SEL a2, id a3)
{
    _objc_setProperty_nonatomic_copy(self, a2, a3, 16LL);
}
// 102769BD0: using guessed type __int64 __fastcall _objc_setProperty_nonatomic_copy(_QWORD, _QWORD, _QWORD, _QWORD);

//----- (00000001000E98D0) ----------------------------------------------------
NSString *__cdecl -[CKYRotationViewItem textFontName](CKYRotationViewItem *self, SEL a2)
{
    return (NSString *)_objc_getProperty(self, a2, 24LL, 0LL);
}
// 102769B28: using guessed type __int64 __fastcall _objc_getProperty(_QWORD, _QWORD, _QWORD, _QWORD);

//----- (00000001000E98E0) ----------------------------------------------------
void __cdecl -[CKYRotationViewItem setTextFontName:](CKYRotationViewItem *self, SEL a2, id a3)
{
    _objc_setProperty_nonatomic_copy(self, a2, a3, 24LL);
}
// 102769BD0: using guessed type __int64 __fastcall _objc_setProperty_nonatomic_copy(_QWORD, _QWORD, _QWORD, _QWORD);

//----- (00000001000E98EC) ----------------------------------------------------
NSString *__cdecl -[CKYRotationViewItem textFontPath](CKYRotationViewItem *self, SEL a2)
{
    return (NSString *)_objc_getProperty(self, a2, 32LL, 0LL);
}
// 102769B28: using guessed type __int64 __fastcall _objc_getProperty(_QWORD, _QWORD, _QWORD, _QWORD);

//----- (00000001000E98FC) ----------------------------------------------------
void __cdecl -[CKYRotationViewItem setTextFontPath:](CKYRotationViewItem *self, SEL a2, id a3)
{
    _objc_setProperty_nonatomic_copy(self, a2, a3, 32LL);
}
// 102769BD0: using guessed type __int64 __fastcall _objc_setProperty_nonatomic_copy(_QWORD, _QWORD, _QWORD, _QWORD);

//----- (00000001000E9908) ----------------------------------------------------
double __cdecl -[CKYRotationViewItem textFontSize](CKYRotationViewItem *self, SEL a2)
{
    return self->_textFontSize;
}

//----- (00000001000E9918) ----------------------------------------------------
void __cdecl -[CKYRotationViewItem setTextFontSize:](CKYRotationViewItem *self, SEL a2, double a3)
{
    self->_textFontSize = a3;
}

//----- (00000001000E9928) ----------------------------------------------------
BQSTextStyleModel *__cdecl -[CKYRotationViewItem textStyleModel](CKYRotationViewItem *self, SEL a2)
{
    return self->_textStyleModel;
}

//----- (00000001000E9938) ----------------------------------------------------
void __cdecl -[CKYRotationViewItem setTextStyleModel:](CKYRotationViewItem *self, SEL a2, id a3)
{
    objc_storeStrong();
}

//----- (00000001000E994C) ----------------------------------------------------
NSString *__cdecl -[CKYRotationViewItem imageURL](CKYRotationViewItem *self, SEL a2)
{
    return (NSString *)_objc_getProperty(self, a2, 56LL, 0LL);
}
// 102769B28: using guessed type __int64 __fastcall _objc_getProperty(_QWORD, _QWORD, _QWORD, _QWORD);

//----- (00000001000E995C) ----------------------------------------------------
void __cdecl -[CKYRotationViewItem setImageURL:](CKYRotationViewItem *self, SEL a2, id a3)
{
    _objc_setProperty_nonatomic_copy(self, a2, a3, 56LL);
}
// 102769BD0: using guessed type __int64 __fastcall _objc_setProperty_nonatomic_copy(_QWORD, _QWORD, _QWORD, _QWORD);

//----- (00000001000E9968) ----------------------------------------------------
signed __int64 __cdecl -[CKYRotationViewItem contentViewType](CKYRotationViewItem *self, SEL a2)
{
    return self->_contentViewType;
}

//----- (00000001000E9978) ----------------------------------------------------
void __cdecl -[CKYRotationViewItem setContentViewType:](CKYRotationViewItem *self, SEL a2, signed __int64 a3)
{
    self->_contentViewType = a3;
}

//----- (00000001000E9988) ----------------------------------------------------
double __cdecl -[CKYRotationViewItem angle](CKYRotationViewItem *self, SEL a2)
{
    return self->_angle;
}

//----- (00000001000E9998) ----------------------------------------------------
void __cdecl -[CKYRotationViewItem setAngle:](CKYRotationViewItem *self, SEL a2, double a3)
{
    self->_angle = a3;
}

//----- (00000001000E99A8) ----------------------------------------------------
double __cdecl -[CKYRotationViewItem xScale](CKYRotationViewItem *self, SEL a2)
{
    return self->_xScale;
}

//----- (00000001000E99B8) ----------------------------------------------------
void __cdecl -[CKYRotationViewItem setXScale:](CKYRotationViewItem *self, SEL a2, double a3)
{
    self->_xScale = a3;
}

//----- (00000001000E99C8) ----------------------------------------------------
double __cdecl -[CKYRotationViewItem yScale](CKYRotationViewItem *self, SEL a2)
{
    return self->_yScale;
}

//----- (00000001000E99D8) ----------------------------------------------------
void __cdecl -[CKYRotationViewItem setYScale:](CKYRotationViewItem *self, SEL a2, double a3)
{
    self->_yScale = a3;
}

//----- (00000001000E99E8) ----------------------------------------------------
CGPoint __cdecl -[CKYRotationViewItem center](CKYRotationViewItem *self, SEL a2)
{
    double v2; // d0
    double v3; // d1
    CGPoint result; // 0:d0.8,8:d1.8
    
    v2 = self->_center.var0;
    v3 = self->_center.var1;
    result.var1 = v3;
    result.var0 = v2;
    return result;
}

//----- (00000001000E99FC) ----------------------------------------------------
// local variable allocation has failed, the output may be wrong!
void __cdecl -[CKYRotationViewItem setCenter:](CKYRotationViewItem *self, SEL a2, CGPoint a3)
{
    double *v3; // x8
    
    v3 = &self->_center.var0;
    *v3 = a3.var0;
    v3[1] = a3.var1;
}
// 1000E99FC: fragmented variable at 0:d0.8,8:d1.8 may be wrong

//----- (00000001000E9A10) ----------------------------------------------------
double __cdecl -[CKYRotationViewItem toCenterYMargin](CKYRotationViewItem *self, SEL a2)
{
    return self->_toCenterYMargin;
}

//----- (00000001000E9A20) ----------------------------------------------------
void __cdecl -[CKYRotationViewItem setToCenterYMargin:](CKYRotationViewItem *self, SEL a2, double a3)
{
    self->_toCenterYMargin = a3;
}

//----- (00000001000E9A30) ----------------------------------------------------
signed __int64 __cdecl -[CKYRotationViewItem index](CKYRotationViewItem *self, SEL a2)
{
    return self->_index;
}

//----- (00000001000E9A40) ----------------------------------------------------
void __cdecl -[CKYRotationViewItem setIndex:](CKYRotationViewItem *self, SEL a2, signed __int64 a3)
{
    self->_index = a3;
}

//----- (00000001000E9A50) ----------------------------------------------------
bool __cdecl -[CKYRotationViewItem turnOverH](CKYRotationViewItem *self, SEL a2)
{
    return self->_turnOverH;
}

//----- (00000001000E9A60) ----------------------------------------------------
void __cdecl -[CKYRotationViewItem setTurnOverH:](CKYRotationViewItem *self, SEL a2, bool a3)
{
    self->_turnOverH = a3;
}

//----- (00000001000E9A70) ----------------------------------------------------
bool __cdecl -[CKYRotationViewItem turnOverV](CKYRotationViewItem *self, SEL a2)
{
    return self->_turnOverV;
}

//----- (00000001000E9A80) ----------------------------------------------------
void __cdecl -[CKYRotationViewItem setTurnOverV:](CKYRotationViewItem *self, SEL a2, bool a3)
{
    self->_turnOverV = a3;
}

//----- (00000001000E9A90) ----------------------------------------------------
CGSize __cdecl -[CKYRotationViewItem size](CKYRotationViewItem *self, SEL a2)
{
    double v2; // d0
    double v3; // d1
    CGSize result; // 0:d0.8,8:d1.8
    
    v2 = self->_size.var0;
    v3 = self->_size.var1;
    result.var1 = v3;
    result.var0 = v2;
    return result;
}

//----- (00000001000E9AA4) ----------------------------------------------------
// local variable allocation has failed, the output may be wrong!
void __cdecl -[CKYRotationViewItem setSize:](CKYRotationViewItem *self, SEL a2, CGSize a3)
{
    double *v3; // x8
    
    v3 = &self->_size.var0;
    *v3 = a3.var0;
    v3[1] = a3.var1;
}
// 1000E9AA4: fragmented variable at 0:d0.8,8:d1.8 may be wrong

//----- (00000001000E9AB8) ----------------------------------------------------
signed __int64 __cdecl -[CKYRotationViewItem vMoveBtnPositionType](CKYRotationViewItem *self, SEL a2)
{
    return self->_vMoveBtnPositionType;
}

//----- (00000001000E9AC8) ----------------------------------------------------
void __cdecl -[CKYRotationViewItem setVMoveBtnPositionType:](CKYRotationViewItem *self, SEL a2, signed __int64 a3)
{
    self->_vMoveBtnPositionType = a3;
}

//----- (00000001000E9AD8) ----------------------------------------------------
signed __int64 __cdecl -[CKYRotationViewItem hMoveBtnPositionType](CKYRotationViewItem *self, SEL a2)
{
    return self->_hMoveBtnPositionType;
}

//----- (00000001000E9AE8) ----------------------------------------------------
void __cdecl -[CKYRotationViewItem setHMoveBtnPositionType:](CKYRotationViewItem *self, SEL a2, signed __int64 a3)
{
    self->_hMoveBtnPositionType = a3;
}

//----- (00000001000E9AF8) ----------------------------------------------------
void __cdecl -[CKYRotationViewItem .cxx_destruct](CKYRotationViewItem *self, SEL a2)
{
    objc_storeStrong();
    objc_storeStrong();
    objc_storeStrong();
    objc_storeStrong();
    objc_storeStrong();
}

@end
