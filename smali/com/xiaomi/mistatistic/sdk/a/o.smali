.class public final Lcom/xiaomi/mistatistic/sdk/a/o;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/xiaomi/mistatistic/sdk/a/o;


# instance fields
.field private b:Lcom/xiaomi/mistatistic/sdk/a/a;

.field private c:Z

.field private d:Ljava/util/List;

.field private e:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaomi/mistatistic/sdk/a/o;

    invoke-direct {v0}, Lcom/xiaomi/mistatistic/sdk/a/o;-><init>()V

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/a/o;->a:Lcom/xiaomi/mistatistic/sdk/a/o;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/mistatistic/sdk/a/o;->c:Z

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/o;->d:Ljava/util/List;

    new-instance v0, Lcom/xiaomi/mistatistic/sdk/a/p;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/mistatistic/sdk/a/p;-><init>(Lcom/xiaomi/mistatistic/sdk/a/o;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/o;->e:Landroid/os/Handler;

    return-void
.end method

.method public static a()Lcom/xiaomi/mistatistic/sdk/a/o;
    .locals 1

    sget-object v0, Lcom/xiaomi/mistatistic/sdk/a/o;->a:Lcom/xiaomi/mistatistic/sdk/a/o;

    return-object v0
.end method

.method static synthetic a(Lcom/xiaomi/mistatistic/sdk/a/o;)Z
    .locals 1

    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/a/o;->e()Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/xiaomi/mistatistic/sdk/a/o;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/o;->d:Ljava/util/List;

    return-object v0
.end method

.method public static c()Z
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/r;->b()Landroid/content/Context;

    move-result-object v2

    const-string v3, "rt_ban_time"

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/arcsoft/hpay100/a/a;->e(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x40c3880000000000L    # 10000.0

    mul-double/2addr v0, v2

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/r;->b()Landroid/content/Context;

    move-result-object v2

    const-string v3, "rt_upload_rate"

    const/16 v4, 0x2710

    invoke-static {v2, v3, v4}, Lcom/arcsoft/hpay100/a/a;->c(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    int-to-double v2, v2

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static d()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "http://10.99.168.145:8097/realtime_network"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "https://data.mistat.xiaomi.com/realtime_network"

    goto :goto_0
.end method

.method private e()Z
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iget-object v4, p0, Lcom/xiaomi/mistatistic/sdk/a/o;->d:Ljava/util/List;

    monitor-enter v4

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/o;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/mistatistic/sdk/b/a;

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/b/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/mistatistic/sdk/b/a;

    invoke-virtual {v1}, Lcom/xiaomi/mistatistic/sdk/b/a;->b()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v7, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    :cond_3
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v8, "url"

    invoke-virtual {v1, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "data"

    invoke-virtual {v1, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    :cond_4
    invoke-virtual {v5}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2000
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "app_id"

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/r;->c()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "app_package"

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/r;->b()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "device_uuid"

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/r;->b()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/xiaomi/mistatistic/sdk/a/l;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "device_os"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "android"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "device_model"

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-direct {v3, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "app_version"

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/r;->f()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "app_channel"

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/r;->e()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "net_value"

    invoke-direct {v3, v5, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/r;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/o;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v1}, Lcom/xiaomi/mistatistic/sdk/a/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/mistatistic/sdk/a/t;

    invoke-direct {v1}, Lcom/xiaomi/mistatistic/sdk/a/t;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "http data complete, result="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/mistatistic/sdk/a/t;->a(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "ok"

    const-string v3, "status"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3000
    const-string v0, "data"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "data"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "sample_rate"

    const/16 v2, 0x2710

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "delay"

    const v3, 0x493e0

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "ban_time"

    const-wide/16 v6, 0x0

    invoke-virtual {v0, v3, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/r;->b()Landroid/content/Context;

    move-result-object v0

    const-string v3, "rt_upload_rate"

    invoke-static {v0, v3, v1}, Lcom/arcsoft/hpay100/a/a;->d(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/r;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, "rt_upload_delay"

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lcom/arcsoft/hpay100/a/a;->f(Landroid/content/Context;Ljava/lang/String;J)V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/r;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, "rt_ban_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, v6

    invoke-static {v0, v1, v2, v3}, Lcom/arcsoft/hpay100/a/a;->f(Landroid/content/Context;Ljava/lang/String;J)V

    .line 2000
    :cond_5
    const/4 v0, 0x1

    .line 0
    :goto_3
    monitor-exit v4

    :goto_4
    return v0

    :cond_6
    move v0, v2

    .line 2000
    goto :goto_3

    .line 0
    :cond_7
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v2

    goto :goto_4
.end method


# virtual methods
.method public final a(Lcom/xiaomi/mistatistic/sdk/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/a/o;->b:Lcom/xiaomi/mistatistic/sdk/a/a;

    return-void
.end method

.method public final a(Lcom/xiaomi/mistatistic/sdk/b/a;)V
    .locals 7

    .prologue
    const/16 v6, 0x3ff

    .line 0
    invoke-virtual {p1}, Lcom/xiaomi/mistatistic/sdk/b/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/o;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/o;->b:Lcom/xiaomi/mistatistic/sdk/a/a;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/xiaomi/mistatistic/sdk/b/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/o;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/o;->b:Lcom/xiaomi/mistatistic/sdk/a/a;

    invoke-virtual {v0, p1}, Lcom/xiaomi/mistatistic/sdk/a/a;->a(Lcom/xiaomi/mistatistic/sdk/b/a;)Lcom/xiaomi/mistatistic/sdk/b/a;

    move-result-object p1

    :cond_2
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/xiaomi/mistatistic/sdk/b/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/a/o;->d:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/o;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/o;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v2, 0x64

    if-le v0, v2, :cond_3

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/o;->d:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/o;->e:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/xiaomi/mistatistic/sdk/b/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/o;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/o;->e:Landroid/os/Handler;

    .line 1000
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/r;->b()Landroid/content/Context;

    move-result-object v1

    const-string v2, "rt_upload_delay"

    const-wide/32 v4, 0x493e0

    invoke-static {v1, v2, v4, v5}, Lcom/arcsoft/hpay100/a/a;->e(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v2

    .line 0
    invoke-virtual {v0, v6, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final b()Ljava/util/List;
    .locals 3

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/a/o;->d:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/util/LinkedList;

    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/a/o;->d:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
