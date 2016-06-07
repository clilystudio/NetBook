.class final Landroid/support/design/widget/ae;
.super Landroid/support/v4/widget/ViewDragHelper$Callback;
.source "SourceFile"


# instance fields
.field private a:I

.field private synthetic b:Landroid/support/design/widget/ad;


# direct methods
.method constructor <init>(Landroid/support/design/widget/ad;)V
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Landroid/support/design/widget/ae;->b:Landroid/support/design/widget/ad;

    invoke-direct {p0}, Landroid/support/v4/widget/ViewDragHelper$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public final clampViewPositionHorizontal(Landroid/view/View;II)I
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 273
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    .line 277
    :goto_0
    iget-object v2, p0, Landroid/support/design/widget/ae;->b:Landroid/support/design/widget/ad;

    invoke-static {v2}, Landroid/support/design/widget/ad;->c(Landroid/support/design/widget/ad;)I

    move-result v2

    if-nez v2, :cond_2

    .line 278
    if-eqz v0, :cond_1

    .line 279
    iget v0, p0, Landroid/support/design/widget/ae;->a:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    .line 280
    iget v1, p0, Landroid/support/design/widget/ae;->a:I

    .line 298
    :goto_1
    invoke-static {v0, p2, v1}, Landroid/support/design/widget/ad;->a(III)I

    move-result v0

    return v0

    .line 273
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 282
    :cond_1
    iget v0, p0, Landroid/support/design/widget/ae;->a:I

    .line 283
    iget v1, p0, Landroid/support/design/widget/ae;->a:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_1

    .line 285
    :cond_2
    iget-object v2, p0, Landroid/support/design/widget/ae;->b:Landroid/support/design/widget/ad;

    invoke-static {v2}, Landroid/support/design/widget/ad;->c(Landroid/support/design/widget/ad;)I

    move-result v2

    if-ne v2, v1, :cond_4

    .line 286
    if-eqz v0, :cond_3

    .line 287
    iget v0, p0, Landroid/support/design/widget/ae;->a:I

    .line 288
    iget v1, p0, Landroid/support/design/widget/ae;->a:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_1

    .line 290
    :cond_3
    iget v0, p0, Landroid/support/design/widget/ae;->a:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    .line 291
    iget v1, p0, Landroid/support/design/widget/ae;->a:I

    goto :goto_1

    .line 294
    :cond_4
    iget v0, p0, Landroid/support/design/widget/ae;->a:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    .line 295
    iget v1, p0, Landroid/support/design/widget/ae;->a:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_1
.end method

.method public final clampViewPositionVertical(Landroid/view/View;II)I
    .locals 1

    .prologue
    .line 303
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    return v0
.end method

.method public final getViewHorizontalDragRange(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 268
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0
.end method

.method public final onViewDragStateChanged(I)V
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Landroid/support/design/widget/ae;->b:Landroid/support/design/widget/ad;

    invoke-static {v0}, Landroid/support/design/widget/ad;->a(Landroid/support/design/widget/ad;)Landroid/support/design/widget/af;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Landroid/support/design/widget/ae;->b:Landroid/support/design/widget/ad;

    invoke-static {v0}, Landroid/support/design/widget/ad;->a(Landroid/support/design/widget/ad;)Landroid/support/design/widget/af;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/support/design/widget/af;->a(I)V

    .line 215
    :cond_0
    return-void
.end method

.method public final onViewPositionChanged(Landroid/view/View;IIII)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    .line 308
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Landroid/support/design/widget/ae;->b:Landroid/support/design/widget/ad;

    invoke-static {v1}, Landroid/support/design/widget/ad;->e(Landroid/support/design/widget/ad;)F

    move-result v1

    mul-float/2addr v0, v1

    .line 309
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Landroid/support/design/widget/ae;->b:Landroid/support/design/widget/ad;

    invoke-static {v2}, Landroid/support/design/widget/ad;->f(Landroid/support/design/widget/ad;)F

    move-result v2

    mul-float/2addr v1, v2

    .line 311
    int-to-float v2, p2

    cmpg-float v2, v2, v0

    if-gtz v2, :cond_0

    .line 312
    invoke-static {p1, v3}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 320
    :goto_0
    return-void

    .line 313
    :cond_0
    int-to-float v2, p2

    cmpl-float v2, v2, v1

    if-ltz v2, :cond_1

    .line 314
    invoke-static {p1, v4}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    goto :goto_0

    .line 317
    :cond_1
    int-to-float v2, p2

    .line 1382
    sub-float/2addr v2, v0

    sub-float v0, v1, v0

    div-float v0, v2, v0

    .line 318
    sub-float v0, v3, v0

    invoke-static {v4, v0, v3}, Landroid/support/design/widget/ad;->a(FFF)F

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    goto :goto_0
.end method

.method public final onViewReleased(Landroid/view/View;FF)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 219
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 1241
    cmpl-float v0, p2, v6

    if-eqz v0, :cond_a

    .line 1242
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    .line 1245
    :goto_0
    iget-object v4, p0, Landroid/support/design/widget/ae;->b:Landroid/support/design/widget/ad;

    invoke-static {v4}, Landroid/support/design/widget/ad;->c(Landroid/support/design/widget/ad;)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    move v0, v1

    .line 223
    :goto_1
    if-eqz v0, :cond_e

    .line 224
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v2, p0, Landroid/support/design/widget/ae;->a:I

    if-ge v0, v2, :cond_d

    iget v0, p0, Landroid/support/design/widget/ae;->a:I

    sub-int/2addr v0, v3

    .line 233
    :goto_2
    iget-object v2, p0, Landroid/support/design/widget/ae;->b:Landroid/support/design/widget/ad;

    invoke-static {v2}, Landroid/support/design/widget/ad;->b(Landroid/support/design/widget/ad;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Landroid/support/v4/widget/ViewDragHelper;->settleCapturedViewAt(II)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 234
    new-instance v0, Landroid/support/design/widget/ag;

    iget-object v2, p0, Landroid/support/design/widget/ae;->b:Landroid/support/design/widget/ad;

    invoke-direct {v0, v2, p1, v1}, Landroid/support/design/widget/ag;-><init>(Landroid/support/design/widget/ad;Landroid/view/View;Z)V

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 238
    :cond_0
    :goto_3
    return-void

    :cond_1
    move v0, v2

    .line 1242
    goto :goto_0

    .line 1248
    :cond_2
    iget-object v4, p0, Landroid/support/design/widget/ae;->b:Landroid/support/design/widget/ad;

    invoke-static {v4}, Landroid/support/design/widget/ad;->c(Landroid/support/design/widget/ad;)I

    move-result v4

    if-nez v4, :cond_6

    .line 1251
    if-eqz v0, :cond_4

    cmpg-float v0, p2, v6

    if-gez v0, :cond_3

    move v0, v1

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    cmpl-float v0, p2, v6

    if-lez v0, :cond_5

    move v0, v1

    goto :goto_1

    :cond_5
    move v0, v2

    goto :goto_1

    .line 1252
    :cond_6
    iget-object v4, p0, Landroid/support/design/widget/ae;->b:Landroid/support/design/widget/ad;

    invoke-static {v4}, Landroid/support/design/widget/ad;->c(Landroid/support/design/widget/ad;)I

    move-result v4

    if-ne v4, v1, :cond_c

    .line 1255
    if-eqz v0, :cond_8

    cmpl-float v0, p2, v6

    if-lez v0, :cond_7

    move v0, v1

    goto :goto_1

    :cond_7
    move v0, v2

    goto :goto_1

    :cond_8
    cmpg-float v0, p2, v6

    if-gez v0, :cond_9

    move v0, v1

    goto :goto_1

    :cond_9
    move v0, v2

    goto :goto_1

    .line 1258
    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v4, p0, Landroid/support/design/widget/ae;->a:I

    sub-int/2addr v0, v4

    .line 1259
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Landroid/support/design/widget/ae;->b:Landroid/support/design/widget/ad;

    invoke-static {v5}, Landroid/support/design/widget/ad;->d(Landroid/support/design/widget/ad;)F

    move-result v5

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 1260
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-lt v0, v4, :cond_b

    move v0, v1

    goto :goto_1

    :cond_b
    move v0, v2

    goto :goto_1

    :cond_c
    move v0, v2

    .line 1263
    goto :goto_1

    .line 224
    :cond_d
    iget v0, p0, Landroid/support/design/widget/ae;->a:I

    add-int/2addr v0, v3

    goto :goto_2

    .line 230
    :cond_e
    iget v0, p0, Landroid/support/design/widget/ae;->a:I

    move v1, v2

    goto :goto_2

    .line 235
    :cond_f
    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/ae;->b:Landroid/support/design/widget/ad;

    invoke-static {v0}, Landroid/support/design/widget/ad;->a(Landroid/support/design/widget/ad;)Landroid/support/design/widget/af;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Landroid/support/design/widget/ae;->b:Landroid/support/design/widget/ad;

    invoke-static {v0}, Landroid/support/design/widget/ad;->a(Landroid/support/design/widget/ad;)Landroid/support/design/widget/af;

    move-result-object v0

    invoke-interface {v0}, Landroid/support/design/widget/af;->a()V

    goto :goto_3
.end method

.method public final tryCaptureView(Landroid/view/View;I)Z
    .locals 1

    .prologue
    .line 206
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/ae;->a:I

    .line 207
    const/4 v0, 0x1

    return v0
.end method
