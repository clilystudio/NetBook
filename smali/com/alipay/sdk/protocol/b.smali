.class public final Lcom/alipay/sdk/protocol/b;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Z

.field g:Z

.field h:Z

.field i:Ljava/lang/String;

.field j:Ljava/lang/String;

.field k:Ljava/lang/String;

.field l:Lorg/json/JSONObject;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/alipay/sdk/protocol/b;->g:Z

    iput-boolean v0, p0, Lcom/alipay/sdk/protocol/b;->h:Z

    iput-object p1, p0, Lcom/alipay/sdk/protocol/b;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/alipay/sdk/protocol/b;
    .locals 14

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    if-eqz v13, :cond_d

    const-string v0, "name"

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "name"

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    :goto_0
    if-eqz v13, :cond_c

    const-string v0, "host"

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "host"

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    :goto_1
    if-eqz v13, :cond_b

    const-string v0, "params"

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "params"

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    :goto_2
    if-eqz v13, :cond_a

    const-string v0, "enctype"

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "enctype"

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    :goto_3
    if-eqz v13, :cond_9

    const-string v0, "request_param"

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "request_param"

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    :goto_4
    if-eqz v13, :cond_8

    const-string v0, "validate"

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "validate"

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    move v7, v0

    :goto_5
    if-eqz v13, :cond_7

    const-string v0, "https"

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "https"

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    :goto_6
    move v6, v0

    :goto_7
    if-eqz v13, :cond_0

    const-string v0, "formSubmit"

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "formSubmit"

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    :cond_0
    const-string v0, ""

    if-eqz v13, :cond_1

    const-string v2, "namespace"

    invoke-virtual {v13, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "namespace"

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    const-string v2, ""

    if-eqz v13, :cond_2

    const-string v3, "apiVersion"

    invoke-virtual {v13, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v2, "apiVersion"

    invoke-virtual {v13, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_2
    const-string v3, ""

    if-eqz v13, :cond_3

    const-string v5, "apiName"

    invoke-virtual {v13, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v3, "apiName"

    invoke-virtual {v13, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1000
    :cond_3
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    :goto_8
    return-object v4

    .line 0
    :cond_4
    const/4 v0, 0x0

    goto :goto_6

    .line 1000
    :cond_5
    new-instance v5, Lcom/alipay/sdk/protocol/b;

    invoke-direct {v5, v12}, Lcom/alipay/sdk/protocol/b;-><init>(Ljava/lang/String;)V

    iput-object v12, v5, Lcom/alipay/sdk/protocol/b;->a:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_6

    :goto_9
    iput-object v4, v5, Lcom/alipay/sdk/protocol/b;->b:Ljava/lang/String;

    iput-object v10, v5, Lcom/alipay/sdk/protocol/b;->c:Ljava/lang/String;

    iput-object v9, v5, Lcom/alipay/sdk/protocol/b;->d:Ljava/lang/String;

    iput-object v8, v5, Lcom/alipay/sdk/protocol/b;->e:Ljava/lang/String;

    iput-boolean v7, v5, Lcom/alipay/sdk/protocol/b;->f:Z

    iput-boolean v6, v5, Lcom/alipay/sdk/protocol/b;->g:Z

    iput-boolean v1, v5, Lcom/alipay/sdk/protocol/b;->h:Z

    iput-object v0, v5, Lcom/alipay/sdk/protocol/b;->i:Ljava/lang/String;

    iput-object v2, v5, Lcom/alipay/sdk/protocol/b;->j:Ljava/lang/String;

    iput-object v3, v5, Lcom/alipay/sdk/protocol/b;->k:Ljava/lang/String;

    iput-object v13, v5, Lcom/alipay/sdk/protocol/b;->l:Lorg/json/JSONObject;

    move-object v4, v5

    .line 0
    goto :goto_8

    .line 1000
    :cond_6
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    goto :goto_9

    :cond_7
    move v6, v1

    goto :goto_7

    :cond_8
    move v7, v1

    goto/16 :goto_5

    :cond_9
    move-object v8, v4

    goto/16 :goto_4

    :cond_a
    move-object v9, v4

    goto/16 :goto_3

    :cond_b
    move-object v10, v4

    goto/16 :goto_2

    :cond_c
    move-object v11, v4

    goto/16 :goto_1

    :cond_d
    move-object v12, v4

    goto/16 :goto_0
.end method


# virtual methods
.method public final a()Lorg/json/JSONObject;
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/alipay/sdk/protocol/b;->c:Ljava/lang/String;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method
