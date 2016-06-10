.class final Lcom/xiaomi/kenai/jbosh/g;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/xiaomi/kenai/jbosh/B;

.field private final b:Lcom/xiaomi/kenai/jbosh/D;

.field private final c:Lcom/xiaomi/kenai/jbosh/C;

.field private final d:Lcom/xiaomi/kenai/jbosh/z;

.field private final e:Lcom/xiaomi/kenai/jbosh/x;

.field private final f:Z


# direct methods
.method private constructor <init>(Lcom/xiaomi/kenai/jbosh/B;Lcom/xiaomi/kenai/jbosh/D;Lcom/xiaomi/kenai/jbosh/C;Lcom/xiaomi/kenai/jbosh/z;Lcom/xiaomi/kenai/jbosh/v;Lcom/xiaomi/kenai/jbosh/A;Lcom/xiaomi/kenai/jbosh/u;Lcom/xiaomi/kenai/jbosh/r;Lcom/xiaomi/kenai/jbosh/x;Lcom/xiaomi/kenai/jbosh/s;Lcom/xiaomi/kenai/jbosh/t;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/kenai/jbosh/g;->a:Lcom/xiaomi/kenai/jbosh/B;

    iput-object p2, p0, Lcom/xiaomi/kenai/jbosh/g;->b:Lcom/xiaomi/kenai/jbosh/D;

    iput-object p3, p0, Lcom/xiaomi/kenai/jbosh/g;->c:Lcom/xiaomi/kenai/jbosh/C;

    iput-object p4, p0, Lcom/xiaomi/kenai/jbosh/g;->d:Lcom/xiaomi/kenai/jbosh/z;

    iput-object p9, p0, Lcom/xiaomi/kenai/jbosh/g;->e:Lcom/xiaomi/kenai/jbosh/x;

    iput-boolean p12, p0, Lcom/xiaomi/kenai/jbosh/g;->f:Z

    return-void
.end method

.method static a(Lcom/xiaomi/kenai/jbosh/p;Lcom/xiaomi/kenai/jbosh/p;)Lcom/xiaomi/kenai/jbosh/g;
    .locals 13

    sget-object v0, Lcom/xiaomi/kenai/jbosh/E;->b:Lcom/xiaomi/kenai/jbosh/f;

    invoke-virtual {p1, v0}, Lcom/xiaomi/kenai/jbosh/p;->a(Lcom/xiaomi/kenai/jbosh/f;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/kenai/jbosh/s;->a(Ljava/lang/String;)Lcom/xiaomi/kenai/jbosh/s;

    move-result-object v10

    sget-object v0, Lcom/xiaomi/kenai/jbosh/E;->m:Lcom/xiaomi/kenai/jbosh/f;

    invoke-virtual {p0, v0}, Lcom/xiaomi/kenai/jbosh/p;->a(Lcom/xiaomi/kenai/jbosh/f;)Ljava/lang/String;

    move-result-object v1

    if-eqz v10, :cond_0

    invoke-virtual {v10}, Lcom/xiaomi/kenai/jbosh/s;->a()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v12, 0x1

    :goto_0
    new-instance v0, Lcom/xiaomi/kenai/jbosh/g;

    sget-object v1, Lcom/xiaomi/kenai/jbosh/E;->o:Lcom/xiaomi/kenai/jbosh/f;

    invoke-static {p1, v1}, Lcom/xiaomi/kenai/jbosh/g;->a(Lcom/xiaomi/kenai/jbosh/p;Lcom/xiaomi/kenai/jbosh/f;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/kenai/jbosh/B;->a(Ljava/lang/String;)Lcom/xiaomi/kenai/jbosh/B;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/kenai/jbosh/E;->t:Lcom/xiaomi/kenai/jbosh/f;

    invoke-static {p1, v2}, Lcom/xiaomi/kenai/jbosh/g;->a(Lcom/xiaomi/kenai/jbosh/p;Lcom/xiaomi/kenai/jbosh/f;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/kenai/jbosh/D;->a(Ljava/lang/String;)Lcom/xiaomi/kenai/jbosh/D;

    move-result-object v2

    sget-object v3, Lcom/xiaomi/kenai/jbosh/E;->s:Lcom/xiaomi/kenai/jbosh/f;

    invoke-virtual {p1, v3}, Lcom/xiaomi/kenai/jbosh/p;->a(Lcom/xiaomi/kenai/jbosh/f;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/kenai/jbosh/C;->a(Ljava/lang/String;)Lcom/xiaomi/kenai/jbosh/C;

    move-result-object v3

    sget-object v4, Lcom/xiaomi/kenai/jbosh/E;->j:Lcom/xiaomi/kenai/jbosh/f;

    invoke-virtual {p1, v4}, Lcom/xiaomi/kenai/jbosh/p;->a(Lcom/xiaomi/kenai/jbosh/f;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/kenai/jbosh/z;->a(Ljava/lang/String;)Lcom/xiaomi/kenai/jbosh/z;

    move-result-object v4

    sget-object v5, Lcom/xiaomi/kenai/jbosh/E;->g:Lcom/xiaomi/kenai/jbosh/f;

    invoke-virtual {p1, v5}, Lcom/xiaomi/kenai/jbosh/p;->a(Lcom/xiaomi/kenai/jbosh/f;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/xiaomi/kenai/jbosh/v;->a(Ljava/lang/String;)Lcom/xiaomi/kenai/jbosh/v;

    move-result-object v5

    sget-object v6, Lcom/xiaomi/kenai/jbosh/E;->l:Lcom/xiaomi/kenai/jbosh/f;

    invoke-virtual {p1, v6}, Lcom/xiaomi/kenai/jbosh/p;->a(Lcom/xiaomi/kenai/jbosh/f;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/xiaomi/kenai/jbosh/A;->a(Ljava/lang/String;)Lcom/xiaomi/kenai/jbosh/A;

    move-result-object v6

    sget-object v7, Lcom/xiaomi/kenai/jbosh/E;->f:Lcom/xiaomi/kenai/jbosh/f;

    invoke-virtual {p1, v7}, Lcom/xiaomi/kenai/jbosh/p;->a(Lcom/xiaomi/kenai/jbosh/f;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/xiaomi/kenai/jbosh/u;->a(Ljava/lang/String;)Lcom/xiaomi/kenai/jbosh/u;

    move-result-object v7

    sget-object v8, Lcom/xiaomi/kenai/jbosh/E;->a:Lcom/xiaomi/kenai/jbosh/f;

    invoke-virtual {p1, v8}, Lcom/xiaomi/kenai/jbosh/p;->a(Lcom/xiaomi/kenai/jbosh/f;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/xiaomi/kenai/jbosh/r;->a(Ljava/lang/String;)Lcom/xiaomi/kenai/jbosh/r;

    move-result-object v8

    sget-object v9, Lcom/xiaomi/kenai/jbosh/E;->h:Lcom/xiaomi/kenai/jbosh/f;

    invoke-virtual {p1, v9}, Lcom/xiaomi/kenai/jbosh/p;->a(Lcom/xiaomi/kenai/jbosh/f;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/xiaomi/kenai/jbosh/x;->a(Ljava/lang/String;)Lcom/xiaomi/kenai/jbosh/x;

    move-result-object v9

    sget-object v11, Lcom/xiaomi/kenai/jbosh/E;->c:Lcom/xiaomi/kenai/jbosh/f;

    invoke-virtual {p1, v11}, Lcom/xiaomi/kenai/jbosh/p;->a(Lcom/xiaomi/kenai/jbosh/f;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/xiaomi/kenai/jbosh/t;->a(Ljava/lang/String;)Lcom/xiaomi/kenai/jbosh/t;

    move-result-object v11

    invoke-direct/range {v0 .. v12}, Lcom/xiaomi/kenai/jbosh/g;-><init>(Lcom/xiaomi/kenai/jbosh/B;Lcom/xiaomi/kenai/jbosh/D;Lcom/xiaomi/kenai/jbosh/C;Lcom/xiaomi/kenai/jbosh/z;Lcom/xiaomi/kenai/jbosh/v;Lcom/xiaomi/kenai/jbosh/A;Lcom/xiaomi/kenai/jbosh/u;Lcom/xiaomi/kenai/jbosh/r;Lcom/xiaomi/kenai/jbosh/x;Lcom/xiaomi/kenai/jbosh/s;Lcom/xiaomi/kenai/jbosh/t;Z)V

    return-object v0

    :cond_0
    const/4 v12, 0x0

    goto :goto_0
.end method

.method private static a(Lcom/xiaomi/kenai/jbosh/p;Lcom/xiaomi/kenai/jbosh/f;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/xiaomi/kenai/jbosh/p;->a(Lcom/xiaomi/kenai/jbosh/f;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/kenai/jbosh/aa;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Connection Manager session creation response did not include required \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xiaomi/kenai/jbosh/f;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' attribute"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaomi/kenai/jbosh/aa;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-object v0
.end method


# virtual methods
.method final a()Lcom/xiaomi/kenai/jbosh/B;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/kenai/jbosh/g;->a:Lcom/xiaomi/kenai/jbosh/B;

    return-object v0
.end method

.method final b()Lcom/xiaomi/kenai/jbosh/D;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/kenai/jbosh/g;->b:Lcom/xiaomi/kenai/jbosh/D;

    return-object v0
.end method

.method final c()Lcom/xiaomi/kenai/jbosh/C;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/kenai/jbosh/g;->c:Lcom/xiaomi/kenai/jbosh/C;

    return-object v0
.end method

.method final d()Lcom/xiaomi/kenai/jbosh/z;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/kenai/jbosh/g;->d:Lcom/xiaomi/kenai/jbosh/z;

    return-object v0
.end method

.method final e()Lcom/xiaomi/kenai/jbosh/x;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/kenai/jbosh/g;->e:Lcom/xiaomi/kenai/jbosh/x;

    return-object v0
.end method

.method final f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/kenai/jbosh/g;->f:Z

    return v0
.end method
