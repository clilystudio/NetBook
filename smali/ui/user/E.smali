.class final Lcom/ushaqi/zhuishushenqi/ui/user/E;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/handmark/pulltorefresh/library/j;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;)V
    .locals 0

    .prologue
    .line 269
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/E;->a:Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 272
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/E;->a:Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;->e(Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;)Lcom/ushaqi/zhuishushenqi/ui/user/F;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/E;->a:Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;->e(Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;)Lcom/ushaqi/zhuishushenqi/ui/user/F;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/F;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_2

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/E;->a:Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;->i(Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 274
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/E;->a:Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;->f(Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;)Lcom/ushaqi/zhuishushenqi/ui/user/G;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/E;->a:Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;->f(Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;)Lcom/ushaqi/zhuishushenqi/ui/user/G;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/G;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/E;->a:Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;->f(Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;)Lcom/ushaqi/zhuishushenqi/ui/user/G;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/G;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 279
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/E;->a:Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;->f(Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;)Lcom/ushaqi/zhuishushenqi/ui/user/G;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/ushaqi/zhuishushenqi/ui/user/G;->cancel(Z)Z

    .line 282
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/E;->a:Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/user/F;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/user/E;->a:Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;

    invoke-direct {v1, v2, v3}, Lcom/ushaqi/zhuishushenqi/ui/user/F;-><init>(Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;B)V

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;->a(Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;Lcom/ushaqi/zhuishushenqi/ui/user/F;)Lcom/ushaqi/zhuishushenqi/ui/user/F;

    .line 283
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/E;->a:Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;->e(Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;)Lcom/ushaqi/zhuishushenqi/ui/user/F;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/user/E;->a:Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;->b(Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/user/F;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 285
    :cond_2
    return-void
.end method
