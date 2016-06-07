.class final Lcom/integralblue/httpresponsecache/compat/libcore/net/http/s;
.super Ljava/net/CacheRequest;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/p;

.field private final b:Lcom/b/a;

.field private c:Ljava/io/OutputStream;

.field private d:Z

.field private e:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/p;Lcom/b/a;)V
    .locals 2

    .prologue
    .line 327
    iput-object p1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/s;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/p;

    invoke-direct {p0}, Ljava/net/CacheRequest;-><init>()V

    .line 328
    iput-object p2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/s;->b:Lcom/b/a;

    .line 329
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/b/a;->a(I)Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/s;->c:Ljava/io/OutputStream;

    .line 330
    new-instance v0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/t;

    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/s;->c:Ljava/io/OutputStream;

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/t;-><init>(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/s;Ljava/io/OutputStream;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/p;Lcom/b/a;)V

    iput-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/s;->e:Ljava/io/OutputStream;

    .line 350
    return-void
.end method

.method static synthetic a(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/s;)Z
    .locals 1

    .prologue
    .line 321
    iget-boolean v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/s;->d:Z

    return v0
.end method

.method static synthetic a(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/s;Z)Z
    .locals 1

    .prologue
    .line 321
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/s;->d:Z

    return v0
.end method


# virtual methods
.method public final abort()V
    .locals 2

    .prologue
    .line 353
    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/s;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/p;

    monitor-enter v1

    .line 354
    :try_start_0
    iget-boolean v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/s;->d:Z

    if-eqz v0, :cond_0

    .line 355
    monitor-exit v1

    .line 365
    :goto_0
    return-void

    .line 357
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/s;->d:Z

    .line 358
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/s;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/p;

    invoke-static {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/p;->b(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/p;)I

    .line 359
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 360
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/s;->c:Ljava/io/OutputStream;

    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->b(Ljava/io/Closeable;)V

    .line 362
    :try_start_1
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/s;->b:Lcom/b/a;

    invoke-virtual {v0}, Lcom/b/a;->b()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 365
    :catch_0
    move-exception v0

    goto :goto_0

    .line 359
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final getBody()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/s;->e:Ljava/io/OutputStream;

    return-object v0
.end method
