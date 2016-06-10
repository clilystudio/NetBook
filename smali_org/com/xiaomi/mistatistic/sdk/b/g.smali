.class public final Lcom/xiaomi/mistatistic/sdk/b/g;
.super Lcom/xiaomi/mistatistic/sdk/b/b;


# instance fields
.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/b/b;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/b/g;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Lcom/xiaomi/mistatistic/sdk/b/i;
    .locals 4

    .prologue
    .line 0
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/b/i;

    invoke-direct {v0}, Lcom/xiaomi/mistatistic/sdk/b/i;-><init>()V

    .line 1000
    const-string v1, "mistat_pv"

    .line 0
    iput-object v1, v0, Lcom/xiaomi/mistatistic/sdk/b/i;->a:Ljava/lang/String;

    iget-wide v2, p0, Lcom/xiaomi/mistatistic/sdk/b/g;->a:J

    iput-wide v2, v0, Lcom/xiaomi/mistatistic/sdk/b/i;->b:J

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/b/g;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/xiaomi/mistatistic/sdk/b/i;->e:Ljava/lang/String;

    return-object v0
.end method
