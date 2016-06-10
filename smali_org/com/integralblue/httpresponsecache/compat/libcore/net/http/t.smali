.class final Lcom/integralblue/httpresponsecache/compat/libcore/net/http/t;
.super Ljava/io/FilterOutputStream;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/b/a;

.field private synthetic b:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/s;


# direct methods
.method constructor <init>(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/s;Ljava/io/OutputStream;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/p;Lcom/b/a;)V
    .locals 0

    .prologue
    .line 330
    iput-object p1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/t;->b:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/s;

    iput-object p4, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/t;->a:Lcom/b/a;

    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 3

    .prologue
    .line 332
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/t;->b:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/s;

    iget-object v1, v0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/s;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/p;

    monitor-enter v1

    .line 333
    :try_start_0
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/t;->b:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/s;

    invoke-static {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/s;->a(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/s;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    monitor-exit v1

    .line 341
    :goto_0
    return-void

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/t;->b:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/s;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/s;->a(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/s;Z)Z

    .line 337
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/t;->b:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/s;

    iget-object v0, v0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/s;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/p;

    invoke-static {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/p;->a(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/p;)I

    .line 338
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 339
    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V

    .line 340
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/t;->a:Lcom/b/a;

    invoke-virtual {v0}, Lcom/b/a;->a()V

    goto :goto_0

    .line 338
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final write([BII)V
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/t;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 348
    return-void
.end method
