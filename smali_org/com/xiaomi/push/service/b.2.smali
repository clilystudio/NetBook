.class final Lcom/xiaomi/push/service/b;
.super Lcom/xiaomi/push/service/e;


# instance fields
.field private final b:Lcom/xiaomi/push/service/R;


# direct methods
.method public constructor <init>(Lcom/xiaomi/push/service/R;)V
    .locals 1

    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/e;-><init>(I)V

    iput-object p1, p0, Lcom/xiaomi/push/service/b;->b:Lcom/xiaomi/push/service/R;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/xiaomi/push/service/b;->b:Lcom/xiaomi/push/service/R;

    sget-object v1, Lcom/xiaomi/push/service/u$c;->a:Lcom/xiaomi/push/service/u$c;

    const/4 v2, 0x1

    const/16 v3, 0x15

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/push/service/R;->a(Lcom/xiaomi/push/service/u$c;IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "bind time out. chid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/push/service/b;->b:Lcom/xiaomi/push/service/R;

    iget-object v1, v1, Lcom/xiaomi/push/service/R;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/xiaomi/push/service/b;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    check-cast p1, Lcom/xiaomi/push/service/b;

    iget-object v0, p1, Lcom/xiaomi/push/service/b;->b:Lcom/xiaomi/push/service/R;

    iget-object v0, v0, Lcom/xiaomi/push/service/R;->h:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/push/service/b;->b:Lcom/xiaomi/push/service/R;

    iget-object v1, v1, Lcom/xiaomi/push/service/R;->h:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/service/b;->b:Lcom/xiaomi/push/service/R;

    iget-object v0, v0, Lcom/xiaomi/push/service/R;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
