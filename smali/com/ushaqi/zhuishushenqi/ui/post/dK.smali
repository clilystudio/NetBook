.class final Lcom/ushaqi/zhuishushenqi/ui/post/dK;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/post/dJ;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/dJ;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dK;->a:Lcom/ushaqi/zhuishushenqi/ui/post/dJ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dK;->a:Lcom/ushaqi/zhuishushenqi/ui/post/dJ;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/post/dJ;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetListFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetListFragment;->b(Lcom/ushaqi/zhuishushenqi/ui/post/TweetListFragment;)Lcom/ushaqi/zhuishushenqi/ui/post/dN;

    move-result-object v0

    invoke-static {v0}, Landroid/support/design/widget/am;->a(Landroid/os/AsyncTask;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dK;->a:Lcom/ushaqi/zhuishushenqi/ui/post/dJ;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/post/dJ;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetListFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetListFragment;->b(Lcom/ushaqi/zhuishushenqi/ui/post/TweetListFragment;)Lcom/ushaqi/zhuishushenqi/ui/post/dN;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/dN;->cancel(Z)Z

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dK;->a:Lcom/ushaqi/zhuishushenqi/ui/post/dJ;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/post/dJ;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetListFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetListFragment;->c(Lcom/ushaqi/zhuishushenqi/ui/post/TweetListFragment;)V

    .line 87
    return-void
.end method
