.class public final Lcom/umeng/a/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/umeng/a/a/a;

.field private b:Lcom/umeng/a/a/f;

.field private c:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object v0, p0, Lcom/umeng/a/a/b;->a:Lcom/umeng/a/a/a;

    .line 40
    iput-object v0, p0, Lcom/umeng/a/a/b;->b:Lcom/umeng/a/a/f;

    .line 42
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/umeng/a/a/b;->c:J

    .line 44
    return-void
.end method

.method static synthetic a(Lcom/umeng/a/a/b;)Lcom/umeng/a/a/f;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/umeng/a/a/b;->b:Lcom/umeng/a/a/f;

    return-object v0
.end method

.method static synthetic a(Lcom/umeng/a/a/b;Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/umeng/a/a/b;->b(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/umeng/a/a/b;Landroid/content/Context;Lcom/umeng/a/a/e;)V
    .locals 3

    .prologue
    .line 123
    .line 2124
    invoke-static {p1}, Lcom/umeng/a/o;->a(Landroid/content/Context;)Lcom/umeng/a/o;

    invoke-static {}, Lcom/umeng/a/o;->g()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2125
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2127
    iget-object v1, p2, Lcom/umeng/a/a/e;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2128
    const-string v1, "umeng_last_config_time"

    iget-object v2, p2, Lcom/umeng/a/a/e;->e:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2129
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2132
    :cond_0
    iget v0, p2, Lcom/umeng/a/a/e;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 2133
    invoke-static {p1}, Lcom/umeng/a/o;->a(Landroid/content/Context;)Lcom/umeng/a/o;

    iget v0, p2, Lcom/umeng/a/a/e;->c:I

    iget v1, p2, Lcom/umeng/a/a/e;->d:I

    invoke-static {v0, v1}, Lcom/umeng/a/o;->a(II)V

    .line 123
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/umeng/a/a/b;Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 88
    .line 2089
    iget-object v0, p0, Lcom/umeng/a/a/b;->a:Lcom/umeng/a/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/umeng/a/a/b;->a:Lcom/umeng/a/a/a;

    invoke-interface {v0}, Lcom/umeng/a/a/a;->a()V

    .line 88
    :cond_0
    return-void
.end method

.method private b(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 94
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 96
    :try_start_0
    const-string v1, "type"

    const-string v2, "online_config"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 97
    const-string v1, "appkey"

    invoke-static {p1}, Lcom/umeng/a/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 98
    const-string v1, "version_code"

    invoke-static {p1}, Lu/aly/bs;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 99
    const-string v1, "package"

    invoke-static {p1}, Lu/aly/bs;->o(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 100
    const-string v1, "sdk_version"

    const-string v2, "5.2.4"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 102
    const-string v1, "idmd5"

    invoke-static {p1}, Lu/aly/bs;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lu/aly/bx;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 103
    const-string v1, "channel"

    invoke-static {p1}, Lcom/umeng/a/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 105
    invoke-static {p1}, Lcom/umeng/a/o;->a(Landroid/content/Context;)Lcom/umeng/a/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/a/o;->a()[I

    move-result-object v1

    .line 106
    const-string v2, "report_policy"

    const/4 v3, 0x0

    aget v1, v1, v3

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 107
    const-string v1, "last_config_time"

    .line 1119
    invoke-static {p1}, Lcom/umeng/a/o;->a(Landroid/content/Context;)Lcom/umeng/a/o;

    invoke-static {}, Lcom/umeng/a/o;->g()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1120
    const-string v3, "umeng_last_config_time"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 107
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :goto_0
    return-object v0

    .line 110
    :catch_0
    move-exception v0

    const-string v0, "MobclickAgent"

    const-string v1, "exception in onlineConfigInternal"

    invoke-static {v0, v1}, Lu/aly/bt;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/umeng/a/a/b;Landroid/content/Context;Lcom/umeng/a/a/e;)V
    .locals 5

    .prologue
    .line 137
    .line 2138
    iget-object v0, p2, Lcom/umeng/a/a/e;->a:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/umeng/a/a/e;->a:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 2160
    :cond_0
    :goto_0
    return-void

    .line 2142
    :cond_1
    invoke-static {p1}, Lcom/umeng/a/o;->a(Landroid/content/Context;)Lcom/umeng/a/o;

    invoke-static {}, Lcom/umeng/a/o;->g()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2143
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 2146
    :try_start_0
    iget-object v2, p2, Lcom/umeng/a/a/e;->a:Lorg/json/JSONObject;

    .line 2149
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 2151
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2156
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2158
    const-string v0, "MobclickAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "get online setting params: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lu/aly/bt;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2160
    :catch_0
    move-exception v0

    .line 2161
    const-string v1, "MobclickAgent"

    const-string v2, "save online config params"

    invoke-static {v1, v2, v0}, Lu/aly/bt;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 2152
    :cond_2
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2153
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 52
    if-nez p1, :cond_1

    .line 53
    :try_start_0
    const-string v0, "MobclickAgent"

    const-string v1, "unexpected null context in updateOnlineConfig"

    invoke-static {v0, v1}, Lu/aly/bt;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 61
    iget-wide v2, p0, Lcom/umeng/a/a/b;->c:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0x36ee80

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 62
    iput-wide v0, p0, Lcom/umeng/a/a/b;->c:J

    .line 63
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/umeng/a/a/d;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/umeng/a/a/d;-><init>(Lcom/umeng/a/a/b;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 68
    :catch_0
    move-exception v0

    const-string v0, "MobclickAgent"

    const-string v1, "exception in updateOnlineConfig"

    invoke-static {v0, v1}, Lu/aly/bt;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Lcom/umeng/a/a/a;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/umeng/a/a/b;->a:Lcom/umeng/a/a/a;

    .line 74
    return-void
.end method

.method public final a(Lcom/umeng/a/a/f;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/umeng/a/a/b;->b:Lcom/umeng/a/a/f;

    .line 82
    return-void
.end method
