.class final Lcom/ushaqi/zhuishushenqi/ui/post/aA;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/post/az;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/az;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/aA;->a:Lcom/ushaqi/zhuishushenqi/ui/post/az;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/aA;->a:Lcom/ushaqi/zhuishushenqi/ui/post/az;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/post/az;->a:Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;->b(Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;)Lcom/ushaqi/zhuishushenqi/ui/post/aH;

    move-result-object v0

    invoke-static {v0}, Landroid/support/design/widget/am;->a(Landroid/os/AsyncTask;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/aA;->a:Lcom/ushaqi/zhuishushenqi/ui/post/az;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/post/az;->a:Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;->b(Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;)Lcom/ushaqi/zhuishushenqi/ui/post/aH;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/aH;->cancel(Z)Z

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/aA;->a:Lcom/ushaqi/zhuishushenqi/ui/post/az;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/post/az;->a:Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;->c(Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;)V

    .line 84
    return-void
.end method
