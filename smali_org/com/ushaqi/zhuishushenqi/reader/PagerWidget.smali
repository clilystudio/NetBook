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
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;-><init>(Landroid/content/Context;)V

    .line 34
    const/high16 v0, 0x41a00000

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->h:F

    .line 36
    iput v1, p0, Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->i:I

    .line 39
    iput-boolean v1, p0, Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->k:Z

    .line 43
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->d()V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    const/high16 v0, 0x41a00000

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->h:F

    .line 36
    iput v1, p0, Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->i:I

    .line 39
    iput-boolean v1, p0, Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->k:Z

    .line 48
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->d()V

    .line 49
    return-void
.end method

.method private static a(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 2

    .prologue
    .line 264
    invoke-static {p0}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 266
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    :goto_0
    return-object v0

    .line 267
    :catch_0
    move-exception v1

    .line 268
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 70
    :try_start_0
    const-class v1, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, p0, v2}, Lorg/apache/commons/lang3/a/a;->a(Ljava/lang/reflect/Field;Ljava/lang/Object;Z)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 79
    :goto_0
    return-object v0

    .line 71
    :catch_0
    move-exception v1

    .line 72
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 74
    :catch_1
    move-exception v1

    .line 75
    invoke-virtual {v1}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0

    .line 77
    :catch_2
    move-exception v1

    .line 78
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 62
    :try_start_0
    const-class v0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p0, p2, v1}, Lorg/apache/commons/lang3/a/a;->a(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :goto_0
    return-void

    .line 63
    :catch_0
    move-exception v0

    .line 64
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private d()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 52
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 53
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->a:I

    .line 54
    const-string v0, "mMinimumVelocity"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 55
    const-string v0, "mFlingDistance"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 56
    new-instance v0, Lcom/ushaqi/zhuishushenqi/reader/M;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/ushaqi/zhuishushenqi/reader/M;-><init>(Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->c:Lcom/ushaqi/zhuishushenqi/reader/M;

    .line 57
    const-string v0, "mScroller"

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->c:Lcom/ushaqi/zhuishushenqi/reader/M;

    invoke-direct {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 58
    return-void
.end method

.method private e()Z
    .locals 1

    .prologue
    .line 260
    const-string v0, "mIsBeingDragged"

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .prologue
    const/16 v3, 0xa

    const/4 v0, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 100
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    .line 102
    iget v5, p0, Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->i:I

    if-nez v5, :cond_8

    .line 103
    packed-switch v4, :pswitch_data_0

    .line 223
    :cond_0
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    :cond_1
    :goto_0
    :pswitch_0
    return v1

    .line 108
    :pswitch_1
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 109
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    if-eqz v0, :cond_2

    .line 110
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->k()V

    .line 112
    :cond_2
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    .line 115
    :cond_3
    const-string v0, "mInitialMotionX"

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 116
    const-string v0, "mActivePointerId"

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 118
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v3

    .line 119
    const/4 v0, 0x0

    .line 121
    :try_start_0
    invoke-static {p1, v3}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 126
    :goto_1
    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v2, p0, Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->a:I

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    .line 127
    invoke-static {p1}, Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->a(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 122
    :catch_0
    move-exception v3

    .line 123
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 141
    :pswitch_2
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->e()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->c:Lcom/ushaqi/zhuishushenqi/reader/M;

    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/reader/M;->isFinished()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->d:Z

    if-nez v3, :cond_0

    .line 142
    iput-boolean v1, p0, Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->d:Z

    .line 1230
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 1231
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 1232
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x3

    int-to-float v5, v5

    .line 1233
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x5

    int-to-float v6, v6

    .line 1237
    cmpg-float v7, v3, v5

    if-gez v7, :cond_6

    move v0, v1

    .line 1254
    :cond_4
    :goto_2
    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->b:Lcom/umeng/update/a;

    if-eqz v3, :cond_5

    .line 1255
    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->b:Lcom/umeng/update/a;

    invoke-interface {v3, v0}, Lcom/umeng/update/a;->a(I)V

    .line 147
    :cond_5
    iput-boolean v2, p0, Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->d:Z

    goto/16 :goto_0

    .line 1239
    :cond_6
    const/high16 v7, 0x40000000

    mul-float/2addr v5, v7

    cmpl-float v3, v3, v5

    if-gtz v3, :cond_4

    .line 1242
    cmpg-float v3, v4, v6

    if-gez v3, :cond_7

    move v0, v1

    .line 1243
    goto :goto_2

    .line 1244
    :cond_7
    const/high16 v3, 0x40800000

    mul-float/2addr v3, v6

    cmpl-float v3, v4, v3

    if-gtz v3, :cond_4

    move v0, v2

    .line 1247
    goto :goto_2

    .line 158
    :cond_8
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->i:I

    if-ne v0, v1, :cond_f

    .line 160
    packed-switch v4, :pswitch_data_1

    goto/16 :goto_0

    .line 162
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->e:F

    .line 163
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->f:F

    .line 164
    iput-boolean v2, p0, Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->k:Z

    goto/16 :goto_0

    .line 169
    :pswitch_4
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->k:Z

    if-nez v0, :cond_9

    .line 170
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->j:Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;

    .line 2111
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->clearAnimation()V

    .line 172
    iput-boolean v1, p0, Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->k:Z

    .line 174
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v2, p0, Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->f:F

    sub-float/2addr v0, v2

    float-to-int v0, v0

    .line 175
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->h:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    .line 176
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    sub-int/2addr v0, v2

    .line 177
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->j:Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->g()I

    move-result v2

    if-le v0, v2, :cond_b

    .line 178
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->j:Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->g()I

    move-result v0

    .line 185
    :cond_a
    :goto_3
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->j:Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;

    invoke-virtual {v2, v0}, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->a(I)V

    goto/16 :goto_0

    .line 181
    :cond_b
    if-ge v0, v3, :cond_a

    move v0, v3

    .line 182
    goto :goto_3

    .line 196
    :pswitch_5
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->e:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v3, p0, Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->h:F

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_c

    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->f:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v3, p0, Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->h:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_e

    .line 197
    :cond_c
    iput-boolean v2, p0, Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->g:Z

    .line 201
    :goto_4
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->b:Lcom/umeng/update/a;

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->g:Z

    if-eqz v0, :cond_d

    .line 202
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->b:Lcom/umeng/update/a;

    invoke-interface {v0, v2}, Lcom/umeng/update/a;->a(I)V

    .line 204
    :cond_d
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->g:Z

    if-nez v0, :cond_1

    .line 205
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->j:Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->e()V

    goto/16 :goto_0

    .line 199
    :cond_e
    iput-boolean v1, p0, Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->g:Z

    goto :goto_4

    .line 214
    :cond_f
    packed-switch v4, :pswitch_data_2

    goto/16 :goto_0

    .line 216
    :pswitch_6
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->b:Lcom/umeng/update/a;

    invoke-interface {v0, v2}, Lcom/umeng/update/a;->a(I)V

    goto/16 :goto_0

    .line 103
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 160
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch

    .line 214
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method

.method public setAutoReaderTextView(Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;)V
    .locals 0

    .prologue
    .line 304
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->j:Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;

    .line 305
    return-void
.end method

.method public setOnClickListener$4b8a6d15(Lcom/umeng/update/a;)V
    .locals 0

    .prologue
    .line 274
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->b:Lcom/umeng/update/a;

    .line 275
    return-void
.end method

.method public setReadMode(I)V
    .locals 0

    .prologue
    .line 300
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->i:I

    .line 301
    return-void
.end method
