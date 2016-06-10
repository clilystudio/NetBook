.class public final Lcom/xiaomi/smack/u;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/xiaomi/push/service/R;Ljava/lang/String;Lcom/xiaomi/smack/l;)V
    .locals 3

    new-instance v0, Lcom/xiaomi/smack/v;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/xiaomi/smack/v;-><init>(Lcom/xiaomi/smack/u;Lcom/xiaomi/push/service/R;Ljava/lang/String;Lcom/xiaomi/smack/l;)V

    invoke-virtual {p3, v0}, Lcom/xiaomi/smack/l;->a(Lcom/xiaomi/smack/packet/e;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SMACK: bind id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/xiaomi/smack/v;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/a/a/a/b;->a(Ljava/lang/String;)V

    return-void
.end method
