.class final Lcom/ushaqi/zhuishushenqi/ui/ugcbook/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/handmark/pulltorefresh/library/j;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/a;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 90
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/a;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;->h:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/a;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;->h:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/d;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/d;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_2

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/a;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;->e:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 93
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/a;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;->g:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/e;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/a;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;->g:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/e;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/e;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/a;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;->g:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/e;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/e;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 98
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/a;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;->g:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/e;->cancel(Z)Z

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/a;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/d;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/a;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;

    invoke-direct {v1, v2, v3}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/d;-><init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;B)V

    iput-object v1, v0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;->h:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/d;

    .line 102
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/a;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;->h:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/d;

    new-array v1, v3, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/d;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 104
    :cond_2
    return-void
.end method
