.class public final Lcom/xiaomi/smack/a;
.super Lcom/xiaomi/smack/n;


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;

.field private c:Lcom/xiaomi/network/c;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLcom/xiaomi/network/c;ILjava/lang/String;Ljava/lang/String;Landroid/support/design/widget/h;)V
    .locals 2

    const/4 v1, 0x0

    const/16 v0, 0x50

    invoke-direct {p0, v1, v0, p5, v1}, Lcom/xiaomi/smack/n;-><init>(Ljava/util/Map;ILjava/lang/String;Landroid/support/design/widget/h;)V

    iput-object v1, p0, Lcom/xiaomi/smack/a;->c:Lcom/xiaomi/network/c;

    const-string v0, "mibind.chat.gslb.mi-idc.com"

    iput-object v0, p0, Lcom/xiaomi/smack/a;->d:Ljava/lang/String;

    iput-object p2, p0, Lcom/xiaomi/smack/a;->c:Lcom/xiaomi/network/c;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/smack/a;->a:Z

    iput-object p4, p0, Lcom/xiaomi/smack/a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Lcom/xiaomi/network/c;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/smack/a;->c:Lcom/xiaomi/network/c;

    return-object v0
.end method

.method public final a(Lcom/xiaomi/network/c;)V
    .locals 2

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/xiaomi/smack/a;->c:Lcom/xiaomi/network/c;

    const-string v0, "mibind.chat.gslb.mi-idc.com"

    iput-object v0, p0, Lcom/xiaomi/smack/a;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/xiaomi/smack/a;->c:Lcom/xiaomi/network/c;

    invoke-virtual {v0}, Lcom/xiaomi/network/c;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/smack/a;->c:Lcom/xiaomi/network/c;

    invoke-virtual {v0}, Lcom/xiaomi/network/c;->b()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object v0, p0, Lcom/xiaomi/smack/a;->d:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/smack/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/net/URI;
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/smack/a;->b:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/smack/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/smack/a;->b:Ljava/lang/String;

    :cond_0
    new-instance v1, Ljava/net/URI;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v0, p0, Lcom/xiaomi/smack/a;->a:Z

    if-eqz v0, :cond_1

    const-string v0, "https://"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaomi/smack/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaomi/smack/a;->g()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaomi/smack/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    return-object v1

    :cond_1
    const-string v0, "http://"

    goto :goto_0
.end method
