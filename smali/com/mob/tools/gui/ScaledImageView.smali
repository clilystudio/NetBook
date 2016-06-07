.class public Lcom/mob/tools/gui/ScaledImageView;
.super Landroid/widget/ImageView;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private a:Landroid/graphics/Bitmap;

.field private b:F

.field private c:[F

.field private d:I

.field private e:Landroid/support/design/widget/K;

.field private f:Landroid/graphics/Matrix;

.field private g:I

.field private h:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/mob/tools/gui/ScaledImageView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/mob/tools/gui/ScaledImageView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1}, Lcom/mob/tools/gui/ScaledImageView;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/mob/tools/gui/ScaledImageView;->d:I

    iget v0, p0, Lcom/mob/tools/gui/ScaledImageView;->d:I

    iget v1, p0, Lcom/mob/tools/gui/ScaledImageView;->d:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/mob/tools/gui/ScaledImageView;->d:I

    invoke-virtual {p0, p0}, Lcom/mob/tools/gui/ScaledImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :goto_0
    return v0

    :sswitch_0
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->f:Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->f:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/mob/tools/gui/ScaledImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->h:Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->h:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/mob/tools/gui/ScaledImageView;->f:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    aput v3, v0, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    aput v3, v0, v2

    iput-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->c:[F

    const/4 v0, 0x1

    iput v0, p0, Lcom/mob/tools/gui/ScaledImageView;->g:I

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->f:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/mob/tools/gui/ScaledImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    :goto_2
    move v0, v1

    goto :goto_0

    :sswitch_1
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iget-object v2, p0, Lcom/mob/tools/gui/ScaledImageView;->c:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    sub-float/2addr v0, v2

    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    iget-object v3, p0, Lcom/mob/tools/gui/ScaledImageView;->c:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/mob/tools/gui/ScaledImageView;->g:I

    if-ne v3, v1, :cond_1

    mul-float/2addr v0, v0

    mul-float/2addr v2, v2

    add-float/2addr v0, v2

    iget v2, p0, Lcom/mob/tools/gui/ScaledImageView;->d:I

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_1

    invoke-virtual {p0}, Lcom/mob/tools/gui/ScaledImageView;->performClick()Z

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/mob/tools/gui/ScaledImageView;->g:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/mob/tools/e;->a()Lcom/mob/tools/log/d;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/tools/log/d;->w(Ljava/lang/Throwable;)I

    goto :goto_2

    :sswitch_2
    const/4 v0, 0x2

    :try_start_1
    new-array v0, v0, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    aput v3, v0, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    aput v3, v0, v2

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    aput v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    aput v4, v2, v3

    const/4 v3, 0x0

    aget v3, v0, v3

    const/4 v4, 0x0

    aget v4, v2, v4

    sub-float/2addr v3, v4

    const/4 v4, 0x1

    aget v0, v0, v4

    const/4 v4, 0x1

    aget v2, v2, v4

    sub-float/2addr v0, v2

    mul-float v2, v3, v3

    mul-float/2addr v0, v0

    add-float/2addr v0, v2

    iput v0, p0, Lcom/mob/tools/gui/ScaledImageView;->b:F

    const/4 v0, 0x3

    iput v0, p0, Lcom/mob/tools/gui/ScaledImageView;->g:I

    goto :goto_1

    :sswitch_3
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    aput v3, v0, v2

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    aput v3, v0, v2

    iput-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->c:[F

    iget-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->h:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/mob/tools/gui/ScaledImageView;->f:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/mob/tools/gui/ScaledImageView;->g:I

    goto/16 :goto_1

    :sswitch_4
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    aput v3, v0, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    aput v3, v0, v2

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    aput v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    aput v4, v2, v3

    const/4 v3, 0x0

    aget v3, v0, v3

    const/4 v4, 0x0

    aget v4, v2, v4

    sub-float/2addr v3, v4

    const/4 v4, 0x1

    aget v0, v0, v4

    const/4 v4, 0x1

    aget v2, v2, v4

    sub-float/2addr v0, v2

    mul-float v2, v3, v3

    mul-float/2addr v0, v0

    add-float/2addr v0, v2

    iput v0, p0, Lcom/mob/tools/gui/ScaledImageView;->b:F

    const/4 v0, 0x3

    iput v0, p0, Lcom/mob/tools/gui/ScaledImageView;->g:I

    goto/16 :goto_1

    :sswitch_5
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    aput v3, v0, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    aput v3, v0, v2

    iput-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->c:[F

    iget-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->h:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/mob/tools/gui/ScaledImageView;->f:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/mob/tools/gui/ScaledImageView;->g:I

    goto/16 :goto_1

    :sswitch_6
    iget v0, p0, Lcom/mob/tools/gui/ScaledImageView;->g:I

    if-ne v0, v1, :cond_2

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    aput v3, v0, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    aput v3, v0, v2

    iget-object v2, p0, Lcom/mob/tools/gui/ScaledImageView;->f:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/mob/tools/gui/ScaledImageView;->h:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v2, p0, Lcom/mob/tools/gui/ScaledImageView;->f:Landroid/graphics/Matrix;

    const/4 v3, 0x0

    aget v3, v0, v3

    iget-object v4, p0, Lcom/mob/tools/gui/ScaledImageView;->c:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    sub-float/2addr v3, v4

    const/4 v4, 0x1

    aget v0, v0, v4

    iget-object v4, p0, Lcom/mob/tools/gui/ScaledImageView;->c:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    sub-float/2addr v0, v4

    invoke-virtual {v2, v3, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_1

    :cond_2
    iget v0, p0, Lcom/mob/tools/gui/ScaledImageView;->g:I

    if-ne v0, v3, :cond_3

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    aput v3, v0, v2

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    aput v3, v0, v2

    iget-object v2, p0, Lcom/mob/tools/gui/ScaledImageView;->f:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/mob/tools/gui/ScaledImageView;->h:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v2, p0, Lcom/mob/tools/gui/ScaledImageView;->f:Landroid/graphics/Matrix;

    const/4 v3, 0x0

    aget v3, v0, v3

    iget-object v4, p0, Lcom/mob/tools/gui/ScaledImageView;->c:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    sub-float/2addr v3, v4

    const/4 v4, 0x1

    aget v0, v0, v4

    iget-object v4, p0, Lcom/mob/tools/gui/ScaledImageView;->c:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    sub-float/2addr v0, v4

    invoke-virtual {v2, v3, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_1

    :cond_3
    iget v0, p0, Lcom/mob/tools/gui/ScaledImageView;->g:I

    if-ne v0, v4, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    aput v3, v0, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    aput v3, v0, v2

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    aput v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    aput v4, v2, v3

    const/4 v3, 0x0

    aget v3, v0, v3

    const/4 v4, 0x0

    aget v4, v2, v4

    sub-float/2addr v3, v4

    const/4 v4, 0x1

    aget v4, v0, v4

    const/4 v5, 0x1

    aget v5, v2, v5

    sub-float/2addr v4, v5

    mul-float/2addr v3, v3

    mul-float/2addr v4, v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/mob/tools/gui/ScaledImageView;->f:Landroid/graphics/Matrix;

    iget-object v5, p0, Lcom/mob/tools/gui/ScaledImageView;->h:Landroid/graphics/Matrix;

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget v4, p0, Lcom/mob/tools/gui/ScaledImageView;->b:F

    div-float/2addr v3, v4

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v3, v4

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    const/4 v6, 0x0

    aget v6, v0, v6

    const/4 v7, 0x0

    aget v7, v2, v7

    add-float/2addr v6, v7

    div-float/2addr v6, v8

    aput v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x1

    aget v0, v0, v6

    const/4 v6, 0x1

    aget v2, v2, v6

    add-float/2addr v0, v2

    div-float/2addr v0, v8

    aput v0, v4, v5

    iget-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->f:Landroid/graphics/Matrix;

    const/4 v2, 0x0

    aget v2, v4, v2

    const/4 v5, 0x1

    aget v4, v4, v5

    invoke-virtual {v0, v3, v3, v2, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_6
        0x5 -> :sswitch_2
        0x6 -> :sswitch_3
        0x105 -> :sswitch_4
        0x106 -> :sswitch_5
    .end sparse-switch
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 10

    .prologue
    const/high16 v9, 0x3f000000    # 0.5f

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 0
    iput-object p1, p0, Lcom/mob/tools/gui/ScaledImageView;->a:Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/mob/tools/gui/ScaledImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    new-array v0, v8, [I

    invoke-virtual {p0}, Lcom/mob/tools/gui/ScaledImageView;->getWidth()I

    move-result v1

    aput v1, v0, v6

    invoke-virtual {p0}, Lcom/mob/tools/gui/ScaledImageView;->getHeight()I

    move-result v1

    aput v1, v0, v7

    new-array v1, v8, [I

    iget-object v2, p0, Lcom/mob/tools/gui/ScaledImageView;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    aput v2, v1, v6

    iget-object v2, p0, Lcom/mob/tools/gui/ScaledImageView;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    aput v2, v1, v7

    .line 1000
    new-array v2, v8, [I

    aget v3, v1, v6

    int-to-float v3, v3

    aget v4, v1, v7

    int-to-float v4, v4

    div-float/2addr v3, v4

    aget v4, v0, v6

    int-to-float v4, v4

    aget v5, v0, v7

    int-to-float v5, v5

    div-float/2addr v4, v5

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    aget v3, v0, v6

    aput v3, v2, v6

    aget v3, v1, v7

    int-to-float v3, v3

    aget v4, v0, v6

    int-to-float v4, v4

    mul-float/2addr v3, v4

    aget v4, v1, v6

    int-to-float v4, v4

    div-float/2addr v3, v4

    add-float/2addr v3, v9

    float-to-int v3, v3

    aput v3, v2, v7

    .line 0
    :goto_0
    new-array v3, v8, [I

    aget v4, v0, v6

    aget v5, v2, v6

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    aput v4, v3, v6

    aget v0, v0, v7

    aget v4, v2, v7

    sub-int/2addr v0, v4

    div-int/lit8 v0, v0, 0x2

    aput v0, v3, v7

    new-array v0, v8, [F

    aget v4, v2, v6

    int-to-float v4, v4

    aget v5, v1, v6

    int-to-float v5, v5

    div-float/2addr v4, v5

    aput v4, v0, v6

    aget v2, v2, v7

    int-to-float v2, v2

    aget v1, v1, v7

    int-to-float v1, v1

    div-float v1, v2, v1

    aput v1, v0, v7

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/mob/tools/gui/ScaledImageView;->f:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/mob/tools/gui/ScaledImageView;->f:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/mob/tools/gui/ScaledImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v1, p0, Lcom/mob/tools/gui/ScaledImageView;->f:Landroid/graphics/Matrix;

    aget v2, v0, v6

    aget v0, v0, v7

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->f:Landroid/graphics/Matrix;

    aget v1, v3, v6

    int-to-float v1, v1

    aget v2, v3, v7

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->f:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/mob/tools/gui/ScaledImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    return-void

    .line 1000
    :cond_0
    aget v3, v0, v7

    aput v3, v2, v7

    aget v3, v1, v6

    int-to-float v3, v3

    aget v4, v0, v7

    int-to-float v4, v4

    mul-float/2addr v3, v4

    aget v4, v1, v7

    int-to-float v4, v4

    div-float/2addr v3, v4

    add-float/2addr v3, v9

    float-to-int v3, v3

    aput v3, v2, v6

    goto :goto_0
.end method

.method public setOnMatrixChangedListener$2dad7339(Landroid/support/design/widget/K;)V
    .locals 1

    iput-object p1, p0, Lcom/mob/tools/gui/ScaledImageView;->e:Landroid/support/design/widget/K;

    iget-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->f:Landroid/graphics/Matrix;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->f:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/mob/tools/gui/ScaledImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    :cond_0
    return-void
.end method
