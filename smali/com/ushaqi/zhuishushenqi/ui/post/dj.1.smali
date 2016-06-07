.class final Lcom/ushaqi/zhuishushenqi/ui/post/dj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/post/di;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/di;)V
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dj;->a:Lcom/ushaqi/zhuishushenqi/ui/post/di;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 203
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dj;->a:Lcom/ushaqi/zhuishushenqi/ui/post/di;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/post/di;->a:Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->f(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;)Lcom/ushaqi/zhuishushenqi/ui/post/do;

    move-result-object v0

    invoke-static {v0}, Landroid/support/design/widget/am;->a(Landroid/os/AsyncTask;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dj;->a:Lcom/ushaqi/zhuishushenqi/ui/post/di;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/post/di;->a:Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->f(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;)Lcom/ushaqi/zhuishushenqi/ui/post/do;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/ushaqi/zhuishushenqi/ui/post/do;->cancel(Z)Z

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dj;->a:Lcom/ushaqi/zhuishushenqi/ui/post/di;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/post/di;->a:Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/post/dp;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dj;->a:Lcom/ushaqi/zhuishushenqi/ui/post/di;

    iget-object v2, v2, Lcom/ushaqi/zhuishushenqi/ui/post/di;->a:Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;

    invoke-direct {v1, v2, v3}, Lcom/ushaqi/zhuishushenqi/ui/post/dp;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;B)V

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;Lcom/ushaqi/zhuishushenqi/ui/post/dp;)Lcom/ushaqi/zhuishushenqi/ui/post/dp;

    .line 207
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dj;->a:Lcom/ushaqi/zhuishushenqi/ui/post/di;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/post/di;->a:Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->j(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;)Lcom/ushaqi/zhuishushenqi/ui/post/dp;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dj;->a:Lcom/ushaqi/zhuishushenqi/ui/post/di;

    iget-object v2, v2, Lcom/ushaqi/zhuishushenqi/ui/post/di;->a:Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->g(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dj;->a:Lcom/ushaqi/zhuishushenqi/ui/post/di;

    iget-object v2, v2, Lcom/ushaqi/zhuishushenqi/ui/post/di;->a:Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->h(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dj;->a:Lcom/ushaqi/zhuishushenqi/ui/post/di;

    iget-object v3, v3, Lcom/ushaqi/zhuishushenqi/ui/post/di;->a:Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;

    invoke-static {v3}, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->i(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/dp;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 208
    return-void
.end method
