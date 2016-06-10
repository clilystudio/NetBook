.class final Lcom/xiaomi/b/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/smack/d/f;


# instance fields
.field private synthetic a:Lcom/xiaomi/b/a/a;


# direct methods
.method constructor <init>(Lcom/xiaomi/b/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/b/a/c;->a:Lcom/xiaomi/b/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SMACK "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/b/a/c;->a:Lcom/xiaomi/b/a/a;

    invoke-static {v1}, Lcom/xiaomi/b/a/a;->a(Lcom/xiaomi/b/a/a;)Ljava/text/SimpleDateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " SENT ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/b/a/c;->a:Lcom/xiaomi/b/a/a;

    invoke-static {v1}, Lcom/xiaomi/b/a/a;->b(Lcom/xiaomi/b/a/a;)Lcom/xiaomi/smack/l;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/a/a/a/b;->b(Ljava/lang/String;)V

    return-void
.end method
