.class final Lcom/ushaqi/zhuishushenqi/ui/bv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/handmark/pulltorefresh/library/j;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;)V
    .locals 0

    .prologue
    .line 342
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/bv;->a:Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 345
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bv;->a:Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->n(Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;)Lcom/ushaqi/zhuishushenqi/ui/bw;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bv;->a:Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->n(Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;)Lcom/ushaqi/zhuishushenqi/ui/bw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/bw;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_2

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bv;->a:Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->i(Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 348
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bv;->a:Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->o(Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;)Lcom/ushaqi/zhuishushenqi/ui/bx;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bv;->a:Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->o(Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;)Lcom/ushaqi/zhuishushenqi/ui/bx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/bx;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bv;->a:Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;

    .line 349
    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->o(Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;)Lcom/ushaqi/zhuishushenqi/ui/bx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/bx;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 354
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bv;->a:Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->o(Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;)Lcom/ushaqi/zhuishushenqi/ui/bx;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/ushaqi/zhuishushenqi/ui/bx;->cancel(Z)Z

    .line 357
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bv;->a:Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/bw;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/bv;->a:Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;

    invoke-direct {v1, v2, v3}, Lcom/ushaqi/zhuishushenqi/ui/bw;-><init>(Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;B)V

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->a(Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;Lcom/ushaqi/zhuishushenqi/ui/bw;)Lcom/ushaqi/zhuishushenqi/ui/bw;

    .line 358
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bv;->a:Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->n(Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;)Lcom/ushaqi/zhuishushenqi/ui/bw;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/bv;->a:Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->c(Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;)Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/Account;->getToken()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/bw;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 360
    :cond_2
    return-void
.end method
