.class final Lcom/ushaqi/zhuishushenqi/ui/user/C;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/user/B;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/user/B;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/C;->a:Lcom/ushaqi/zhuishushenqi/ui/user/B;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 91
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/C;->a:Lcom/ushaqi/zhuishushenqi/ui/user/B;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/user/B;->a:Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;->b(Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/C;->a:Lcom/ushaqi/zhuishushenqi/ui/user/B;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/user/B;->a:Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;->c(Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 93
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/C;->a:Lcom/ushaqi/zhuishushenqi/ui/user/B;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/user/B;->a:Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;->a(Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 94
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/C;->a:Lcom/ushaqi/zhuishushenqi/ui/user/B;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/user/B;->a:Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;->a(Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u8bf7\u767b\u5f55\u540e\u67e5\u770b"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/C;->a:Lcom/ushaqi/zhuishushenqi/ui/user/B;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/user/B;->a:Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;->d(Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;)Lcom/ushaqi/zhuishushenqi/widget/LabelPtrListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/widget/LabelPtrListView;->n()V

    .line 106
    :goto_0
    return-void

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/C;->a:Lcom/ushaqi/zhuishushenqi/ui/user/B;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/user/B;->a:Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;->e(Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;)Lcom/ushaqi/zhuishushenqi/ui/user/F;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/C;->a:Lcom/ushaqi/zhuishushenqi/ui/user/B;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/user/B;->a:Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;->e(Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;)Lcom/ushaqi/zhuishushenqi/ui/user/F;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/F;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/C;->a:Lcom/ushaqi/zhuishushenqi/ui/user/B;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/user/B;->a:Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;->e(Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;)Lcom/ushaqi/zhuishushenqi/ui/user/F;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/F;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 101
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/C;->a:Lcom/ushaqi/zhuishushenqi/ui/user/B;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/user/B;->a:Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;->e(Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;)Lcom/ushaqi/zhuishushenqi/ui/user/F;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/ushaqi/zhuishushenqi/ui/user/F;->cancel(Z)Z

    .line 103
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/C;->a:Lcom/ushaqi/zhuishushenqi/ui/user/B;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/user/B;->a:Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/user/G;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/user/C;->a:Lcom/ushaqi/zhuishushenqi/ui/user/B;

    iget-object v2, v2, Lcom/ushaqi/zhuishushenqi/ui/user/B;->a:Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;

    invoke-direct {v1, v2, v3}, Lcom/ushaqi/zhuishushenqi/ui/user/G;-><init>(Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;B)V

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;->a(Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;Lcom/ushaqi/zhuishushenqi/ui/user/G;)Lcom/ushaqi/zhuishushenqi/ui/user/G;

    .line 104
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/C;->a:Lcom/ushaqi/zhuishushenqi/ui/user/B;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/user/B;->a:Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;->f(Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;)Lcom/ushaqi/zhuishushenqi/ui/user/G;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/user/C;->a:Lcom/ushaqi/zhuishushenqi/ui/user/B;

    iget-object v2, v2, Lcom/ushaqi/zhuishushenqi/ui/user/B;->a:Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;->b(Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/user/G;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
