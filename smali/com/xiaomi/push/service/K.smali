.class final Lcom/xiaomi/push/service/K;
.super Lcom/xiaomi/push/service/e;


# instance fields
.field private synthetic b:Lcom/xiaomi/push/service/XMPushService;

.field private synthetic c:Lcom/xiaomi/xmpush/thrift/h;


# direct methods
.method constructor <init>(ILcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/xmpush/thrift/h;)V
    .locals 1

    iput-object p2, p0, Lcom/xiaomi/push/service/K;->b:Lcom/xiaomi/push/service/XMPushService;

    iput-object p3, p0, Lcom/xiaomi/push/service/K;->c:Lcom/xiaomi/xmpush/thrift/h;

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/e;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/service/K;->b:Lcom/xiaomi/push/service/XMPushService;

    iget-object v1, p0, Lcom/xiaomi/push/service/K;->c:Lcom/xiaomi/xmpush/thrift/h;

    invoke-static {v0, v1}, Lcom/xiaomi/push/service/H;->a(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/xmpush/thrift/h;)Lcom/xiaomi/xmpush/thrift/h;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/xmpush/thrift/c;

    invoke-direct {v1}, Lcom/xiaomi/xmpush/thrift/c;-><init>()V

    iget-object v2, p0, Lcom/xiaomi/push/service/K;->c:Lcom/xiaomi/xmpush/thrift/h;

    invoke-virtual {v2}, Lcom/xiaomi/xmpush/thrift/h;->m()Lcom/xiaomi/xmpush/thrift/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/xmpush/thrift/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/xmpush/thrift/c;->a(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/c;

    iget-object v2, p0, Lcom/xiaomi/push/service/K;->c:Lcom/xiaomi/xmpush/thrift/h;

    invoke-virtual {v2}, Lcom/xiaomi/xmpush/thrift/h;->m()Lcom/xiaomi/xmpush/thrift/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/xmpush/thrift/c;->c()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/c;->a(J)Lcom/xiaomi/xmpush/thrift/c;

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/h;->a(Lcom/xiaomi/xmpush/thrift/c;)Lcom/xiaomi/xmpush/thrift/h;

    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/h;->m()Lcom/xiaomi/xmpush/thrift/c;

    move-result-object v1

    const-string v2, "message_obsleted"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/xmpush/thrift/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/push/service/K;->b:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v1, v0}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/xmpush/thrift/h;)V
    :try_end_0
    .catch Lcom/xiaomi/smack/w; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/xiaomi/a/a/a/b;->a(Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/xiaomi/push/service/K;->b:Lcom/xiaomi/push/service/XMPushService;

    const/16 v2, 0xa

    invoke-virtual {v1, v2, v0}, Lcom/xiaomi/push/service/XMPushService;->a(ILjava/lang/Exception;)V

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    const-string v0, "send ack message for obsleted message."

    return-object v0
.end method
