.class final Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/handmark/pulltorefresh/library/j;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;)V
    .locals 0

    .prologue
    .line 323
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ar;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 327
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ar;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;->i(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;)Lcom/ushaqi/zhuishushenqi/ui/ugcbook/as;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ar;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;->i(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;)Lcom/ushaqi/zhuishushenqi/ui/ugcbook/as;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/as;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_2

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ar;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;->d(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 329
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ar;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;->b(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;)Lcom/ushaqi/zhuishushenqi/ui/ugcbook/at;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ar;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;->b(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;)Lcom/ushaqi/zhuishushenqi/ui/ugcbook/at;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/at;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ar;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;->b(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;)Lcom/ushaqi/zhuishushenqi/ui/ugcbook/at;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/at;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 334
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ar;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;->b(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;)Lcom/ushaqi/zhuishushenqi/ui/ugcbook/at;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/at;->cancel(Z)Z

    .line 337
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ar;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/as;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ar;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;

    invoke-direct {v1, v2, v3}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/as;-><init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;B)V

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;->a(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;Lcom/ushaqi/zhuishushenqi/ui/ugcbook/as;)Lcom/ushaqi/zhuishushenqi/ui/ugcbook/as;

    .line 338
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ar;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;->i(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;)Lcom/ushaqi/zhuishushenqi/ui/ugcbook/as;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/as;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 340
    :cond_2
    return-void
.end method
