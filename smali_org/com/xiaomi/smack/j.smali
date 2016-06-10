.class final Lcom/xiaomi/smack/j;
.super Lcom/xiaomi/push/service/e;


# instance fields
.field private synthetic b:Ljava/lang/Exception;

.field private synthetic c:Lcom/xiaomi/smack/b;


# direct methods
.method constructor <init>(Lcom/xiaomi/smack/b;ILjava/lang/Exception;)V
    .locals 1

    iput-object p1, p0, Lcom/xiaomi/smack/j;->c:Lcom/xiaomi/smack/b;

    iput-object p3, p0, Lcom/xiaomi/smack/j;->b:Ljava/lang/Exception;

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/e;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/smack/j;->c:Lcom/xiaomi/smack/b;

    iget-object v0, v0, Lcom/xiaomi/smack/b;->n:Lcom/xiaomi/push/service/XMPushService;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/xiaomi/smack/j;->b:Ljava/lang/Exception;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/push/service/XMPushService;->a(ILjava/lang/Exception;)V

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "shutdown the connection. "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/smack/j;->b:Ljava/lang/Exception;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
