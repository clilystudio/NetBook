.class public final Lcom/squareup/okhttp/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field volatile a:Z

.field b:Lcom/squareup/okhttp/C;

.field c:Lcom/squareup/okhttp/internal/http/m;

.field private final d:Lcom/squareup/okhttp/A;

.field private e:Z


# direct methods
.method constructor <init>(Lcom/squareup/okhttp/A;Lcom/squareup/okhttp/C;)V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-virtual {p1}, Lcom/squareup/okhttp/A;->w()Lcom/squareup/okhttp/A;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/f;->d:Lcom/squareup/okhttp/A;

    .line 51
    iput-object p2, p0, Lcom/squareup/okhttp/f;->b:Lcom/squareup/okhttp/C;

    .line 52
    return-void
.end method

.method static synthetic a(Lcom/squareup/okhttp/f;Z)Lcom/squareup/okhttp/I;
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/f;->a(Z)Lcom/squareup/okhttp/I;

    move-result-object v0

    return-object v0
.end method

.method private a(Z)Lcom/squareup/okhttp/I;
    .locals 3

    .prologue
    .line 200
    new-instance v0, Lcom/squareup/okhttp/g;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/squareup/okhttp/f;->b:Lcom/squareup/okhttp/C;

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/squareup/okhttp/g;-><init>(Lcom/squareup/okhttp/f;ILcom/squareup/okhttp/C;Z)V

    .line 201
    iget-object v1, p0, Lcom/squareup/okhttp/f;->b:Lcom/squareup/okhttp/C;

    invoke-interface {v0, v1}, Lcom/squareup/okhttp/y;->a(Lcom/squareup/okhttp/C;)Lcom/squareup/okhttp/I;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/squareup/okhttp/f;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/squareup/okhttp/f;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/squareup/okhttp/f;)Lcom/squareup/okhttp/A;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/squareup/okhttp/f;->d:Lcom/squareup/okhttp/A;

    return-object v0
.end method

.method private b()Ljava/lang/String;
    .locals 4

    .prologue
    .line 190
    iget-boolean v0, p0, Lcom/squareup/okhttp/f;->a:Z

    const-string v0, "call"

    .line 192
    :try_start_0
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lcom/squareup/okhttp/f;->b:Lcom/squareup/okhttp/C;

    invoke-virtual {v2}, Lcom/squareup/okhttp/C;->a()Ljava/net/URL;

    move-result-object v2

    const-string v3, "/..."

    invoke-direct {v1, v2, v3}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    .line 193
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 195
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public final a()Lcom/squareup/okhttp/I;
    .locals 2

    .prologue
    .line 75
    monitor-enter p0

    .line 76
    :try_start_0
    iget-boolean v0, p0, Lcom/squareup/okhttp/f;->e:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already Executed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 77
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/squareup/okhttp/f;->e:Z

    .line 78
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    :try_start_2
    iget-object v0, p0, Lcom/squareup/okhttp/f;->d:Lcom/squareup/okhttp/A;

    invoke-virtual {v0}, Lcom/squareup/okhttp/A;->r()Lcom/squareup/okhttp/r;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/okhttp/r;->a(Lcom/squareup/okhttp/f;)V

    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/squareup/okhttp/f;->a(Z)Lcom/squareup/okhttp/I;

    move-result-object v0

    .line 82
    if-nez v0, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Canceled"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 85
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/squareup/okhttp/f;->d:Lcom/squareup/okhttp/A;

    invoke-virtual {v1}, Lcom/squareup/okhttp/A;->r()Lcom/squareup/okhttp/r;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/squareup/okhttp/r;->b(Lcom/squareup/okhttp/f;)V

    throw v0

    :cond_1
    iget-object v1, p0, Lcom/squareup/okhttp/f;->d:Lcom/squareup/okhttp/A;

    invoke-virtual {v1}, Lcom/squareup/okhttp/A;->r()Lcom/squareup/okhttp/r;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/squareup/okhttp/r;->b(Lcom/squareup/okhttp/f;)V

    return-object v0
.end method

.method final a(Lcom/squareup/okhttp/C;Z)Lcom/squareup/okhttp/I;
    .locals 11

    .prologue
    .line 241
    invoke-virtual {p1}, Lcom/squareup/okhttp/C;->f()Lcom/squareup/okhttp/E;

    move-result-object v0

    .line 242
    if-eqz v0, :cond_8

    .line 243
    invoke-virtual {p1}, Lcom/squareup/okhttp/C;->g()Lcom/squareup/okhttp/D;

    move-result-object v1

    .line 245
    invoke-virtual {v0}, Lcom/squareup/okhttp/E;->a()Lcom/squareup/okhttp/z;

    move-result-object v2

    .line 246
    if-eqz v2, :cond_0

    .line 247
    const-string v3, "Content-Type"

    invoke-virtual {v2}, Lcom/squareup/okhttp/z;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/squareup/okhttp/D;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/D;

    .line 250
    :cond_0
    invoke-virtual {v0}, Lcom/squareup/okhttp/E;->b()J

    move-result-wide v2

    .line 251
    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    .line 252
    const-string v0, "Content-Length"

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/squareup/okhttp/D;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/D;

    .line 253
    const-string v0, "Transfer-Encoding"

    invoke-virtual {v1, v0}, Lcom/squareup/okhttp/D;->b(Ljava/lang/String;)Lcom/squareup/okhttp/D;

    .line 259
    :goto_0
    invoke-virtual {v1}, Lcom/squareup/okhttp/D;->a()Lcom/squareup/okhttp/C;

    move-result-object v2

    .line 263
    :goto_1
    new-instance v0, Lcom/squareup/okhttp/internal/http/m;

    iget-object v1, p0, Lcom/squareup/okhttp/f;->d:Lcom/squareup/okhttp/A;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move v5, p2

    invoke-direct/range {v0 .. v9}, Lcom/squareup/okhttp/internal/http/m;-><init>(Lcom/squareup/okhttp/A;Lcom/squareup/okhttp/C;ZZZLcom/squareup/okhttp/m;Lcom/squareup/okhttp/internal/http/v;Lcom/squareup/okhttp/internal/http/u;Lcom/squareup/okhttp/I;)V

    iput-object v0, p0, Lcom/squareup/okhttp/f;->c:Lcom/squareup/okhttp/internal/http/m;

    .line 265
    const/4 v0, 0x0

    .line 267
    :goto_2
    iget-boolean v1, p0, Lcom/squareup/okhttp/f;->a:Z

    .line 273
    :try_start_0
    iget-object v1, p0, Lcom/squareup/okhttp/f;->c:Lcom/squareup/okhttp/internal/http/m;

    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/http/m;->a()V

    .line 274
    iget-object v1, p0, Lcom/squareup/okhttp/f;->c:Lcom/squareup/okhttp/internal/http/m;

    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/http/m;->i()V
    :try_end_0
    .catch Lcom/squareup/okhttp/internal/http/RequestException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/squareup/okhttp/internal/http/RouteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 299
    iget-object v1, p0, Lcom/squareup/okhttp/f;->c:Lcom/squareup/okhttp/internal/http/m;

    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/http/m;->e()Lcom/squareup/okhttp/I;

    move-result-object v9

    .line 300
    iget-object v1, p0, Lcom/squareup/okhttp/f;->c:Lcom/squareup/okhttp/internal/http/m;

    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/http/m;->j()Lcom/squareup/okhttp/C;

    move-result-object v2

    .line 302
    if-nez v2, :cond_5

    .line 303
    if-nez p2, :cond_1

    .line 304
    iget-object v0, p0, Lcom/squareup/okhttp/f;->c:Lcom/squareup/okhttp/internal/http/m;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/m;->g()V

    .line 306
    :cond_1
    return-object v9

    .line 255
    :cond_2
    const-string v0, "Transfer-Encoding"

    const-string v2, "chunked"

    invoke-virtual {v1, v0, v2}, Lcom/squareup/okhttp/D;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/D;

    .line 256
    const-string v0, "Content-Length"

    invoke-virtual {v1, v0}, Lcom/squareup/okhttp/D;->b(Ljava/lang/String;)Lcom/squareup/okhttp/D;

    goto :goto_0

    .line 275
    :catch_0
    move-exception v0

    .line 277
    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/RequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 278
    :catch_1
    move-exception v1

    .line 280
    iget-object v2, p0, Lcom/squareup/okhttp/f;->c:Lcom/squareup/okhttp/internal/http/m;

    invoke-virtual {v2, v1}, Lcom/squareup/okhttp/internal/http/m;->a(Lcom/squareup/okhttp/internal/http/RouteException;)Lcom/squareup/okhttp/internal/http/m;

    move-result-object v2

    .line 281
    if-eqz v2, :cond_3

    .line 282
    iput-object v2, p0, Lcom/squareup/okhttp/f;->c:Lcom/squareup/okhttp/internal/http/m;

    goto :goto_2

    .line 286
    :cond_3
    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/http/RouteException;->getLastConnectException()Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 287
    :catch_2
    move-exception v1

    .line 289
    iget-object v2, p0, Lcom/squareup/okhttp/f;->c:Lcom/squareup/okhttp/internal/http/m;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/squareup/okhttp/internal/http/m;->a(Ljava/io/IOException;Lokio/x;)Lcom/squareup/okhttp/internal/http/m;

    move-result-object v2

    .line 290
    if-eqz v2, :cond_4

    .line 291
    iput-object v2, p0, Lcom/squareup/okhttp/f;->c:Lcom/squareup/okhttp/internal/http/m;

    goto :goto_2

    .line 296
    :cond_4
    throw v1

    .line 309
    :cond_5
    add-int/lit8 v10, v0, 0x1

    const/16 v0, 0x14

    if-le v10, v0, :cond_6

    .line 310
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Too many follow-up requests: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 313
    :cond_6
    iget-object v0, p0, Lcom/squareup/okhttp/f;->c:Lcom/squareup/okhttp/internal/http/m;

    invoke-virtual {v2}, Lcom/squareup/okhttp/C;->a()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/http/m;->b(Ljava/net/URL;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 314
    iget-object v0, p0, Lcom/squareup/okhttp/f;->c:Lcom/squareup/okhttp/internal/http/m;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/m;->g()V

    .line 317
    :cond_7
    iget-object v0, p0, Lcom/squareup/okhttp/f;->c:Lcom/squareup/okhttp/internal/http/m;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/m;->h()Lcom/squareup/okhttp/m;

    move-result-object v6

    .line 319
    new-instance v0, Lcom/squareup/okhttp/internal/http/m;

    iget-object v1, p0, Lcom/squareup/okhttp/f;->d:Lcom/squareup/okhttp/A;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v5, p2

    invoke-direct/range {v0 .. v9}, Lcom/squareup/okhttp/internal/http/m;-><init>(Lcom/squareup/okhttp/A;Lcom/squareup/okhttp/C;ZZZLcom/squareup/okhttp/m;Lcom/squareup/okhttp/internal/http/v;Lcom/squareup/okhttp/internal/http/u;Lcom/squareup/okhttp/I;)V

    iput-object v0, p0, Lcom/squareup/okhttp/f;->c:Lcom/squareup/okhttp/internal/http/m;

    move v0, v10

    .line 321
    goto/16 :goto_2

    :cond_8
    move-object v2, p1

    goto/16 :goto_1
.end method

.method public final a(Lcom/squareup/okhttp/i;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 107
    .line 1111
    monitor-enter p0

    .line 1112
    :try_start_0
    iget-boolean v0, p0, Lcom/squareup/okhttp/f;->e:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already Executed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1114
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1113
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/squareup/okhttp/f;->e:Z

    .line 1114
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1115
    iget-object v0, p0, Lcom/squareup/okhttp/f;->d:Lcom/squareup/okhttp/A;

    invoke-virtual {v0}, Lcom/squareup/okhttp/A;->r()Lcom/squareup/okhttp/r;

    move-result-object v0

    new-instance v1, Lcom/squareup/okhttp/h;

    invoke-direct {v1, p0, p1, v2, v2}, Lcom/squareup/okhttp/h;-><init>(Lcom/squareup/okhttp/f;Lcom/squareup/okhttp/i;ZB)V

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/r;->a(Lcom/squareup/okhttp/h;)V

    .line 108
    return-void
.end method
