.class final Lcom/xiaomi/push/service/v;
.super Lcom/xiaomi/push/service/e;


# instance fields
.field private synthetic b:Lcom/xiaomi/push/service/XMPushService;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/service/XMPushService;I)V
    .locals 1

    iput-object p1, p0, Lcom/xiaomi/push/service/v;->b:Lcom/xiaomi/push/service/XMPushService;

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/e;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/xiaomi/push/service/v;->b:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lcom/xiaomi/push/service/XMPushService;->d(Lcom/xiaomi/push/service/XMPushService;)Lcom/xiaomi/smack/l;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/push/service/v;->b:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lcom/xiaomi/push/service/XMPushService;->d(Lcom/xiaomi/push/service/XMPushService;)Lcom/xiaomi/smack/l;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/smack/packet/f;

    sget-object v2, Lcom/xiaomi/smack/packet/f$b;->b:Lcom/xiaomi/smack/packet/f$b;

    invoke-direct {v1, v2}, Lcom/xiaomi/smack/packet/f;-><init>(Lcom/xiaomi/smack/packet/f$b;)V

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaomi/smack/l;->a(Lcom/xiaomi/smack/packet/f;ILjava/lang/Exception;)V

    iget-object v0, p0, Lcom/xiaomi/push/service/v;->b:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0, v3}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/smack/l;)Lcom/xiaomi/smack/l;

    :cond_0
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    const-string v0, "disconnect for service destroy."

    return-object v0
.end method
