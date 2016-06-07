.class final Lcom/alipay/sdk/app/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/alipay/sdk/app/a;


# direct methods
.method constructor <init>(Lcom/alipay/sdk/app/a;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/sdk/app/h;->a:Lcom/alipay/sdk/app/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/sdk/app/h;->a:Lcom/alipay/sdk/app/a;

    iget-object v0, v0, Lcom/alipay/sdk/app/a;->a:Lcom/alipay/sdk/app/H5AuthActivity;

    invoke-virtual {v0}, Lcom/alipay/sdk/app/H5AuthActivity;->finish()V

    return-void
.end method
