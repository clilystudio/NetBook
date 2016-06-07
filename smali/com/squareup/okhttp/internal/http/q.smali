.class public final Lcom/squareup/okhttp/internal/http/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/squareup/okhttp/internal/http/A;


# instance fields
.field private final a:Lcom/squareup/okhttp/internal/http/m;

.field private final b:Lcom/squareup/okhttp/internal/http/d;


# direct methods
.method public constructor <init>(Lcom/squareup/okhttp/internal/http/m;Lcom/squareup/okhttp/internal/http/d;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/squareup/okhttp/internal/http/q;->a:Lcom/squareup/okhttp/internal/http/m;

    .line 33
    iput-object p2, p0, Lcom/squareup/okhttp/internal/http/q;->b:Lcom/squareup/okhttp/internal/http/d;

    .line 34
    return-void
.end method


# virtual methods
.method public final a(Lcom/squareup/okhttp/I;)Lcom/squareup/okhttp/K;
    .locals 4

    .prologue
    .line 110
    .line 1115
    invoke-static {p1}, Lcom/squareup/okhttp/internal/http/m;->a(Lcom/squareup/okhttp/I;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1116
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/q;->b:Lcom/squareup/okhttp/internal/http/d;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/squareup/okhttp/internal/http/d;->b(J)Lokio/y;

    move-result-object v0

    .line 111
    :goto_0
    new-instance v1, Lcom/squareup/okhttp/internal/http/t;

    invoke-virtual {p1}, Lcom/squareup/okhttp/I;->f()Lcom/squareup/okhttp/u;

    move-result-object v2

    invoke-static {v0}, Lokio/o;->a(Lokio/y;)Lokio/i;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/squareup/okhttp/internal/http/t;-><init>(Lcom/squareup/okhttp/u;Lokio/i;)V

    return-object v1

    .line 1119
    :cond_0
    const-string v0, "chunked"

    const-string v1, "Transfer-Encoding"

    invoke-virtual {p1, v1}, Lcom/squareup/okhttp/I;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1120
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/q;->b:Lcom/squareup/okhttp/internal/http/d;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/q;->a:Lcom/squareup/okhttp/internal/http/m;

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/http/d;->a(Lcom/squareup/okhttp/internal/http/m;)Lokio/y;

    move-result-object v0

    goto :goto_0

    .line 1123
    :cond_1
    invoke-static {p1}, Lcom/squareup/okhttp/internal/http/r;->a(Lcom/squareup/okhttp/I;)J

    move-result-wide v0

    .line 1124
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    .line 1125
    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/q;->b:Lcom/squareup/okhttp/internal/http/d;

    invoke-virtual {v2, v0, v1}, Lcom/squareup/okhttp/internal/http/d;->b(J)Lokio/y;

    move-result-object v0

    goto :goto_0

    .line 1131
    :cond_2
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/q;->b:Lcom/squareup/okhttp/internal/http/d;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/d;->i()Lokio/y;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Lcom/squareup/okhttp/C;J)Lokio/x;
    .locals 2

    .prologue
    .line 37
    const-string v0, "chunked"

    const-string v1, "Transfer-Encoding"

    invoke-virtual {p1, v1}, Lcom/squareup/okhttp/C;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/q;->b:Lcom/squareup/okhttp/internal/http/d;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/d;->h()Lokio/x;

    move-result-object v0

    .line 44
    :goto_0
    return-object v0

    .line 42
    :cond_0
    const-wide/16 v0, -0x1

    cmp-long v0, p2, v0

    if-eqz v0, :cond_1

    .line 44
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/q;->b:Lcom/squareup/okhttp/internal/http/d;

    invoke-virtual {v0, p2, p3}, Lcom/squareup/okhttp/internal/http/d;->a(J)Lokio/x;

    move-result-object v0

    goto :goto_0

    .line 47
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot stream a request body without chunked encoding or a known content length!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/q;->b:Lcom/squareup/okhttp/internal/http/d;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/d;->d()V

    .line 53
    return-void
.end method

.method public final a(Lcom/squareup/okhttp/C;)V
    .locals 3

    .prologue
    .line 72
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/q;->a:Lcom/squareup/okhttp/internal/http/m;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/m;->b()V

    .line 73
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/q;->a:Lcom/squareup/okhttp/internal/http/m;

    .line 74
    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/m;->f()Lcom/squareup/okhttp/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/m;->b()Lcom/squareup/okhttp/L;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/L;->b()Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/q;->a:Lcom/squareup/okhttp/internal/http/m;

    .line 75
    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/http/m;->f()Lcom/squareup/okhttp/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/okhttp/m;->k()Lcom/squareup/okhttp/Protocol;

    move-result-object v1

    .line 73
    invoke-static {p1, v0, v1}, Lcom/squareup/okhttp/internal/http/b;->a(Lcom/squareup/okhttp/C;Ljava/net/Proxy$Type;Lcom/squareup/okhttp/Protocol;)Ljava/lang/String;

    move-result-object v0

    .line 76
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/q;->b:Lcom/squareup/okhttp/internal/http/d;

    invoke-virtual {p1}, Lcom/squareup/okhttp/C;->e()Lcom/squareup/okhttp/u;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/squareup/okhttp/internal/http/d;->a(Lcom/squareup/okhttp/u;Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public final a(Lcom/squareup/okhttp/internal/http/u;)V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/q;->b:Lcom/squareup/okhttp/internal/http/d;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/internal/http/d;->a(Lcom/squareup/okhttp/internal/http/u;)V

    .line 57
    return-void
.end method

.method public final b()Lcom/squareup/okhttp/J;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/q;->b:Lcom/squareup/okhttp/internal/http/d;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/d;->g()Lcom/squareup/okhttp/J;

    move-result-object v0

    return-object v0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/q;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/q;->b:Lcom/squareup/okhttp/internal/http/d;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/d;->a()V

    .line 89
    :goto_0
    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/q;->b:Lcom/squareup/okhttp/internal/http/d;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/d;->b()V

    goto :goto_0
.end method

.method public final d()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 93
    const-string v1, "close"

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/q;->a:Lcom/squareup/okhttp/internal/http/m;

    invoke-virtual {v2}, Lcom/squareup/okhttp/internal/http/m;->d()Lcom/squareup/okhttp/C;

    move-result-object v2

    const-string v3, "Connection"

    invoke-virtual {v2, v3}, Lcom/squareup/okhttp/C;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 106
    :cond_0
    :goto_0
    return v0

    .line 98
    :cond_1
    const-string v1, "close"

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/q;->a:Lcom/squareup/okhttp/internal/http/m;

    invoke-virtual {v2}, Lcom/squareup/okhttp/internal/http/m;->e()Lcom/squareup/okhttp/I;

    move-result-object v2

    const-string v3, "Connection"

    invoke-virtual {v2, v3}, Lcom/squareup/okhttp/I;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 102
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/q;->b:Lcom/squareup/okhttp/internal/http/d;

    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/http/d;->c()Z

    move-result v1

    if-nez v1, :cond_0

    .line 106
    const/4 v0, 0x1

    goto :goto_0
.end method
