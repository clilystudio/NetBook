.class final Lcom/ushaqi/zhuishushenqi/ui/post/bR;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;)V
    .locals 0

    .prologue
    .line 241
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bR;->a:Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 245
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bR;->a:Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->j(Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bR;->a:Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->k(Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 246
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bR;->a:Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->l(Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;)Lcom/ushaqi/zhuishushenqi/ui/post/bV;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bR;->a:Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->l(Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;)Lcom/ushaqi/zhuishushenqi/ui/post/bV;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/ushaqi/zhuishushenqi/ui/post/bV;->cancel(Z)Z

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bR;->a:Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/post/bV;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bR;->a:Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;

    new-instance v3, Lcom/ushaqi/zhuishushenqi/ui/post/bS;

    invoke-direct {v3, p0}, Lcom/ushaqi/zhuishushenqi/ui/post/bS;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/bR;)V

    invoke-direct {v1, v2, v3}, Lcom/ushaqi/zhuishushenqi/ui/post/bV;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;Ljava/lang/Runnable;)V

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->a(Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;Lcom/ushaqi/zhuishushenqi/ui/post/bV;)Lcom/ushaqi/zhuishushenqi/ui/post/bV;

    .line 255
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bR;->a:Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->l(Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;)Lcom/ushaqi/zhuishushenqi/ui/post/bV;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/model/Account;->getUser()Lcom/ushaqi/zhuishushenqi/model/User;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/model/User;->getId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/bV;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 259
    :goto_0
    return-void

    .line 257
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bR;->a:Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->m(Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;)V

    goto :goto_0
.end method
