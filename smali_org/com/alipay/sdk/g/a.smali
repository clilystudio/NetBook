.class public final Lcom/alipay/sdk/g/a;
.super Ljava/lang/Object;


# instance fields
.field a:Landroid/app/Activity;

.field b:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/sdk/g/a;->a:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-object v0, p0, Lcom/alipay/sdk/g/a;->b:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/sdk/g/a;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    const-string v0, "\u6b63\u5728\u52a0\u8f7d"

    invoke-virtual {p0}, Lcom/alipay/sdk/g/a;->c()V

    new-instance v1, Lcom/alipay/sdk/g/b;

    invoke-direct {v1, p0, v0}, Lcom/alipay/sdk/g/b;-><init>(Lcom/alipay/sdk/g/a;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/sdk/g/a;->a:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/sdk/g/a;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/sdk/g/a;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 2

    new-instance v0, Lcom/alipay/sdk/g/c;

    invoke-direct {v0, p0}, Lcom/alipay/sdk/g/c;-><init>(Lcom/alipay/sdk/g/a;)V

    iget-object v1, p0, Lcom/alipay/sdk/g/a;->a:Landroid/app/Activity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/sdk/g/a;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alipay/sdk/g/a;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
