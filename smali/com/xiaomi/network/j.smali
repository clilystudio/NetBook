.class public Lcom/xiaomi/network/j;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 3000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/common/logger/thrift/mfs/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1000
    :try_start_0
    invoke-static {}, Lcom/xiaomi/network/f;->g()Lcom/xiaomi/network/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/network/f;->f()Ljava/util/ArrayList;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()D
    .locals 3

    .prologue
    .line 2000
    invoke-static {}, Lcom/xiaomi/network/f;->g()Lcom/xiaomi/network/f;

    move-result-object v0

    const-string v1, "f3.mi-stat.gslb.mi-idc.com"

    invoke-virtual {v0, v1}, Lcom/xiaomi/network/f;->a(Ljava/lang/String;)Lcom/xiaomi/network/c;

    move-result-object v2

    const-wide v0, 0x3fb999999999999aL    # 0.1

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/xiaomi/network/c;->e()D

    move-result-wide v0

    :cond_0
    return-wide v0
.end method
