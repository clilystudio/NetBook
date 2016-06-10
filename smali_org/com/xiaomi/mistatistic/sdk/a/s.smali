.class final Lcom/xiaomi/mistatistic/sdk/a/s;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/mistatistic/sdk/a/j;


# instance fields
.field private a:Lcom/xiaomi/mistatistic/sdk/b/b;


# direct methods
.method public constructor <init>(Lcom/xiaomi/mistatistic/sdk/b/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/a/s;->a:Lcom/xiaomi/mistatistic/sdk/b/b;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/s;->a:Lcom/xiaomi/mistatistic/sdk/b/b;

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/b/b;->a()Lcom/xiaomi/mistatistic/sdk/b/i;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/mistatistic/sdk/a/n;

    invoke-direct {v1}, Lcom/xiaomi/mistatistic/sdk/a/n;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/a/s;->a:Lcom/xiaomi/mistatistic/sdk/b/b;

    instance-of v1, v1, Lcom/xiaomi/mistatistic/sdk/b/g;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/a/s;->a:Lcom/xiaomi/mistatistic/sdk/b/b;

    instance-of v1, v1, Lcom/xiaomi/mistatistic/sdk/b/h;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/a/s;->a:Lcom/xiaomi/mistatistic/sdk/b/b;

    instance-of v1, v1, Lcom/xiaomi/mistatistic/sdk/b/d;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/a/s;->a:Lcom/xiaomi/mistatistic/sdk/b/b;

    instance-of v1, v1, Lcom/xiaomi/mistatistic/sdk/b/c;

    if-eqz v1, :cond_2

    :cond_0
    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/a/n;->a(Lcom/xiaomi/mistatistic/sdk/b/i;)V

    :goto_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/c;->a()Lcom/xiaomi/mistatistic/sdk/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/a/c;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/xiaomi/mistatistic/sdk/a/w;

    invoke-direct {v0}, Lcom/xiaomi/mistatistic/sdk/a/w;-><init>()V

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/a/w;->a()V

    :cond_1
    return-void

    :cond_2
    iget-object v1, v0, Lcom/xiaomi/mistatistic/sdk/b/i;->c:Ljava/lang/String;

    iget-object v2, v0, Lcom/xiaomi/mistatistic/sdk/b/i;->a:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/xiaomi/mistatistic/sdk/a/n;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/mistatistic/sdk/b/i;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v4, v0, Lcom/xiaomi/mistatistic/sdk/b/i;->d:Ljava/lang/String;

    iget-object v3, v3, Lcom/xiaomi/mistatistic/sdk/b/i;->d:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_3
    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/a/n;->a(Lcom/xiaomi/mistatistic/sdk/b/i;)V

    goto :goto_0

    :cond_4
    iget-object v0, v0, Lcom/xiaomi/mistatistic/sdk/b/i;->e:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/xiaomi/mistatistic/sdk/a/n;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
