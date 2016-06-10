.class final Lcom/ushaqi/zhuishushenqi/ui/post/dg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/handmark/pulltorefresh/library/j;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;)V
    .locals 0

    .prologue
    .line 643
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dg;->a:Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 646
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dg;->a:Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->f(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;)Lcom/ushaqi/zhuishushenqi/ui/post/do;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dg;->a:Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->f(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;)Lcom/ushaqi/zhuishushenqi/ui/post/do;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/do;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_2

    .line 647
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dg;->a:Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->s(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 649
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dg;->a:Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->j(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;)Lcom/ushaqi/zhuishushenqi/ui/post/dp;

    move-result-object v0

    invoke-static {v0}, Landroid/support/design/widget/am;->a(Landroid/os/AsyncTask;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 650
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dg;->a:Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->j(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;)Lcom/ushaqi/zhuishushenqi/ui/post/dp;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/ushaqi/zhuishushenqi/ui/post/dp;->cancel(Z)Z

    .line 653
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dg;->a:Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/post/do;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dg;->a:Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;

    invoke-direct {v1, v2, v3}, Lcom/ushaqi/zhuishushenqi/ui/post/do;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;B)V

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;Lcom/ushaqi/zhuishushenqi/ui/post/do;)Lcom/ushaqi/zhuishushenqi/ui/post/do;

    .line 654
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dg;->a:Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->f(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;)Lcom/ushaqi/zhuishushenqi/ui/post/do;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dg;->a:Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->g(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dg;->a:Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->h(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dg;->a:Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;

    invoke-static {v3}, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->i(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/do;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 656
    :cond_2
    return-void
.end method
