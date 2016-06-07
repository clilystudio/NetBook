.class public final Lcom/xiaomi/mistatistic/sdk/b/a;
.super Ljava/lang/Object;


# instance fields
.field private a:J

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:J

.field private f:Ljava/lang/String;

.field private g:J

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 6

    const/4 v4, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/mistatistic/sdk/b/a;-><init>(Ljava/lang/String;JILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JILjava/lang/String;)V
    .locals 8

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/xiaomi/mistatistic/sdk/b/a;-><init>(Ljava/lang/String;JJILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJ)V
    .locals 8

    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v7}, Lcom/xiaomi/mistatistic/sdk/b/a;-><init>(Ljava/lang/String;JJILjava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;JJILjava/lang/String;)V
    .locals 2

    .prologue
    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/mistatistic/sdk/b/a;->e:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaomi/mistatistic/sdk/b/a;->g:J

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/b/a;->f:Ljava/lang/String;

    iput-wide p2, p0, Lcom/xiaomi/mistatistic/sdk/b/a;->a:J

    iput p6, p0, Lcom/xiaomi/mistatistic/sdk/b/a;->b:I

    iput-object p7, p0, Lcom/xiaomi/mistatistic/sdk/b/a;->c:Ljava/lang/String;

    iput-wide p4, p0, Lcom/xiaomi/mistatistic/sdk/b/a;->g:J

    .line 1000
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/r;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/a/r;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "NULL"

    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/b/a;->d:Ljava/lang/String;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/b/a;->d:Ljava/lang/String;

    const-string v1, "WIFI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/r;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/b/a;->h:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/b/a;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Lorg/json/JSONObject;
    .locals 6

    const-wide/16 v4, 0x0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "net"

    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/b/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-wide v2, p0, Lcom/xiaomi/mistatistic/sdk/b/a;->a:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    const-string v1, "cost"

    iget-wide v2, p0, Lcom/xiaomi/mistatistic/sdk/b/a;->a:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_0
    iget v1, p0, Lcom/xiaomi/mistatistic/sdk/b/a;->b:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const-string v1, "code"

    iget v2, p0, Lcom/xiaomi/mistatistic/sdk/b/a;->b:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_1
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/b/a;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "exception"

    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/b/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/b/a;->h:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "op"

    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/b/a;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    iget-wide v2, p0, Lcom/xiaomi/mistatistic/sdk/b/a;->g:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_4

    const-string v1, "flow"

    iget-wide v2, p0, Lcom/xiaomi/mistatistic/sdk/b/a;->g:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_4
    const-string v1, "t"

    iget-wide v2, p0, Lcom/xiaomi/mistatistic/sdk/b/a;->e:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/xiaomi/mistatistic/sdk/b/a;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lcom/xiaomi/mistatistic/sdk/b/a;

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/b/a;->f:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/mistatistic/sdk/b/a;->f:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/b/a;->d:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/mistatistic/sdk/b/a;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/b/a;->c:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/mistatistic/sdk/b/a;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/xiaomi/mistatistic/sdk/b/a;->b:I

    iget v2, p1, Lcom/xiaomi/mistatistic/sdk/b/a;->b:I

    if-ne v1, v2, :cond_0

    iget-wide v2, p0, Lcom/xiaomi/mistatistic/sdk/b/a;->a:J

    iget-wide v4, p1, Lcom/xiaomi/mistatistic/sdk/b/a;->a:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget-wide v2, p0, Lcom/xiaomi/mistatistic/sdk/b/a;->e:J

    iget-wide v4, p1, Lcom/xiaomi/mistatistic/sdk/b/a;->e:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget-wide v2, p0, Lcom/xiaomi/mistatistic/sdk/b/a;->g:J

    iget-wide v4, p1, Lcom/xiaomi/mistatistic/sdk/b/a;->g:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
