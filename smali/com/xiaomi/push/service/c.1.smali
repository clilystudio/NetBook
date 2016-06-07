.class public final Lcom/xiaomi/push/service/c;
.super Lcom/xiaomi/push/service/e;


# instance fields
.field private synthetic b:Lcom/xiaomi/push/service/XMPushService;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/service/XMPushService;)V
    .locals 1

    iput-object p1, p0, Lcom/xiaomi/push/service/c;->b:Lcom/xiaomi/push/service/XMPushService;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/e;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/service/c;->b:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v0}, Lcom/xiaomi/push/service/XMPushService;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/push/service/c;->b:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lcom/xiaomi/push/service/XMPushService;->g(Lcom/xiaomi/push/service/XMPushService;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "should not connect. quit the job."

    invoke-static {v0}, Lcom/xiaomi/a/a/a/b;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    const-string v0, "do reconnect.."

    return-object v0
.end method
