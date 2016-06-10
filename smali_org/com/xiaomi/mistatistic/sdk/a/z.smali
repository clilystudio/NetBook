.class final Lcom/xiaomi/mistatistic/sdk/a/z;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/mistatistic/sdk/a/j;


# instance fields
.field private synthetic a:Lcom/xiaomi/mistatistic/sdk/a/w;


# direct methods
.method constructor <init>(Lcom/xiaomi/mistatistic/sdk/a/w;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/a/z;->a:Lcom/xiaomi/mistatistic/sdk/a/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    new-instance v0, Lcom/xiaomi/mistatistic/sdk/a/n;

    invoke-direct {v0}, Lcom/xiaomi/mistatistic/sdk/a/n;-><init>()V

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/z;->a:Lcom/xiaomi/mistatistic/sdk/a/w;

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/a/w;->b(Lcom/xiaomi/mistatistic/sdk/a/w;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/a/n;->a(J)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/a/w;->a(Z)Z

    return-void
.end method
