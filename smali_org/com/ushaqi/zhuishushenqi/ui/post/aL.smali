.class final Lcom/ushaqi/zhuishushenqi/ui/post/aL;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/post/aK;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/aK;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/aL;->a:Lcom/ushaqi/zhuishushenqi/ui/post/aK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/aL;->a:Lcom/ushaqi/zhuishushenqi/ui/post/aK;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/post/aK;->a:Lcom/ushaqi/zhuishushenqi/ui/post/BookTopicListFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookTopicListFragment;->b(Lcom/ushaqi/zhuishushenqi/ui/post/BookTopicListFragment;)Lcom/ushaqi/zhuishushenqi/ui/post/aQ;

    move-result-object v0

    invoke-static {v0}, Landroid/support/design/widget/am;->a(Landroid/os/AsyncTask;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/aL;->a:Lcom/ushaqi/zhuishushenqi/ui/post/aK;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/post/aK;->a:Lcom/ushaqi/zhuishushenqi/ui/post/BookTopicListFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookTopicListFragment;->b(Lcom/ushaqi/zhuishushenqi/ui/post/BookTopicListFragment;)Lcom/ushaqi/zhuishushenqi/ui/post/aQ;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/aQ;->cancel(Z)Z

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/aL;->a:Lcom/ushaqi/zhuishushenqi/ui/post/aK;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/post/aK;->a:Lcom/ushaqi/zhuishushenqi/ui/post/BookTopicListFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookTopicListFragment;->c(Lcom/ushaqi/zhuishushenqi/ui/post/BookTopicListFragment;)V

    .line 78
    return-void
.end method
