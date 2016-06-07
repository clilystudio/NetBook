.class final Lcom/ushaqi/zhuishushenqi/ui/user/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/handmark/pulltorefresh/library/j;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;)V
    .locals 0

    .prologue
    .line 307
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/x;->a:Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 310
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/x;->a:Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;->e(Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;)Lcom/ushaqi/zhuishushenqi/ui/user/z;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/x;->a:Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;->e(Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;)Lcom/ushaqi/zhuishushenqi/ui/user/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/z;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_2

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/x;->a:Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;->i(Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 313
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/x;->a:Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;->f(Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;)Lcom/ushaqi/zhuishushenqi/ui/user/A;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/x;->a:Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;->f(Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;)Lcom/ushaqi/zhuishushenqi/ui/user/A;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/A;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/x;->a:Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;->f(Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;)Lcom/ushaqi/zhuishushenqi/ui/user/A;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/A;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 318
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/x;->a:Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;->f(Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;)Lcom/ushaqi/zhuishushenqi/ui/user/A;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/ushaqi/zhuishushenqi/ui/user/A;->cancel(Z)Z

    .line 321
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/x;->a:Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/user/z;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/user/x;->a:Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;

    invoke-direct {v1, v2, v3}, Lcom/ushaqi/zhuishushenqi/ui/user/z;-><init>(Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;B)V

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;->a(Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;Lcom/ushaqi/zhuishushenqi/ui/user/z;)Lcom/ushaqi/zhuishushenqi/ui/user/z;

    .line 322
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/x;->a:Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;->e(Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;)Lcom/ushaqi/zhuishushenqi/ui/user/z;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/user/x;->a:Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;->b(Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/user/z;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 324
    :cond_2
    return-void
.end method
