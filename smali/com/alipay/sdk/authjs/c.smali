.class public final Lcom/alipay/sdk/authjs/c;
.super Ljava/lang/Object;


# instance fields
.field a:Lcom/alipay/sdk/authjs/b;

.field b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alipay/sdk/authjs/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/sdk/authjs/c;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/alipay/sdk/authjs/c;->a:Lcom/alipay/sdk/authjs/b;

    return-void
.end method


# virtual methods
.method public final a(Lcom/alipay/sdk/authjs/a;)V
    .locals 3

    iget-object v0, p1, Lcom/alipay/sdk/authjs/a;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/alipay/sdk/authjs/a;->a:Ljava/lang/String;

    sget-object v1, Lcom/alipay/sdk/authjs/a$a;->c:Lcom/alipay/sdk/authjs/a$a;

    invoke-virtual {p0, v0, v1}, Lcom/alipay/sdk/authjs/c;->a(Ljava/lang/String;Lcom/alipay/sdk/authjs/a$a;)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/alipay/sdk/authjs/d;

    invoke-direct {v1, p0, p1}, Lcom/alipay/sdk/authjs/d;-><init>(Lcom/alipay/sdk/authjs/c;Lcom/alipay/sdk/authjs/a;)V

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Lcom/alipay/sdk/authjs/a$a;)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "error"

    invoke-virtual {p2}, Lcom/alipay/sdk/authjs/a$a;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    new-instance v1, Lcom/alipay/sdk/authjs/a;

    const-string v2, "callback"

    invoke-direct {v1, v2}, Lcom/alipay/sdk/authjs/a;-><init>(Ljava/lang/String;)V

    iput-object v0, v1, Lcom/alipay/sdk/authjs/a;->d:Lorg/json/JSONObject;

    iput-object p1, v1, Lcom/alipay/sdk/authjs/a;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/sdk/authjs/c;->a:Lcom/alipay/sdk/authjs/b;

    invoke-interface {v0, v1}, Lcom/alipay/sdk/authjs/b;->a(Lcom/alipay/sdk/authjs/a;)V

    goto :goto_0
.end method
