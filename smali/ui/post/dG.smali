.class final Lcom/ushaqi/zhuishushenqi/ui/post/dG;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/handmark/pulltorefresh/library/j;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;)V
    .locals 0

    .prologue
    .line 239
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dG;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 242
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dG;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;->b(Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;)Lcom/ushaqi/zhuishushenqi/ui/post/dH;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dG;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;->b(Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;)Lcom/ushaqi/zhuishushenqi/ui/post/dH;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/dH;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_3

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dG;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;->j(Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 245
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dG;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;->k(Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;)Lcom/ushaqi/zhuishushenqi/ui/post/dI;

    move-result-object v0

    invoke-static {v0}, Landroid/support/design/widget/am;->a(Landroid/os/AsyncTask;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 246
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dG;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;->k(Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;)Lcom/ushaqi/zhuishushenqi/ui/post/dI;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/ushaqi/zhuishushenqi/ui/post/dI;->cancel(Z)Z

    .line 249
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dG;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/post/dH;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dG;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;

    invoke-direct {v1, v2, v3}, Lcom/ushaqi/zhuishushenqi/ui/post/dH;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;B)V

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;->a(Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;Lcom/ushaqi/zhuishushenqi/ui/post/dH;)Lcom/ushaqi/zhuishushenqi/ui/post/dH;

    .line 250
    const/4 v0, 0x0

    .line 251
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dG;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;->e(Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 252
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dG;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;->e(Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dG;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;->e(Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/Tweet;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Tweet;->get_id()Ljava/lang/String;

    move-result-object v0

    .line 254
    :cond_2
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dG;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;->b(Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;)Lcom/ushaqi/zhuishushenqi/ui/post/dH;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/String;

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/ushaqi/zhuishushenqi/ui/post/dH;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 256
    :cond_3
    return-void
.end method
