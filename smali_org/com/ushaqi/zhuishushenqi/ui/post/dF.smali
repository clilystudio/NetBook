.class final Lcom/ushaqi/zhuishushenqi/ui/post/dF;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/post/dE;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/dE;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dF;->a:Lcom/ushaqi/zhuishushenqi/ui/post/dE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dF;->a:Lcom/ushaqi/zhuishushenqi/ui/post/dE;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/post/dE;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;->b(Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;)Lcom/ushaqi/zhuishushenqi/ui/post/dH;

    move-result-object v0

    invoke-static {v0}, Landroid/support/design/widget/am;->a(Landroid/os/AsyncTask;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dF;->a:Lcom/ushaqi/zhuishushenqi/ui/post/dE;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/post/dE;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;->b(Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;)Lcom/ushaqi/zhuishushenqi/ui/post/dH;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/dH;->cancel(Z)Z

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dF;->a:Lcom/ushaqi/zhuishushenqi/ui/post/dE;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/post/dE;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;->c(Lcom/ushaqi/zhuishushenqi/ui/post/TweetHotFragment;)V

    .line 90
    return-void
.end method
