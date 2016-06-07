.class public final Lcom/squareup/okhttp/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/squareup/okhttp/n;

.field private final b:Lcom/squareup/okhttp/L;

.field private c:Ljava/net/Socket;

.field private d:Z

.field private e:Lcom/squareup/okhttp/internal/http/d;

.field private f:Lcom/squareup/okhttp/internal/spdy/A;

.field private g:Lcom/squareup/okhttp/Protocol;

.field private h:J

.field private i:Lcom/squareup/okhttp/t;

.field private j:I

.field private k:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/squareup/okhttp/n;Lcom/squareup/okhttp/L;)V
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/squareup/okhttp/m;->d:Z

    .line 68
    sget-object v0, Lcom/squareup/okhttp/Protocol;->HTTP_1_1:Lcom/squareup/okhttp/Protocol;

    iput-object v0, p0, Lcom/squareup/okhttp/m;->g:Lcom/squareup/okhttp/Protocol;

    .line 81
    iput-object p1, p0, Lcom/squareup/okhttp/m;->a:Lcom/squareup/okhttp/n;

    .line 82
    iput-object p2, p0, Lcom/squareup/okhttp/m;->b:Lcom/squareup/okhttp/L;

    .line 83
    return-void
.end method


# virtual methods
.method final a(Lcom/squareup/okhttp/internal/http/m;)Lcom/squareup/okhttp/internal/http/A;
    .locals 2

    .prologue
    .line 263
    iget-object v0, p0, Lcom/squareup/okhttp/m;->f:Lcom/squareup/okhttp/internal/spdy/A;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/squareup/okhttp/internal/http/y;

    iget-object v1, p0, Lcom/squareup/okhttp/m;->f:Lcom/squareup/okhttp/internal/spdy/A;

    invoke-direct {v0, p1, v1}, Lcom/squareup/okhttp/internal/http/y;-><init>(Lcom/squareup/okhttp/internal/http/m;Lcom/squareup/okhttp/internal/spdy/A;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/squareup/okhttp/internal/http/q;

    iget-object v1, p0, Lcom/squareup/okhttp/m;->e:Lcom/squareup/okhttp/internal/http/d;

    invoke-direct {v0, p1, v1}, Lcom/squareup/okhttp/internal/http/q;-><init>(Lcom/squareup/okhttp/internal/http/m;Lcom/squareup/okhttp/internal/http/d;)V

    goto :goto_0
.end method

.method final a(Lcom/squareup/okhttp/A;Ljava/lang/Object;Lcom/squareup/okhttp/C;)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 181
    invoke-virtual {p0, p2}, Lcom/squareup/okhttp/m;->a(Ljava/lang/Object;)V

    .line 1198
    iget-boolean v0, p0, Lcom/squareup/okhttp/m;->d:Z

    .line 183
    if-nez v0, :cond_3

    .line 184
    iget-object v0, p0, Lcom/squareup/okhttp/m;->b:Lcom/squareup/okhttp/L;

    iget-object v0, v0, Lcom/squareup/okhttp/L;->a:Lcom/squareup/okhttp/a;

    .line 2123
    iget-object v6, v0, Lcom/squareup/okhttp/a;->d:Ljava/util/List;

    .line 185
    invoke-virtual {p1}, Lcom/squareup/okhttp/A;->a()I

    move-result v1

    invoke-virtual {p1}, Lcom/squareup/okhttp/A;->b()I

    move-result v2

    invoke-virtual {p1}, Lcom/squareup/okhttp/A;->c()I

    move-result v3

    .line 186
    invoke-virtual {p1}, Lcom/squareup/okhttp/A;->p()Z

    move-result v7

    .line 2137
    iget-boolean v0, p0, Lcom/squareup/okhttp/m;->d:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2139
    :cond_0
    new-instance v0, Lcom/squareup/okhttp/internal/http/w;

    iget-object v4, p0, Lcom/squareup/okhttp/m;->a:Lcom/squareup/okhttp/n;

    invoke-direct {v0, p0, v4}, Lcom/squareup/okhttp/internal/http/w;-><init>(Lcom/squareup/okhttp/m;Lcom/squareup/okhttp/n;)V

    .line 2141
    iget-object v4, p0, Lcom/squareup/okhttp/m;->b:Lcom/squareup/okhttp/L;

    iget-object v4, v4, Lcom/squareup/okhttp/L;->a:Lcom/squareup/okhttp/a;

    .line 3096
    iget-object v4, v4, Lcom/squareup/okhttp/a;->c:Ljavax/net/ssl/SSLSocketFactory;

    .line 2141
    if-eqz v4, :cond_4

    .line 2143
    iget-object v5, p0, Lcom/squareup/okhttp/m;->b:Lcom/squareup/okhttp/L;

    move-object v4, p3

    invoke-virtual/range {v0 .. v7}, Lcom/squareup/okhttp/internal/http/w;->a(IIILcom/squareup/okhttp/C;Lcom/squareup/okhttp/L;Ljava/util/List;Z)Lcom/squareup/okhttp/internal/http/x;

    move-result-object v0

    .line 2155
    :goto_0
    iget-object v1, v0, Lcom/squareup/okhttp/internal/http/x;->a:Ljava/net/Socket;

    iput-object v1, p0, Lcom/squareup/okhttp/m;->c:Ljava/net/Socket;

    .line 2156
    iget-object v1, v0, Lcom/squareup/okhttp/internal/http/x;->c:Lcom/squareup/okhttp/t;

    iput-object v1, p0, Lcom/squareup/okhttp/m;->i:Lcom/squareup/okhttp/t;

    .line 2157
    iget-object v1, v0, Lcom/squareup/okhttp/internal/http/x;->b:Lcom/squareup/okhttp/Protocol;

    if-nez v1, :cond_6

    sget-object v0, Lcom/squareup/okhttp/Protocol;->HTTP_1_1:Lcom/squareup/okhttp/Protocol;

    :goto_1
    iput-object v0, p0, Lcom/squareup/okhttp/m;->g:Lcom/squareup/okhttp/Protocol;

    .line 2161
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/m;->g:Lcom/squareup/okhttp/Protocol;

    sget-object v1, Lcom/squareup/okhttp/Protocol;->SPDY_3:Lcom/squareup/okhttp/Protocol;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/squareup/okhttp/m;->g:Lcom/squareup/okhttp/Protocol;

    sget-object v1, Lcom/squareup/okhttp/Protocol;->HTTP_2:Lcom/squareup/okhttp/Protocol;

    if-ne v0, v1, :cond_7

    .line 2162
    :cond_1
    iget-object v0, p0, Lcom/squareup/okhttp/m;->c:Ljava/net/Socket;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 2163
    new-instance v0, Lcom/squareup/okhttp/internal/spdy/I;

    iget-object v1, p0, Lcom/squareup/okhttp/m;->b:Lcom/squareup/okhttp/L;

    iget-object v1, v1, Lcom/squareup/okhttp/L;->a:Lcom/squareup/okhttp/a;

    iget-object v1, v1, Lcom/squareup/okhttp/a;->a:Ljava/lang/String;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/squareup/okhttp/m;->c:Ljava/net/Socket;

    invoke-direct {v0, v1, v2, v3}, Lcom/squareup/okhttp/internal/spdy/I;-><init>(Ljava/lang/String;ZLjava/net/Socket;)V

    iget-object v1, p0, Lcom/squareup/okhttp/m;->g:Lcom/squareup/okhttp/Protocol;

    .line 2164
    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/spdy/I;->a(Lcom/squareup/okhttp/Protocol;)Lcom/squareup/okhttp/internal/spdy/I;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/spdy/I;->a()Lcom/squareup/okhttp/internal/spdy/A;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/m;->f:Lcom/squareup/okhttp/internal/spdy/A;

    .line 2165
    iget-object v0, p0, Lcom/squareup/okhttp/m;->f:Lcom/squareup/okhttp/internal/spdy/A;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/spdy/A;->e()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2172
    :goto_2
    iput-boolean v8, p0, Lcom/squareup/okhttp/m;->d:Z

    .line 187
    invoke-virtual {p0}, Lcom/squareup/okhttp/m;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 188
    invoke-virtual {p1}, Lcom/squareup/okhttp/A;->m()Lcom/squareup/okhttp/n;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/okhttp/n;->b(Lcom/squareup/okhttp/m;)V

    .line 190
    :cond_2
    invoke-virtual {p1}, Lcom/squareup/okhttp/A;->q()Lcom/squareup/okhttp/internal/k;

    move-result-object v0

    .line 3203
    iget-object v1, p0, Lcom/squareup/okhttp/m;->b:Lcom/squareup/okhttp/L;

    .line 190
    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/k;->b(Lcom/squareup/okhttp/L;)V

    .line 193
    :cond_3
    invoke-virtual {p1}, Lcom/squareup/okhttp/A;->b()I

    move-result v0

    invoke-virtual {p1}, Lcom/squareup/okhttp/A;->c()I

    move-result v1

    .line 3295
    iget-boolean v2, p0, Lcom/squareup/okhttp/m;->d:Z

    if-nez v2, :cond_8

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setTimeouts - not connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2147
    :cond_4
    sget-object v3, Lcom/squareup/okhttp/p;->c:Lcom/squareup/okhttp/p;

    invoke-interface {v6, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 2148
    new-instance v0, Lcom/squareup/okhttp/internal/http/RouteException;

    new-instance v1, Ljava/net/UnknownServiceException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "CLEARTEXT communication not supported: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/squareup/okhttp/internal/http/RouteException;-><init>(Ljava/io/IOException;)V

    throw v0

    .line 2152
    :cond_5
    iget-object v3, p0, Lcom/squareup/okhttp/m;->b:Lcom/squareup/okhttp/L;

    invoke-virtual {v0, v1, v2, v3}, Lcom/squareup/okhttp/internal/http/w;->a(IILcom/squareup/okhttp/L;)Lcom/squareup/okhttp/internal/http/x;

    move-result-object v0

    goto/16 :goto_0

    .line 2157
    :cond_6
    iget-object v0, v0, Lcom/squareup/okhttp/internal/http/x;->b:Lcom/squareup/okhttp/Protocol;

    goto/16 :goto_1

    .line 2167
    :cond_7
    :try_start_1
    new-instance v0, Lcom/squareup/okhttp/internal/http/d;

    iget-object v1, p0, Lcom/squareup/okhttp/m;->a:Lcom/squareup/okhttp/n;

    iget-object v2, p0, Lcom/squareup/okhttp/m;->c:Ljava/net/Socket;

    invoke-direct {v0, v1, p0, v2}, Lcom/squareup/okhttp/internal/http/d;-><init>(Lcom/squareup/okhttp/n;Lcom/squareup/okhttp/m;Ljava/net/Socket;)V

    iput-object v0, p0, Lcom/squareup/okhttp/m;->e:Lcom/squareup/okhttp/internal/http/d;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 2169
    :catch_0
    move-exception v0

    .line 2170
    new-instance v1, Lcom/squareup/okhttp/internal/http/RouteException;

    invoke-direct {v1, v0}, Lcom/squareup/okhttp/internal/http/RouteException;-><init>(Ljava/io/IOException;)V

    throw v1

    .line 3298
    :cond_8
    iget-object v2, p0, Lcom/squareup/okhttp/m;->e:Lcom/squareup/okhttp/internal/http/d;

    if-eqz v2, :cond_9

    .line 3300
    :try_start_2
    iget-object v2, p0, Lcom/squareup/okhttp/m;->c:Ljava/net/Socket;

    invoke-virtual {v2, v0}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 3304
    iget-object v2, p0, Lcom/squareup/okhttp/m;->e:Lcom/squareup/okhttp/internal/http/d;

    invoke-virtual {v2, v0, v1}, Lcom/squareup/okhttp/internal/http/d;->a(II)V

    .line 194
    :cond_9
    return-void

    .line 3301
    :catch_1
    move-exception v0

    .line 3302
    new-instance v1, Lcom/squareup/okhttp/internal/http/RouteException;

    invoke-direct {v1, v0}, Lcom/squareup/okhttp/internal/http/RouteException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method final a(Lcom/squareup/okhttp/Protocol;)V
    .locals 2

    .prologue
    .line 289
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "protocol == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 290
    :cond_0
    iput-object p1, p0, Lcom/squareup/okhttp/m;->g:Lcom/squareup/okhttp/Protocol;

    .line 291
    return-void
.end method

.method final a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/squareup/okhttp/m;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    :goto_0
    return-void

    .line 93
    :cond_0
    iget-object v1, p0, Lcom/squareup/okhttp/m;->a:Lcom/squareup/okhttp/n;

    monitor-enter v1

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/m;->k:Ljava/lang/Object;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Connection already has an owner!"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 95
    :cond_1
    :try_start_1
    iput-object p1, p0, Lcom/squareup/okhttp/m;->k:Ljava/lang/Object;

    .line 96
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method final a()Z
    .locals 2

    .prologue
    .line 106
    iget-object v1, p0, Lcom/squareup/okhttp/m;->a:Lcom/squareup/okhttp/n;

    monitor-enter v1

    .line 107
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/m;->k:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 109
    const/4 v0, 0x0

    monitor-exit v1

    .line 113
    :goto_0
    return v0

    .line 112
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/squareup/okhttp/m;->k:Ljava/lang/Object;

    .line 113
    const/4 v0, 0x1

    monitor-exit v1

    goto :goto_0

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final b()Lcom/squareup/okhttp/L;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/squareup/okhttp/m;->b:Lcom/squareup/okhttp/L;

    return-object v0
.end method

.method public final c()Ljava/net/Socket;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/squareup/okhttp/m;->c:Ljava/net/Socket;

    return-object v0
.end method

.method final d()Z
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/squareup/okhttp/m;->c:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/m;->c:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/m;->c:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final e()Z
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/squareup/okhttp/m;->e:Lcom/squareup/okhttp/internal/http/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/m;->e:Lcom/squareup/okhttp/internal/http/d;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/d;->f()Z

    move-result v0

    .line 236
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method final f()V
    .locals 2

    .prologue
    .line 240
    iget-object v0, p0, Lcom/squareup/okhttp/m;->f:Lcom/squareup/okhttp/internal/spdy/A;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "spdyConnection != null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 241
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/squareup/okhttp/m;->h:J

    .line 242
    return-void
.end method

.method final g()Z
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/squareup/okhttp/m;->f:Lcom/squareup/okhttp/internal/spdy/A;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/m;->f:Lcom/squareup/okhttp/internal/spdy/A;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/spdy/A;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final h()J
    .locals 2

    .prologue
    .line 254
    iget-object v0, p0, Lcom/squareup/okhttp/m;->f:Lcom/squareup/okhttp/internal/spdy/A;

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/squareup/okhttp/m;->h:J

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/m;->f:Lcom/squareup/okhttp/internal/spdy/A;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/spdy/A;->c()J

    move-result-wide v0

    goto :goto_0
.end method

.method public final i()Lcom/squareup/okhttp/t;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/squareup/okhttp/m;->i:Lcom/squareup/okhttp/t;

    return-object v0
.end method

.method final j()Z
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/squareup/okhttp/m;->f:Lcom/squareup/okhttp/internal/spdy/A;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final k()Lcom/squareup/okhttp/Protocol;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/squareup/okhttp/m;->g:Lcom/squareup/okhttp/Protocol;

    return-object v0
.end method

.method final l()V
    .locals 1

    .prologue
    .line 309
    iget v0, p0, Lcom/squareup/okhttp/m;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/squareup/okhttp/m;->j:I

    .line 310
    return-void
.end method

.method final m()I
    .locals 1

    .prologue
    .line 317
    iget v0, p0, Lcom/squareup/okhttp/m;->j:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Connection{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/squareup/okhttp/m;->b:Lcom/squareup/okhttp/L;

    iget-object v1, v1, Lcom/squareup/okhttp/L;->a:Lcom/squareup/okhttp/a;

    iget-object v1, v1, Lcom/squareup/okhttp/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/okhttp/m;->b:Lcom/squareup/okhttp/L;

    iget-object v1, v1, Lcom/squareup/okhttp/L;->a:Lcom/squareup/okhttp/a;

    iget v1, v1, Lcom/squareup/okhttp/a;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", proxy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/okhttp/m;->b:Lcom/squareup/okhttp/L;

    iget-object v1, v1, Lcom/squareup/okhttp/L;->b:Ljava/net/Proxy;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " hostAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/okhttp/m;->b:Lcom/squareup/okhttp/L;

    iget-object v1, v1, Lcom/squareup/okhttp/L;->c:Ljava/net/InetSocketAddress;

    .line 326
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cipherSuite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/squareup/okhttp/m;->i:Lcom/squareup/okhttp/t;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/m;->i:Lcom/squareup/okhttp/t;

    .line 328
    invoke-virtual {v0}, Lcom/squareup/okhttp/t;->a()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/okhttp/m;->g:Lcom/squareup/okhttp/Protocol;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "none"

    goto :goto_0
.end method
