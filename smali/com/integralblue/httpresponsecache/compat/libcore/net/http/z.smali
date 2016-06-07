.class final Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;
.super Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;
.source "SourceFile"


# instance fields
.field private synthetic b:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/y;


# direct methods
.method private constructor <init>(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/y;Ljava/net/URL;I)V
    .locals 0

    .prologue
    .line 377
    iput-object p1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;->b:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/y;

    .line 378
    invoke-direct {p0, p2, p3}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;-><init>(Ljava/net/URL;I)V

    .line 379
    return-void
.end method

.method synthetic constructor <init>(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/y;Ljava/net/URL;IB)V
    .locals 0

    .prologue
    .line 376
    invoke-direct {p0, p1, p2, p3}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;-><init>(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/y;Ljava/net/URL;I)V

    return-void
.end method

.method private constructor <init>(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/y;Ljava/net/URL;ILjava/net/Proxy;)V
    .locals 0

    .prologue
    .line 381
    iput-object p1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;->b:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/y;

    .line 382
    invoke-direct {p0, p2, p3, p4}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;-><init>(Ljava/net/URL;ILjava/net/Proxy;)V

    .line 383
    return-void
.end method

.method synthetic constructor <init>(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/y;Ljava/net/URL;ILjava/net/Proxy;B)V
    .locals 0

    .prologue
    .line 376
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;-><init>(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/y;Ljava/net/URL;ILjava/net/Proxy;)V

    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/String;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/h;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/I;)Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;
    .locals 8

    .prologue
    .line 387
    new-instance v0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/A;

    iget-object v6, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;->b:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/y;

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v7}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/A;-><init>(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;Ljava/lang/String;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/h;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/I;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/y;B)V

    return-object v0
.end method

.method public final f()Ljava/net/SecureCacheResponse;
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;

    check-cast v0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/A;

    .line 393
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/A;->k()Ljava/net/CacheResponse;

    move-result-object v0

    check-cast v0, Ljava/net/SecureCacheResponse;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g()Ljavax/net/ssl/SSLSocket;
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;

    check-cast v0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/A;

    .line 398
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/A;->a(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/A;)Ljavax/net/ssl/SSLSocket;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
