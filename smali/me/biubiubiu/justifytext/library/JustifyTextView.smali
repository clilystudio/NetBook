.class public Lme/biubiubiu/justifytext/library/JustifyTextView;
.super Landroid/widget/TextView;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    return-void
.end method

.method private static a(Landroid/graphics/Canvas;FFFLandroid/graphics/Paint;)V
    .locals 6

    .prologue
    .line 125
    const/high16 v0, 0x40400000    # 3.0f

    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 126
    const/high16 v0, 0x41900000    # 18.0f

    add-float v2, p3, v0

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v4, v2

    move-object v5, p4

    .line 127
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 128
    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 135
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 138
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/16 v4, 0x20

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 131
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-le v2, v3, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/graphics/Canvas;Ljava/lang/String;FZ)V
    .locals 10

    .prologue
    const/16 v6, 0x3000

    const/4 v1, 0x2

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 88
    .line 89
    invoke-static {p2}, Lme/biubiubiu/justifytext/library/JustifyTextView;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 90
    const-string v3, "  "

    .line 91
    iget v4, p0, Lme/biubiubiu/justifytext/library/JustifyTextView;->a:I

    int-to-float v4, v4

    invoke-virtual {p0}, Lme/biubiubiu/justifytext/library/JustifyTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    invoke-virtual {p1, v3, v0, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 92
    invoke-virtual {p0}, Lme/biubiubiu/justifytext/library/JustifyTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/StaticLayout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v3

    .line 93
    add-float/2addr v0, v3

    .line 94
    const/4 v3, 0x3

    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 97
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .line 99
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v1, :cond_4

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_4

    const/4 v4, 0x1

    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_4

    .line 100
    invoke-virtual {p2, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 101
    invoke-virtual {p0}, Lme/biubiubiu/justifytext/library/JustifyTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/StaticLayout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v5

    .line 102
    iget v6, p0, Lme/biubiubiu/justifytext/library/JustifyTextView;->a:I

    int-to-float v6, v6

    invoke-virtual {p0}, Lme/biubiubiu/justifytext/library/JustifyTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v7

    invoke-virtual {p1, v4, v0, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 103
    add-float/2addr v0, v5

    move v9, v1

    move v1, v0

    move v0, v9

    .line 107
    :goto_0
    iget v4, p0, Lme/biubiubiu/justifytext/library/JustifyTextView;->b:I

    int-to-float v4, v4

    sub-float/2addr v4, p3

    int-to-float v3, v3

    div-float v5, v4, v3

    move v3, v0

    move v4, v1

    move v0, v1

    .line 110
    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v3, v6, :cond_2

    .line 111
    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    .line 112
    invoke-virtual {p0}, Lme/biubiubiu/justifytext/library/JustifyTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/text/StaticLayout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v6

    .line 113
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0xa

    if-eq v7, v8, :cond_1

    .line 114
    iget v7, p0, Lme/biubiubiu/justifytext/library/JustifyTextView;->a:I

    int-to-float v7, v7

    invoke-virtual {p0}, Lme/biubiubiu/justifytext/library/JustifyTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v8

    invoke-virtual {p1, v4, v0, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 115
    add-float v4, v6, v5

    add-float/2addr v0, v4

    .line 110
    :cond_1
    add-int/lit8 v3, v3, 0x1

    move v4, v0

    goto :goto_1

    .line 119
    :cond_2
    if-eqz p4, :cond_3

    .line 120
    iget v0, p0, Lme/biubiubiu/justifytext/library/JustifyTextView;->a:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lme/biubiubiu/justifytext/library/JustifyTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-static {p1, v1, v4, v0, v2}, Lme/biubiubiu/justifytext/library/JustifyTextView;->a(Landroid/graphics/Canvas;FFFLandroid/graphics/Paint;)V

    .line 122
    :cond_3
    return-void

    :cond_4
    move v1, v0

    move v0, v2

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .prologue
    .line 32
    invoke-virtual {p0}, Lme/biubiubiu/justifytext/library/JustifyTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    .line 33
    invoke-virtual {p0}, Lme/biubiubiu/justifytext/library/JustifyTextView;->getCurrentTextColor()I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 34
    invoke-virtual {p0}, Lme/biubiubiu/justifytext/library/JustifyTextView;->getDrawableState()[I

    move-result-object v0

    iput-object v0, v3, Landroid/text/TextPaint;->drawableState:[I

    .line 35
    invoke-virtual {p0}, Lme/biubiubiu/justifytext/library/JustifyTextView;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lme/biubiubiu/justifytext/library/JustifyTextView;->b:I

    .line 36
    invoke-virtual {p0}, Lme/biubiubiu/justifytext/library/JustifyTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lme/biubiubiu/justifytext/library/JustifyTextView;->a:I

    .line 38
    iget v0, p0, Lme/biubiubiu/justifytext/library/JustifyTextView;->a:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lme/biubiubiu/justifytext/library/JustifyTextView;->getTextSize()F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lme/biubiubiu/justifytext/library/JustifyTextView;->a:I

    .line 39
    invoke-virtual {p0}, Lme/biubiubiu/justifytext/library/JustifyTextView;->getLayout()Landroid/text/Layout;

    move-result-object v5

    .line 42
    if-nez v5, :cond_1

    .line 81
    :cond_0
    return-void

    .line 46
    :cond_1
    invoke-virtual {v3}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 48
    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float v0, v1, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 49
    int-to-float v0, v0

    invoke-virtual {v5}, Landroid/text/Layout;->getSpacingMultiplier()F

    move-result v1

    mul-float/2addr v0, v1

    invoke-virtual {v5}, Landroid/text/Layout;->getSpacingAdd()F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v6, v0

    .line 51
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v5}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 52
    invoke-virtual {v5, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v1

    .line 53
    invoke-virtual {v5, v0}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v7

    .line 54
    invoke-virtual {p0}, Lme/biubiubiu/justifytext/library/JustifyTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-static {v4, v1, v7, v2}, Landroid/text/StaticLayout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F

    move-result v8

    .line 55
    invoke-virtual {v4, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 56
    iget v9, p0, Lme/biubiubiu/justifytext/library/JustifyTextView;->c:I

    if-lt v1, v9, :cond_3

    iget v1, p0, Lme/biubiubiu/justifytext/library/JustifyTextView;->d:I

    add-int/lit8 v1, v1, 0x1

    if-gt v7, v1, :cond_3

    const/4 v1, 0x1

    .line 58
    :goto_1
    invoke-static {v2}, Lme/biubiubiu/justifytext/library/JustifyTextView;->a(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 59
    invoke-virtual {p0, p1, v2, v8, v1}, Lme/biubiubiu/justifytext/library/JustifyTextView;->a(Landroid/graphics/Canvas;Ljava/lang/String;FZ)V

    .line 79
    :cond_2
    :goto_2
    iget v1, p0, Lme/biubiubiu/justifytext/library/JustifyTextView;->a:I

    add-int/2addr v1, v6

    iput v1, p0, Lme/biubiubiu/justifytext/library/JustifyTextView;->a:I

    .line 51
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 56
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 61
    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v9, 0xa

    if-ne v7, v9, :cond_5

    .line 62
    const/4 v7, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v2, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 64
    :cond_5
    const/4 v7, 0x0

    iget v9, p0, Lme/biubiubiu/justifytext/library/JustifyTextView;->a:I

    int-to-float v9, v9

    invoke-virtual {p1, v2, v7, v9, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 66
    if-eqz v1, :cond_2

    .line 67
    const/4 v1, 0x0

    .line 68
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v9, 0x2

    if-le v7, v9, :cond_6

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v9, 0x3000

    if-ne v7, v9, :cond_6

    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v9, 0x3000

    if-ne v7, v9, :cond_6

    .line 69
    const/4 v1, 0x0

    const/4 v7, 0x2

    invoke-virtual {v2, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 70
    const/4 v7, 0x0

    invoke-virtual {p0}, Lme/biubiubiu/justifytext/library/JustifyTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v9

    invoke-static {v1, v9}, Landroid/text/StaticLayout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v1

    add-float/2addr v1, v7

    .line 72
    :cond_6
    invoke-static {v2}, Lme/biubiubiu/justifytext/library/JustifyTextView;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 73
    const-string v1, "\t"

    .line 74
    invoke-virtual {p0}, Lme/biubiubiu/justifytext/library/JustifyTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/StaticLayout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v1

    .line 76
    :cond_7
    iget v2, p0, Lme/biubiubiu/justifytext/library/JustifyTextView;->a:I

    int-to-float v2, v2

    invoke-static {p1, v1, v8, v2, v3}, Lme/biubiubiu/justifytext/library/JustifyTextView;->a(Landroid/graphics/Canvas;FFFLandroid/graphics/Paint;)V

    goto :goto_2
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .prologue
    .line 27
    invoke-super/range {p0 .. p5}, Landroid/widget/TextView;->onLayout(ZIIII)V

    .line 28
    return-void
.end method

.method public setHighLight(II)V
    .locals 0

    .prologue
    .line 144
    iput p1, p0, Lme/biubiubiu/justifytext/library/JustifyTextView;->c:I

    .line 145
    iput p2, p0, Lme/biubiubiu/justifytext/library/JustifyTextView;->d:I

    .line 146
    invoke-virtual {p0}, Lme/biubiubiu/justifytext/library/JustifyTextView;->invalidate()V

    .line 147
    return-void
.end method
