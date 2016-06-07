.class final Lcom/ushaqi/zhuishushenqi/ui/post/du;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/du;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 157
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/du;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/du;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->c(Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;)Lcom/ushaqi/zhuishushenqi/model/TweetResult;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/du;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;

    .line 1384
    invoke-static {v0}, Landroid/support/design/widget/am;->a(Landroid/app/Activity;)Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v1

    .line 159
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/du;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->c(Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;)Lcom/ushaqi/zhuishushenqi/model/TweetResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/TweetResult;->getTweet()Lcom/ushaqi/zhuishushenqi/model/Tweet;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ushaqi/zhuishushenqi/adapter/G;->a(Lcom/ushaqi/zhuishushenqi/model/Account;Lcom/ushaqi/zhuishushenqi/model/Tweet;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/post/dC;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/du;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/post/du;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;

    const v4, 0x7f050169

    invoke-direct {v0, v2, v3, v4}, Lcom/ushaqi/zhuishushenqi/ui/post/dC;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;Landroid/app/Activity;I)V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/Account;->getToken()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/post/du;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;

    invoke-static {v3}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->c(Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;)Lcom/ushaqi/zhuishushenqi/model/TweetResult;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/model/TweetResult;->getTweet()Lcom/ushaqi/zhuishushenqi/model/Tweet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/model/Tweet;->get_id()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/ui/post/dC;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/du;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;

    const v2, 0x7f050168

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 163
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/du;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->c(Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;)Lcom/ushaqi/zhuishushenqi/model/TweetResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/TweetResult;->getTweet()Lcom/ushaqi/zhuishushenqi/model/Tweet;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/ushaqi/zhuishushenqi/adapter/G;->a(Lcom/ushaqi/zhuishushenqi/model/Tweet;Lcom/ushaqi/zhuishushenqi/model/Account;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 164
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/du;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;

    const v1, 0x7f050137

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 166
    :cond_2
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/du;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\t\t"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\t\t"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method
