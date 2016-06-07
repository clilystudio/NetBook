.class public final Lcom/alipay/sdk/protocol/d;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/alipay/sdk/protocol/c;)Lcom/alipay/sdk/protocol/g;
    .locals 6

    iget-object v1, p0, Lcom/alipay/sdk/protocol/c;->a:Lcom/alipay/sdk/b/e;

    iget-object v2, p0, Lcom/alipay/sdk/protocol/c;->b:Lcom/alipay/sdk/b/f;

    iget-object v3, p0, Lcom/alipay/sdk/protocol/c;->c:Lorg/json/JSONObject;

    const/4 v0, 0x0

    const-string v4, "form"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v0, Lcom/alipay/sdk/protocol/g;

    invoke-direct {v0, v1, v2}, Lcom/alipay/sdk/protocol/g;-><init>(Lcom/alipay/sdk/b/e;Lcom/alipay/sdk/b/f;)V

    iget-object v1, p0, Lcom/alipay/sdk/protocol/c;->c:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/alipay/sdk/protocol/g;->a(Lorg/json/JSONObject;)V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v4, "status"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "status"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/sdk/protocol/f;->a(Ljava/lang/String;)Lcom/alipay/sdk/protocol/f;

    move-result-object v4

    sget-object v5, Lcom/alipay/sdk/protocol/e;->a:[I

    invoke-virtual {v4}, Lcom/alipay/sdk/protocol/f;->ordinal()I

    move-result v4

    aget v4, v5, v4

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance v0, Lcom/alipay/sdk/protocol/g;

    invoke-direct {v0, v1, v2}, Lcom/alipay/sdk/protocol/g;-><init>(Lcom/alipay/sdk/b/e;Lcom/alipay/sdk/b/f;)V

    invoke-virtual {v0, v3}, Lcom/alipay/sdk/protocol/g;->a(Lorg/json/JSONObject;)V

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/alipay/sdk/e/b;->a()Lcom/alipay/sdk/e/b;

    move-result-object v1

    iget-object v1, v1, Lcom/alipay/sdk/e/b;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/alipay/sdk/util/a;->a(Landroid/content/Context;)Lcom/alipay/sdk/util/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/sdk/util/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lcom/alipay/sdk/util/a;->a(Landroid/content/Context;)Lcom/alipay/sdk/util/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/sdk/util/a;->b()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alipay/sdk/f/a;

    invoke-direct {v4, v1}, Lcom/alipay/sdk/f/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v2, v3}, Lcom/alipay/sdk/f/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/alipay/sdk/f/a;->close()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
