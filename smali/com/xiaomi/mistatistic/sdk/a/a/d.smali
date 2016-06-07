.class public final Lcom/xiaomi/mistatistic/sdk/a/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/mistatistic/sdk/a/j;


# instance fields
.field private a:Lcom/xiaomi/mistatistic/sdk/a/a/e;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/xiaomi/mistatistic/sdk/a/a/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/xiaomi/mistatistic/sdk/a/a/d;->a:Lcom/xiaomi/mistatistic/sdk/a/a/e;

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/a/a/d;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    const/4 v0, 0x0

    new-instance v1, Lcom/xiaomi/mistatistic/sdk/a/t;

    invoke-direct {v1}, Lcom/xiaomi/mistatistic/sdk/a/t;-><init>()V

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "app_id"

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/r;->c()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "app_key"

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/r;->d()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "device_id"

    new-instance v4, Lcom/xiaomi/mistatistic/sdk/a/l;

    invoke-direct {v4}, Lcom/xiaomi/mistatistic/sdk/a/l;-><init>()V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/l;->a()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "channel"

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/r;->e()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/r;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "version"

    invoke-direct {v3, v4, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "stat_value"

    iget-object v4, p0, Lcom/xiaomi/mistatistic/sdk/a/a/d;->b:Ljava/lang/String;

    invoke-direct {v1, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/r;->b()Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "http://10.99.168.145:8097/mistats"

    :goto_0
    invoke-static {v3, v1, v2}, Lcom/xiaomi/mistatistic/sdk/a/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Upload MiStat data complete, result="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/mistatistic/sdk/a/t;->a(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "ok"

    const-string v3, "status"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/a/a/d;->a:Lcom/xiaomi/mistatistic/sdk/a/a/e;

    invoke-interface {v1, v0}, Lcom/xiaomi/mistatistic/sdk/a/a/e;->a(Z)V

    return-void

    :cond_2
    :try_start_1
    const-string v1, "https://data.mistat.xiaomi.com/mistats"
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Upload MiStat data failed"

    invoke-static {v2, v1}, Lcom/xiaomi/mistatistic/sdk/a/t;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v2, "Result parse failed"

    invoke-static {v2, v1}, Lcom/xiaomi/mistatistic/sdk/a/t;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
