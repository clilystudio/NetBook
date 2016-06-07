.class final Lcom/squareup/okhttp/internal/http/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokio/x;


# instance fields
.field private final a:Lokio/l;

.field private b:Z

.field private synthetic c:Lcom/squareup/okhttp/internal/http/d;


# direct methods
.method private constructor <init>(Lcom/squareup/okhttp/internal/http/d;)V
    .locals 2

    .prologue
    .line 325
    iput-object p1, p0, Lcom/squareup/okhttp/internal/http/f;->c:Lcom/squareup/okhttp/internal/http/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 326
    new-instance v0, Lokio/l;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/f;->c:Lcom/squareup/okhttp/internal/http/d;

    invoke-static {v1}, Lcom/squareup/okhttp/internal/http/d;->a(Lcom/squareup/okhttp/internal/http/d;)Lokio/h;

    move-result-object v1

    invoke-interface {v1}, Lokio/h;->a()Lokio/z;

    move-result-object v1

    invoke-direct {v0, v1}, Lokio/l;-><init>(Lokio/z;)V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/f;->a:Lokio/l;

    return-void
.end method

.method synthetic constructor <init>(Lcom/squareup/okhttp/internal/http/d;B)V
    .locals 0

    .prologue
    .line 325
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/http/f;-><init>(Lcom/squareup/okhttp/internal/http/d;)V

    return-void
.end method


# virtual methods
.method public final a()Lokio/z;
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/f;->a:Lokio/l;

    return-object v0
.end method

.method public final a_(Lokio/f;J)V
    .locals 2

    .prologue
    .line 334
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/http/f;->b:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 335
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_1

    .line 341
    :goto_0
    return-void

    .line 337
    :cond_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/f;->c:Lcom/squareup/okhttp/internal/http/d;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/d;->a(Lcom/squareup/okhttp/internal/http/d;)Lokio/h;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Lokio/h;->h(J)Lokio/h;

    .line 338
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/f;->c:Lcom/squareup/okhttp/internal/http/d;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/d;->a(Lcom/squareup/okhttp/internal/http/d;)Lokio/h;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-interface {v0, v1}, Lokio/h;->b(Ljava/lang/String;)Lokio/h;

    .line 339
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/f;->c:Lcom/squareup/okhttp/internal/http/d;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/d;->a(Lcom/squareup/okhttp/internal/http/d;)Lokio/h;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lokio/h;->a_(Lokio/f;J)V

    .line 340
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/f;->c:Lcom/squareup/okhttp/internal/http/d;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/d;->a(Lcom/squareup/okhttp/internal/http/d;)Lokio/h;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-interface {v0, v1}, Lokio/h;->b(Ljava/lang/String;)Lokio/h;

    goto :goto_0
.end method

.method public final declared-synchronized close()V
    .locals 2

    .prologue
    .line 349
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/http/f;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 354
    :goto_0
    monitor-exit p0

    return-void

    .line 350
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/squareup/okhttp/internal/http/f;->b:Z

    .line 351
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/f;->c:Lcom/squareup/okhttp/internal/http/d;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/d;->a(Lcom/squareup/okhttp/internal/http/d;)Lokio/h;

    move-result-object v0

    const-string v1, "0\r\n\r\n"

    invoke-interface {v0, v1}, Lokio/h;->b(Ljava/lang/String;)Lokio/h;

    .line 352
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/f;->c:Lcom/squareup/okhttp/internal/http/d;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/f;->a:Lokio/l;

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/http/d;->a(Lcom/squareup/okhttp/internal/http/d;Lokio/l;)V

    .line 353
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/f;->c:Lcom/squareup/okhttp/internal/http/d;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/http/d;->a(Lcom/squareup/okhttp/internal/http/d;I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 349
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized flush()V
    .locals 1

    .prologue
    .line 344
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/http/f;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 346
    :goto_0
    monitor-exit p0

    return-void

    .line 345
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/f;->c:Lcom/squareup/okhttp/internal/http/d;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/d;->a(Lcom/squareup/okhttp/internal/http/d;)Lokio/h;

    move-result-object v0

    invoke-interface {v0}, Lokio/h;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 344
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
