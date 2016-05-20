.class final Lcom/ushaqi/zhuishushenqi/ui/user/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/user/u;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/user/u;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/v;->a:Lcom/ushaqi/zhuishushenqi/ui/user/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 97
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/v;->a:Lcom/ushaqi/zhuishushenqi/ui/user/u;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/user/u;->a:Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;->b(Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/v;->a:Lcom/ushaqi/zhuishushenqi/ui/user/u;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/user/u;->a:Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;->c(Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 99
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/v;->a:Lcom/ushaqi/zhuishushenqi/ui/user/u;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/user/u;->a:Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;->a(Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 100
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/v;->a:Lcom/ushaqi/zhuishushenqi/ui/user/u;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/user/u;->a:Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;->a(Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u8bf7\u767b\u5f55\u540e\u67e5\u770b"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/v;->a:Lcom/ushaqi/zhuishushenqi/ui/user/u;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/user/u;->a:Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;->d(Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;)Lcom/ushaqi/zhuishushenqi/widget/LabelPtrListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/widget/LabelPtrListView;->n()V

    .line 112
    :goto_0
    return-void

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/v;->a:Lcom/ushaqi/zhuishushenqi/ui/user/u;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/user/u;->a:Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;->e(Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;)Lcom/ushaqi/zhuishushenqi/ui/user/z;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/v;->a:Lcom/ushaqi/zhuishushenqi/ui/user/u;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/user/u;->a:Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;->e(Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;)Lcom/ushaqi/zhuishushenqi/ui/user/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/z;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/v;->a:Lcom/ushaqi/zhuishushenqi/ui/user/u;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/user/u;->a:Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;->e(Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;)Lcom/ushaqi/zhuishushenqi/ui/user/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/z;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 107
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/v;->a:Lcom/ushaqi/zhuishushenqi/ui/user/u;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/user/u;->a:Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;->e(Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;)Lcom/ushaqi/zhuishushenqi/ui/user/z;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/ushaqi/zhuishushenqi/ui/user/z;->cancel(Z)Z

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/v;->a:Lcom/ushaqi/zhuishushenqi/ui/user/u;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/user/u;->a:Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/user/A;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/user/v;->a:Lcom/ushaqi/zhuishushenqi/ui/user/u;

    iget-object v2, v2, Lcom/ushaqi/zhuishushenqi/ui/user/u;->a:Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;

    invoke-direct {v1, v2, v3}, Lcom/ushaqi/zhuishushenqi/ui/user/A;-><init>(Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;B)V

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;->a(Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;Lcom/ushaqi/zhuishushenqi/ui/user/A;)Lcom/ushaqi/zhuishushenqi/ui/user/A;

    .line 110
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/v;->a:Lcom/ushaqi/zhuishushenqi/ui/user/u;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/user/u;->a:Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;->f(Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;)Lcom/ushaqi/zhuishushenqi/ui/user/A;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/user/v;->a:Lcom/ushaqi/zhuishushenqi/ui/user/u;

    iget-object v2, v2, Lcom/ushaqi/zhuishushenqi/ui/user/u;->a:Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;->b(Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/user/A;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
