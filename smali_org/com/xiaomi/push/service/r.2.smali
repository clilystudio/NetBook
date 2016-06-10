.class final Lcom/xiaomi/push/service/r;
.super Lcom/xiaomi/push/service/e;


# instance fields
.field private synthetic b:I

.field private synthetic c:[B

.field private synthetic d:Ljava/lang/String;

.field private synthetic e:Lcom/xiaomi/push/service/XMPushService;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/service/XMPushService;II[BLjava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/xiaomi/push/service/r;->e:Lcom/xiaomi/push/service/XMPushService;

    iput p3, p0, Lcom/xiaomi/push/service/r;->b:I

    iput-object p4, p0, Lcom/xiaomi/push/service/r;->c:[B

    iput-object p5, p0, Lcom/xiaomi/push/service/r;->d:Ljava/lang/String;

    const/16 v0, 0xe

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/e;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/push/service/r;->e:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lcom/xiaomi/push/service/D;->d(Landroid/content/Context;)V

    invoke-static {}, Lcom/xiaomi/push/service/u;->a()Lcom/xiaomi/push/service/u;

    move-result-object v0

    const-string v1, "5"

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/u;->a(Ljava/lang/String;)V

    iget v0, p0, Lcom/xiaomi/push/service/r;->b:I

    invoke-static {v0}, Lcom/xiaomi/a/a/b/a;->a(I)V

    iget-object v0, p0, Lcom/xiaomi/push/service/r;->e:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lcom/xiaomi/push/service/XMPushService;->c(Lcom/xiaomi/push/service/XMPushService;)Lcom/xiaomi/smack/n;

    move-result-object v0

    invoke-static {}, Lcom/xiaomi/smack/n;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/smack/n;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/push/service/r;->e:Lcom/xiaomi/push/service/XMPushService;

    iget-object v1, p0, Lcom/xiaomi/push/service/r;->c:[B

    iget-object v2, p0, Lcom/xiaomi/push/service/r;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/push/service/XMPushService;->a([BLjava/lang/String;)V

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    const-string v0, "clear account cache."

    return-object v0
.end method
