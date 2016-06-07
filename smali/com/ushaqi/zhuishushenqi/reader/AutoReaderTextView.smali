.class public Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;
.super Lme/biubiubiu/justifytext/library/JustifyTextView;
.source "SourceFile"


# instance fields
.field private c:I

.field private d:Landroid/content/Context;

.field private e:I

.field private f:I

.field private g:I

.field private h:[I

.field private i:Lcom/ushaqi/zhuishushenqi/reader/d;

.field private j:Landroid/widget/RelativeLayout$LayoutParams;

.field private k:Z

.field private l:Landroid/view/animation/Animation$AnimationListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lme/biubiubiu/justifytext/library/JustifyTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    const/4 v0, 0x5

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->e:I

    .line 35
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->h:[I

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->k:Z

    .line 166
    new-instance v0, Lcom/ushaqi/zhuishushenqi/reader/c;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/reader/c;-><init>(Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->l:Landroid/view/animation/Animation$AnimationListener;

    .line 46
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->d:Landroid/content/Context;

    .line 47
    return-void

    .line 35
    :array_0
    .array-data 4
        0x64
        0x32
        0x23
        0x19
        0x14
        0x10
        0xe
        0xc
        0xb
        0xa
    .end array-data
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;)Z
    .locals 1

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->k:Z

    return v0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;Z)Z
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->k:Z

    return v0
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->j:Landroid/widget/RelativeLayout$LayoutParams;

    return-object v0
.end method

.method static synthetic c(Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;)I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->g:I

    return v0
.end method

.method static synthetic d(Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;)Lcom/ushaqi/zhuishushenqi/reader/d;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->i:Lcom/ushaqi/zhuishushenqi/reader/d;

    return-object v0
.end method

.method private h()Landroid/view/animation/Animation;
    .locals 4

    .prologue
    .line 146
    new-instance v0, Lcom/ushaqi/zhuishushenqi/reader/b;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/reader/b;-><init>(Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;)V

    .line 155
    iget v1, p0, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->g:I

    int-to-float v1, v1

    iget v2, p0, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->f:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 156
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->h:[I

    iget v3, p0, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->e:I

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float/2addr v1, v2

    float-to-long v2, v1

    .line 157
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 158
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 160
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->l:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 162
    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->k:Z

    .line 100
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->f:I

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->g:I

    .line 102
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->h()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 103
    return-void
.end method

.method public final a(I)V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->j:Landroid/widget/RelativeLayout$LayoutParams;

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 142
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->j:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->j:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->f:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 107
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->j:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 108
    return-void
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 115
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->e:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 116
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->e:I

    .line 117
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->e()V

    .line 119
    :cond_0
    return-void
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 122
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->e:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 123
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->e:I

    .line 124
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->e()V

    .line 126
    :cond_0
    return-void
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->k:Z

    .line 131
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->g:I

    .line 132
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->h()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 133
    return-void
.end method

.method public final f()V
    .locals 3

    .prologue
    .line 136
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->d:Landroid/content/Context;

    const-string v1, "auto_reader_speed"

    const/4 v2, 0x5

    invoke-static {v0, v1, v2}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->e:I

    .line 137
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->j:Landroid/widget/RelativeLayout$LayoutParams;

    .line 138
    return-void
.end method

.method public final g()I
    .locals 1

    .prologue
    .line 201
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->f:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    .line 52
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->getCurrentTextColor()I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 53
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->getDrawableState()[I

    move-result-object v0

    iput-object v0, v3, Landroid/text/TextPaint;->drawableState:[I

    .line 54
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->b:I

    .line 55
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->c:I

    .line 56
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->f:I

    iget v2, p0, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->c:I

    sub-int/2addr v0, v2

    .line 57
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 58
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->getTextSize()F

    move-result v5

    .line 59
    iput v1, p0, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->a:I

    .line 60
    iget v2, p0, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->a:I

    int-to-float v2, v2

    add-float/2addr v2, v5

    float-to-int v2, v2

    iput v2, p0, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->a:I

    .line 61
    iget v2, p0, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->a:I

    sub-int v0, v2, v0

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->a:I

    .line 62
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->getLayout()Landroid/text/Layout;

    move-result-object v6

    .line 65
    if-nez v6, :cond_1

    .line 92
    :cond_0
    return-void

    .line 69
    :cond_1
    invoke-virtual {v3}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 71
    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float v0, v2, v0

    float-to-double v8, v0

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v0, v8

    .line 72
    int-to-float v0, v0

    invoke-virtual {v6}, Landroid/text/Layout;->getSpacingMultiplier()F

    move-result v2

    mul-float/2addr v0, v2

    invoke-virtual {v6}, Landroid/text/Layout;->getSpacingAdd()F

    move-result v2

    add-float/2addr v0, v2

    float-to-int v7, v0

    move v0, v1

    .line 74
    :goto_0
    invoke-virtual {v6}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 75
    invoke-virtual {v6, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v2

    .line 76
    invoke-virtual {v6, v0}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v8

    .line 77
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v9

    invoke-static {v4, v2, v8, v9}, Landroid/text/StaticLayout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F

    move-result v9

    .line 78
    invoke-virtual {v4, v2, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 80
    iget v8, p0, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->a:I

    int-to-float v8, v8

    neg-float v10, v5

    cmpl-float v8, v8, v10

    if-lez v8, :cond_2

    .line 81
    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->a(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1084
    invoke-virtual {p0, p1, v2, v9, v1}, Lme/biubiubiu/justifytext/library/JustifyTextView;->a(Landroid/graphics/Canvas;Ljava/lang/String;FZ)V

    .line 90
    :cond_2
    :goto_1
    iget v2, p0, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->a:I

    add-int/2addr v2, v7

    iput v2, p0, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->a:I

    .line 74
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 84
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0xa

    if-ne v8, v9, :cond_4

    .line 85
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v2, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 87
    :cond_4
    const/4 v8, 0x0

    iget v9, p0, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->a:I

    int-to-float v9, v9

    invoke-virtual {p1, v2, v8, v9, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1
.end method

.method public setOnPageTurning(Lcom/ushaqi/zhuishushenqi/reader/d;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->i:Lcom/ushaqi/zhuishushenqi/reader/d;

    .line 194
    return-void
.end method

.method public setTotalHeight(I)V
    .locals 0

    .prologue
    .line 197
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->f:I

    .line 198
    return-void
.end method
