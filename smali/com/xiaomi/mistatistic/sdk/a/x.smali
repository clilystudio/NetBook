.class final Lcom/xiaomi/mistatistic/sdk/a/x;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/mistatistic/sdk/a/a/c;


# instance fields
.field private synthetic a:Lcom/xiaomi/mistatistic/sdk/a/w;


# direct methods
.method constructor <init>(Lcom/xiaomi/mistatistic/sdk/a/w;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/a/x;->a:Lcom/xiaomi/mistatistic/sdk/a/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;J)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/x;->a:Lcom/xiaomi/mistatistic/sdk/a/w;

    invoke-static {v0, p2, p3}, Lcom/xiaomi/mistatistic/sdk/a/w;->a(Lcom/xiaomi/mistatistic/sdk/a/w;J)J

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/x;->a:Lcom/xiaomi/mistatistic/sdk/a/w;

    invoke-static {v0, p1}, Lcom/xiaomi/mistatistic/sdk/a/w;->a(Lcom/xiaomi/mistatistic/sdk/a/w;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/a/w;->a(Z)Z

    goto :goto_0
.end method
