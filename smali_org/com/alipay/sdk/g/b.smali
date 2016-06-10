.class final Lcom/alipay/sdk/g/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Z

.field private synthetic b:Landroid/content/DialogInterface$OnCancelListener;

.field private synthetic c:Ljava/lang/CharSequence;

.field private synthetic d:Lcom/alipay/sdk/g/a;


# direct methods
.method constructor <init>(Lcom/alipay/sdk/g/a;Ljava/lang/CharSequence;)V
    .locals 1

    iput-object p1, p0, Lcom/alipay/sdk/g/b;->d:Lcom/alipay/sdk/g/a;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/sdk/g/b;->a:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/sdk/g/b;->b:Landroid/content/DialogInterface$OnCancelListener;

    iput-object p2, p0, Lcom/alipay/sdk/g/b;->c:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/alipay/sdk/g/b;->d:Lcom/alipay/sdk/g/a;

    iget-object v0, v0, Lcom/alipay/sdk/g/a;->b:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/sdk/g/b;->d:Lcom/alipay/sdk/g/a;

    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/alipay/sdk/g/b;->d:Lcom/alipay/sdk/g/a;

    iget-object v2, v2, Lcom/alipay/sdk/g/a;->a:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/alipay/sdk/g/a;->b:Landroid/app/ProgressDialog;

    :cond_0
    iget-object v0, p0, Lcom/alipay/sdk/g/b;->d:Lcom/alipay/sdk/g/a;

    iget-object v0, v0, Lcom/alipay/sdk/g/a;->b:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/alipay/sdk/g/b;->d:Lcom/alipay/sdk/g/a;

    iget-object v0, v0, Lcom/alipay/sdk/g/a;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Lcom/alipay/sdk/g/b;->d:Lcom/alipay/sdk/g/a;

    iget-object v0, v0, Lcom/alipay/sdk/g/a;->b:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/alipay/sdk/g/b;->c:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    :try_start_0
    iget-object v0, p0, Lcom/alipay/sdk/g/b;->d:Lcom/alipay/sdk/g/a;

    iget-object v0, v0, Lcom/alipay/sdk/g/a;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/alipay/sdk/g/b;->d:Lcom/alipay/sdk/g/a;

    iput-object v3, v0, Lcom/alipay/sdk/g/a;->b:Landroid/app/ProgressDialog;

    goto :goto_0
.end method
