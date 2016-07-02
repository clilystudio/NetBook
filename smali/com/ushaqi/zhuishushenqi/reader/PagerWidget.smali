.class public Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;
.super Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;
.source "SourceFile"
# instance fields
.field private a:I
.field private b:Lcom/umeng/update/a;
.field private c:Lcom/ushaqi/zhuishushenqi/reader/M;
.field private d:Z
.field private e:F
.field private f:F
.field private g:Z
.field private h:F
.field private i:I
.field private j:Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;
.field private k:Z
# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .prologue
    v1 = 0x0;
    p0.<init>(p1);
    v0 = 0x41a00000    # 20.0f;
    p0.Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->h = v0;
    p0.Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->i = v1;
    p0.Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->k = v1;
    p0.d();
    return;
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .prologue
    v1 = 0x0;
    p0.<init>(p1, p2);
    v0 = 0x41a00000    # 20.0f;
    p0.Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->h = v0;
    p0.Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->i = v1;
    p0.Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->k = v1;
    p0.d();
    return;
.end method
.method private static a(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 2
    .prologue
    v0 = Landroid/view/MotionEvent.obtain(p0);
    v1 = 0x0;
    :try_start_0
    v0.setAction(v1);
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    :goto_0
    return v0;
    :catch_0
    move-exception v1
    v1.printStackTrace();
    goto :goto_0
.end method
.method private a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .prologue
    v0 = 0x0;
    :try_start_0
    v1 = Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;;
    v1 = v1.getDeclaredField(p1);
    v2 = 0x1;
    Lorg/apache/commons/lang3/a/a.a(v1, p0, v2);
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    move-result-object v0
    :goto_0
    return v0;
    :catch_0
    move-exception v1
    v1.printStackTrace();
    goto :goto_0
    :catch_1
    move-exception v1
    v1.printStackTrace();
    goto :goto_0
    :catch_2
    move-exception v1
    v1.printStackTrace();
    goto :goto_0
.end method
.method private a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .prologue
    :try_start_0
    v0 = Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;;
    v0 = v0.getDeclaredField(p1);
    v1 = 0x1;
    Lorg/apache/commons/lang3/a/a.a(v0, p0, p2, v1);
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    :goto_0
    return;
    :catch_0
    move-exception v0
    v0.printStackTrace();
    goto :goto_0
.end method
.method private d()V
    .locals 3
    .prologue
    v2 = 0x0;
    v0 = p0.getContext();
    v0 = Landroid/view/ViewConfiguration.get(v0);
    v0 = v0.getScaledTouchSlop();
    p0.Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->a = v0;
    v0 = "mMinimumVelocity";
    v1 = Ljava/lang/Integer.valueOf(v2);
    p0.a(v0, v1);
    v0 = "mFlingDistance";
    v1 = Ljava/lang/Integer.valueOf(v2);
    p0.a(v0, v1);
    v0 = new M();
    v1 = p0.getContext();
    v0.<init>(p0, v1);
    p0.Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->c = v0;
    v0 = "mScroller";
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->c;
    p0.a(v0, v1);
    return;
.end method
.method private e()Z
    .locals 1
    .prologue
    v0 = "mIsBeingDragged";
    v0 = p0.a(v0);
    check-cast v0, Ljava/lang/Boolean;
    v0 = v0.booleanValue();
    return v0
.end method
# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .prologue
    v3 = 0xa;
    v0 = 0x2;
    v2 = 0x0;
    v1 = 0x1;
    v4 = p1.getAction();
    v4 = v4 & 0xff;
    v5 = p0.Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->i;
    if (v5 != 0) {
//       if-nez v5, :cond_8
    }
    packed-switch v4, :pswitch_data_0
    :cond_0
    v1 = Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager.onTouchEvent(p0, p1);
    :cond_1
    :goto_0
    :pswitch_0
    return v1
    :pswitch_1
    v0 = p0.e();
    if (v0 == 0) {
//       if-eqz v0, :cond_3
    }
    v0 = p0.getContext();
    instance-of v0, v0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;
    if (v0 == 0) {
//       if-eqz v0, :cond_2
    }
    v0 = p0.getContext();
    check-cast v0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;
    v0.k();
    :cond_2
    v1 = Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager.onTouchEvent(p0, p1);
    goto :goto_0
    :cond_3
    v0 = "mInitialMotionX";
    v0 = p0.a(v0);
    check-cast v0, Ljava/lang/Float;
    v2 = v0.floatValue();
    v0 = "mActivePointerId";
    v0 = p0.a(v0);
    check-cast v0, Ljava/lang/Integer;
    v0 = v0.intValue();
    v3 = Landroid/support/v4/view/MotionEventCompat.findPointerIndex(p1, v0);
    v0 = 0x0;
    :try_start_0
    Landroid/support/v4/view/MotionEventCompat.getX(p1, v3);
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    move-result v0
    :goto_1
    v0 -= v2;
    v0 = Ljava/lang/Math.abs(v0);
    v2 = p0.Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->a;
    int-to-float v2, v2
    cmpl-float v0, v0, v2
    if (v0 <= 0) {
//       if-lez v0, :cond_1
    }
    v0 = Lcom/ushaqi/zhuishushenqi/reader/PagerWidget.a(p1);
    Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager.onTouchEvent(p0, v0);
    goto :goto_0
    :catch_0
    move-exception v3
    v3.printStackTrace();
    goto :goto_1
    :pswitch_2
    v3 = p0.e();
    if (v3 != 0) {
//       if-nez v3, :cond_0
    }
    v3 = p0.Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->c;
    v3 = v3.isFinished();
    if (v3 == 0) {
//       if-eqz v3, :cond_0
    }
    v3 = p0.Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->d;
    if (v3 != 0) {
//       if-nez v3, :cond_0
    }
    p0.Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->d = v1;
    v3 = p1.getX();
    v4 = p1.getY();
    v5 = p0.getWidth();
    v5 = v5 / 0x3;
    int-to-float v5, v5
    v6 = p0.getHeight();
    v6 = v6 / 0x5;
    int-to-float v6, v6
    cmpg-float v7, v3, v5
    if (v7 >= 0) {
//       if-gez v7, :cond_6
    }
    v0 = v1;
    :cond_4
    :goto_2
    v3 = p0.Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->b;
    if (v3 == 0) {
//       if-eqz v3, :cond_5
    }
    v3 = p0.Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->b;
    v3.a(v0);
    :cond_5
    p0.Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->d = v2;
    goto/16 :goto_0
    :cond_6
    v7 = 0x40000000    # 2.0f;
    v5 *= v7;
    cmpl-float v3, v3, v5
    if (v3 > 0) {
//       if-gtz v3, :cond_4
    }
    cmpg-float v3, v4, v6
    if (v3 >= 0) {
//       if-gez v3, :cond_7
    }
    v0 = v1;
    goto :goto_2
    :cond_7
    v3 = 0x40800000    # 4.0f;
    v3 *= v6;
    cmpl-float v3, v4, v3
    if (v3 > 0) {
//       if-gtz v3, :cond_4
    }
    v0 = v2;
    goto :goto_2
    :cond_8
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->i;
    if (v0 != v1) {
//       if-ne v0, v1, :cond_f
    }
    packed-switch v4, :pswitch_data_1
    goto/16 :goto_0
    :pswitch_3
    v0 = p1.getX();
    p0.Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->e = v0;
    v0 = p1.getY();
    p0.Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->f = v0;
    p0.Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->k = v2;
    goto/16 :goto_0
    :pswitch_4
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->k;
    if (v0 != 0) {
//       if-nez v0, :cond_9
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->j;
    v0.clearAnimation();
    p0.Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->k = v1;
    :cond_9
    v0 = p1.getY();
    v2 = p0.Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->f;
    v0 -= v2;
    float-to-int v0, v0
    v0 = Ljava/lang/Math.abs(v0);
    int-to-float v0, v0
    v2 = p0.Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->h;
    cmpl-float v0, v0, v2
    if (v0 <= 0) {
//       if-lez v0, :cond_1
    }
    v0 = p0.getMeasuredHeight();
    v2 = p1.getY();
    float-to-int v2, v2
    v0 -= v2;
    v2 = p0.Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->j;
    v2 = v2.g();
    if (v0 <= v2) {
//       if-le v0, v2, :cond_b
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->j;
    v0 = v0.g();
    :cond_a
    :goto_3
    v2 = p0.Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->j;
    v2.a(v0);
    goto/16 :goto_0
    :cond_b
    if (v0 >= v3) {
//       if-ge v0, v3, :cond_a
    }
    v0 = v3;
    goto :goto_3
    :pswitch_5
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->e;
    v3 = p1.getX();
    v0 -= v3;
    v0 = Ljava/lang/Math.abs(v0);
    v3 = p0.Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->h;
    cmpl-float v0, v0, v3
    if (v0 > 0) {
//       if-gtz v0, :cond_c
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->f;
    v3 = p1.getY();
    v0 -= v3;
    v0 = Ljava/lang/Math.abs(v0);
    v3 = p0.Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->h;
    cmpl-float v0, v0, v3
    if (v0 <= 0) {
//       if-lez v0, :cond_e
    }
    :cond_c
    p0.Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->g = v2;
    :goto_4
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->b;
    if (v0 == 0) {
//       if-eqz v0, :cond_d
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->g;
    if (v0 == 0) {
//       if-eqz v0, :cond_d
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->b;
    v0.a(v2);
    :cond_d
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->g;
    if (v0 != 0) {
//       if-nez v0, :cond_1
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->j;
    v0.e();
    goto/16 :goto_0
    :cond_e
    p0.Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->g = v1;
    goto :goto_4
    :cond_f
    packed-switch v4, :pswitch_data_2
    goto/16 :goto_0
    :pswitch_6
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->b;
    v0.a(v2);
    goto/16 :goto_0
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
.method public setAutoReaderTextView(Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;)V
    .locals 0
    .prologue
    p0.Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->j = p1;
    return;
.end method
.method public setOnClickListener$4b8a6d15(Lcom/umeng/update/a;)V
    .locals 0
    .prologue
    p0.Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->b = p1;
    return;
.end method
.method public setReadMode(I)V
    .locals 0
    .prologue
    p0.Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->i = p1;
    return;
.end method
