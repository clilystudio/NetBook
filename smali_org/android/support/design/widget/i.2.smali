.class Landroid/support/design/widget/i;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# instance fields
.field final a:Landroid/graphics/Paint;

.field final b:Landroid/graphics/Rect;

.field private c:Landroid/graphics/RectF;

.field private d:F

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 57
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 43
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/i;->b:Landroid/graphics/Rect;

    .line 44
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/i;->c:Landroid/graphics/RectF;

    .line 55
    iput-boolean v1, p0, Landroid/support/design/widget/i;->j:Z

    .line 58
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Landroid/support/design/widget/i;->a:Landroid/graphics/Paint;

    .line 59
    iget-object v0, p0, Landroid/support/design/widget/i;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 60
    return-void
.end method


# virtual methods
.method final a(F)V
    .locals 2

    .prologue
    .line 74
    iget v0, p0, Landroid/support/design/widget/i;->d:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 75
    iput p1, p0, Landroid/support/design/widget/i;->d:F

    .line 76
    iget-object v0, p0, Landroid/support/design/widget/i;->a:Landroid/graphics/Paint;

    const v1, 0x3faaa993

    mul-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/widget/i;->j:Z

    .line 78
    invoke-virtual {p0}, Landroid/support/design/widget/i;->invalidateSelf()V

    .line 80
    :cond_0
    return-void
.end method

.method final a(I)V
    .locals 1

    .prologue
    .line 119
    iput p1, p0, Landroid/support/design/widget/i;->i:I

    .line 120
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/widget/i;->j:Z

    .line 121
    invoke-virtual {p0}, Landroid/support/design/widget/i;->invalidateSelf()V

    .line 122
    return-void
.end method

.method final a(IIII)V
    .locals 0

    .prologue
    .line 64
    iput p1, p0, Landroid/support/design/widget/i;->e:I

    .line 65
    iput p2, p0, Landroid/support/design/widget/i;->f:I

    .line 66
    iput p3, p0, Landroid/support/design/widget/i;->g:I

    .line 67
    iput p4, p0, Landroid/support/design/widget/i;->h:I

    .line 68
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/high16 v10, 0x3f800000

    const/high16 v7, 0x3f000000

    const/4 v1, 0x0

    const/4 v9, 0x0

    .line 84
    iget-boolean v0, p0, Landroid/support/design/widget/i;->j:Z

    if-eqz v0, :cond_0

    .line 85
    iget-object v8, p0, Landroid/support/design/widget/i;->a:Landroid/graphics/Paint;

    .line 1145
    iget-object v3, p0, Landroid/support/design/widget/i;->b:Landroid/graphics/Rect;

    .line 1146
    invoke-virtual {p0, v3}, Landroid/support/design/widget/i;->copyBounds(Landroid/graphics/Rect;)V

    .line 1148
    iget v0, p0, Landroid/support/design/widget/i;->d:F

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 1150
    const/4 v2, 0x6

    new-array v5, v2, [I

    .line 1151
    iget v2, p0, Landroid/support/design/widget/i;->e:I

    iget v4, p0, Landroid/support/design/widget/i;->i:I

    invoke-static {v2, v4}, Landroid/support/v4/graphics/ColorUtils;->compositeColors(II)I

    move-result v2

    aput v2, v5, v9

    .line 1152
    iget v2, p0, Landroid/support/design/widget/i;->f:I

    iget v4, p0, Landroid/support/design/widget/i;->i:I

    invoke-static {v2, v4}, Landroid/support/v4/graphics/ColorUtils;->compositeColors(II)I

    move-result v2

    aput v2, v5, v11

    .line 1153
    const/4 v2, 0x2

    iget v4, p0, Landroid/support/design/widget/i;->f:I

    invoke-static {v4, v9}, Landroid/support/v4/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v4

    iget v6, p0, Landroid/support/design/widget/i;->i:I

    invoke-static {v4, v6}, Landroid/support/v4/graphics/ColorUtils;->compositeColors(II)I

    move-result v4

    aput v4, v5, v2

    .line 1155
    const/4 v2, 0x3

    iget v4, p0, Landroid/support/design/widget/i;->h:I

    invoke-static {v4, v9}, Landroid/support/v4/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v4

    iget v6, p0, Landroid/support/design/widget/i;->i:I

    invoke-static {v4, v6}, Landroid/support/v4/graphics/ColorUtils;->compositeColors(II)I

    move-result v4

    aput v4, v5, v2

    .line 1157
    const/4 v2, 0x4

    iget v4, p0, Landroid/support/design/widget/i;->h:I

    iget v6, p0, Landroid/support/design/widget/i;->i:I

    invoke-static {v4, v6}, Landroid/support/v4/graphics/ColorUtils;->compositeColors(II)I

    move-result v4

    aput v4, v5, v2

    .line 1158
    const/4 v2, 0x5

    iget v4, p0, Landroid/support/design/widget/i;->g:I

    iget v6, p0, Landroid/support/design/widget/i;->i:I

    invoke-static {v4, v6}, Landroid/support/v4/graphics/ColorUtils;->compositeColors(II)I

    move-result v4

    aput v4, v5, v2

    .line 1160
    const/4 v2, 0x6

    new-array v6, v2, [F

    .line 1161
    aput v1, v6, v9

    .line 1162
    aput v0, v6, v11

    .line 1163
    const/4 v2, 0x2

    aput v7, v6, v2

    .line 1164
    const/4 v2, 0x3

    aput v7, v6, v2

    .line 1165
    const/4 v2, 0x4

    sub-float v0, v10, v0

    aput v0, v6, v2

    .line 1166
    const/4 v0, 0x5

    aput v10, v6, v0

    .line 1168
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v2, v3, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v3

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 85
    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 86
    iput-boolean v9, p0, Landroid/support/design/widget/i;->j:Z

    .line 89
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/i;->a:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/high16 v1, 0x40000000

    div-float/2addr v0, v1

    .line 90
    iget-object v1, p0, Landroid/support/design/widget/i;->c:Landroid/graphics/RectF;

    .line 94
    iget-object v2, p0, Landroid/support/design/widget/i;->b:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Landroid/support/design/widget/i;->copyBounds(Landroid/graphics/Rect;)V

    .line 95
    iget-object v2, p0, Landroid/support/design/widget/i;->b:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 96
    iget v2, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v0

    iput v2, v1, Landroid/graphics/RectF;->left:F

    .line 97
    iget v2, v1, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v0

    iput v2, v1, Landroid/graphics/RectF;->top:F

    .line 98
    iget v2, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v0

    iput v2, v1, Landroid/graphics/RectF;->right:F

    .line 99
    iget v2, v1, Landroid/graphics/RectF;->bottom:F

    sub-float v0, v2, v0

    iput v0, v1, Landroid/graphics/RectF;->bottom:F

    .line 102
    iget-object v0, p0, Landroid/support/design/widget/i;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 103
    return-void
.end method

.method public getOpacity()I
    .locals 2

    .prologue
    .line 132
    iget v0, p0, Landroid/support/design/widget/i;->d:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, -0x3

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x2

    goto :goto_0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Landroid/support/design/widget/i;->d:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 108
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 109
    const/4 v0, 0x1

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/widget/i;->j:Z

    .line 138
    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Landroid/support/design/widget/i;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 115
    invoke-virtual {p0}, Landroid/support/design/widget/i;->invalidateSelf()V

    .line 116
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Landroid/support/design/widget/i;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 127
    invoke-virtual {p0}, Landroid/support/design/widget/i;->invalidateSelf()V

    .line 128
    return-void
.end method
