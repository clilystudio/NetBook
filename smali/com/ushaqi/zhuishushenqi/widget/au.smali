.class final Lcom/ushaqi/zhuishushenqi/widget/au;
.super Landroid/graphics/drawable/LayerDrawable;
.source "SourceFile"


# instance fields
.field private a:Landroid/graphics/ColorFilter;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 22
    new-array v0, v2, [Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 15
    new-instance v0, Landroid/graphics/LightingColorFilter;

    const v1, -0x333334

    invoke-direct {v0, v1, v2}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/au;->a:Landroid/graphics/ColorFilter;

    .line 17
    const/16 v0, 0x64

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/widget/au;->b:I

    .line 19
    const/16 v0, 0xff

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/widget/au;->c:I

    .line 23
    return-void
.end method


# virtual methods
.method public final isStateful()Z
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x1

    return v0
.end method

.method protected final onStateChange([I)Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 27
    .line 30
    array-length v4, p1

    move v3, v0

    move v2, v0

    :goto_0
    if-ge v3, v4, :cond_2

    aget v5, p1, v3

    .line 31
    const v6, 0x101009e

    if-ne v5, v6, :cond_1

    move v2, v1

    .line 30
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 33
    :cond_1
    const v6, 0x10100a7

    if-ne v5, v6, :cond_0

    move v0, v1

    .line 34
    goto :goto_1

    .line 37
    :cond_2
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/au;->mutate()Landroid/graphics/drawable/Drawable;

    .line 38
    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    .line 39
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/au;->a:Landroid/graphics/ColorFilter;

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/au;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 48
    :goto_2
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/au;->invalidateSelf()V

    .line 50
    invoke-super {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->onStateChange([I)Z

    move-result v0

    return v0

    .line 40
    :cond_3
    if-nez v2, :cond_4

    .line 41
    invoke-virtual {p0, v7}, Lcom/ushaqi/zhuishushenqi/widget/au;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 42
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/widget/au;->b:I

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/au;->setAlpha(I)V

    goto :goto_2

    .line 44
    :cond_4
    invoke-virtual {p0, v7}, Lcom/ushaqi/zhuishushenqi/widget/au;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 45
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/widget/au;->c:I

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/au;->setAlpha(I)V

    goto :goto_2
.end method
