.class final Lcom/ushaqi/zhuishushenqi/ui/post/dv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ushaqi/zhuishushenqi/widget/av;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;)V
    .locals 0

    .prologue
    .line 763
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dv;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 766
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dv;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->m(Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;)Lcom/ushaqi/zhuishushenqi/ui/post/dy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dv;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->m(Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;)Lcom/ushaqi/zhuishushenqi/ui/post/dy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/dy;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_1

    .line 767
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dv;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->n(Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;)V

    .line 769
    :cond_1
    return-void
.end method
