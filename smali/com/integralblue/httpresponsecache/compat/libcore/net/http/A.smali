.class final Lcom/integralblue/httpresponsecache/compat/libcore/net/http/A;
.super Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;
.source "SourceFile"


# instance fields
.field private c:Ljavax/net/ssl/SSLSocket;

.field private final d:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/y;


# direct methods
.method private constructor <init>(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;Ljava/lang/String;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/h;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/I;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/y;)V
    .locals 1

    .prologue
    .line 423
    invoke-direct/range {p0 .. p5}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;-><init>(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;Ljava/lang/String;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/h;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/I;)V

    .line 424
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/h;->e()Ljavax/net/ssl/SSLSocket;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/A;->c:Ljavax/net/ssl/SSLSocket;

    .line 425
    iput-object p6, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/A;->d:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/y;

    .line 426
    return-void

    .line 424
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;Ljava/lang/String;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/h;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/I;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/y;B)V
    .locals 0

    .prologue
    .line 402
    invoke-direct/range {p0 .. p6}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/A;-><init>(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;Ljava/lang/String;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/h;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/I;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/y;)V

    return-void
.end method

.method static synthetic a(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/A;)Ljavax/net/ssl/SSLSocket;
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/A;->c:Ljavax/net/ssl/SSLSocket;

    return-object v0
.end method

.method private b(Z)Z
    .locals 6

    .prologue
    .line 462
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/A;->b:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/h;

    if-nez v0, :cond_0

    .line 463
    invoke-virtual {p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/A;->d()Lcom/integralblue/httpresponsecache/compat/libcore/net/http/h;

    move-result-object v0

    iput-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/A;->b:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/h;

    .line 464
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/A;->b:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/h;

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/h;->d()Lcom/integralblue/httpresponsecache/compat/libcore/net/http/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/i;->a()Ljava/net/Proxy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 465
    iget-object v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/A;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;

    iget-object v3, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/A;->b:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/h;

    invoke-virtual {p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/A;->g()Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;

    move-result-object v0

    .line 1491
    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;->c()Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;

    move-result-object v0

    .line 1493
    :goto_0
    new-instance v4, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/B;

    invoke-direct {v4, v2, v0, v3}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/B;-><init>(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/h;)V

    .line 1494
    invoke-virtual {v4}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->b()V

    .line 1495
    invoke-virtual {v4}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->w()V

    .line 1497
    invoke-virtual {v4}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->i()I

    move-result v1

    .line 1498
    invoke-virtual {v4}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->i()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 1511
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected response code for CONNECT: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1502
    :sswitch_0
    new-instance v1, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;

    invoke-direct {v1, v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;-><init>(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;)V

    .line 1503
    const/16 v0, 0x197

    .line 1504
    invoke-virtual {v4}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->h()Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;

    move-result-object v4

    .line 1503
    invoke-virtual {v2, v0, v4, v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->a(ILcom/integralblue/httpresponsecache/compat/libcore/net/http/G;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;)Z

    move-result v0

    .line 1505
    if-nez v0, :cond_2

    .line 1508
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed to authenticate with proxy"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 473
    :cond_0
    :sswitch_1
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/A;->b:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/h;

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/h;->e()Ljavax/net/ssl/SSLSocket;

    move-result-object v0

    iput-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/A;->c:Ljavax/net/ssl/SSLSocket;

    .line 476
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/A;->c:Ljavax/net/ssl/SSLSocket;

    if-eqz v0, :cond_1

    .line 477
    const/4 v0, 0x1

    .line 481
    :goto_1
    return v0

    .line 480
    :cond_1
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/A;->b:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/h;

    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/A;->d:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/y;

    invoke-virtual {v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/y;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/h;->a(Ljavax/net/ssl/SSLSocketFactory;Z)V

    .line 481
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0

    .line 1498
    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_1
        0x197 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method protected final a(Ljava/net/CacheResponse;)Z
    .locals 1

    .prologue
    .line 517
    instance-of v0, p1, Ljava/net/SecureCacheResponse;

    return v0
.end method

.method protected final c()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 435
    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/A;->b(Z)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 447
    :goto_0
    if-nez v0, :cond_0

    .line 448
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/A;->b:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/h;

    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/A;->d:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/y;

    invoke-virtual {v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/y;->getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/h;->a(Ljavax/net/ssl/HostnameVerifier;)Ljavax/net/ssl/SSLSocket;

    move-result-object v0

    iput-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/A;->c:Ljavax/net/ssl/SSLSocket;

    .line 450
    :cond_0
    return-void

    .line 436
    :catch_0
    move-exception v0

    .line 439
    instance-of v1, v0, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v1, :cond_1

    .line 440
    invoke-virtual {v0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/security/cert/CertificateException;

    if-eqz v1, :cond_1

    .line 441
    throw v0

    .line 443
    :cond_1
    invoke-virtual {p0, v2}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/A;->a(Z)V

    .line 444
    invoke-direct {p0, v2}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/A;->b(Z)Z

    move-result v0

    goto :goto_0
.end method

.method protected final n()Ljava/net/HttpURLConnection;
    .locals 1

    .prologue
    .line 532
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/A;->d:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/y;

    return-object v0
.end method

.method protected final s()Z
    .locals 1

    .prologue
    .line 522
    const/4 v0, 0x0

    return v0
.end method

.method protected final t()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/A;->d:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/y;

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/y;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    return-object v0
.end method
