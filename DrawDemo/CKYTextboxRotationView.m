//
//  CKYTextboxRotationView.m
//  DrawDemo
//
//  Created by perfay on 2018/5/25.
//  Copyright © 2018年 perfay. All rights reserved.
//

#import "CKYTextboxRotationView.h"

@implementation CKYTextboxRotationView
//----- (00000001000F7FE4) ----------------------------------------------------
// local variable allocation has failed, the output may be wrong!
- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(endSynchor) name:@"makeViewDidAppearNoti" object:nil];
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(endSynchor) name:UIApplicationDidBecomeActiveNotification object:nil];
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(updateDuration:) name:@"makeViewBackViewDuration" object:nil];

    }
    
}
/*
CKYTextboxRotationView *__cdecl -[CKYTextboxRotationView initWithFrame:](CKYTextboxRotationView *self, SEL a2, CGRect a3)
{
    CKYTextboxRotationView *v3; // x19
    void *v4; // x0
    void *v5; // x0
    void *v6; // x0
    CKYTextboxRotationView *v8; // [xsp+0h] [xbp-40h]
    __objc2_class *v9; // [xsp+8h] [xbp-38h]
    
    v8 = self;
    v9 = &OBJC_CLASS___CKYTextboxRotationView;
    v3 = (CKYTextboxRotationView *)objc_msgSendSuper2(
                                                      &v8,
                                                      "initWithFrame:",
                                                      a3.var0.var0,
                                                      a3.var0.var1,
                                                      a3.var1.var0,
                                                      a3.var1.var1,
                                                      self,
                                                      &OBJC_CLASS___CKYTextboxRotationView);
    if ( v3 )
    {
        objc_msgSend(&OBJC_CLASS___NSNotificationCenter, "defaultCenter");
        v4 = (void *)objc_retainAutoreleasedReturnValue();
        objc_msgSend(v4, "addObserver:selector:name:object:", v3, "endSynchor", CFSTR("makeViewDidAppearNoti"), 0LL);
        objc_release();
        objc_msgSend(&OBJC_CLASS___NSNotificationCenter, "defaultCenter");
        v5 = (void *)objc_retainAutoreleasedReturnValue();
        objc_msgSend(
                     v5,
                     "addObserver:selector:name:object:",
                     v3,
                     "endSynchor",
                     UIApplicationDidBecomeActiveNotification,
                     0LL);
        objc_release();
        objc_msgSend(&OBJC_CLASS___NSNotificationCenter, "defaultCenter");
        v6 = (void *)objc_retainAutoreleasedReturnValue();
        objc_msgSend(v6, "addObserver:selector:name:object:", v3, "updateDuration:", CFSTR("makeViewBackViewDuration"), 0LL);
        objc_release();
    }
    return v3;
}
 */
// 1000F7FE4: fragmented variable at 0:d0.8,8:d1.8,16:d2.8,24:d3.8 may be wrong
// 101B5FC30: using guessed type __CFString cfstr_Makeviewbackvi;
// 101B60C70: using guessed type __CFString cfstr_Makeviewdidapp;
// 101D5FB30: using guessed type __objc2_class OBJC_CLASS___CKYTextboxRotationView;

//----- (00000001000F8114) ----------------------------------------------------
-(void)dealloc{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
    [super dealloc];
}
/*
void __cdecl -[CKYTextboxRotationView dealloc](CKYTextboxRotationView *self, SEL a2)
{
    CKYTextboxRotationView *v2; // x19
    void *v3; // x0
    CKYTextboxRotationView *v4; // [xsp+0h] [xbp-20h]
    __objc2_class *v5; // [xsp+8h] [xbp-18h]
    
    v2 = self;
    objc_msgSend(&OBJC_CLASS___NSNotificationCenter, "defaultCenter");
    v3 = (void *)objc_retainAutoreleasedReturnValue();
    objc_msgSend(v3, "removeObserver:", v2);
    objc_release();
    v4 = v2;
    v5 = &OBJC_CLASS___CKYTextboxRotationView;
    objc_msgSendSuper2(&v4, "dealloc", v2, &OBJC_CLASS___CKYTextboxRotationView);
}
// 101D5FB30: using guessed type __objc2_class OBJC_CLASS___CKYTextboxRotationView;
*/
+ (instancetype)rotationViewWithItem:(CKYRotationViewItem *)item{
    if (item.contentViewType == 2) {
        if (item.text.length) {
         
            CKYTextboxRotationView *textView = [[CKYTextboxRotationView alloc]initWithFrame:CGRectMake(0, 0, item.size.width, item.size.height)];
            textView.backgroundColor = [UIColor clearColor];
            textView.center = item.center;
            textView.orginSize = item.size;
            textView.rotationItem = item;
            
        }
    }
}
//----- (00000001000F818C) ----------------------------------------------------
id __cdecl +[CKYTextboxRotationView rotationViewWithItem:](CKYTextboxRotationView_meta *self, SEL a2, id a3)
{
    void *v3; // x20
    void *v4; // x0
    void *v5; // x24
    CKYTextboxRotationView *v6; // x21
    double v7; // d0
    double v8; // d8
    double v9; // d1
    CKYTextboxRotationView *v10; // x24
    __int64 v11; // x0
    double v12; // d0
    double v13; // d8
    double v14; // d0
    double v15; // d8
    double v16; // d1
    double v17; // d9
    double v18; // d0
    double v19; // d0
    void *v20; // x0
    double v21; // d1
    double v22; // d8
    __int64 v23; // x0
    __int64 v24; // x23
    __int64 v25; // x0
    __int64 v26; // x8
    __int64 v27; // x0
    double v28; // d2
    double v29; // d12
    double v30; // d3
    double v31; // d11
    void *v32; // x0
    double v33; // d2
    void *v34; // x0
    double v35; // d3
    double v36; // d13
    double v37; // d0
    double v38; // d1
    void *v39; // x21
    void *v40; // x23
    void *v41; // x0
    __int64 v42; // x0
    __int64 v43; // x27
    void *v44; // x27
    void *v45; // x0
    double v46; // d2
    double v47; // d8
    void *v48; // x0
    void *v49; // x27
    void *v50; // x0
    double v51; // d2
    double v52; // d8
    void *v53; // x0
    double v54; // d0
    void *v55; // x0
    double v56; // d3
    double v57; // d8
    void *v58; // x0
    double v59; // d1
    void *v60; // x0
    void *v61; // x0
    __int128 v62; // q0
    void *v63; // x28
    __int64 v64; // x0
    void *v65; // x24
    __int64 v66; // x21
    signed __int64 v67; // x23
    double v68; // d0
    double v69; // d8
    void *v70; // x24
    void *v71; // x21
    double v72; // d8
    __int64 v73; // x23
    void *v74; // x28
    void *v75; // x0
    signed __int64 v76; // x25
    char *v77; // x23
    unsigned __int64 v78; // x27
    CKYTextboxRotationView *v79; // x26
    signed __int64 v80; // x24
    void *v81; // x0
    char *v82; // x22
    void *v83; // x22
    void *v84; // x0
    char *v85; // x28
    double v86; // d0
    double v87; // d8
    double v88; // d0
    void *v89; // x0
    void *v90; // x28
    double v91; // d0
    double v92; // d8
    double v93; // d0
    double v94; // d9
    double v95; // d0
    char *v96; // x21
    void *v97; // x0
    char *v98; // x24
    __int64 v99; // x23
    void *v100; // x0
    void *v101; // x0
    char *v102; // x21
    double v103; // d0
    double v104; // d8
    double v105; // d0
    double v106; // d9
    double v107; // d0
    signed __int64 v108; // x28
    double v109; // d8
    signed __int64 v110; // x23
    void *v111; // x0
    void *v112; // x21
    double v113; // d0
    bool v114; // nf
    unsigned __int8 v115; // vf
    double v116; // d8
    void *v117; // x0
    void *v118; // x21
    double v119; // d0
    double v120; // d0
    id result; // x0
    const char *v122; // x24
    const char *v123; // x25
    __int64 v124; // x0
    void *v125; // x0
    __int64 v126; // x0
    __int64 v127; // [xsp+10h] [xbp-390h]
    const char *v128; // [xsp+20h] [xbp-380h]
    __int64 v129; // [xsp+28h] [xbp-378h]
    __int64 *v130; // [xsp+30h] [xbp-370h]
    void *v131; // [xsp+38h] [xbp-368h]
    void *v132; // [xsp+40h] [xbp-360h]
    const char *v133; // [xsp+48h] [xbp-358h]
    __int64 v134; // [xsp+50h] [xbp-350h]
    const char *v135; // [xsp+58h] [xbp-348h]
    const char *v136; // [xsp+60h] [xbp-340h]
    const char *v137; // [xsp+68h] [xbp-338h]
    const char *v138; // [xsp+70h] [xbp-330h]
    const char *v139; // [xsp+78h] [xbp-328h]
    const char *v140; // [xsp+80h] [xbp-320h]
    const char *v141; // [xsp+88h] [xbp-318h]
    const char *v142; // [xsp+90h] [xbp-310h]
    const char *v143; // [xsp+98h] [xbp-308h]
    char *v144; // [xsp+A0h] [xbp-300h]
    CKYTextboxRotationView *v145; // [xsp+A8h] [xbp-2F8h]
    const char *v146; // [xsp+B0h] [xbp-2F0h]
    const char *v147; // [xsp+B8h] [xbp-2E8h]
    void *v148; // [xsp+C0h] [xbp-2E0h]
    const char *v149; // [xsp+C8h] [xbp-2D8h]
    const char *v150; // [xsp+D0h] [xbp-2D0h]
    __int64 v151; // [xsp+D8h] [xbp-2C8h]
    __int128 v152; // [xsp+E0h] [xbp-2C0h]
    __int128 v153; // [xsp+F0h] [xbp-2B0h]
    __int128 v154; // [xsp+100h] [xbp-2A0h]
    __int128 v155; // [xsp+110h] [xbp-290h]
    __int128 v156; // [xsp+120h] [xbp-280h]
    __int128 v157; // [xsp+130h] [xbp-270h]
    __int128 v158; // [xsp+140h] [xbp-260h]
    __int128 v159; // [xsp+150h] [xbp-250h]
    __int128 v160; // [xsp+160h] [xbp-240h]
    __int128 v161; // [xsp+170h] [xbp-230h]
    __int128 v162; // [xsp+180h] [xbp-220h]
    __int128 v163; // [xsp+190h] [xbp-210h]
    __int128 v164; // [xsp+1A8h] [xbp-1F8h]
    __int128 v165; // [xsp+1B8h] [xbp-1E8h]
    __int128 v166; // [xsp+1C8h] [xbp-1D8h]
    void **v167; // [xsp+1D8h] [xbp-1C8h]
    __int64 v168; // [xsp+1E0h] [xbp-1C0h]
    __int64 (__fastcall *v169)(__int64, void *); // [xsp+1E8h] [xbp-1B8h]
    void *v170; // [xsp+1F0h] [xbp-1B0h]
    __int64 v171; // [xsp+1F8h] [xbp-1A8h]
    void *v172; // [xsp+200h] [xbp-1A0h]
    __int64 *v173; // [xsp+208h] [xbp-198h]
    __int64 *v174; // [xsp+210h] [xbp-190h]
    __int64 *v175; // [xsp+218h] [xbp-188h]
    __int64 v176; // [xsp+220h] [xbp-180h]
    double v177; // [xsp+228h] [xbp-178h]
    __int64 v178; // [xsp+230h] [xbp-170h]
    __int64 *v179; // [xsp+238h] [xbp-168h]
    __int64 v180; // [xsp+240h] [xbp-160h]
    __int64 v181; // [xsp+248h] [xbp-158h]
    __int64 v182; // [xsp+250h] [xbp-150h]
    __int64 *v183; // [xsp+258h] [xbp-148h]
    __int64 v184; // [xsp+260h] [xbp-140h]
    __int64 v185; // [xsp+268h] [xbp-138h]
    __int128 v186; // [xsp+270h] [xbp-130h]
    __int128 v187; // [xsp+280h] [xbp-120h]
    __int128 v188; // [xsp+290h] [xbp-110h]
    __int64 v189; // [xsp+2A8h] [xbp-F8h]
    __int64 *v190; // [xsp+2B0h] [xbp-F0h]
    __int64 v191; // [xsp+2B8h] [xbp-E8h]
    __int64 (__fastcall *v192)(__int64, __int64); // [xsp+2C0h] [xbp-E0h]
    __int64 (__fastcall *v193)(__int64); // [xsp+2C8h] [xbp-D8h]
    __int64 v194; // [xsp+2D0h] [xbp-D0h]
    const char *v195; // [xsp+2D8h] [xbp-C8h]
    __int64 v196; // [xsp+2E0h] [xbp-C0h]
    __int64 v197; // [xsp+2E8h] [xbp-B8h]
    const char *v198; // [xsp+2F0h] [xbp-B0h]
    __int64 v199; // [xsp+2F8h] [xbp-A8h]
    __int64 v200; // [xsp+300h] [xbp-A0h]
    
    v3 = (void *)objc_retain();
    if ( objc_msgSend(v3, "contentViewType") == (void *)2 )
    {
        objc_msgSend(v3, "text");
        v4 = (void *)objc_retainAutoreleasedReturnValue();
        v5 = objc_msgSend(v4, "length");
        objc_release();
        if ( v5 )
        {
            v143 = "length";
            v146 = "alloc";
            v6 = objc_msgSend(&OBJC_CLASS___CKYTextboxRotationView, "alloc");
            objc_msgSend(v3, "size");
            v8 = v7;
            objc_msgSend(v3, "size");
            v144 = "initWithFrame:";
            v10 = -[CKYTextboxRotationView initWithFrame:](v6, "initWithFrame:", 0.0, 0.0, v8, v9);
            objc_msgSend(&OBJC_CLASS___UIColor, "clearColor");
            v11 = objc_retainAutoreleasedReturnValue();
            objc_msgSend(v10, "setBackgroundColor:", v11);
            objc_release();
            objc_msgSend(v3, "center");
            objc_msgSend(v10, "setCenter:");
            objc_msgSend(v3, "size");
            -[CKYRotationView setOrginSize:](v10, "setOrginSize:");
            -[CKYRotationView setRotationItem:](v10, "setRotationItem:", v3);
            objc_msgSend(v3, "size");
            v13 = v12;
            v142 = "xScale";
            objc_msgSend(v3, "xScale");
            v15 = fabs(v13 * v14);
            objc_msgSend(v3, "size");
            v17 = v16;
            v141 = "yScale";
            objc_msgSend(v3, "yScale");
            v19 = hypot(v15, fabs(v17 * v18));
            -[CKYRotationView setXiebian:](v10, "setXiebian:", v19 * 0.5);
            v20 = objc_msgSend(v3, "contentViewType");
            v145 = v10;
            -[CKYRotationView setContentViewType:](v10, "setContentViewType:", v20);
            objc_msgSend(v3, "text");
            v148 = (void *)objc_retainAutoreleasedReturnValue();
            objc_msgSend(v3, "size");
            v22 = v21;
            v189 = 0LL;
            v190 = &v189;
            v191 = 206997291008LL;
            v192 = sub_1000F934C;
            v193 = sub_1000F935C;
            objc_msgSend(v3, "textFontPath");
            v23 = objc_retainAutoreleasedReturnValue();
            +[BQSFontManager fontWithPath:fontSize:](&OBJC_CLASS___BQSFontManager, "fontWithPath:fontSize:", v23, v22);
            v194 = objc_retainAutoreleasedReturnValue();
            objc_release();
            v24 = NSFontAttributeName;
            v149 = (const char *)NSKernAttributeName;
            v147 = "dictionaryWithObjects:forKeys:count:";
            v150 = "textStyleModel";
            do
            {
                while ( 1 )
                {
                    v22 = v22 + -1.0;
                    objc_msgSend((void *)v190[5], "fontWithSize:", v22);
                    v25 = objc_retainAutoreleasedReturnValue();
                    v26 = v190[5];
                    v190[5] = v25;
                    objc_release();
                    v197 = v24;
                    v199 = v190[5];
                    v198 = v149;
                    objc_msgSend(&OBJC_CLASS___NSNumber, "numberWithDouble:", 2.0);
                    v200 = objc_retainAutoreleasedReturnValue();
                    objc_msgSend(&OBJC_CLASS___NSDictionary, v147, &v199, &v197, 2LL);
                    v27 = objc_retainAutoreleasedReturnValue();
                    objc_msgSend(
                                 v148,
                                 "boundingRectWithSize:options:attributes:context:",
                                 3LL,
                                 v27,
                                 0LL,
                                 1.79769313e308,
                                 1.79769313e308);
                    v29 = v28;
                    v31 = v30;
                    objc_release();
                    objc_release();
                    objc_msgSend(v3, v150);
                    v32 = (void *)objc_retainAutoreleasedReturnValue();
                    objc_msgSend(v32, "textRect");
                    if ( v29 < v33 )
                        break;
                    objc_release();
                    if ( v22 <= 0.0 )
                        goto LABEL_9;
                }
                objc_msgSend(v3, v150);
                v34 = (void *)objc_retainAutoreleasedReturnValue();
                objc_msgSend(v34, "textRect");
                v36 = v35;
                objc_release();
                objc_release();
            }
            while ( v22 > 0.0 && v31 >= v36 );
        LABEL_9:
            objc_msgSend(v3, "size");
            if ( v37 - v29 < 0.75 || (objc_msgSend(v3, "size"), v38 - v31 < 0.75) )
                v22 = v22 + -1.0;
            objc_msgSend(v3, "setTextFontSize:", v22);
            v39 = objc_msgSend(&OBJC_CLASS___UIImageView, v146);
            v140 = "bounds";
            objc_msgSend(v145, "bounds");
            v40 = objc_msgSend(v39, v144);
            objc_msgSend(v3, v150);
            v41 = (void *)objc_retainAutoreleasedReturnValue();
            objc_msgSend(v41, "textboxImageName");
            v42 = objc_retainAutoreleasedReturnValue();
            objc_msgSend(&OBJC_CLASS___UIImage, "imageNamed:", v42);
            v43 = objc_retainAutoreleasedReturnValue();
            objc_release();
            objc_release();
            v134 = v43;
            objc_msgSend(v40, "setImage:", v43);
            objc_msgSend(v40, "setContentMode:", 0LL);
            v133 = "addSubview:";
            objc_msgSend(v145, "addSubview:", v40);
            v44 = objc_msgSend(&OBJC_CLASS___UIView, v146);
            objc_msgSend(v3, v150);
            v45 = (void *)objc_retainAutoreleasedReturnValue();
            objc_msgSend(v45, "textRect");
            v47 = v46;
            objc_msgSend(v3, v150);
            v48 = (void *)objc_retainAutoreleasedReturnValue();
            objc_msgSend(v48, "textRect");
            v49 = objc_msgSend(v44, v144, 0.0, 0.0, v47);
            objc_release();
            objc_release();
            objc_msgSend(v49, "setClipsToBounds:", 0LL);
            objc_msgSend(v3, v150);
            v50 = (void *)objc_retainAutoreleasedReturnValue();
            objc_msgSend(v50, "textRect");
            v52 = v51;
            objc_msgSend(v3, v150);
            v53 = (void *)objc_retainAutoreleasedReturnValue();
            objc_msgSend(v53, "textRect");
            v135 = "setCenterX:";
            objc_msgSend(v49, "setCenterX:", v52 * 0.5 + v54);
            objc_release();
            objc_release();
            objc_msgSend(v3, v150);
            v55 = (void *)objc_retainAutoreleasedReturnValue();
            objc_msgSend(v55, "textRect");
            v57 = v56;
            objc_msgSend(v3, v150);
            v58 = (void *)objc_retainAutoreleasedReturnValue();
            objc_msgSend(v58, "textRect");
            objc_msgSend(v49, "setCenterY:", v57 * 0.5 + v59);
            objc_release();
            objc_release();
            v60 = objc_msgSend(&OBJC_CLASS___UILabel, v146);
            v61 = objc_msgSend(v60, "init");
            objc_msgSend(v61, "setFont:", v190[5]);
            objc_msgSend(v49, "size");
            UIGraphicsBeginImageContextWithOptions();
            UIGraphicsGetCurrentContext();
            CGContextSaveGState();
            v62 = CGAffineTransformIdentity[2];
            v187 = CGAffineTransformIdentity[1];
            v188 = v62;
            v186 = CGAffineTransformIdentity[0];
            CGContextSetTextMatrix();
            CGContextScaleCTM();
            v132 = v40;
            CGPathCreateMutable();
            objc_msgSend(v49, "bounds");
            CGPathAddRect();
            v63 = objc_msgSend(&OBJC_CLASS___NSMutableAttributedString, v146);
            v195 = v149;
            objc_msgSend(&OBJC_CLASS___NSNumber, "numberWithDouble:", 2.0);
            v196 = objc_retainAutoreleasedReturnValue();
            objc_msgSend(&OBJC_CLASS___NSDictionary, v147, &v196, &v195, 1LL);
            v64 = objc_retainAutoreleasedReturnValue();
            v65 = objc_msgSend(v63, "initWithString:attributes:", v148, v64);
            objc_release();
            objc_release();
            v131 = v65;
            CTFramesetterCreateWithAttributedString();
            objc_msgSend(v148, v143);
            CTFramesetterCreateFrame();
            CTFrameDraw();
            CTFrameGetLines();
            CFArrayGetCount();
            v130 = &v127;
            CTFrameGetLineOrigins();
            CFArrayGetCount();
            NSLog();
            v66 = CFArrayGetCount();
            CGContextRestoreGState();
            CFRelease();
            CFRelease();
            CGPathRelease();
            UIGraphicsEndImageContext();
            v182 = 0LL;
            v183 = &v182;
            v184 = 137975824384LL;
            v185 = 0LL;
            if ( v66 <= 1 )
                v67 = 1LL;
            else
                v67 = v66;
            objc_msgSend(v49, "height");
            v69 = v68;
            v178 = 0LL;
            v179 = &v178;
            v180 = 137975824384LL;
            v181 = 0LL;
            v70 = v148;
            v71 = objc_msgSend(v148, v143);
            v72 = v69 / (double)v67;
            v167 = _NSConcreteStackBlock;
            v168 = 3254779904LL;
            v169 = sub_1000F9364;
            v170 = &unk_101A78DC0;
            v73 = objc_retain();
            v171 = v73;
            v173 = &v182;
            v174 = &v178;
            v176 = 0x4000000000000000LL;
            v177 = v72;
            v175 = &v189;
            v74 = (void *)objc_retain();
            v172 = v74;
            objc_msgSend(v70, "enumerateSubstringsInRange:options:usingBlock:", 0LL, v71, 2LL, &v167);
            v129 = v73;
            v149 = "subviews";
            objc_msgSend(v74, "subviews");
            v75 = (void *)objc_retainAutoreleasedReturnValue();
            objc_msgSend(v75, "firstObject");
            v144 = (char *)objc_retainAutoreleasedReturnValue();
            objc_release();
            v76 = 0LL;
            v77 = 0LL;
            v78 = 0LL;
            v139 = "count";
            v147 = "objectAtIndexedSubscript:";
            v143 = "y";
            v146 = "left";
            v137 = "width";
            v136 = "right";
            v138 = "lastObject";
            v79 = v145;
            while ( 1 )
            {
                v80 = v78;
                objc_msgSend(v74, v149);
                v81 = (void *)objc_retainAutoreleasedReturnValue();
                v82 = (char *)objc_msgSend(v81, v139) - 1;
                objc_release();
                if ( v78 >= (unsigned __int64)v82 )
                    break;
                v83 = v74;
                objc_msgSend(v74, v149);
                v84 = (void *)objc_retainAutoreleasedReturnValue();
                ++v78;
                objc_msgSend(v84, v147, v80 + 1);
                v85 = (char *)objc_retainAutoreleasedReturnValue();
                objc_release();
                v140 = v85;
                objc_msgSend(v85, v143);
                v87 = v86;
                objc_msgSend(v144, v143);
                if ( v87 > v88 )
                {
                    objc_msgSend(v83, v149);
                    v89 = (void *)objc_retainAutoreleasedReturnValue();
                    objc_msgSend(v89, v147, v80);
                    v90 = (void *)objc_retainAutoreleasedReturnValue();
                    objc_release();
                    objc_release();
                    objc_msgSend(v144, v146);
                    v92 = v91;
                    objc_msgSend(v83, v137);
                    v94 = v93;
                    objc_msgSend(v90, v136);
                    if ( v76 <= v80 )
                    {
                        v116 = (v92 + v94 - v95) * 0.5;
                        do
                        {
                            objc_msgSend(v83, v149);
                            v117 = (void *)objc_retainAutoreleasedReturnValue();
                            objc_msgSend(v117, v147, v76);
                            v118 = (void *)objc_retainAutoreleasedReturnValue();
                            objc_release();
                            objc_msgSend(v118, v146);
                            objc_msgSend(v118, "setLeft:", v116 + v119);
                            objc_release();
                            v115 = __OFSUB__(v76, v80);
                            v114 = v76++ - v80 < 0;
                        }
                        while ( v114 ^ v115 );
                    }
                    v96 = (char *)objc_retain();
                    objc_release();
                    v144 = v96;
                    v76 = v80 + 1;
                    v77 = (char *)v90;
                    v79 = v145;
                }
                objc_msgSend(v83, v149);
                v97 = (void *)objc_retainAutoreleasedReturnValue();
                objc_msgSend(v97, v138);
                v98 = v77;
                v99 = objc_retainAutoreleasedReturnValue();
                objc_release();
                objc_release();
                if ( v140 == (const char *)v99 )
                {
                    objc_msgSend(v83, v149);
                    v100 = (void *)objc_retainAutoreleasedReturnValue();
                    objc_msgSend(v100, v138);
                    v98 = (char *)objc_retainAutoreleasedReturnValue();
                    objc_release();
                    objc_release();
                    objc_msgSend(v83, v149);
                    v101 = (void *)objc_retainAutoreleasedReturnValue();
                    v102 = (char *)objc_msgSend(v101, v139);
                    objc_release();
                    if ( v144 == v98 )
                    {
                        objc_msgSend(v83, v137);
                        v98 = v144;
                        objc_msgSend(v144, v135, v120 * 0.5);
                    }
                    else
                    {
                        objc_msgSend(v144, v146);
                        v104 = v103;
                        objc_msgSend(v83, v137);
                        v106 = v105;
                        objc_msgSend(v98, v136);
                        v108 = (signed __int64)(v102 - 1);
                        if ( v76 <= (signed __int64)(v102 - 1) )
                        {
                            v109 = (v104 + v106 - v107) * 0.5;
                            v128 = "setLeft:";
                            v110 = v76;
                            do
                            {
                                objc_msgSend(v83, v149);
                                v111 = (void *)objc_retainAutoreleasedReturnValue();
                                objc_msgSend(v111, v147, v110);
                                v112 = (void *)objc_retainAutoreleasedReturnValue();
                                objc_release();
                                objc_msgSend(v112, v146);
                                objc_msgSend(v112, v128, v109 + v113);
                                objc_release();
                                v115 = __OFSUB__(v110, v108);
                                v114 = v110++ - v108 < 0;
                                v79 = v145;
                            }
                            while ( v114 ^ v115 );
                        }
                    }
                }
                objc_release();
                v77 = v98;
                v74 = v83;
            }
            -[CKYRotationView setContentView:](v79, "setContentView:", v74);
            v123 = v141;
            v122 = v142;
            -[CKYRotationView contentView](v79, "contentView");
            v124 = objc_retainAutoreleasedReturnValue();
            objc_msgSend(v79, v133, v124);
            objc_release();
            objc_msgSend(v3, v150);
            v125 = (void *)objc_retainAutoreleasedReturnValue();
            objc_msgSend(v125, "styleModel");
            v126 = objc_retainAutoreleasedReturnValue();
            -[CKYTextboxRotationView updataStyle:](v79, "updataStyle:", v126);
            objc_release();
            objc_release();
            objc_msgSend(v3, "angle");
            -[CKYRotationView setAngle:](v79, "setAngle:");
            objc_msgSend(v3, v122);
            -[CKYRotationView setXScale:](v79, "setXScale:");
            objc_msgSend(v3, v123);
            -[CKYRotationView setYScale:](v79, "setYScale:");
            -[CKYRotationView updataContentView](v79, "updataContentView");
            objc_msgSend(v3, "angle");
            CGAffineTransformMakeRotation();
            v162 = v165;
            v163 = v166;
            v161 = v164;
            objc_msgSend(v79, "setTransform:", &v161);
            if ( v79 )
            {
                objc_msgSend(v79, "transform");
            }
            else
            {
                v156 = 0u;
                v157 = 0u;
                v155 = 0u;
            }
            objc_msgSend(v3, v122);
            objc_msgSend(v3, v123);
            CGAffineTransformScale();
            v154 = v160;
            v153 = v159;
            v152 = v158;
            objc_msgSend(v79, "setTransform:", &v152);
            objc_retain();
            objc_release();
            objc_release();
            objc_release();
            objc_release();
            objc_release();
            _Block_object_dispose(&v178, 8);
            _Block_object_dispose(&v182, 8);
            objc_release();
            objc_release();
            objc_release();
            objc_release();
            objc_release();
            _Block_object_dispose(&v189, 8);
            objc_release();
            objc_release();
        }
    }
    result = (id)objc_release();
    if ( __stack_chk_guard == v151 )
        result = (id)objc_autoreleaseReturnValue();
    return result;
}
// A8: found interdependent unknown calls
// 101D5C890: using guessed type __objc2_class OBJC_CLASS___BQSFontManager;
// 101D5FB30: using guessed type __objc2_class OBJC_CLASS___CKYTextboxRotationView;

//----- (00000001000F934C) ----------------------------------------------------
__int64 __fastcall sub_1000F934C(__int64 result, __int64 a2)
{
    *(_QWORD *)(result + 40) = *(_QWORD *)(a2 + 40);
    *(_QWORD *)(a2 + 40) = 0LL;
    return result;
}

//----- (00000001000F935C) ----------------------------------------------------
__int64 __fastcall sub_1000F935C(__int64 a1)
{
    __int64 v1; // x0
    
    v1 = *(_QWORD *)(a1 + 40);
    return objc_release();
}

//----- (00000001000F9364) ----------------------------------------------------
__int64 __fastcall sub_1000F9364(__int64 a1, void *a2)
{
    void *v2; // x20
    __int64 v3; // x19
    void *v4; // x22
    __int64 v5; // x21
    BQSlabelView *v6; // x22
    double v7; // d8
    double v8; // d9
    double v9; // d0
    BQSlabelView *v10; // x22
    __int64 v11; // d0
    
    v2 = a2;
    v3 = a1;
    v4 = *(void **)(a1 + 32);
    v5 = objc_retain();
    objc_msgSend(v4, "setText:", v5);
    objc_msgSend(*(void **)(v3 + 32), "sizeToFit");
    v6 = objc_msgSend(&OBJC_CLASS___BQSlabelView, "alloc");
    v7 = *(double *)(*(_QWORD *)(*(_QWORD *)(v3 + 48) + 8LL) + 24LL);
    v8 = *(double *)(*(_QWORD *)(*(_QWORD *)(v3 + 56) + 8LL) + 24LL);
    objc_msgSend(*(void **)(v3 + 32), "width");
    v10 = -[BQSlabelView initWithFrame:](v6, "initWithFrame:", v7, v8, v9 + *(double *)(v3 + 72), *(double *)(v3 + 80));
    objc_msgSend(v10, "setClipsToBounds:", 0LL);
    -[BQSlabelView setText:](v10, "setText:", v5);
    -[BQSlabelView setFont:](v10, "setFont:", *(_QWORD *)(*(_QWORD *)(*(_QWORD *)(v3 + 64) + 8LL) + 40LL));
    objc_msgSend(*(void **)(v3 + 40), "addSubview:", v10);
    objc_msgSend(v10, "right");
    *(_QWORD *)(*(_QWORD *)(*(_QWORD *)(v3 + 48) + 8LL) + 24LL) = v11;
    LODWORD(v2) = (unsigned __int64)objc_msgSend(v2, "isEqualToString:", CFSTR("\n"));
    objc_release();
    if ( (_DWORD)v2 )
    {
        *(double *)(*(_QWORD *)(*(_QWORD *)(v3 + 56) + 8LL) + 24LL) = *(double *)(v3 + 80)
        + *(double *)(*(_QWORD *)(*(_QWORD *)(v3 + 56) + 8LL)
                      + 24LL);
        *(_QWORD *)(*(_QWORD *)(*(_QWORD *)(v3 + 48) + 8LL) + 24LL) = 0LL;
    }
    return objc_release();
}
// 101B5B710: using guessed type __CFString stru_101B5B710;
// 101D5F7C0: using guessed type __objc2_class OBJC_CLASS___BQSlabelView;

//----- (00000001000F94F0) ----------------------------------------------------
__int64 __fastcall sub_1000F94F0(__int64 a1, __int64 a2)
{
    __int64 v2; // x19
    __int64 v3; // x20
    __int64 v4; // x0
    __int64 v5; // x0
    
    v2 = a2;
    v3 = a1;
    v4 = *(_QWORD *)(a2 + 32);
    objc_retain();
    _Block_object_assign((void *)(v3 + 48), *(const void **)(v2 + 48), 8);
    _Block_object_assign((void *)(v3 + 56), *(const void **)(v2 + 56), 8);
    _Block_object_assign((void *)(v3 + 64), *(const void **)(v2 + 64), 8);
    v5 = *(_QWORD *)(v2 + 40);
    return objc_retain();
}

//----- (00000001000F954C) ----------------------------------------------------
__int64 __fastcall sub_1000F954C(__int64 a1)
{
    __int64 v1; // x19
    __int64 v2; // x0
    __int64 v3; // x0
    
    v1 = a1;
    v2 = *(_QWORD *)(a1 + 32);
    objc_release();
    _Block_object_dispose(*(const void **)(v1 + 48), 8);
    _Block_object_dispose(*(const void **)(v1 + 56), 8);
    _Block_object_dispose(*(const void **)(v1 + 64), 8);
    v3 = *(_QWORD *)(v1 + 40);
    return objc_release();
}

//----- (00000001000F9598) ----------------------------------------------------
void __cdecl -[CKYTextboxRotationView updataStyle:](CKYTextboxRotationView *self, SEL a2, id a3)
{
    CKYTextboxRotationView *v3; // x21
    __int64 v4; // x19
    void *v5; // x0
    void *v6; // x0
    void *v7; // x0
    void *v8; // x21
    void *v9; // x23
    __int64 v10; // x25
    unsigned __int64 v11; // x27
    __int128 v12; // [xsp+8h] [xbp-118h]
    __int128 v13; // [xsp+18h] [xbp-108h]
    __int128 v14; // [xsp+28h] [xbp-F8h]
    __int128 v15; // [xsp+38h] [xbp-E8h]
    char v16; // [xsp+48h] [xbp-D8h]
    
    v3 = self;
    v4 = objc_retain();
    objc_autoreleasePoolPush();
    -[CKYRotationView rotationItem](v3, "rotationItem");
    v5 = (void *)objc_retainAutoreleasedReturnValue();
    objc_msgSend(v5, "textStyleModel");
    v6 = (void *)objc_retainAutoreleasedReturnValue();
    objc_msgSend(v6, "setStyleModel:", v4);
    objc_release();
    objc_release();
    v15 = 0u;
    v14 = 0u;
    v13 = 0u;
    v12 = 0u;
    -[CKYRotationView contentView](v3, "contentView");
    v7 = (void *)objc_retainAutoreleasedReturnValue();
    objc_msgSend(v7, "subviews");
    v8 = (void *)objc_retainAutoreleasedReturnValue();
    objc_release();
    v9 = objc_msgSend(v8, "countByEnumeratingWithState:objects:count:", &v12, &v16, 16LL);
    if ( v9 )
    {
        v10 = *(_QWORD *)v13;
        do
        {
            v11 = 0LL;
            do
            {
                if ( *(_QWORD *)v13 != v10 )
                    objc_enumerationMutation();
                objc_msgSend(*(void **)(*((_QWORD *)&v12 + 1) + 8 * v11++), "setModel:", v4);
            }
            while ( v11 < (unsigned __int64)v9 );
            v9 = objc_msgSend(v8, "countByEnumeratingWithState:objects:count:", &v12, &v16, 16LL);
        }
        while ( v9 );
    }
    objc_release();
    objc_autoreleasePoolPop();
    objc_release();
}

//----- (00000001000F976C) ----------------------------------------------------
void __cdecl -[CKYTextboxRotationView updataColor:](CKYTextboxRotationView *self, SEL a2, id a3)
{
    CKYTextboxRotationView *v3; // x20
    __int64 v4; // x19
    void *v5; // x0
    void *v6; // x0
    void *v7; // x0
    void *v8; // x0
    void *v9; // x0
    void *v10; // x0
    void *v11; // x0
    void *v12; // x0
    void *v13; // x0
    void *v14; // x0
    void *v15; // x19
    void *v16; // x27
    __int64 v17; // x22
    unsigned __int64 v18; // x23
    void *v19; // x21
    void *v20; // x0
    void *v21; // x0
    __int64 v22; // x0
    __int128 v23; // [xsp+38h] [xbp-118h]
    __int128 v24; // [xsp+48h] [xbp-108h]
    __int128 v25; // [xsp+58h] [xbp-F8h]
    __int128 v26; // [xsp+68h] [xbp-E8h]
    char v27; // [xsp+78h] [xbp-D8h]
    
    v3 = self;
    v4 = objc_retain();
    objc_autoreleasePoolPush();
    -[CKYRotationView rotationItem](v3, "rotationItem");
    v5 = (void *)objc_retainAutoreleasedReturnValue();
    objc_msgSend(v5, "textStyleModel");
    v6 = (void *)objc_retainAutoreleasedReturnValue();
    objc_msgSend(v6, "styleModel");
    v7 = (void *)objc_retainAutoreleasedReturnValue();
    objc_msgSend(v7, "setTextColor:", v4);
    objc_release();
    objc_release();
    objc_release();
    -[CKYRotationView rotationItem](v3, "rotationItem");
    v8 = (void *)objc_retainAutoreleasedReturnValue();
    objc_msgSend(v8, "textStyleModel");
    v9 = (void *)objc_retainAutoreleasedReturnValue();
    objc_msgSend(v9, "styleModel");
    v10 = (void *)objc_retainAutoreleasedReturnValue();
    objc_msgSend(v10, "setStartColor:", 0LL);
    objc_release();
    objc_release();
    objc_release();
    -[CKYRotationView rotationItem](v3, "rotationItem");
    v11 = (void *)objc_retainAutoreleasedReturnValue();
    objc_msgSend(v11, "textStyleModel");
    v12 = (void *)objc_retainAutoreleasedReturnValue();
    objc_msgSend(v12, "styleModel");
    v13 = (void *)objc_retainAutoreleasedReturnValue();
    objc_msgSend(v13, "setEndColor:", 0LL);
    objc_release();
    objc_release();
    objc_release();
    v26 = 0u;
    v25 = 0u;
    v24 = 0u;
    v23 = 0u;
    -[CKYRotationView contentView](v3, "contentView");
    v14 = (void *)objc_retainAutoreleasedReturnValue();
    objc_msgSend(v14, "subviews");
    v15 = (void *)objc_retainAutoreleasedReturnValue();
    objc_release();
    v16 = objc_msgSend(v15, "countByEnumeratingWithState:objects:count:", &v23, &v27, 16LL);
    if ( v16 )
    {
        v17 = *(_QWORD *)v24;
        do
        {
            v18 = 0LL;
            do
            {
                if ( *(_QWORD *)v24 != v17 )
                    objc_enumerationMutation();
                v19 = *(void **)(*((_QWORD *)&v23 + 1) + 8 * v18);
                -[CKYRotationView rotationItem](v3, "rotationItem");
                v20 = (void *)objc_retainAutoreleasedReturnValue();
                objc_msgSend(v20, "textStyleModel");
                v21 = (void *)objc_retainAutoreleasedReturnValue();
                objc_msgSend(v21, "styleModel");
                v22 = objc_retainAutoreleasedReturnValue();
                objc_msgSend(v19, "setModel:", v22);
                objc_release();
                objc_release();
                objc_release();
                ++v18;
            }
            while ( v18 < (unsigned __int64)v16 );
            v16 = objc_msgSend(v15, "countByEnumeratingWithState:objects:count:", &v23, &v27, 16LL);
        }
        while ( v16 );
    }
    objc_release();
    objc_autoreleasePoolPop();
    objc_release();
}

//----- (00000001000F9AA8) ----------------------------------------------------
void __cdecl -[CKYTextboxRotationView beganSynchro](CKYTextboxRotationView *self, SEL a2)
{
    CKYTextboxRotationView *v2; // x19
    void *v3; // x20
    __int64 v4; // x0
    
    v2 = self;
    +[BQSTextAniManager defaultManager](&OBJC_CLASS___BQSTextAniManager, "defaultManager");
    v3 = (void *)objc_retainAutoreleasedReturnValue();
    -[CKYRotationView contentView](v2, "contentView");
    v4 = objc_retainAutoreleasedReturnValue();
    objc_msgSend(v3, "setTextAniWithView:index:duration:", v4, 0LL, 0.0);
    objc_release();
    objc_release();
}
// 101D5EE38: using guessed type __objc2_class OBJC_CLASS___BQSTextAniManager;

//----- (00000001000F9B28) ----------------------------------------------------
void __cdecl -[CKYTextboxRotationView endSynchor](CKYTextboxRotationView *self, SEL a2)
{
    CKYTextboxRotationView *v2; // x19
    
    v2 = self;
    if ( !((unsigned __int64)-[CKYTextboxRotationView isBegin](self, "isBegin") & 1) )
    {
        -[CKYTextboxRotationView setIsBegin:](v2, "setIsBegin:", 1LL);
        -[CKYTextboxRotationView beganSynchro](v2, "beganSynchro");
        dispatch_time(0LL, 500000000LL);
        dispatch_after();
    }
}

//----- (00000001000F9BD0) ----------------------------------------------------
__int64 __fastcall sub_1000F9BD0(__int64 a1)
{
    __int64 v1; // x20
    void *v2; // x19
    __int64 v3; // x21
    void *v4; // x0
    void *v5; // x0
    void *v6; // x24
    
    v1 = a1;
    objc_msgSend(*(void **)(a1 + 32), "setIsBegin:", 0LL);
    +[BQSTextAniManager defaultManager](&OBJC_CLASS___BQSTextAniManager, "defaultManager");
    v2 = (void *)objc_retainAutoreleasedReturnValue();
    objc_msgSend(*(void **)(v1 + 32), "contentView");
    v3 = objc_retainAutoreleasedReturnValue();
    objc_msgSend(*(void **)(v1 + 32), "rotationItem");
    v4 = (void *)objc_retainAutoreleasedReturnValue();
    objc_msgSend(v4, "textStyleModel");
    v5 = (void *)objc_retainAutoreleasedReturnValue();
    v6 = objc_msgSend(v5, "animationType");
    objc_msgSend(*(void **)(v1 + 32), "textAniDuration");
    objc_msgSend(v2, "setTextAniWithView:index:duration:", v3, v6);
    objc_release();
    objc_release();
    objc_release();
    return objc_release();
}
// 101D5EE38: using guessed type __objc2_class OBJC_CLASS___BQSTextAniManager;

//----- (00000001000F9CD4) ----------------------------------------------------
__int64 __fastcall sub_1000F9CD4(__int64 a1, __int64 a2)
{
    __int64 v2; // x0
    
    v2 = *(_QWORD *)(a2 + 32);
    return objc_retain();
}

//----- (00000001000F9CDC) ----------------------------------------------------
__int64 __fastcall sub_1000F9CDC(__int64 a1)
{
    __int64 v1; // x0
    
    v1 = *(_QWORD *)(a1 + 32);
    return objc_release();
}

//----- (00000001000F9CE4) ----------------------------------------------------
void __cdecl -[CKYTextboxRotationView setEleTime:allTime:](id a1, SEL a2, struct {signed __int64 var0;int var1;unsigned int var2;signed __int64 var3;} *a3, struct {signed __int64 var0;int var1;unsigned int var2;signed __int64 var3;} *a4)
{
    struct {signed __int64 var0;int var1;unsigned int var2;signed __int64 var3;} *v4; // x22
    struct {signed __int64 var0;int var1;unsigned int var2;signed __int64 var3;} *v5; // x20
    id v6; // x23
    void *v7; // x19
    __int64 v8; // x21
    void *v9; // x0
    void *v10; // x0
    void *v11; // x25
    __int128 v12; // [xsp+0h] [xbp-80h]
    __int64 v13; // [xsp+10h] [xbp-70h]
    __int128 v14; // [xsp+20h] [xbp-60h]
    __int64 v15; // [xsp+30h] [xbp-50h]
    
    v4 = a4;
    v5 = a3;
    v6 = a1;
    +[BQSTextAniManager defaultManager](&OBJC_CLASS___BQSTextAniManager, "defaultManager");
    v7 = (void *)objc_retainAutoreleasedReturnValue();
    objc_msgSend(v6, "contentView");
    v8 = objc_retainAutoreleasedReturnValue();
    objc_msgSend(v6, "rotationItem");
    v9 = (void *)objc_retainAutoreleasedReturnValue();
    objc_msgSend(v9, "textStyleModel");
    v10 = (void *)objc_retainAutoreleasedReturnValue();
    v11 = objc_msgSend(v10, "animationType");
    v14 = *(_OWORD *)&v4->var0;
    v15 = v4->var3;
    CMTimeGetSeconds();
    v12 = *(_OWORD *)&v5->var0;
    v13 = v5->var3;
    objc_msgSend(v7, "setTextAniWithView:index:eleTime:duration:", v8, v11, &v12, v12, v13);
    objc_release();
    objc_release();
    objc_release();
    objc_release();
}
// 101D5EE38: using guessed type __objc2_class OBJC_CLASS___BQSTextAniManager;

//----- (00000001000F9E0C) ----------------------------------------------------
void __cdecl -[CKYTextboxRotationView setTextAniDuration:](CKYTextboxRotationView *self, SEL a2, double a3)
{
    self->_textAniDuration = a3;
    -[CKYTextboxRotationView endSynchor](self, "endSynchor");
}

//----- (00000001000F9E24) ----------------------------------------------------
void __cdecl -[CKYTextboxRotationView updateDuration:](CKYTextboxRotationView *self, SEL a2, id a3)
{
    CKYTextboxRotationView *v3; // x19
    void *v4; // x0
    float v5; // s0
    double v6; // d8
    
    v3 = self;
    objc_msgSend(a3, "object");
    v4 = (void *)objc_retainAutoreleasedReturnValue();
    objc_msgSend(v4, "floatValue");
    v6 = v5;
    objc_release();
    -[CKYTextboxRotationView setTextAniDuration:](v3, "setTextAniDuration:", v6);
}

//----- (00000001000F9E8C) ----------------------------------------------------
double __cdecl -[CKYTextboxRotationView textAniDuration](CKYTextboxRotationView *self, SEL a2)
{
    return self->_textAniDuration;
}

//----- (00000001000F9E9C) ----------------------------------------------------
bool __cdecl -[CKYTextboxRotationView isBegin](CKYTextboxRotationView *self, SEL a2)
{
    return self->_isBegin;
}

//----- (00000001000F9EAC) ----------------------------------------------------
void __cdecl -[CKYTextboxRotationView setIsBegin:](CKYTextboxRotationView *self, SEL a2, bool a3)
{
    self->_isBegin = a3;
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
