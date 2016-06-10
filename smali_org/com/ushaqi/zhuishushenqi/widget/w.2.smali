.class final Lcom/ushaqi/zhuishushenqi/widget/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/c/a/D;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;)V
    .locals 0

    .prologue
    .line 432
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/widget/w;->a:Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/c/a/w;)V
    .locals 3

    .prologue
    .line 435
    invoke-virtual {p1}, Lcom/c/a/w;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 436
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/widget/w;->a:Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/widget/w;->a:Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->d(Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;)F

    move-result v2

    mul-float/2addr v0, v2

    invoke-static {v1, v0}, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->b(Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;F)F

    .line 437
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/w;->a:Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->invalidate()V

    .line 438
    return-void
.end method
