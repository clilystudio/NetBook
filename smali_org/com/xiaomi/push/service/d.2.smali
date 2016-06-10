.class public final Lcom/xiaomi/push/service/d;
.super Lcom/xiaomi/push/service/e;


# instance fields
.field private b:I

.field private c:Ljava/lang/Exception;

.field private synthetic d:Lcom/xiaomi/push/service/XMPushService;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/service/XMPushService;ILjava/lang/Exception;)V
    .locals 1

    iput-object p1, p0, Lcom/xiaomi/push/service/d;->d:Lcom/xiaomi/push/service/XMPushService;

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/e;-><init>(I)V

    iput p2, p0, Lcom/xiaomi/push/service/d;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/push/service/d;->c:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/push/service/d;->d:Lcom/xiaomi/push/service/XMPushService;

    iget v1, p0, Lcom/xiaomi/push/service/d;->b:I

    iget-object v2, p0, Lcom/xiaomi/push/service/d;->c:Ljava/lang/Exception;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/push/service/XMPushService;->a(ILjava/lang/Exception;)V

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    const-string v0, "disconnect the connection."

    return-object v0
.end method
