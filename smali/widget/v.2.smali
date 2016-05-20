.class final Lcom/ushaqi/zhuishushenqi/widget/v;
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
    .line 424
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/widget/v;->a:Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/c/a/w;)V
    .locals 2

    .prologue
    .line 427
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/widget/v;->a:Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;

    invoke-virtual {p1}, Lcom/c/a/w;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->a(Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;I)I

    .line 428
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/v;->a:Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;->invalidate()V

    .line 429
    return-void
.end method
