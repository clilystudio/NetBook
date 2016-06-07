.class final Lcom/koushikdutta/async/http/server/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/G;


# instance fields
.field private synthetic a:Lcom/koushikdutta/async/http/server/i;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/server/i;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/koushikdutta/async/http/server/k;->a:Lcom/koushikdutta/async/http/server/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 51
    :try_start_0
    iget-object v2, p0, Lcom/koushikdutta/async/http/server/k;->a:Lcom/koushikdutta/async/http/server/i;

    invoke-static {v2}, Lcom/koushikdutta/async/http/server/i;->a(Lcom/koushikdutta/async/http/server/i;)Lcom/koushikdutta/async/http/b/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/koushikdutta/async/http/b/e;->a()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 52
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/k;->a:Lcom/koushikdutta/async/http/server/i;

    invoke-static {v0}, Lcom/koushikdutta/async/http/server/i;->a(Lcom/koushikdutta/async/http/server/i;)Lcom/koushikdutta/async/http/b/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/http/b/e;->a(Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/k;->a:Lcom/koushikdutta/async/http/server/i;

    invoke-static {v0}, Lcom/koushikdutta/async/http/server/i;->a(Lcom/koushikdutta/async/http/server/i;)Lcom/koushikdutta/async/http/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/b/e;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HTTP/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/k;->a:Lcom/koushikdutta/async/http/server/i;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/server/i;->k()V

    .line 55
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/k;->a:Lcom/koushikdutta/async/http/server/i;

    iget-object v0, v0, Lcom/koushikdutta/async/http/server/i;->c:Lcom/koushikdutta/async/s;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/s;->a(Lcom/koushikdutta/async/a/b;)V

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    const-string v2, "\r"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 59
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/k;->a:Lcom/koushikdutta/async/http/server/i;

    invoke-static {v0}, Lcom/koushikdutta/async/http/server/i;->a(Lcom/koushikdutta/async/http/server/i;)Lcom/koushikdutta/async/http/b/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/http/b/e;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 75
    :catch_0
    move-exception v0

    .line 76
    iget-object v1, p0, Lcom/koushikdutta/async/http/server/k;->a:Lcom/koushikdutta/async/http/server/i;

    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/http/server/i;->a(Ljava/lang/Exception;)V

    goto :goto_0

    .line 62
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/koushikdutta/async/http/server/k;->a:Lcom/koushikdutta/async/http/server/i;

    iget-object v2, v2, Lcom/koushikdutta/async/http/server/i;->c:Lcom/koushikdutta/async/s;

    iget-object v3, p0, Lcom/koushikdutta/async/http/server/k;->a:Lcom/koushikdutta/async/http/server/i;

    invoke-static {v3}, Lcom/koushikdutta/async/http/server/i;->a(Lcom/koushikdutta/async/http/server/i;)Lcom/koushikdutta/async/http/b/e;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/koushikdutta/async/http/a;->a(Lcom/koushikdutta/async/y;Lcom/koushikdutta/async/http/b/e;Z)Lcom/koushikdutta/async/y;

    move-result-object v3

    .line 64
    iget-object v4, p0, Lcom/koushikdutta/async/http/server/k;->a:Lcom/koushikdutta/async/http/server/i;

    iget-object v2, p0, Lcom/koushikdutta/async/http/server/k;->a:Lcom/koushikdutta/async/http/server/i;

    invoke-static {v2}, Lcom/koushikdutta/async/http/server/i;->a(Lcom/koushikdutta/async/http/server/i;)Lcom/koushikdutta/async/http/b/e;

    move-result-object v2

    .line 1021
    const-string v5, "Content-Type"

    invoke-virtual {v2, v5}, Lcom/koushikdutta/async/http/b/e;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1022
    if-eqz v2, :cond_4

    .line 1023
    const-string v5, ";"

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    move v2, v1

    .line 1024
    :goto_1
    array-length v6, v5

    if-ge v2, v6, :cond_3

    .line 1025
    aget-object v6, v5, v2

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    .line 1024
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1027
    :cond_3
    array-length v2, v5

    :goto_2
    if-ge v1, v2, :cond_4

    aget-object v6, v5, v1

    .line 1028
    const-string v7, "application/x-www-form-urlencoded"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1029
    new-instance v0, Lcom/koushikdutta/async/http/a/k;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/a/k;-><init>()V

    .line 64
    :cond_4
    :goto_3
    iput-object v0, v4, Lcom/koushikdutta/async/http/server/i;->f:Lcom/koushikdutta/async/http/a/a;

    .line 65
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/k;->a:Lcom/koushikdutta/async/http/server/i;

    iget-object v0, v0, Lcom/koushikdutta/async/http/server/i;->f:Lcom/koushikdutta/async/http/a/a;

    if-nez v0, :cond_5

    .line 66
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/k;->a:Lcom/koushikdutta/async/http/server/i;

    iget-object v1, p0, Lcom/koushikdutta/async/http/server/k;->a:Lcom/koushikdutta/async/http/server/i;

    iget-object v2, p0, Lcom/koushikdutta/async/http/server/k;->a:Lcom/koushikdutta/async/http/server/i;

    invoke-static {v2}, Lcom/koushikdutta/async/http/server/i;->a(Lcom/koushikdutta/async/http/server/i;)Lcom/koushikdutta/async/http/b/e;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/http/server/i;->a(Lcom/koushikdutta/async/http/b/e;)Lcom/koushikdutta/async/http/a/a;

    move-result-object v1

    iput-object v1, v0, Lcom/koushikdutta/async/http/server/i;->f:Lcom/koushikdutta/async/http/a/a;

    .line 67
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/k;->a:Lcom/koushikdutta/async/http/server/i;

    iget-object v0, v0, Lcom/koushikdutta/async/http/server/i;->f:Lcom/koushikdutta/async/http/a/a;

    if-nez v0, :cond_5

    .line 68
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/k;->a:Lcom/koushikdutta/async/http/server/i;

    new-instance v1, Lcom/koushikdutta/async/http/server/s;

    iget-object v2, p0, Lcom/koushikdutta/async/http/server/k;->a:Lcom/koushikdutta/async/http/server/i;

    invoke-static {v2}, Lcom/koushikdutta/async/http/server/i;->a(Lcom/koushikdutta/async/http/server/i;)Lcom/koushikdutta/async/http/b/e;

    move-result-object v2

    const-string v4, "Content-Type"

    invoke-virtual {v2, v4}, Lcom/koushikdutta/async/http/b/e;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/koushikdutta/async/http/server/s;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/koushikdutta/async/http/server/i;->f:Lcom/koushikdutta/async/http/a/a;

    .line 70
    :cond_5
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/k;->a:Lcom/koushikdutta/async/http/server/i;

    iget-object v0, v0, Lcom/koushikdutta/async/http/server/i;->f:Lcom/koushikdutta/async/http/a/a;

    iget-object v1, p0, Lcom/koushikdutta/async/http/server/k;->a:Lcom/koushikdutta/async/http/server/i;

    invoke-static {v1}, Lcom/koushikdutta/async/http/server/i;->b(Lcom/koushikdutta/async/http/server/i;)Lcom/koushikdutta/async/a/a;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lcom/koushikdutta/async/http/a/a;->a(Lcom/koushikdutta/async/y;Lcom/koushikdutta/async/a/a;)V

    .line 71
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/k;->a:Lcom/koushikdutta/async/http/server/i;

    new-instance v1, Lcom/koushikdutta/async/http/b/a;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/koushikdutta/async/http/server/k;->a:Lcom/koushikdutta/async/http/server/i;

    invoke-static {v3}, Lcom/koushikdutta/async/http/server/i;->a(Lcom/koushikdutta/async/http/server/i;)Lcom/koushikdutta/async/http/b/e;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/koushikdutta/async/http/b/a;-><init>(Landroid/net/Uri;Lcom/koushikdutta/async/http/b/e;)V

    invoke-static {v0, v1}, Lcom/koushikdutta/async/http/server/i;->a(Lcom/koushikdutta/async/http/server/i;Lcom/koushikdutta/async/http/b/a;)Lcom/koushikdutta/async/http/b/a;

    .line 72
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/k;->a:Lcom/koushikdutta/async/http/server/i;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/server/i;->b()V

    goto/16 :goto_0

    .line 1031
    :cond_6
    const-string v7, "application/json"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1032
    new-instance v0, Lcom/koushikdutta/async/http/a/b;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/a/b;-><init>()V

    goto :goto_3

    .line 1034
    :cond_7
    const-string v7, "text/plain"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1035
    new-instance v0, Lcom/koushikdutta/async/http/a/i;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/a/i;-><init>()V

    goto :goto_3

    .line 1037
    :cond_8
    const-string v7, "multipart/form-data"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1038
    new-instance v0, Lcom/koushikdutta/async/http/a/d;

    invoke-direct {v0, v5}, Lcom/koushikdutta/async/http/a/d;-><init>([Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    .line 1027
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2
.end method
