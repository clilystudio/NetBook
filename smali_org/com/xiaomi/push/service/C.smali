.class public final Lcom/xiaomi/push/service/C;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/String;

.field protected final b:Ljava/lang/String;

.field protected final c:Ljava/lang/String;

.field protected final d:Ljava/lang/String;

.field protected final e:Ljava/lang/String;

.field protected final f:Ljava/lang/String;

.field protected final g:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/push/service/C;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/xiaomi/push/service/C;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/push/service/C;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaomi/push/service/C;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/xiaomi/push/service/C;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/xiaomi/push/service/C;->f:Ljava/lang/String;

    iput p7, p0, Lcom/xiaomi/push/service/C;->g:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/xiaomi/push/service/XMPushService;)Lcom/xiaomi/push/service/R;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 0
    new-instance v1, Lcom/xiaomi/push/service/R;

    invoke-direct {v1, p1}, Lcom/xiaomi/push/service/R;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    invoke-virtual {p1}, Lcom/xiaomi/push/service/XMPushService;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/xiaomi/push/service/R;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/xiaomi/push/service/C;->a:Ljava/lang/String;

    iput-object v0, v1, Lcom/xiaomi/push/service/R;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/xiaomi/push/service/C;->c:Ljava/lang/String;

    iput-object v0, v1, Lcom/xiaomi/push/service/R;->i:Ljava/lang/String;

    iget-object v0, p0, Lcom/xiaomi/push/service/C;->b:Ljava/lang/String;

    iput-object v0, v1, Lcom/xiaomi/push/service/R;->c:Ljava/lang/String;

    const-string v0, "5"

    iput-object v0, v1, Lcom/xiaomi/push/service/R;->h:Ljava/lang/String;

    const-string v0, "XMPUSH-PASS"

    iput-object v0, v1, Lcom/xiaomi/push/service/R;->d:Ljava/lang/String;

    iput-boolean v5, v1, Lcom/xiaomi/push/service/R;->e:Z

    const-string v0, "sdk_ver:2"

    iput-object v0, v1, Lcom/xiaomi/push/service/R;->f:Ljava/lang/String;

    .line 1000
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.xiaomi.xmsf"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 0
    if-eqz v0, :cond_0

    const-string v0, "1000271"

    :goto_0
    const-string v2, "%1$s:%2$s,%3$s:%4$s"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "dev_id"

    aput-object v4, v3, v5

    const/4 v4, 0x1

    invoke-static {p1}, Lcom/xiaomi/push/service/D;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "appid"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/xiaomi/push/service/R;->g:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/xiaomi/push/service/XMPushService;->e()Lcom/xiaomi/push/service/y;

    move-result-object v0

    iput-object v0, v1, Lcom/xiaomi/push/service/R;->k:Lcom/xiaomi/push/service/y;

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/push/service/C;->d:Ljava/lang/String;

    goto :goto_0
.end method
