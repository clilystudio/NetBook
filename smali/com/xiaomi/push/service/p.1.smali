.class final Lcom/xiaomi/push/service/p;
.super Lcom/xiaomi/push/service/e;


# instance fields
.field private synthetic b:Lcom/xiaomi/push/service/XMPushService;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/service/XMPushService;I)V
    .locals 1

    iput-object p1, p0, Lcom/xiaomi/push/service/p;->b:Lcom/xiaomi/push/service/XMPushService;

    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/e;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/service/p;->b:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/XMPushService;)V

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    const-string v0, "prepare the mi push account."

    return-object v0
.end method
