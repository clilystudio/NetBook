.class final Lcom/ushaqi/zhuishushenqi/ui/post/bM;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/post/bL;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/bL;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bM;->a:Lcom/ushaqi/zhuishushenqi/ui/post/bL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bM;->a:Lcom/ushaqi/zhuishushenqi/ui/post/bL;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/post/bL;->a:Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->b(Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;)Lcom/ushaqi/zhuishushenqi/ui/post/bW;

    move-result-object v0

    invoke-static {v0}, Landroid/support/design/widget/am;->a(Landroid/os/AsyncTask;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bM;->a:Lcom/ushaqi/zhuishushenqi/ui/post/bL;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/post/bL;->a:Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->b(Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;)Lcom/ushaqi/zhuishushenqi/ui/post/bW;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/bW;->cancel(Z)Z

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bM;->a:Lcom/ushaqi/zhuishushenqi/ui/post/bL;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/post/bL;->a:Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->c(Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;)V

    .line 165
    return-void
.end method
