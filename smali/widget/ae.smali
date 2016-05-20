.class final Lcom/ushaqi/zhuishushenqi/widget/ae;
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
    .line 53
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/widget/ae;->a:Lcom/ushaqi/zhuishushenqi/widget/LoadingProgressView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/c/a/w;)V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ae;->a:Lcom/ushaqi/zhuishushenqi/widget/LoadingProgressView;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/widget/LoadingProgressView;->a(Lcom/ushaqi/zhuishushenqi/widget/LoadingProgressView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/widget/ae;->a:Lcom/ushaqi/zhuishushenqi/widget/LoadingProgressView;

    invoke-virtual {p1}, Lcom/c/a/w;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v1, v0}, Lcom/ushaqi/zhuishushenqi/widget/LoadingProgressView;->a(Lcom/ushaqi/zhuishushenqi/widget/LoadingProgressView;F)F

    .line 58
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ae;->a:Lcom/ushaqi/zhuishushenqi/widget/LoadingProgressView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/widget/ae;->a:Lcom/ushaqi/zhuishushenqi/widget/LoadingProgressView;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/widget/LoadingProgressView;->b(Lcom/ushaqi/zhuishushenqi/widget/LoadingProgressView;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/LoadingProgressView;->setProgress(F)V

    .line 60
    :cond_0
    return-void
.end method
