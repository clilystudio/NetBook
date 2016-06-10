.class final Lcom/xiaomi/network/m;
.super Ljava/util/TimerTask;


# instance fields
.field private synthetic a:Lcom/xiaomi/network/i;


# direct methods
.method constructor <init>(Lcom/xiaomi/network/i;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/network/m;->a:Lcom/xiaomi/network/i;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/xiaomi/network/m;->a:Lcom/xiaomi/network/i;

    invoke-static {v0}, Lcom/xiaomi/network/i;->a(Lcom/xiaomi/network/i;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/network/j;

    invoke-virtual {v0}, Lcom/xiaomi/network/j;->a()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0}, Lcom/xiaomi/network/j;->b()D

    move-result-wide v4

    if-eqz v2, :cond_0

    :try_start_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/network/m;->a:Lcom/xiaomi/network/i;

    invoke-static {v0, v2, v4, v5}, Lcom/xiaomi/network/i;->a(Lcom/xiaomi/network/i;Ljava/util/List;D)V
    :try_end_0
    .catch Lorg/apache/thrift/e; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/apache/thrift/e;->printStackTrace()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/network/m;->a:Lcom/xiaomi/network/i;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/network/i;->a(Lcom/xiaomi/network/i;Z)Z

    return-void
.end method
