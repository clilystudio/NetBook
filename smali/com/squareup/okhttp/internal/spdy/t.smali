.class public final Lcom/squareup/okhttp/internal/spdy/t;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/concurrent/CountDownLatch;

.field private b:J

.field private c:J


# virtual methods
.method final a()V
    .locals 4

    .prologue
    .line 33
    iget-wide v0, p0, Lcom/squareup/okhttp/internal/spdy/t;->b:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 34
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/squareup/okhttp/internal/spdy/t;->b:J

    .line 35
    return-void
.end method

.method final b()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 38
    iget-wide v0, p0, Lcom/squareup/okhttp/internal/spdy/t;->c:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/squareup/okhttp/internal/spdy/t;->b:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 39
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/squareup/okhttp/internal/spdy/t;->c:J

    .line 40
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/t;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 41
    return-void
.end method
