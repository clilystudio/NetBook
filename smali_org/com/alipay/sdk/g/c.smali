.class final Lcom/alipay/sdk/g/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/alipay/sdk/g/a;


# direct methods
.method constructor <init>(Lcom/alipay/sdk/g/a;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/sdk/g/c;->a:Lcom/alipay/sdk/g/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    const/4 v2, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/sdk/g/c;->a:Lcom/alipay/sdk/g/a;

    iget-object v0, v0, Lcom/alipay/sdk/g/a;->b:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/sdk/g/c;->a:Lcom/alipay/sdk/g/a;

    invoke-virtual {v0}, Lcom/alipay/sdk/g/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/sdk/g/c;->a:Lcom/alipay/sdk/g/a;

    iget-object v0, v0, Lcom/alipay/sdk/g/a;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v0, p0, Lcom/alipay/sdk/g/c;->a:Lcom/alipay/sdk/g/a;

    iput-object v2, v0, Lcom/alipay/sdk/g/a;->b:Landroid/app/ProgressDialog;

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/alipay/sdk/g/c;->a:Lcom/alipay/sdk/g/a;

    iput-object v2, v0, Lcom/alipay/sdk/g/a;->b:Landroid/app/ProgressDialog;

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/alipay/sdk/g/c;->a:Lcom/alipay/sdk/g/a;

    iput-object v2, v1, Lcom/alipay/sdk/g/a;->b:Landroid/app/ProgressDialog;

    throw v0
.end method
