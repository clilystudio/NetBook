.class final Lcom/ushaqi/zhuishushenqi/ui/post/aX;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/handmark/pulltorefresh/library/j;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;)V
    .locals 0

    .prologue
    .line 458
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/aX;->a:Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 462
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/aX;->a:Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;->c(Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;)Lcom/ushaqi/zhuishushenqi/ui/post/bh;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/aX;->a:Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;->c(Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;)Lcom/ushaqi/zhuishushenqi/ui/post/bh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/bh;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_2

    .line 463
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/aX;->a:Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;->q(Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 464
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/aX;->a:Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;->f(Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;)Lcom/ushaqi/zhuishushenqi/ui/post/bi;

    move-result-object v0

    invoke-static {v0}, Landroid/support/design/widget/am;->a(Landroid/os/AsyncTask;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 465
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/aX;->a:Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;->f(Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;)Lcom/ushaqi/zhuishushenqi/ui/post/bi;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/ushaqi/zhuishushenqi/ui/post/bi;->cancel(Z)Z

    .line 468
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/aX;->a:Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/post/bh;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/aX;->a:Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;

    invoke-direct {v1, v2, v3}, Lcom/ushaqi/zhuishushenqi/ui/post/bh;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;B)V

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;Lcom/ushaqi/zhuishushenqi/ui/post/bh;)Lcom/ushaqi/zhuishushenqi/ui/post/bh;

    .line 469
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/aX;->a:Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;->c(Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;)Lcom/ushaqi/zhuishushenqi/ui/post/bh;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/aX;->a:Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;->d(Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/aX;->a:Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;->e(Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/bh;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 471
    :cond_2
    return-void
.end method
