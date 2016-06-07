.class public final Lcom/ushaqi/zhuishushenqi/util/E;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:F

.field private b:F

.field private c:F


# direct methods
.method public constructor <init>(Landroid/content/Context;FF)V
    .locals 2

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600ff

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060100

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/util/E;->c:F

    .line 20
    iput p2, p0, Lcom/ushaqi/zhuishushenqi/util/E;->a:F

    .line 21
    iput p3, p0, Lcom/ushaqi/zhuishushenqi/util/E;->b:F

    .line 22
    return-void
.end method


# virtual methods
.method public final a()Lcom/ushaqi/zhuishushenqi/util/F;
    .locals 4

    .prologue
    .line 25
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/util/E;->a:F

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/util/E;->b:F

    sub-float v2, v0, v1

    .line 26
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/util/E;->b:F

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/util/E;->c:F

    add-float/2addr v0, v1

    div-float v0, v2, v0

    float-to-int v0, v0

    move v1, v0

    .line 27
    :goto_0
    if-lez v1, :cond_1

    .line 28
    int-to-float v0, v1

    div-float v0, v2, v0

    iget v3, p0, Lcom/ushaqi/zhuishushenqi/util/E;->b:F

    sub-float v3, v0, v3

    .line 29
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/util/E;->c:F

    cmpl-float v0, v3, v0

    if-ltz v0, :cond_0

    .line 30
    new-instance v0, Lcom/ushaqi/zhuishushenqi/util/F;

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1, v3}, Lcom/ushaqi/zhuishushenqi/util/F;-><init>(IF)V

    .line 33
    :goto_1
    return-object v0

    .line 27
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lcom/ushaqi/zhuishushenqi/util/F;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/util/F;-><init>(IF)V

    goto :goto_1
.end method
