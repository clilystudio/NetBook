.class final Lcom/xiaomi/mistatistic/sdk/a/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/mistatistic/sdk/a/j;


# instance fields
.field private synthetic a:Lcom/xiaomi/mistatistic/sdk/a/c;


# direct methods
.method constructor <init>(Lcom/xiaomi/mistatistic/sdk/a/c;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/a/e;->a:Lcom/xiaomi/mistatistic/sdk/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/e;->a:Lcom/xiaomi/mistatistic/sdk/a/c;

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/a/c;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/xiaomi/mistatistic/sdk/a/w;

    invoke-direct {v0}, Lcom/xiaomi/mistatistic/sdk/a/w;-><init>()V

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/a/w;->a()V

    :cond_0
    return-void
.end method
