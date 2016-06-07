.class final Lcom/xiaomi/mistatistic/sdk/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/mistatistic/sdk/a/j;


# instance fields
.field private synthetic a:Lcom/xiaomi/mistatistic/sdk/a/c;


# direct methods
.method constructor <init>(Lcom/xiaomi/mistatistic/sdk/a/c;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/a/d;->a:Lcom/xiaomi/mistatistic/sdk/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    const/4 v6, 0x3

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/d;->a:Lcom/xiaomi/mistatistic/sdk/a/c;

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/r;->b()Landroid/content/Context;

    move-result-object v1

    const-string v2, "upload_policy"

    invoke-static {v1, v2, v6}, Lcom/arcsoft/hpay100/a/a;->c(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/a/c;->a(Lcom/xiaomi/mistatistic/sdk/a/c;I)I

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/d;->a:Lcom/xiaomi/mistatistic/sdk/a/c;

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/a/c;->a(Lcom/xiaomi/mistatistic/sdk/a/c;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/d;->a:Lcom/xiaomi/mistatistic/sdk/a/c;

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/r;->b()Landroid/content/Context;

    move-result-object v1

    const-string v2, "upload_interval"

    const-wide/32 v4, 0x5265c00

    invoke-static {v1, v2, v4, v5}, Lcom/arcsoft/hpay100/a/a;->e(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/xiaomi/mistatistic/sdk/a/c;->a(Lcom/xiaomi/mistatistic/sdk/a/c;J)J

    :goto_0
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/d;->a:Lcom/xiaomi/mistatistic/sdk/a/c;

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/a/c;->a(Lcom/xiaomi/mistatistic/sdk/a/c;)I

    move-result v0

    if-ne v0, v6, :cond_0

    new-instance v0, Lcom/xiaomi/mistatistic/sdk/a/w;

    invoke-direct {v0}, Lcom/xiaomi/mistatistic/sdk/a/w;-><init>()V

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/a/w;->a()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/d;->a:Lcom/xiaomi/mistatistic/sdk/a/c;

    const-wide/16 v2, -0x1

    invoke-static {v0, v2, v3}, Lcom/xiaomi/mistatistic/sdk/a/c;->a(Lcom/xiaomi/mistatistic/sdk/a/c;J)J

    goto :goto_0
.end method
