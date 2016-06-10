.class final Lcom/xiaomi/push/service/T;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/push/service/S;


# instance fields
.field private synthetic a:Lcom/xiaomi/push/service/R;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/service/R;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/push/service/T;->a:Lcom/xiaomi/push/service/R;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/xiaomi/push/service/u$c;)V
    .locals 4

    sget-object v0, Lcom/xiaomi/push/service/u$c;->b:Lcom/xiaomi/push/service/u$c;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/push/service/T;->a:Lcom/xiaomi/push/service/R;

    invoke-static {v0}, Lcom/xiaomi/push/service/R;->b(Lcom/xiaomi/push/service/R;)Lcom/xiaomi/push/service/XMPushService;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/service/T;->a:Lcom/xiaomi/push/service/R;

    invoke-static {v1}, Lcom/xiaomi/push/service/R;->a(Lcom/xiaomi/push/service/R;)Lcom/xiaomi/push/service/b;

    move-result-object v1

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/e;J)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/push/service/T;->a:Lcom/xiaomi/push/service/R;

    invoke-static {v0}, Lcom/xiaomi/push/service/R;->b(Lcom/xiaomi/push/service/R;)Lcom/xiaomi/push/service/XMPushService;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/service/T;->a:Lcom/xiaomi/push/service/R;

    invoke-static {v1}, Lcom/xiaomi/push/service/R;->a(Lcom/xiaomi/push/service/R;)Lcom/xiaomi/push/service/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/XMPushService;->b(Lcom/xiaomi/push/service/e;)V

    goto :goto_0
.end method
