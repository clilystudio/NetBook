.class public Lcom/umeng/a/a/e;
.super Lu/aly/bw;
.source "SourceFile"


# instance fields
.field public a:Lorg/json/JSONObject;

.field b:Z

.field c:I

.field d:I

.field e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, -0x1

    .line 35
    invoke-direct {p0, p1}, Lu/aly/bw;-><init>(Lorg/json/JSONObject;)V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/a/a/e;->a:Lorg/json/JSONObject;

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/umeng/a/a/e;->b:Z

    .line 23
    iput v1, p0, Lcom/umeng/a/a/e;->c:I

    .line 24
    iput v1, p0, Lcom/umeng/a/a/e;->d:I

    .line 37
    if-nez p1, :cond_1

    .line 44
    :cond_0
    :goto_0
    return-void

    .line 1048
    :cond_1
    :try_start_0
    const-string v0, "config_update"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "config_update"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "no"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_4

    .line 1069
    :cond_2
    :goto_1
    iget v0, p0, Lcom/umeng/a/a/e;->c:I

    if-ltz v0, :cond_3

    iget v0, p0, Lcom/umeng/a/a/e;->c:I

    const/4 v1, 0x6

    if-le v0, v1, :cond_0

    .line 1070
    :cond_3
    iput v3, p0, Lcom/umeng/a/a/e;->c:I

    goto :goto_0

    .line 1052
    :cond_4
    :try_start_1
    const-string v0, "report_policy"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1053
    const-string v0, "report_policy"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/umeng/a/a/e;->c:I

    .line 1054
    const-string v0, "report_interval"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/umeng/a/a/e;->d:I

    .line 1055
    const-string v0, "last_config_time"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/a/a/e;->e:Ljava/lang/String;

    .line 1060
    :goto_2
    const-string v0, "online_params"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/a/a/e;->a:Lorg/json/JSONObject;

    .line 1062
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/umeng/a/a/e;->b:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1063
    :catch_0
    move-exception v0

    .line 1064
    const-string v1, "MobclickAgent"

    const-string v2, "fail to parce online config response"

    invoke-static {v1, v2, v0}, Lu/aly/bt;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 1057
    :cond_5
    :try_start_2
    const-string v0, "MobclickAgent"

    const-string v1, " online config fetch no report policy"

    invoke-static {v0, v1}, Lu/aly/bt;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2
.end method
