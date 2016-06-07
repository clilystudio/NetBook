.class final Lcom/xiaomi/smack/A;
.super Lcom/xiaomi/push/service/e;


# instance fields
.field private synthetic b:J

.field private synthetic c:Lcom/xiaomi/smack/z;


# direct methods
.method constructor <init>(Lcom/xiaomi/smack/z;IJ)V
    .locals 1

    iput-object p1, p0, Lcom/xiaomi/smack/A;->c:Lcom/xiaomi/smack/z;

    iput-wide p3, p0, Lcom/xiaomi/smack/A;->b:J

    const/16 v0, 0xd

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/e;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/smack/A;->c:Lcom/xiaomi/smack/z;

    invoke-virtual {v0}, Lcom/xiaomi/smack/z;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/smack/A;->c:Lcom/xiaomi/smack/z;

    iget-wide v2, p0, Lcom/xiaomi/smack/A;->b:J

    invoke-virtual {v0, v2, v3}, Lcom/xiaomi/smack/z;->a(J)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/smack/A;->c:Lcom/xiaomi/smack/z;

    invoke-static {v0}, Lcom/xiaomi/smack/z;->a(Lcom/xiaomi/smack/z;)Lcom/xiaomi/push/service/XMPushService;

    move-result-object v0

    const/16 v1, 0x16

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/push/service/XMPushService;->a(ILjava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    const-string v0, "check the ping-pong."

    return-object v0
.end method
