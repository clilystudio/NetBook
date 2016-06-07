.class final Lcom/xiaomi/mistatistic/sdk/a/y;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/mistatistic/sdk/a/a/e;


# instance fields
.field private synthetic a:Lcom/xiaomi/mistatistic/sdk/a/w;


# direct methods
.method constructor <init>(Lcom/xiaomi/mistatistic/sdk/a/w;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/a/y;->a:Lcom/xiaomi/mistatistic/sdk/a/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/y;->a:Lcom/xiaomi/mistatistic/sdk/a/w;

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/a/w;->a(Lcom/xiaomi/mistatistic/sdk/a/w;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/a/w;->a(Z)Z

    goto :goto_0
.end method
