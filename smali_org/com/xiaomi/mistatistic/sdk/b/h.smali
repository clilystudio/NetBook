.class public final Lcom/xiaomi/mistatistic/sdk/b/h;
.super Lcom/xiaomi/mistatistic/sdk/b/b;


# instance fields
.field private b:J

.field private c:J

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(JJLjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/b/b;-><init>()V

    iput-wide p1, p0, Lcom/xiaomi/mistatistic/sdk/b/h;->b:J

    iput-wide p3, p0, Lcom/xiaomi/mistatistic/sdk/b/h;->c:J

    iput-object p5, p0, Lcom/xiaomi/mistatistic/sdk/b/h;->d:Ljava/lang/String;

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
    const-string v1, "mistat_session"

    .line 0
    iput-object v1, v0, Lcom/xiaomi/mistatistic/sdk/b/i;->a:Ljava/lang/String;

    iget-wide v2, p0, Lcom/xiaomi/mistatistic/sdk/b/h;->a:J

    iput-wide v2, v0, Lcom/xiaomi/mistatistic/sdk/b/i;->b:J

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/xiaomi/mistatistic/sdk/b/h;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/xiaomi/mistatistic/sdk/b/h;->c:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/mistatistic/sdk/b/i;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/b/h;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/xiaomi/mistatistic/sdk/b/i;->f:Ljava/lang/String;

    return-object v0
.end method
