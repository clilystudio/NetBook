.class final Lcom/ushaqi/zhuishushenqi/ui/post/dY;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/post/dX;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/dX;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dY;->a:Lcom/ushaqi/zhuishushenqi/ui/post/dX;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dY;->a:Lcom/ushaqi/zhuishushenqi/ui/post/dX;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/post/dX;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;->b(Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;)Lcom/ushaqi/zhuishushenqi/ui/post/ea;

    move-result-object v0

    invoke-static {v0}, Landroid/support/design/widget/am;->a(Landroid/os/AsyncTask;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dY;->a:Lcom/ushaqi/zhuishushenqi/ui/post/dX;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/post/dX;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;->b(Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;)Lcom/ushaqi/zhuishushenqi/ui/post/ea;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/ea;->cancel(Z)Z

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dY;->a:Lcom/ushaqi/zhuishushenqi/ui/post/dX;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/post/dX;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;->c(Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;)V

    .line 132
    return-void
.end method
