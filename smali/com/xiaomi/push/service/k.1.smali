.class final Lcom/xiaomi/push/service/k;
.super Lcom/xiaomi/push/service/e;


# instance fields
.field private b:Lcom/xiaomi/push/service/R;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private synthetic f:Lcom/xiaomi/push/service/XMPushService;


# direct methods
.method public constructor <init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/R;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/xiaomi/push/service/k;->f:Lcom/xiaomi/push/service/XMPushService;

    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/e;-><init>(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/push/service/k;->b:Lcom/xiaomi/push/service/R;

    iput-object p2, p0, Lcom/xiaomi/push/service/k;->b:Lcom/xiaomi/push/service/R;

    iput p3, p0, Lcom/xiaomi/push/service/k;->c:I

    iput-object p4, p0, Lcom/xiaomi/push/service/k;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/xiaomi/push/service/k;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    iget-object v0, p0, Lcom/xiaomi/push/service/k;->b:Lcom/xiaomi/push/service/R;

    iget-object v0, v0, Lcom/xiaomi/push/service/R;->m:Lcom/xiaomi/push/service/u$c;

    sget-object v1, Lcom/xiaomi/push/service/u$c;->a:Lcom/xiaomi/push/service/u$c;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/push/service/k;->f:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lcom/xiaomi/push/service/XMPushService;->d(Lcom/xiaomi/push/service/XMPushService;)Lcom/xiaomi/smack/l;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/service/k;->f:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lcom/xiaomi/push/service/XMPushService;->d(Lcom/xiaomi/push/service/XMPushService;)Lcom/xiaomi/smack/l;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/service/k;->b:Lcom/xiaomi/push/service/R;

    iget-object v1, v1, Lcom/xiaomi/push/service/R;->h:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/push/service/k;->b:Lcom/xiaomi/push/service/R;

    iget-object v2, v2, Lcom/xiaomi/push/service/R;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/smack/l;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/xiaomi/smack/w; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/xiaomi/push/service/k;->b:Lcom/xiaomi/push/service/R;

    sget-object v1, Lcom/xiaomi/push/service/u$c;->a:Lcom/xiaomi/push/service/u$c;

    iget v2, p0, Lcom/xiaomi/push/service/k;->c:I

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/xiaomi/push/service/k;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/xiaomi/push/service/k;->d:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/push/service/R;->a(Lcom/xiaomi/push/service/u$c;IILjava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/xiaomi/a/a/a/b;->a(Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/xiaomi/push/service/k;->f:Lcom/xiaomi/push/service/XMPushService;

    const/16 v2, 0xa

    invoke-virtual {v1, v2, v0}, Lcom/xiaomi/push/service/XMPushService;->a(ILjava/lang/Exception;)V

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unbind the channel. "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/push/service/k;->b:Lcom/xiaomi/push/service/R;

    iget-object v1, v1, Lcom/xiaomi/push/service/R;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/service/k;->b:Lcom/xiaomi/push/service/R;

    iget-object v1, v1, Lcom/xiaomi/push/service/R;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
