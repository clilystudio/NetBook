.class public Lcom/xiaomi/smack/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Z

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/Map;ILjava/lang/String;Landroid/support/design/widget/h;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;I",
            "Ljava/lang/String;",
            "Landroid/support/design/widget/h;",
            ")V"
        }
    .end annotation

    .prologue
    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lcom/xiaomi/smack/l;->c:Z

    iput-boolean v0, p0, Lcom/xiaomi/smack/n;->d:Z

    .line 1000
    invoke-static {}, Lcom/xiaomi/smack/n;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/smack/n;->b:Ljava/lang/String;

    iput p2, p0, Lcom/xiaomi/smack/n;->c:I

    iput-object p3, p0, Lcom/xiaomi/smack/n;->a:Ljava/lang/String;

    .line 0
    return-void
.end method

.method public static final d()Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lcom/xiaomi/a/a/b/a;->c:Z

    if-eqz v0, :cond_0

    const-string v0, "10.237.12.2"

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/xiaomi/a/a/b/a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "sandbox.xmpush.xiaomi.com"

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/xiaomi/a/a/b/a;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "10.237.12.17"

    goto :goto_0

    :cond_2
    sget-boolean v0, Lcom/xiaomi/a/a/b/a;->a:Z

    if-eqz v0, :cond_3

    const-string v0, "58.68.235.106"

    goto :goto_0

    :cond_3
    const-string v0, "app.chat.xiaomi.net"

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/smack/n;->a:Ljava/lang/String;

    return-void
.end method

.method public final a(Z)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/smack/n;->d:Z

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/smack/n;->e:Ljava/lang/String;

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/smack/n;->b:Ljava/lang/String;

    return-void
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/smack/n;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/smack/n;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final g()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/smack/n;->c:I

    return v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/smack/n;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final i()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/smack/n;->d:Z

    return v0
.end method
