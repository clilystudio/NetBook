.class public Lcom/xiaomi/mistatistic/sdk/a/a;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2011
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaomi/mistatistic/sdk/b/a;)Lcom/xiaomi/mistatistic/sdk/b/a;
    .locals 2

    .prologue
    .line 1014
    const-string v0, "zssq"

    invoke-virtual {p1}, Lcom/xiaomi/mistatistic/sdk/b/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/activeandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    return-object p1
.end method
