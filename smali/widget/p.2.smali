.class public final Lcom/ushaqi/zhuishushenqi/widget/p;
.super Landroid/graphics/drawable/shapes/Shape;
.source "SourceFile"


# instance fields
.field private a:Landroid/graphics/RectF;

.field private b:F


# direct methods
.method public constructor <init>(F)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/graphics/drawable/shapes/Shape;-><init>()V

    .line 19
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/widget/p;->b:F

    .line 20
    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 7

    .prologue
    const/high16 v6, 0x40000000

    const/4 v5, 0x0

    .line 30
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/p;->a:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    .line 31
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 32
    invoke-virtual {v1, v5, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 33
    iget v2, p0, Lcom/ushaqi/zhuishushenqi/widget/p;->b:F

    sub-float v2, v0, v2

    invoke-virtual {v1, v2, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 34
    new-instance v2, Landroid/graphics/RectF;

    iget v3, p0, Lcom/ushaqi/zhuishushenqi/widget/p;->b:F

    mul-float/2addr v3, v6

    sub-float v3, v0, v3

    iget v4, p0, Lcom/ushaqi/zhuishushenqi/widget/p;->b:F

    mul-float/2addr v4, v6

    invoke-direct {v2, v3, v5, v0, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 35
    const/high16 v3, -0x3d4c0000

    const/high16 v4, 0x42b40000

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 36
    invoke-virtual {v1, v0, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 37
    invoke-virtual {v1, v5, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 38
    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 39
    invoke-virtual {p1, v1, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 40
    return-void
.end method

.method protected final onResize(FF)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 24
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/shapes/Shape;->onResize(FF)V

    .line 25
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v1, v1, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/p;->a:Landroid/graphics/RectF;

    .line 26
    return-void
.end method
