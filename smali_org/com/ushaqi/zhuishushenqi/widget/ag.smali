.class final Lcom/ushaqi/zhuishushenqi/widget/ag;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/c/a/D;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/widget/LoadingProgressView;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/widget/LoadingProgressView;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/widget/ag;->a:Lcom/ushaqi/zhuishushenqi/widget/LoadingProgressView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/c/a/w;)V
    .locals 2

    .prologue
    .line 94
    invoke-virtual {p1}, Lcom/c/a/w;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 95
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/widget/ag;->a:Lcom/ushaqi/zhuishushenqi/widget/LoadingProgressView;

    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/widget/LoadingProgressView;->setProgress(F)V

    .line 96
    return-void
.end method
