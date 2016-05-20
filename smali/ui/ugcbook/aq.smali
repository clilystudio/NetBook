.class final Lcom/ushaqi/zhuishushenqi/ui/ugcbook/aq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ap;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ap;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/aq;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 155
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/aq;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ap;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ap;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;->b(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;)Lcom/ushaqi/zhuishushenqi/ui/ugcbook/at;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/aq;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ap;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ap;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;->b(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;)Lcom/ushaqi/zhuishushenqi/ui/ugcbook/at;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/at;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/aq;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ap;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ap;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;->b(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;)Lcom/ushaqi/zhuishushenqi/ui/ugcbook/at;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/at;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/aq;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ap;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ap;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;->b(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;)Lcom/ushaqi/zhuishushenqi/ui/ugcbook/at;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/at;->cancel(Z)Z

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/aq;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ap;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ap;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/at;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/aq;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ap;

    iget-object v2, v2, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ap;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;

    invoke-direct {v1, v2, v3}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/at;-><init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;B)V

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;->a(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;Lcom/ushaqi/zhuishushenqi/ui/ugcbook/at;)Lcom/ushaqi/zhuishushenqi/ui/ugcbook/at;

    .line 161
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/aq;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ap;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ap;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;->b(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainListFragment;)Lcom/ushaqi/zhuishushenqi/ui/ugcbook/at;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/at;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 162
    return-void
.end method
