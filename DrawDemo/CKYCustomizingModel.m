//
//  CKYCustomizingModel.m
//  DrawDemo
//
//  Created by luck on 2018/5/27.
//  Copyright © 2018年 perfay. All rights reserved.
//

#import "CKYCustomizingModel.h"

@implementation CKYCustomizingModel


//----- (0000000100061718) ----------------------------------------------------
id __cdecl +[CKYCustomizingModel customizingModelGetCache](CKYCustomizingModel_meta *self, SEL a2)
{
    void *v2; // x0
    __int64 v3; // x20
    
    +[CKYCacheManager defaultManager](&OBJC_CLASS___CKYCacheManager, "defaultManager");
    v2 = (void *)objc_retainAutoreleasedReturnValue();
    objc_msgSend(v2, "getCacheWithKeyValue:", CFSTR("CKYCustomizingViewControllerCache"));
    v3 = objc_retainAutoreleasedReturnValue();
    objc_release();
    +[CKYCustomizingModel customizingModelWithDict:](&OBJC_CLASS___CKYCustomizingModel, "customizingModelWithDict:", v3);
    objc_retainAutoreleasedReturnValue();
    objc_release();
    return (id)objc_autoreleaseReturnValue();
}
// 101B5D0D0: using guessed type __CFString cfstr_Ckycustomizing;
// 101D5D560: using guessed type __objc2_class OBJC_CLASS___CKYCustomizingModel;
// 101D69EA0: using guessed type __objc2_class OBJC_CLASS___CKYCacheManager;

//----- (00000001000617A8) ----------------------------------------------------
void __cdecl +[CKYCustomizingModel clearCache](CKYCustomizingModel_meta *self, SEL a2)
{
    void *v2; // x0
    
    +[CKYCacheManager defaultManager](&OBJC_CLASS___CKYCacheManager, "defaultManager");
    v2 = (void *)objc_retainAutoreleasedReturnValue();
    objc_msgSend(v2, "removeObjectForKey:", CFSTR("CKYCustomizingViewControllerCache"));
    objc_release();
}
// 101B5D0D0: using guessed type __CFString cfstr_Ckycustomizing;
// 101D69EA0: using guessed type __objc2_class OBJC_CLASS___CKYCacheManager;

//----- (00000001000617F8) ----------------------------------------------------
id __cdecl +[CKYCustomizingModel customizingModelWithWebPPath:](CKYCustomizingModel_meta *self, SEL a2, id a3)
{
    void *v3; // x19
    CKYCustomizingModel *v4; // x0
    CKYCustomizingModel *v5; // x20
    void *v6; // x0
    double v7; // d2
    __int64 v8; // x0
    __int64 v9; // x0
    double v10; // d0
    float v11; // s0
    float v12; // s8
    double v13; // d10
    void *v14; // x0
    __int64 v15; // x24
    void *v16; // x25
    double v17; // d11
    double v18; // d12
    void *v19; // x0
    double v20; // d2
    double v21; // d8
    void *v22; // x0
    double v23; // d2
    double v24; // d8
    double v25; // d9
    double v26; // d9
    void *v27; // x0
    double v28; // d2
    double v29; // d13
    void *v30; // x0
    double v31; // d2
    void *v32; // x0
    double v33; // d2
    CKYRotationViewItem *v34; // x0
    CKYRotationViewItem *v35; // x21
    void *v36; // x0
    
    v3 = (void *)objc_retain();
    v4 = objc_msgSend(&OBJC_CLASS___CKYCustomizingModel, "alloc");
    v5 = objc_msgSend(v4, "init");
    -[CKYCustomizingModel setOriginalId:](v5, "setOriginalId:", 0LL);
    -[CKYCustomizingModel setOriginId:](v5, "setOriginId:", 0LL);
    objc_msgSend(&OBJC_CLASS___UIScreen, "mainScreen");
    v6 = (void *)objc_retainAutoreleasedReturnValue();
    objc_msgSend(v6, "bounds");
    -[CKYCustomizingModel setWidth:](v5, "setWidth:", v7);
    objc_release();
    +[BQSMakeToolConfig getCustomizingVCContentViewHeight](
                                                           &OBJC_CLASS___BQSMakeToolConfig,
                                                           "getCustomizingVCContentViewHeight");
    -[CKYCustomizingModel setHeight:](v5, "setHeight:");
    +[BQSCusBackImageModel cusBackImageModelWithDict:](
                                                       &OBJC_CLASS___BQSCusBackImageModel,
                                                       "cusBackImageModelWithDict:",
                                                       0LL);
    v8 = objc_retainAutoreleasedReturnValue();
    -[CKYCustomizingModel setBackInfoModel:](v5, "setBackInfoModel:", v8);
    objc_release();
    objc_msgSend(&OBJC_CLASS___NSMutableArray, "array");
    v9 = objc_retainAutoreleasedReturnValue();
    -[CKYCustomizingModel setItemArray:](v5, "setItemArray:", v9);
    objc_release();
    LODWORD(v10) = 1103364096;
    +[CKYCoreFit sizeWidthScale:](&OBJC_CLASS___CKYCoreFit, "sizeWidthScale:", v10);
    v12 = v11;
    if ( objc_msgSend(v3, "length") )
    {
        v13 = (float)(v12 + v12) + 0.2;
        +[YYImageCache sharedCache](&OBJC_CLASS___YYImageCache, "sharedCache");
        v14 = (void *)objc_retainAutoreleasedReturnValue();
        objc_msgSend(v14, "getImageDataForKey:", v3);
        v15 = objc_retainAutoreleasedReturnValue();
        objc_release();
        +[YYImageDecoder decoderWithData:scale:](&OBJC_CLASS___YYImageDecoder, "decoderWithData:scale:", v15, 1.0);
        v16 = (void *)objc_retainAutoreleasedReturnValue();
        v17 = (double)(unsigned __int64)objc_msgSend(v16, "width");
        v18 = (double)(unsigned __int64)objc_msgSend(v16, "height");
        objc_msgSend(&OBJC_CLASS___UIScreen, "mainScreen");
        v19 = (void *)objc_retainAutoreleasedReturnValue();
        objc_msgSend(v19, "bounds");
        v21 = v20;
        if ( v17 <= v18 )
        {
            v26 = v20 / 3.0 * 4.0 - v13;
            objc_release();
            if ( v26 >= v18 )
            {
                v24 = v17;
                v26 = v18;
            }
            else
            {
                v24 = v17 / v18 * v26;
            }
            objc_msgSend(&OBJC_CLASS___UIScreen, "mainScreen");
            v27 = (void *)objc_retainAutoreleasedReturnValue();
            objc_msgSend(v27, "bounds");
            v29 = v28 - v13;
            objc_release();
            if ( v24 <= v29 )
                goto LABEL_12;
            objc_msgSend(&OBJC_CLASS___UIScreen, "mainScreen");
            v30 = (void *)objc_retainAutoreleasedReturnValue();
            objc_msgSend(v30, "bounds");
            v24 = v31 - v13;
            v25 = v18 / v17;
            objc_msgSend(&OBJC_CLASS___UIScreen, "mainScreen");
        }
        else
        {
            objc_release();
            if ( v21 >= v17 )
            {
                v24 = v17;
                v26 = v18;
            LABEL_12:
                v34 = objc_msgSend(&OBJC_CLASS___CKYRotationViewItem, "alloc");
                v35 = -[CKYRotationViewItem init](v34, "init");
                -[CKYRotationViewItem setImageURL:](v35, "setImageURL:", v3);
                -[CKYRotationViewItem setContentViewType:](v35, "setContentViewType:", 0LL);
                -[CKYRotationViewItem setSize:](v35, "setSize:", v24, v26);
                -[CKYRotationViewItem setAngle:](v35, "setAngle:", 0.0);
                -[CKYRotationViewItem setXScale:](v35, "setXScale:", 1.0);
                -[CKYRotationViewItem setYScale:](v35, "setYScale:", 1.0);
                +[BQSMakeToolConfig getCustomizingVCContentViewHeight](
                                                                       &OBJC_CLASS___BQSMakeToolConfig,
                                                                       "getCustomizingVCContentViewHeight");
                -[CKYRotationViewItem setCenter:](v35, "setCenter:");
                -[CKYRotationViewItem setTurnOverV:](v35, "setTurnOverV:", 0LL);
                -[CKYRotationViewItem setTurnOverH:](v35, "setTurnOverH:", 0LL);
                -[CKYRotationViewItem setVMoveBtnPositionType:](v35, "setVMoveBtnPositionType:", 2LL);
                -[CKYRotationViewItem setHMoveBtnPositionType:](v35, "setHMoveBtnPositionType:", 3LL);
                -[CKYCustomizingModel itemArray](v5, "itemArray");
                v36 = (void *)objc_retainAutoreleasedReturnValue();
                objc_msgSend(v36, "addObject:", v35);
                objc_release();
                objc_release();
                objc_release();
                objc_release();
                goto LABEL_13;
            }
            objc_msgSend(&OBJC_CLASS___UIScreen, "mainScreen");
            v22 = (void *)objc_retainAutoreleasedReturnValue();
            objc_msgSend(v22, "bounds");
            v24 = v23 - v13;
            v25 = v18 / v17;
            objc_msgSend(&OBJC_CLASS___UIScreen, "mainScreen");
        }
        v32 = (void *)objc_retainAutoreleasedReturnValue();
        objc_msgSend(v32, "bounds");
        v26 = v25 * (v33 - v13);
        objc_release();
        objc_release();
        goto LABEL_12;
    }
LABEL_13:
    objc_release();
    return (id)objc_autoreleaseReturnValue();
}
// 101D5D560: using guessed type __objc2_class OBJC_CLASS___CKYCustomizingModel;
// 101D5F450: using guessed type __objc2_class OBJC_CLASS___CKYRotationViewItem;
// 101D60210: using guessed type __objc2_class OBJC_CLASS___BQSMakeToolConfig;
// 101D60260: using guessed type __objc2_class OBJC_CLASS___BQSCusBackImageModel;
// 101D65918: using guessed type __objc2_class OBJC_CLASS___CKYCoreFit;
// 101D72550: using guessed type __objc2_class OBJC_CLASS___YYImageCache;
// 101D72640: using guessed type __objc2_class OBJC_CLASS___YYImageDecoder;

//----- (0000000100061D40) ----------------------------------------------------
id __cdecl +[CKYCustomizingModel customizingModelWithDict:](CKYCustomizingModel_meta *self, SEL a2, id a3)
{
    void *v3; // x21
    double v4; // d0
    double v5; // d8
    CKYCustomizingModel *v6; // x0
    CKYCustomizingModel *v7; // x28
    void *v8; // x0
    void *v9; // x0
    __int64 v10; // ST20_8
    __int64 v11; // x0
    double v12; // d0
    float v13; // s0
    double v14; // d0
    double v15; // d0
    float v16; // s0
    double v17; // d0
    void *v18; // x0
    double v19; // d2
    void *v20; // x26
    void *v21; // x25
    void *v22; // x0
    unsigned __int64 v23; // x19
    __int64 v24; // x0
    __int64 v25; // x0
    double v26; // d0
    double v27; // d9
    double v28; // d0
    double v29; // d10
    void *v30; // x27
    double v31; // d12
    double v32; // d13
    __int64 v33; // x22
    unsigned __int64 v34; // x26
    void *v35; // x25
    double v36; // d0
    double v37; // d8
    double v38; // d1
    double v39; // d0
    double v40; // d8
    double v41; // d1
    void *v42; // x0
    double v43; // d0
    double v44; // d8
    double v45; // d1
    double v46; // d9
    double v47; // d2
    double v48; // d10
    double v49; // d3
    double v50; // d11
    void *v51; // x0
    void *v52; // x0
    void *v53; // x0
    void *v54; // x22
    void *v55; // x0
    void *v56; // x0
    int v57; // w22
    void *v58; // x20
    void *v59; // x0
    __int64 v60; // x0
    void *v61; // x27
    void *v62; // x19
    __int64 v63; // x0
    void *v64; // x19
    void *v65; // x0
    __int64 v66; // x0
    __int64 v67; // x0
    void *v68; // x0
    __int64 v69; // x0
    __int64 v70; // x0
    void *v71; // x28
    void *v72; // x22
    void *v73; // x19
    __int64 v74; // x0
    void *v75; // x0
    __int64 v76; // x24
    __int64 v77; // x0
    __int64 v78; // x19
    void *v79; // x19
    void *v80; // x0
    __int64 v81; // x0
    void *v82; // x19
    void *v83; // x0
    __int64 v84; // x0
    void *v85; // x0
    void *v86; // x0
    id result; // x0
    CKYCustomizingModel *v88; // [xsp+38h] [xbp-188h]
    void *v89; // [xsp+40h] [xbp-180h]
    char *v90; // [xsp+70h] [xbp-150h]
    __int64 v91; // [xsp+78h] [xbp-148h]
    __int64 v92; // [xsp+80h] [xbp-140h]
    __int64 *v93; // [xsp+88h] [xbp-138h]
    __int64 v94; // [xsp+90h] [xbp-130h]
    __int64 v95; // [xsp+98h] [xbp-128h]
    __int64 v96; // [xsp+A0h] [xbp-120h]
    __int64 v97; // [xsp+A8h] [xbp-118h]
    __int64 v98; // [xsp+B0h] [xbp-110h]
    char v99; // [xsp+B8h] [xbp-108h]
    __int64 v100; // [xsp+138h] [xbp-88h]
    
    v3 = (void *)objc_retain();
    +[BQSMakeToolConfig getCustomizingVCContentViewHeight](
                                                           &OBJC_CLASS___BQSMakeToolConfig,
                                                           "getCustomizingVCContentViewHeight");
    v5 = v4;
    v6 = objc_msgSend(&OBJC_CLASS___CKYCustomizingModel, "alloc");
    v7 = objc_msgSend(v6, "init");
    v8 = objc_msgSend(v3, "longValueForKey:default:", CFSTR("originId"), 0LL);
    -[CKYCustomizingModel setOriginId:](v7, "setOriginId:", v8);
    v9 = objc_msgSend(v3, "longValueForKey:default:", CFSTR("originalId"), 0LL);
    -[CKYCustomizingModel setOriginalId:](v7, "setOriginalId:", v9);
    objc_msgSend(v3, "objectForKeyedSubscript:", CFSTR("backInfoModel"));
    v10 = objc_retainAutoreleasedReturnValue();
    +[BQSCusBackImageModel cusBackImageModelWithDict:](
                                                       &OBJC_CLASS___BQSCusBackImageModel,
                                                       "cusBackImageModelWithDict:",
                                                       v10);
    v11 = objc_retainAutoreleasedReturnValue();
    -[CKYCustomizingModel setBackInfoModel:](v7, "setBackInfoModel:", v11);
    objc_release();
    *(float *)&v12 = v5;
    objc_msgSend(v3, "floatValueForKey:default:", CFSTR("width"), v12);
    -[CKYCustomizingModel setWidth:](v7, "setWidth:", v13);
    -[CKYCustomizingModel width](v7, "width");
    v15 = v14 * 4.0 / 3.0;
    *(float *)&v15 = v15;
    objc_msgSend(v3, "floatValueForKey:default:", CFSTR("height"), v15);
    -[CKYCustomizingModel setHeight:](v7, "setHeight:", v16);
    -[CKYCustomizingModel width](v7, "width");
    if ( v17 < 10.0 )
    {
        objc_msgSend(&OBJC_CLASS___UIScreen, "mainScreen");
        v18 = (void *)objc_retainAutoreleasedReturnValue();
        objc_msgSend(v18, "bounds");
        -[CKYCustomizingModel setWidth:](v7, "setWidth:", v19);
        objc_release();
    }
    objc_msgSend(v3, "objectForKey:", CFSTR("itemArray"));
    v20 = (void *)objc_retainAutoreleasedReturnValue();
    objc_msgSend(&OBJC_CLASS___NSMutableArray, "array");
    v21 = (void *)objc_retainAutoreleasedReturnValue();
    v22 = objc_msgSend(&OBJC_CLASS___NSArray, "class");
    v89 = v20;
    if ( (unsigned int)objc_msgSend(v20, "isKindOfClass:", v22) && objc_msgSend(v20, "count") )
    {
        v23 = 0LL;
        do
        {
            objc_msgSend(v20, "objectAtIndexedSubscript:", v23);
            v24 = objc_retainAutoreleasedReturnValue();
            +[CKYRotationViewItem itemWithDict:](&OBJC_CLASS___CKYRotationViewItem, "itemWithDict:", v24);
            v25 = objc_retainAutoreleasedReturnValue();
            objc_msgSend(v21, "addObject:", v25);
            v20 = v89;
            objc_release();
            objc_release();
            ++v23;
        }
        while ( v23 < (unsigned __int64)objc_msgSend(v89, "count") );
    }
    -[CKYCustomizingModel setItemArray:](v7, "setItemArray:", v21);
    -[CKYCustomizingModel width](v7, "width");
    v27 = v26;
    -[CKYCustomizingModel height](v7, "height");
    v29 = v28;
    v97 = 0LL;
    v98 = 0LL;
    v95 = 0LL;
    v96 = 0LL;
    v93 = 0LL;
    v94 = 0LL;
    v91 = 0LL;
    v92 = 0LL;
    v88 = v7;
    -[CKYCustomizingModel itemArray](v7, "itemArray");
    v90 = (char *)objc_retainAutoreleasedReturnValue();
    v30 = objc_msgSend(v90, "countByEnumeratingWithState:objects:count:", &v91, &v99, 16LL);
    if ( v30 )
    {
        v31 = v5 / v27;
        v32 = (v5 / v27 * v29 - v5) * 0.5;
        v33 = *v93;
        do
        {
            v34 = 0LL;
            do
            {
                if ( *v93 != v33 )
                    objc_enumerationMutation();
                v35 = *(void **)(v92 + 8 * v34);
                objc_msgSend(*(void **)(v92 + 8 * v34), "center");
                v37 = v31 * v36;
                objc_msgSend(v35, "center");
                objc_msgSend(v35, "setCenter:", v37, v31 * v38 - v32);
                objc_msgSend(v35, "size");
                v40 = v31 * v39;
                objc_msgSend(v35, "size");
                objc_msgSend(v35, "setSize:", v40, v31 * v41);
                if ( objc_msgSend(v35, "contentViewType") == (void *)2 )
                {
                    objc_msgSend(v35, "textStyleModel");
                    v42 = (void *)objc_retainAutoreleasedReturnValue();
                    objc_msgSend(v42, "textRect");
                    v44 = v43;
                    v46 = v45;
                    v48 = v47;
                    v50 = v49;
                    objc_release();
                    objc_msgSend(v35, "textStyleModel");
                    v51 = (void *)objc_retainAutoreleasedReturnValue();
                    objc_msgSend(v51, "setTextRect:", v31 * v44, v31 * v46, v31 * v48, v31 * v50);
                    objc_release();
                }
                ++v34;
            }
            while ( v34 < (unsigned __int64)v30 );
            v30 = objc_msgSend(v90, "countByEnumeratingWithState:objects:count:", &v91, &v99, 16LL);
        }
        while ( v30 );
    }
    objc_release();
    -[CKYCustomizingModel backInfoModel](v7, "backInfoModel");
    v52 = (void *)objc_retainAutoreleasedReturnValue();
    objc_msgSend(v52, "assetPath");
    v53 = (void *)objc_retainAutoreleasedReturnValue();
    v54 = objc_msgSend(v53, "length");
    objc_release();
    objc_release();
    if ( v54 )
    {
        -[CKYCustomizingModel backInfoModel](v7, "backInfoModel");
        v55 = (void *)objc_retainAutoreleasedReturnValue();
        objc_msgSend(v55, "assetPath");
        v56 = (void *)objc_retainAutoreleasedReturnValue();
        v57 = (unsigned __int64)objc_msgSend(v56, "hasPrefix:", CFSTR("http"));
        objc_release();
        objc_release();
        if ( v57 )
        {
            +[CKYCacheManager defaultManager](&OBJC_CLASS___CKYCacheManager, "defaultManager");
            v58 = (void *)objc_retainAutoreleasedReturnValue();
            -[CKYCustomizingModel backInfoModel](v7, "backInfoModel");
            v59 = (void *)objc_retainAutoreleasedReturnValue();
            objc_msgSend(v59, "assetPath");
            v60 = objc_retainAutoreleasedReturnValue();
            objc_msgSend(v58, "getCacheWithKeyValue:", v60);
            v61 = (void *)objc_retainAutoreleasedReturnValue();
            objc_release();
            objc_release();
            objc_release();
            if ( objc_msgSend(v61, "length")
                && (unsigned int)+[CKYFileManager isFileExistence:](&OBJC_CLASS___CKYFileManager, "isFileExistence:", v61) )
            {
                -[CKYCustomizingModel backInfoModel](v7, "backInfoModel");
                v62 = (void *)objc_retainAutoreleasedReturnValue();
                +[BQSCustomPathManager handlePathChange:](&OBJC_CLASS___BQSCustomPathManager, "handlePathChange:", v61);
                v63 = objc_retainAutoreleasedReturnValue();
                objc_msgSend(v62, "setAssetPath:", v63);
                objc_release();
                objc_release();
            }
            else
            {
                -[CKYCustomizingModel backInfoModel](v7, "backInfoModel");
                v68 = (void *)objc_retainAutoreleasedReturnValue();
                objc_msgSend(v68, "assetPath");
                v69 = objc_retainAutoreleasedReturnValue();
                objc_msgSend(&OBJC_CLASS___NSURL, "URLWithString:", v69);
                v70 = objc_retainAutoreleasedReturnValue();
                objc_msgSend(&OBJC_CLASS___NSData, "dataWithContentsOfURL:", v70);
                v71 = (void *)objc_retainAutoreleasedReturnValue();
                objc_release();
                objc_release();
                objc_release();
                if ( v71 )
                {
                    +[BQSCustomPathManager getVideoCachePath](&OBJC_CLASS___BQSCustomPathManager, "getVideoCachePath");
                    v72 = (void *)objc_retainAutoreleasedReturnValue();
                    v73 = objc_msgSend(&OBJC_CLASS___NSString, "alloc");
                    objc_msgSend(&OBJC_CLASS___NSString, "getDateTimeStrAppendingRandomStrWithLength:", 8LL);
                    v74 = objc_retainAutoreleasedReturnValue();
                    v75 = objc_msgSend(v73, "initWithFormat:", CFSTR("downMovie%@.mp4"), v74);
                    objc_msgSend(v72, "stringByAppendingPathComponent:", v75);
                    v76 = objc_retainAutoreleasedReturnValue();
                    objc_release();
                    objc_release();
                    if ( (unsigned int)objc_msgSend(v71, "writeToFile:atomically:", v76, 1LL) )
                    {
                        objc_msgSend(&OBJC_CLASS___NSURL, "URLWithString:", v76);
                        v77 = objc_retainAutoreleasedReturnValue();
                        objc_msgSend(&OBJC_CLASS___AVAsset, "assetWithURL:", v77);
                        v78 = objc_retainAutoreleasedReturnValue();
                        objc_release();
                        objc_release();
                        if ( v78 )
                        {
                            +[CKYCacheManager defaultManager](&OBJC_CLASS___CKYCacheManager, "defaultManager");
                            v79 = (void *)objc_retainAutoreleasedReturnValue();
                            -[CKYCustomizingModel backInfoModel](v88, "backInfoModel");
                            v80 = (void *)objc_retainAutoreleasedReturnValue();
                            objc_msgSend(v80, "assetPath");
                            v81 = objc_retainAutoreleasedReturnValue();
                            objc_msgSend(v79, "setCache:keyValue:", v81, v76);
                            objc_release();
                            objc_release();
                            objc_release();
                            +[CKYCacheManager defaultManager](&OBJC_CLASS___CKYCacheManager, "defaultManager");
                            v82 = (void *)objc_retainAutoreleasedReturnValue();
                            -[CKYCustomizingModel backInfoModel](v88, "backInfoModel");
                            v83 = (void *)objc_retainAutoreleasedReturnValue();
                            objc_msgSend(v83, "assetPath");
                            v84 = objc_retainAutoreleasedReturnValue();
                            objc_msgSend(v82, "setCache:keyValue:", v76, v84);
                            objc_release();
                            objc_release();
                            objc_release();
                            -[CKYCustomizingModel backInfoModel](v88, "backInfoModel");
                            v85 = (void *)objc_retainAutoreleasedReturnValue();
                            objc_msgSend(v85, "setAssetPath:", v76);
                        }
                        else
                        {
                            objc_msgSend(&OBJC_CLASS___NSFileManager, "defaultManager");
                            v86 = (void *)objc_retainAutoreleasedReturnValue();
                            objc_msgSend(v86, "fileExistsAtPath:", v76);
                        }
                        objc_release();
                    }
                    objc_release();
                    objc_release();
                }
                objc_release();
            }
        }
        else
        {
            -[CKYCustomizingModel backInfoModel](v7, "backInfoModel");
            v64 = (void *)objc_retainAutoreleasedReturnValue();
            -[CKYCustomizingModel backInfoModel](v7, "backInfoModel");
            v65 = (void *)objc_retainAutoreleasedReturnValue();
            objc_msgSend(v65, "assetPath");
            v66 = objc_retainAutoreleasedReturnValue();
            +[BQSCustomPathManager handlePathChange:](&OBJC_CLASS___BQSCustomPathManager, "handlePathChange:", v66);
            v67 = objc_retainAutoreleasedReturnValue();
            objc_msgSend(v64, "setAssetPath:", v67);
            objc_release();
            objc_release();
            objc_release();
        }
        objc_release();
    }
    objc_release();
    objc_release();
    objc_release();
    result = (id)objc_release();
    if ( __stack_chk_guard == v100 )
        result = (id)objc_autoreleaseReturnValue();
    return result;
}
// 101B5AC70: using guessed type __CFString cfstr_Http;
// 101B5CF90: using guessed type __CFString cfstr_Originalid_1;
// 101B5CFB0: using guessed type __CFString cfstr_Originid_1;
// 101B5D0F0: using guessed type __CFString cfstr_Backinfomodel_1;
// 101B5D110: using guessed type __CFString cfstr_Width_1;
// 101B5D130: using guessed type __CFString cfstr_Height_1;
// 101B5D150: using guessed type __CFString cfstr_Itemarray_2;
// 101B5D170: using guessed type __CFString cfstr_DownmovieMp4;
// 101D5D560: using guessed type __objc2_class OBJC_CLASS___CKYCustomizingModel;
// 101D5F450: using guessed type __objc2_class OBJC_CLASS___CKYRotationViewItem;
// 101D60210: using guessed type __objc2_class OBJC_CLASS___BQSMakeToolConfig;
// 101D60260: using guessed type __objc2_class OBJC_CLASS___BQSCusBackImageModel;
// 101D687D0: using guessed type __objc2_class OBJC_CLASS___BQSCustomPathManager;
// 101D69EA0: using guessed type __objc2_class OBJC_CLASS___CKYCacheManager;
// 101D6A300: using guessed type __objc2_class OBJC_CLASS___CKYFileManager;

//----- (0000000100062948) ----------------------------------------------------
id __cdecl -[CKYCustomizingModel getDict](CKYCustomizingModel *self, SEL a2)
{
    CKYCustomizingModel *v2; // x22
    void *v3; // x19
    void *v4; // x0
    __int64 v5; // x0
    double v6; // d0
    __int64 v7; // x0
    double v8; // d0
    __int64 v9; // x0
    void *v10; // x0
    __int64 v11; // x0
    void *v12; // x0
    __int64 v13; // x0
    void *v14; // x0
    __int64 v15; // x0
    void *v16; // x23
    void *v17; // x22
    void *v18; // x25
    __int64 v19; // x28
    unsigned __int64 v20; // x21
    __int64 v21; // x0
    id result; // x0
    __int64 v23; // [xsp+18h] [xbp-118h]
    __int64 v24; // [xsp+20h] [xbp-110h]
    __int64 *v25; // [xsp+28h] [xbp-108h]
    __int64 v26; // [xsp+30h] [xbp-100h]
    __int64 v27; // [xsp+38h] [xbp-F8h]
    __int64 v28; // [xsp+40h] [xbp-F0h]
    __int64 v29; // [xsp+48h] [xbp-E8h]
    __int64 v30; // [xsp+50h] [xbp-E0h]
    char v31; // [xsp+58h] [xbp-D8h]
    __int64 v32; // [xsp+D8h] [xbp-58h]
    
    v2 = self;
    objc_msgSend(&OBJC_CLASS___NSMutableDictionary, "dictionary");
    v3 = (void *)objc_retainAutoreleasedReturnValue();
    -[CKYCustomizingModel backInfoModel](v2, "backInfoModel");
    v4 = (void *)objc_retainAutoreleasedReturnValue();
    objc_msgSend(v4, "getDict");
    v5 = objc_retainAutoreleasedReturnValue();
    objc_msgSend(v3, "setObject:forKeyedSubscript:", v5, CFSTR("backInfoModel"));
    objc_release();
    objc_release();
    -[CKYCustomizingModel width](v2, "width");
    *(float *)&v6 = v6;
    objc_msgSend(&OBJC_CLASS___NSNumber, "numberWithFloat:", v6);
    v7 = objc_retainAutoreleasedReturnValue();
    objc_msgSend(v3, "setObject:forKeyedSubscript:", v7, CFSTR("width"));
    objc_release();
    -[CKYCustomizingModel height](v2, "height");
    *(float *)&v8 = v8;
    objc_msgSend(&OBJC_CLASS___NSNumber, "numberWithFloat:", v8);
    v9 = objc_retainAutoreleasedReturnValue();
    objc_msgSend(v3, "setObject:forKeyedSubscript:", v9, CFSTR("height"));
    objc_release();
    v10 = -[CKYCustomizingModel isFromePreview](v2, "isFromePreview");
    objc_msgSend(&OBJC_CLASS___NSNumber, "numberWithBool:", v10);
    v11 = objc_retainAutoreleasedReturnValue();
    objc_msgSend(v3, "setObject:forKeyedSubscript:", v11, CFSTR("isFromePreview"));
    objc_release();
    v12 = -[CKYCustomizingModel originId](v2, "originId");
    objc_msgSend(&OBJC_CLASS___NSNumber, "numberWithLong:", v12);
    v13 = objc_retainAutoreleasedReturnValue();
    objc_msgSend(v3, "setObject:forKeyedSubscript:", v13, CFSTR("originId"));
    objc_release();
    v14 = -[CKYCustomizingModel originalId](v2, "originalId");
    objc_msgSend(&OBJC_CLASS___NSNumber, "numberWithLong:", v14);
    v15 = objc_retainAutoreleasedReturnValue();
    objc_msgSend(v3, "setObject:forKeyedSubscript:", v15, CFSTR("originalId"));
    objc_release();
    objc_msgSend(&OBJC_CLASS___NSMutableArray, "array");
    v16 = (void *)objc_retainAutoreleasedReturnValue();
    v29 = 0LL;
    v30 = 0LL;
    v27 = 0LL;
    v28 = 0LL;
    v25 = 0LL;
    v26 = 0LL;
    v23 = 0LL;
    v24 = 0LL;
    -[CKYCustomizingModel itemArray](v2, "itemArray");
    v17 = (void *)objc_retainAutoreleasedReturnValue();
    v18 = objc_msgSend(v17, "countByEnumeratingWithState:objects:count:", &v23, &v31, 16LL);
    if ( v18 )
    {
        v19 = *v25;
        do
        {
            v20 = 0LL;
            do
            {
                if ( *v25 != v19 )
                    objc_enumerationMutation();
                objc_msgSend(*(void **)(v24 + 8 * v20), "getDict");
                v21 = objc_retainAutoreleasedReturnValue();
                objc_msgSend(v16, "addObject:", v21);
                objc_release();
                ++v20;
            }
            while ( v20 < (unsigned __int64)v18 );
            v18 = objc_msgSend(v17, "countByEnumeratingWithState:objects:count:", &v23, &v31, 16LL);
        }
        while ( v18 );
    }
    objc_release();
    objc_msgSend(v3, "setObject:forKeyedSubscript:", v16, CFSTR("itemArray"));
    result = (id)objc_release();
    if ( __stack_chk_guard == v32 )
        result = (id)objc_autoreleaseReturnValue();
    return result;
}
// 101B5CF90: using guessed type __CFString cfstr_Originalid_1;
// 101B5CFB0: using guessed type __CFString cfstr_Originid_1;
// 101B5D0F0: using guessed type __CFString cfstr_Backinfomodel_1;
// 101B5D110: using guessed type __CFString cfstr_Width_1;
// 101B5D130: using guessed type __CFString cfstr_Height_1;
// 101B5D150: using guessed type __CFString cfstr_Itemarray_2;
// 101B5D190: using guessed type __CFString cfstr_Isfromepreview_1;

//----- (0000000100062D14) ----------------------------------------------------
id __cdecl -[CKYCustomizingModel copyCustommizingModel](CKYCustomizingModel *self, SEL a2)
{
    CKYCustomizingModel *v2; // x20
    CKYCustomizingModel *v3; // x0
    struct objc_object *v4; // x19
    void *v5; // x0
    void *v6; // x0
    void *v7; // x0
    void *v8; // x0
    void *v9; // x0
    void *v10; // x21
    void *v11; // x20
    void *v12; // x23
    __int64 v13; // x27
    unsigned __int64 v14; // x28
    void *v15; // x0
    id result; // x0
    __int64 v17; // [xsp+18h] [xbp-118h]
    __int64 v18; // [xsp+20h] [xbp-110h]
    __int64 *v19; // [xsp+28h] [xbp-108h]
    __int64 v20; // [xsp+30h] [xbp-100h]
    __int64 v21; // [xsp+38h] [xbp-F8h]
    __int64 v22; // [xsp+40h] [xbp-F0h]
    __int64 v23; // [xsp+48h] [xbp-E8h]
    __int64 v24; // [xsp+50h] [xbp-E0h]
    char v25; // [xsp+58h] [xbp-D8h]
    __int64 v26; // [xsp+D8h] [xbp-58h]
    
    v2 = self;
    v3 = objc_msgSend(&OBJC_CLASS___CKYCustomizingModel, "alloc");
    v4 = objc_msgSend(v3, "init");
    -[CKYCustomizingModel backInfoModel](v2, "backInfoModel");
    v5 = (void *)objc_retainAutoreleasedReturnValue();
    v6 = objc_msgSend(v5, "copyCusBackImageModel");
    objc_msgSend(v4, "setBackInfoModel:", v6);
    objc_release();
    objc_release();
    -[CKYCustomizingModel width](v2, "width");
    objc_msgSend(v4, "setWidth:");
    -[CKYCustomizingModel height](v2, "height");
    objc_msgSend(v4, "setHeight:");
    v7 = -[CKYCustomizingModel isFromePreview](v2, "isFromePreview");
    objc_msgSend(v4, "setIsFromePreview:", v7);
    v8 = -[CKYCustomizingModel originalId](v2, "originalId");
    objc_msgSend(v4, "setOriginalId:", v8);
    v9 = -[CKYCustomizingModel originId](v2, "originId");
    objc_msgSend(v4, "setOriginId:", v9);
    objc_msgSend(&OBJC_CLASS___NSMutableArray, "array");
    v10 = (void *)objc_retainAutoreleasedReturnValue();
    v23 = 0LL;
    v24 = 0LL;
    v21 = 0LL;
    v22 = 0LL;
    v19 = 0LL;
    v20 = 0LL;
    v17 = 0LL;
    v18 = 0LL;
    -[CKYCustomizingModel itemArray](v2, "itemArray");
    v11 = (void *)objc_retainAutoreleasedReturnValue();
    v12 = objc_msgSend(v11, "countByEnumeratingWithState:objects:count:", &v17, &v25, 16LL);
    if ( v12 )
    {
        v13 = *v19;
        do
        {
            v14 = 0LL;
            do
            {
                if ( *v19 != v13 )
                    objc_enumerationMutation();
                v15 = objc_msgSend(*(void **)(v18 + 8 * v14), "copyRotationViewItem");
                objc_msgSend(v10, "addObject:", v15);
                objc_release();
                ++v14;
            }
            while ( v14 < (unsigned __int64)v12 );
            v12 = objc_msgSend(v11, "countByEnumeratingWithState:objects:count:", &v17, &v25, 16LL);
        }
        while ( v12 );
    }
    objc_release();
    objc_msgSend(v4, "setItemArray:", v10);
    result = (id)objc_release();
    if ( __stack_chk_guard == v26 )
        result = v4;
    return result;
}
// 101D5D560: using guessed type __objc2_class OBJC_CLASS___CKYCustomizingModel;

//----- (0000000100062FD0) ----------------------------------------------------
BQSCusBackImageModel *__cdecl -[CKYCustomizingModel backInfoModel](CKYCustomizingModel *self, SEL a2)
{
    return self->_backInfoModel;
}

//----- (0000000100062FE0) ----------------------------------------------------
void __cdecl -[CKYCustomizingModel setBackInfoModel:](CKYCustomizingModel *self, SEL a2, id a3)
{
    objc_storeStrong();
}

//----- (0000000100062FF4) ----------------------------------------------------
NSMutableArray *__cdecl -[CKYCustomizingModel itemArray](CKYCustomizingModel *self, SEL a2)
{
    return self->_itemArray;
}

//----- (0000000100063004) ----------------------------------------------------
void __cdecl -[CKYCustomizingModel setItemArray:](CKYCustomizingModel *self, SEL a2, id a3)
{
    objc_storeStrong();
}

//----- (0000000100063018) ----------------------------------------------------
double __cdecl -[CKYCustomizingModel width](CKYCustomizingModel *self, SEL a2)
{
    return self->_width;
}

//----- (0000000100063028) ----------------------------------------------------
void __cdecl -[CKYCustomizingModel setWidth:](CKYCustomizingModel *self, SEL a2, double a3)
{
    self->_width = a3;
}

//----- (0000000100063038) ----------------------------------------------------
double __cdecl -[CKYCustomizingModel height](CKYCustomizingModel *self, SEL a2)
{
    return self->_height;
}

//----- (0000000100063048) ----------------------------------------------------
void __cdecl -[CKYCustomizingModel setHeight:](CKYCustomizingModel *self, SEL a2, double a3)
{
    self->_height = a3;
}

//----- (0000000100063058) ----------------------------------------------------
signed __int64 __cdecl -[CKYCustomizingModel originId](CKYCustomizingModel *self, SEL a2)
{
    return self->_originId;
}

//----- (0000000100063068) ----------------------------------------------------
void __cdecl -[CKYCustomizingModel setOriginId:](CKYCustomizingModel *self, SEL a2, signed __int64 a3)
{
    self->_originId = a3;
}

//----- (0000000100063078) ----------------------------------------------------
signed __int64 __cdecl -[CKYCustomizingModel originalId](CKYCustomizingModel *self, SEL a2)
{
    return self->_originalId;
}

//----- (0000000100063088) ----------------------------------------------------
void __cdecl -[CKYCustomizingModel setOriginalId:](CKYCustomizingModel *self, SEL a2, signed __int64 a3)
{
    self->_originalId = a3;
}

//----- (0000000100063098) ----------------------------------------------------
bool __cdecl -[CKYCustomizingModel isFromePreview](CKYCustomizingModel *self, SEL a2)
{
    return self->_isFromePreview;
}

//----- (00000001000630A8) ----------------------------------------------------
void __cdecl -[CKYCustomizingModel setIsFromePreview:](CKYCustomizingModel *self, SEL a2, bool a3)
{
    self->_isFromePreview = a3;
}

//----- (00000001000630B8) ----------------------------------------------------
void __cdecl -[CKYCustomizingModel .cxx_destruct](CKYCustomizingModel *self, SEL a2)
{
    objc_storeStrong();
    objc_storeStrong();
}

@end
