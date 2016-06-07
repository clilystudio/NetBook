.class final Lcom/xiaomi/mistatistic/sdk/a/q;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/mistatistic/sdk/a/j;


# instance fields
.field private synthetic a:Lcom/xiaomi/mistatistic/sdk/a/p;


# direct methods
.method constructor <init>(Lcom/xiaomi/mistatistic/sdk/a/p;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/a/q;->a:Lcom/xiaomi/mistatistic/sdk/a/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/o;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/q;->a:Lcom/xiaomi/mistatistic/sdk/a/p;

    iget-object v0, v0, Lcom/xiaomi/mistatistic/sdk/a/p;->a:Lcom/xiaomi/mistatistic/sdk/a/o;

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/a/o;->b()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/a/q;->a:Lcom/xiaomi/mistatistic/sdk/a/p;

    iget-object v1, v1, Lcom/xiaomi/mistatistic/sdk/a/p;->a:Lcom/xiaomi/mistatistic/sdk/a/o;

    invoke-static {v1}, Lcom/xiaomi/mistatistic/sdk/a/o;->a(Lcom/xiaomi/mistatistic/sdk/a/o;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/a/q;->a:Lcom/xiaomi/mistatistic/sdk/a/p;

    iget-object v1, v1, Lcom/xiaomi/mistatistic/sdk/a/p;->a:Lcom/xiaomi/mistatistic/sdk/a/o;

    invoke-static {v1}, Lcom/xiaomi/mistatistic/sdk/a/o;->b(Lcom/xiaomi/mistatistic/sdk/a/o;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/a/q;->a:Lcom/xiaomi/mistatistic/sdk/a/p;

    iget-object v2, v2, Lcom/xiaomi/mistatistic/sdk/a/p;->a:Lcom/xiaomi/mistatistic/sdk/a/o;

    invoke-static {v2}, Lcom/xiaomi/mistatistic/sdk/a/o;->b(Lcom/xiaomi/mistatistic/sdk/a/o;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    monitor-exit v1

    :cond_0
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/xiaomi/mistatistic/sdk/a/t;

    invoke-direct {v1}, Lcom/xiaomi/mistatistic/sdk/a/t;-><init>()V

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/a/t;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Lcom/xiaomi/mistatistic/sdk/a/t;

    invoke-direct {v1}, Lcom/xiaomi/mistatistic/sdk/a/t;-><init>()V

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/a/t;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
