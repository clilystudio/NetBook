.class final Lcom/xiaomi/push/service/g;
.super Lcom/xiaomi/push/service/e;


# instance fields
.field private b:Lcom/xiaomi/smack/packet/e;

.field private synthetic c:Lcom/xiaomi/push/service/XMPushService;


# direct methods
.method public constructor <init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/smack/packet/e;)V
    .locals 1

    iput-object p1, p0, Lcom/xiaomi/push/service/g;->c:Lcom/xiaomi/push/service/XMPushService;

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/e;-><init>(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/push/service/g;->b:Lcom/xiaomi/smack/packet/e;

    iput-object p2, p0, Lcom/xiaomi/push/service/g;->b:Lcom/xiaomi/smack/packet/e;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/push/service/g;->c:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lcom/xiaomi/push/service/XMPushService;->f(Lcom/xiaomi/push/service/XMPushService;)Lcom/xiaomi/push/service/PacketSync;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/service/g;->b:Lcom/xiaomi/smack/packet/e;

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/PacketSync;->a(Lcom/xiaomi/smack/packet/e;)V

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    const-string v0, "receive a message."

    return-object v0
.end method
