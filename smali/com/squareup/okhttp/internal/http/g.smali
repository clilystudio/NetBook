.class final Lcom/squareup/okhttp/internal/http/g;
.super Lcom/squareup/okhttp/internal/http/e;
.source "SourceFile"


# instance fields
.field private b:J

.field private c:Z

.field private final d:Lcom/squareup/okhttp/internal/http/m;

.field private synthetic e:Lcom/squareup/okhttp/internal/http/d;


# direct methods
.method constructor <init>(Lcom/squareup/okhttp/internal/http/d;Lcom/squareup/okhttp/internal/http/m;)V
    .locals 2

    .prologue
    .line 450
    iput-object p1, p0, Lcom/squareup/okhttp/internal/http/g;->e:Lcom/squareup/okhttp/internal/http/d;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/squareup/okhttp/internal/http/e;-><init>(Lcom/squareup/okhttp/internal/http/d;B)V

    .line 446
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/squareup/okhttp/internal/http/g;->b:J

    .line 447
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/squareup/okhttp/internal/http/g;->c:Z

    .line 451
    iput-object p2, p0, Lcom/squareup/okhttp/internal/http/g;->d:Lcom/squareup/okhttp/internal/http/m;

    .line 452
    return-void
.end method


# virtual methods
.method public final a(Lokio/f;J)J
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const-wide/16 v0, -0x1

    .line 455
    cmp-long v2, p2, v6

    if-gez v2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "byteCount < 0: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 456
    :cond_0
    iget-boolean v2, p0, Lcom/squareup/okhttp/internal/http/g;->a:Z

    if-eqz v2, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 457
    :cond_1
    iget-boolean v2, p0, Lcom/squareup/okhttp/internal/http/g;->c:Z

    if-nez v2, :cond_3

    .line 470
    :cond_2
    :goto_0
    return-wide v0

    .line 459
    :cond_3
    iget-wide v2, p0, Lcom/squareup/okhttp/internal/http/g;->b:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_4

    iget-wide v2, p0, Lcom/squareup/okhttp/internal/http/g;->b:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_9

    .line 1475
    :cond_4
    iget-wide v2, p0, Lcom/squareup/okhttp/internal/http/g;->b:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_5

    .line 1476
    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/g;->e:Lcom/squareup/okhttp/internal/http/d;

    invoke-static {v2}, Lcom/squareup/okhttp/internal/http/d;->b(Lcom/squareup/okhttp/internal/http/d;)Lokio/i;

    move-result-object v2

    invoke-interface {v2}, Lokio/i;->n()Ljava/lang/String;

    .line 1479
    :cond_5
    :try_start_0
    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/g;->e:Lcom/squareup/okhttp/internal/http/d;

    invoke-static {v2}, Lcom/squareup/okhttp/internal/http/d;->b(Lcom/squareup/okhttp/internal/http/d;)Lokio/i;

    move-result-object v2

    invoke-interface {v2}, Lokio/i;->k()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/squareup/okhttp/internal/http/g;->b:J

    .line 1480
    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/g;->e:Lcom/squareup/okhttp/internal/http/d;

    invoke-static {v2}, Lcom/squareup/okhttp/internal/http/d;->b(Lcom/squareup/okhttp/internal/http/d;)Lokio/i;

    move-result-object v2

    invoke-interface {v2}, Lokio/i;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 1481
    iget-wide v4, p0, Lcom/squareup/okhttp/internal/http/g;->b:J

    cmp-long v3, v4, v6

    if-ltz v3, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 1482
    :cond_6
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "expected chunk size and optional extensions but was \""

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/squareup/okhttp/internal/http/g;->b:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1485
    :catch_0
    move-exception v0

    .line 1486
    new-instance v1, Ljava/net/ProtocolException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1488
    :cond_7
    iget-wide v2, p0, Lcom/squareup/okhttp/internal/http/g;->b:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_8

    .line 1489
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/squareup/okhttp/internal/http/g;->c:Z

    .line 1490
    new-instance v2, Lcom/squareup/okhttp/v;

    invoke-direct {v2}, Lcom/squareup/okhttp/v;-><init>()V

    .line 1491
    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/g;->e:Lcom/squareup/okhttp/internal/http/d;

    invoke-virtual {v3, v2}, Lcom/squareup/okhttp/internal/http/d;->a(Lcom/squareup/okhttp/v;)V

    .line 1492
    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/g;->d:Lcom/squareup/okhttp/internal/http/m;

    invoke-virtual {v2}, Lcom/squareup/okhttp/v;->a()Lcom/squareup/okhttp/u;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/squareup/okhttp/internal/http/m;->a(Lcom/squareup/okhttp/u;)V

    .line 1493
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/squareup/okhttp/internal/http/g;->a(Z)V

    .line 461
    :cond_8
    iget-boolean v2, p0, Lcom/squareup/okhttp/internal/http/g;->c:Z

    if-eqz v2, :cond_2

    .line 464
    :cond_9
    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/g;->e:Lcom/squareup/okhttp/internal/http/d;

    invoke-static {v2}, Lcom/squareup/okhttp/internal/http/d;->b(Lcom/squareup/okhttp/internal/http/d;)Lokio/i;

    move-result-object v2

    iget-wide v4, p0, Lcom/squareup/okhttp/internal/http/g;->b:J

    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-interface {v2, p1, v4, v5}, Lokio/i;->a(Lokio/f;J)J

    move-result-wide v2

    .line 465
    cmp-long v0, v2, v0

    if-nez v0, :cond_a

    .line 466
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/g;->b()V

    .line 467
    new-instance v0, Ljava/io/IOException;

    const-string v1, "unexpected end of stream"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 469
    :cond_a
    iget-wide v0, p0, Lcom/squareup/okhttp/internal/http/g;->b:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/squareup/okhttp/internal/http/g;->b:J

    move-wide v0, v2

    .line 470
    goto/16 :goto_0
.end method

.method public final close()V
    .locals 2

    .prologue
    .line 498
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/http/g;->a:Z

    if-eqz v0, :cond_0

    .line 503
    :goto_0
    return-void

    .line 499
    :cond_0
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/http/g;->c:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x64

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, v0, v1}, Lcom/squareup/okhttp/internal/l;->a(Lokio/y;ILjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 500
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/g;->b()V

    .line 502
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/squareup/okhttp/internal/http/g;->a:Z

    goto :goto_0
.end method
