.class final Lcom/alipay/sdk/app/l;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/alipay/sdk/app/j;


# direct methods
.method constructor <init>(Lcom/alipay/sdk/app/j;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/sdk/app/l;->a:Lcom/alipay/sdk/app/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/sdk/app/l;->a:Lcom/alipay/sdk/app/j;

    iget-object v0, v0, Lcom/alipay/sdk/app/j;->a:Landroid/webkit/SslErrorHandler;

    invoke-virtual {v0}, Landroid/webkit/SslErrorHandler;->cancel()V

    iget-object v0, p0, Lcom/alipay/sdk/app/l;->a:Lcom/alipay/sdk/app/j;

    iget-object v0, v0, Lcom/alipay/sdk/app/j;->b:Lcom/alipay/sdk/app/b;

    iget-object v0, v0, Lcom/alipay/sdk/app/b;->a:Lcom/alipay/sdk/app/H5PayActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/sdk/app/H5PayActivity;->a(Lcom/alipay/sdk/app/H5PayActivity;Z)Z

    invoke-static {}, Lcom/alipay/sdk/app/o;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/sdk/app/o;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/sdk/app/l;->a:Lcom/alipay/sdk/app/j;

    iget-object v0, v0, Lcom/alipay/sdk/app/j;->b:Lcom/alipay/sdk/app/b;

    iget-object v0, v0, Lcom/alipay/sdk/app/b;->a:Lcom/alipay/sdk/app/H5PayActivity;

    invoke-virtual {v0}, Lcom/alipay/sdk/app/H5PayActivity;->finish()V

    return-void
.end method
