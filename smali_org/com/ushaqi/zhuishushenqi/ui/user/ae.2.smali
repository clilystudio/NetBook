.class final Lcom/ushaqi/zhuishushenqi/ui/user/ae;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/handmark/pulltorefresh/library/j;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/ae;->a:Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 207
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/ae;->a:Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;->c(Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;)Lcom/ushaqi/zhuishushenqi/ui/user/af;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/ae;->a:Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;->c(Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;)Lcom/ushaqi/zhuishushenqi/ui/user/af;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/af;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_1

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/ae;->a:Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;->f(Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 210
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/ae;->a:Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/user/af;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/user/ae;->a:Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;

    invoke-direct {v1, v2}, Lcom/ushaqi/zhuishushenqi/ui/user/af;-><init>(Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;)V

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;->a(Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;Lcom/ushaqi/zhuishushenqi/ui/user/af;)Lcom/ushaqi/zhuishushenqi/ui/user/af;

    .line 211
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/ae;->a:Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;->c(Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;)Lcom/ushaqi/zhuishushenqi/ui/user/af;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/user/af;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 213
    :cond_1
    return-void
.end method
