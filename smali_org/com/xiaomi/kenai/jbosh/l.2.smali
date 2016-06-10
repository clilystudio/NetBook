.class Lcom/xiaomi/kenai/jbosh/l;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/concurrent/locks/Lock;

.field private b:Lcom/xiaomi/kenai/jbosh/I;

.field private c:Lorg/apache/http/client/HttpClient;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 4000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/kenai/jbosh/l;->a:Ljava/util/concurrent/locks/Lock;

    const-class v0, Lorg/apache/http/client/HttpClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    return-void
.end method

.method private declared-synchronized b(Lcom/xiaomi/kenai/jbosh/I;)Lorg/apache/http/client/HttpClient;
    .locals 6

    .prologue
    .line 5000
    monitor-enter p0

    :try_start_0
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    const/16 v1, 0x64

    invoke-static {v0, v1}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxTotalConnections(Lorg/apache/http/params/HttpParams;I)V

    sget-object v1, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/xiaomi/kenai/jbosh/I;->f()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/xiaomi/kenai/jbosh/I;->g()I

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lorg/apache/http/HttpHost;

    invoke-virtual {p1}, Lcom/xiaomi/kenai/jbosh/I;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/xiaomi/kenai/jbosh/I;->g()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    const-string v2, "http.route.default-proxy"

    invoke-interface {v0, v2, v1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    :cond_0
    new-instance v1, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v4

    const/16 v5, 0x50

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v2

    sget-object v3, Lorg/apache/http/conn/ssl/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v2, v3}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    new-instance v3, Lorg/apache/http/conn/scheme/Scheme;

    const-string v4, "https"

    const/16 v5, 0x1bb

    invoke-direct {v3, v4, v2, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    new-instance v2, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v2, v0, v1}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1, v2, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;-><init>(IZ)V

    invoke-virtual {v1, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->setHttpRequestRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a(Lcom/xiaomi/kenai/jbosh/g;Lcom/xiaomi/kenai/jbosh/p;Landroid/content/Context;)Lcom/xiaomi/kenai/jbosh/k;
    .locals 8

    .prologue
    .line 3000
    iget-object v0, p0, Lcom/xiaomi/kenai/jbosh/l;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/kenai/jbosh/l;->c:Lorg/apache/http/client/HttpClient;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/kenai/jbosh/l;->b:Lcom/xiaomi/kenai/jbosh/I;

    invoke-direct {p0, v0}, Lcom/xiaomi/kenai/jbosh/l;->b(Lcom/xiaomi/kenai/jbosh/I;)Lorg/apache/http/client/HttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/kenai/jbosh/l;->c:Lorg/apache/http/client/HttpClient;

    :cond_0
    iget-object v1, p0, Lcom/xiaomi/kenai/jbosh/l;->c:Lorg/apache/http/client/HttpClient;

    invoke-interface {v1}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    const/16 v0, 0x2710

    invoke-static {v2, v0}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/xiaomi/kenai/jbosh/g;->b()Lcom/xiaomi/kenai/jbosh/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/kenai/jbosh/D;->a()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1e

    int-to-long v4, v0

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    long-to-int v0, v4

    invoke-static {v2, v0}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/kenai/jbosh/l;->b:Lcom/xiaomi/kenai/jbosh/I;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lcom/xiaomi/kenai/jbosh/l;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    new-instance v2, Lcom/xiaomi/kenai/jbosh/k;

    invoke-direct {v2, v1, v0, p2, p3}, Lcom/xiaomi/kenai/jbosh/k;-><init>(Lorg/apache/http/client/HttpClient;Lcom/xiaomi/kenai/jbosh/I;Lcom/xiaomi/kenai/jbosh/p;Landroid/content/Context;)V

    return-object v2

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/xiaomi/kenai/jbosh/l;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2000
    iget-object v0, p0, Lcom/xiaomi/kenai/jbosh/l;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/kenai/jbosh/l;->c:Lorg/apache/http/client/HttpClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/kenai/jbosh/l;->c:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iput-object v1, p0, Lcom/xiaomi/kenai/jbosh/l;->b:Lcom/xiaomi/kenai/jbosh/I;

    iput-object v1, p0, Lcom/xiaomi/kenai/jbosh/l;->c:Lorg/apache/http/client/HttpClient;

    iget-object v0, p0, Lcom/xiaomi/kenai/jbosh/l;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iput-object v1, p0, Lcom/xiaomi/kenai/jbosh/l;->b:Lcom/xiaomi/kenai/jbosh/I;

    iput-object v1, p0, Lcom/xiaomi/kenai/jbosh/l;->c:Lorg/apache/http/client/HttpClient;

    iget-object v1, p0, Lcom/xiaomi/kenai/jbosh/l;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public a(Lcom/xiaomi/kenai/jbosh/I;)V
    .locals 2

    .prologue
    .line 1000
    iget-object v0, p0, Lcom/xiaomi/kenai/jbosh/l;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iput-object p1, p0, Lcom/xiaomi/kenai/jbosh/l;->b:Lcom/xiaomi/kenai/jbosh/I;

    invoke-direct {p0, p1}, Lcom/xiaomi/kenai/jbosh/l;->b(Lcom/xiaomi/kenai/jbosh/I;)Lorg/apache/http/client/HttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/kenai/jbosh/l;->c:Lorg/apache/http/client/HttpClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/xiaomi/kenai/jbosh/l;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/xiaomi/kenai/jbosh/l;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
