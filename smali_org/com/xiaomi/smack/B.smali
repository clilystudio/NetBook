.class final Lcom/xiaomi/smack/B;
.super Lcom/xiaomi/push/service/e;


# instance fields
.field private synthetic b:I

.field private synthetic c:Ljava/lang/Exception;

.field private synthetic d:Lcom/xiaomi/smack/z;


# direct methods
.method constructor <init>(Lcom/xiaomi/smack/z;IILjava/lang/Exception;)V
    .locals 1

    iput-object p1, p0, Lcom/xiaomi/smack/B;->d:Lcom/xiaomi/smack/z;

    iput p3, p0, Lcom/xiaomi/smack/B;->b:I

    iput-object p4, p0, Lcom/xiaomi/smack/B;->c:Ljava/lang/Exception;

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/e;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/smack/B;->d:Lcom/xiaomi/smack/z;

    invoke-static {v0}, Lcom/xiaomi/smack/z;->a(Lcom/xiaomi/smack/z;)Lcom/xiaomi/push/service/XMPushService;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/smack/B;->b:I

    iget-object v2, p0, Lcom/xiaomi/smack/B;->c:Ljava/lang/Exception;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/push/service/XMPushService;->a(ILjava/lang/Exception;)V

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "shutdown the connection. "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/xiaomi/smack/B;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/smack/B;->c:Ljava/lang/Exception;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
