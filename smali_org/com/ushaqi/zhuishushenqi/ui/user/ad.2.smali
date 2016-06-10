.class final Lcom/ushaqi/zhuishushenqi/ui/user/ad;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/user/ac;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/user/ac;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/ad;->a:Lcom/ushaqi/zhuishushenqi/ui/user/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 122
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/ad;->a:Lcom/ushaqi/zhuishushenqi/ui/user/ac;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/user/ac;->a:Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;->c(Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;)Lcom/ushaqi/zhuishushenqi/ui/user/af;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/ad;->a:Lcom/ushaqi/zhuishushenqi/ui/user/ac;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/user/ac;->a:Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;->c(Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;)Lcom/ushaqi/zhuishushenqi/ui/user/af;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/af;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/ad;->a:Lcom/ushaqi/zhuishushenqi/ui/user/ac;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/user/ac;->a:Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;->c(Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;)Lcom/ushaqi/zhuishushenqi/ui/user/af;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/af;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/ad;->a:Lcom/ushaqi/zhuishushenqi/ui/user/ac;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/user/ac;->a:Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;->c(Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;)Lcom/ushaqi/zhuishushenqi/ui/user/af;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/user/af;->cancel(Z)Z

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/ad;->a:Lcom/ushaqi/zhuishushenqi/ui/user/ac;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/user/ac;->a:Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/user/af;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/user/ad;->a:Lcom/ushaqi/zhuishushenqi/ui/user/ac;

    iget-object v2, v2, Lcom/ushaqi/zhuishushenqi/ui/user/ac;->a:Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;

    invoke-direct {v1, v2, v3}, Lcom/ushaqi/zhuishushenqi/ui/user/af;-><init>(Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;Z)V

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;->a(Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;Lcom/ushaqi/zhuishushenqi/ui/user/af;)Lcom/ushaqi/zhuishushenqi/ui/user/af;

    .line 128
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/ad;->a:Lcom/ushaqi/zhuishushenqi/ui/user/ac;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/user/ac;->a:Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;->c(Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;)Lcom/ushaqi/zhuishushenqi/ui/user/af;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/user/af;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 129
    return-void
.end method
