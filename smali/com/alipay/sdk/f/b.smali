.class public final Lcom/alipay/sdk/f/b;
.super Ljava/lang/Object;


# static fields
.field private static c:Lcom/alipay/sdk/f/b;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lcom/alipay/sdk/f/b;
    .locals 8

    const-class v1, Lcom/alipay/sdk/f/b;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/sdk/f/b;->c:Lcom/alipay/sdk/f/b;

    if-nez v0, :cond_2

    new-instance v0, Lcom/alipay/sdk/f/b;

    invoke-direct {v0}, Lcom/alipay/sdk/f/b;-><init>()V

    sput-object v0, Lcom/alipay/sdk/f/b;->c:Lcom/alipay/sdk/f/b;

    invoke-static {}, Lcom/alipay/sdk/e/b;->a()Lcom/alipay/sdk/e/b;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/sdk/e/b;->a:Landroid/content/Context;

    new-instance v2, Lcom/alipay/sdk/f/a;

    invoke-direct {v2, v0}, Lcom/alipay/sdk/f/a;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/alipay/sdk/util/a;->a(Landroid/content/Context;)Lcom/alipay/sdk/util/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/sdk/util/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Lcom/alipay/sdk/util/a;->a(Landroid/content/Context;)Lcom/alipay/sdk/util/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/sdk/util/a;->b()Ljava/lang/String;

    move-result-object v4

    sget-object v0, Lcom/alipay/sdk/f/b;->c:Lcom/alipay/sdk/f/b;

    invoke-virtual {v2, v3, v4}, Lcom/alipay/sdk/f/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/alipay/sdk/f/b;->a:Ljava/lang/String;

    sget-object v0, Lcom/alipay/sdk/f/b;->c:Lcom/alipay/sdk/f/b;

    invoke-virtual {v2, v3, v4}, Lcom/alipay/sdk/f/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/alipay/sdk/f/b;->b:Ljava/lang/String;

    sget-object v0, Lcom/alipay/sdk/f/b;->c:Lcom/alipay/sdk/f/b;

    iget-object v0, v0, Lcom/alipay/sdk/f/b;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v5, Lcom/alipay/sdk/f/b;->c:Lcom/alipay/sdk/f/b;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0xa

    if-le v6, v7, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0xa

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    iput-object v0, v5, Lcom/alipay/sdk/f/b;->b:Ljava/lang/String;

    :cond_1
    sget-object v0, Lcom/alipay/sdk/f/b;->c:Lcom/alipay/sdk/f/b;

    iget-object v0, v0, Lcom/alipay/sdk/f/b;->a:Ljava/lang/String;

    sget-object v5, Lcom/alipay/sdk/f/b;->c:Lcom/alipay/sdk/f/b;

    iget-object v5, v5, Lcom/alipay/sdk/f/b;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v0, v5}, Lcom/alipay/sdk/f/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    sget-object v0, Lcom/alipay/sdk/f/b;->c:Lcom/alipay/sdk/f/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
