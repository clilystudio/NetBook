.class final Lcom/ushaqi/zhuishushenqi/ui/ugcbook/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/b;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/b;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/c;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 129
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/c;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/b;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/b;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;->g:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/c;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/b;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/b;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;->g:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/e;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/e;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/c;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/b;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/b;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;->g:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/e;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/e;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/c;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/b;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/b;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;->g:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/e;->cancel(Z)Z

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/c;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/b;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/b;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/e;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/c;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/b;

    iget-object v2, v2, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/b;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;

    invoke-direct {v1, v2, v3}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/e;-><init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;B)V

    iput-object v1, v0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;->g:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/e;

    .line 135
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/c;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/b;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/b;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;->g:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/e;

    new-array v1, v3, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/e;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 136
    return-void
.end method
