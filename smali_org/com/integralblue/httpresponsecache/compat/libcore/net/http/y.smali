.class final Lcom/integralblue/httpresponsecache/compat/libcore/net/http/y;
.super Ljavax/net/ssl/HttpsURLConnection;
.source "SourceFile"


# instance fields
.field private final a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;


# direct methods
.method protected constructor <init>(Ljava/net/URL;I)V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0, p1}, Ljavax/net/ssl/HttpsURLConnection;-><init>(Ljava/net/URL;)V

    .line 49
    new-instance v0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;-><init>(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/y;Ljava/net/URL;IB)V

    iput-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/y;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;

    .line 50
    return-void
.end method

.method protected constructor <init>(Ljava/net/URL;ILjava/net/Proxy;)V
    .locals 6

    .prologue
    .line 53
    invoke-direct {p0, p1}, Ljavax/net/ssl/HttpsURLConnection;-><init>(Ljava/net/URL;)V

    .line 54
    new-instance v0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;-><init>(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/y;Ljava/net/URL;ILjava/net/Proxy;B)V

    iput-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/y;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;

    .line 55
    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/y;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;->g()Ljavax/net/ssl/SSLSocket;

    move-result-object v0

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connection has not yet been established"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_0
    return-void
.end method


# virtual methods
.method final a()Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/y;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;->a()Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;

    move-result-object v0

    return-object v0
.end method

.method public final addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/y;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;

    invoke-virtual {v0, p1, p2}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    return-void
.end method

.method public final connect()V
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/y;->connected:Z

    .line 167
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/y;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;->connect()V

    .line 168
    return-void
.end method

.method public final disconnect()V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/y;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;->disconnect()V

    .line 122
    return-void
.end method

.method public final getAllowUserInteraction()Z
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/y;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;->getAllowUserInteraction()Z

    move-result v0

    return v0
.end method

.method public final getCipherSuite()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/y;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;->f()Ljava/net/SecureCacheResponse;

    move-result-object v0

    .line 70
    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {v0}, Ljava/net/SecureCacheResponse;->getCipherSuite()Ljava/lang/String;

    move-result-object v0

    .line 74
    :goto_0
    return-object v0

    .line 73
    :cond_0
    invoke-direct {p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/y;->b()V

    .line 74
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/y;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;->g()Ljavax/net/ssl/SSLSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getCipherSuite()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final getConnectTimeout()I
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/y;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;->getConnectTimeout()I

    move-result v0

    return v0
.end method

.method public final getContent()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/y;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;->getContent()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getContent([Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/y;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;

    invoke-virtual {v0, p1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;->getContent([Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getContentEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/y;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;->getContentEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getContentLength()I
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/y;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;->getContentLength()I

    move-result v0

    return v0
.end method

.method public final getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/y;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;->getContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getDate()J
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/y;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;->getDate()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getDefaultUseCaches()Z
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/y;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;->getDefaultUseCaches()Z

    move-result v0

    return v0
.end method

.method public final getDoInput()Z
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/y;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;->getDoInput()Z

    move-result v0

    return v0
.end method

.method public final getDoOutput()Z
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/y;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;->getDoOutput()Z

    move-result v0

    return v0
.end method

.method public final getErrorStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/y;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public final getExpiration()J
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/y;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;->getExpiration()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getHeaderField(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/y;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;

    invoke-virtual {v0, p1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;->getHeaderField(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/y;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;

    invoke-virtual {v0, p1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getHeaderFieldDate(Ljava/lang/String;J)J
    .locals 2

    .prologue
    .line 253
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/y;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;

    invoke-virtual {v0, p1, p2, p3}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;->getHeaderFieldDate(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getHeaderFieldInt(Ljava/lang/String;I)I
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/y;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;

    invoke-virtual {v0, p1, p2}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;->getHeaderFieldInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final getHeaderFieldKey(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/y;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;

    invoke-virtual {v0, p1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getHeaderFields()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 233
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/y;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getIfModifiedSince()J
    .locals 2

    .prologue
    .line 268
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/y;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;->getIfModifiedSince()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/y;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public final getInstanceFollowRedirects()Z
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/y;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;->getInstanceFollowRedirects()Z

    move-result v0

    return v0
.end method

.method public final getLastModified()J
    .locals 2

    .prologue
    .line 278
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/y;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;->getLastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getLocalCertificates()[Ljava/security/cert/Certificate;
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/y;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;->f()Ljava/net/SecureCacheResponse;

    move-result-object v0

    .line 80
    if-eqz v0, :cond_1

    .line 81
    invoke-virtual {v0}, Ljava/net/SecureCacheResponse;->getLocalCertificateChain()Ljava/util/List;

    move-result-object v0

    .line 82
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/security/cert/Certificate;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/Certificate;

    .line 85
    :goto_0
    return-object v0

    .line 82
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 84
    :cond_1
    invoke-direct {p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/y;->b()V

    .line 85
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/y;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;->g()Ljavax/net/ssl/SSLSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getLocalCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    goto :goto_0
.end method

.method public final getLocalPrincipal()Ljava/security/Principal;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/y;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;->f()Ljava/net/SecureCacheResponse;

    move-result-object v0

    .line 112
    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {v0}, Ljava/net/SecureCacheResponse;->getLocalPrincipal()Ljava/security/Principal;

    move-result-object v0

    .line 116
    :goto_0
    return-object v0

    .line 115
    :cond_0
    invoke-direct {p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/y;->b()V

    .line 116
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/y;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;->g()Ljavax/net/ssl/SSLSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getLocalPrincipal()Ljava/security/Principal;

    move-result-object v0

    goto :goto_0
.end method

.method public final getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/y;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public final getPeerPrincipal()Ljava/security/Principal;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/y;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;->f()Ljava/net/SecureCacheResponse;

    move-result-object v0

    .line 102
    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {v0}, Ljava/net/SecureCacheResponse;->getPeerPrincipal()Ljava/security/Principal;

    move-result-object v0

    .line 106
    :goto_0
    return-object v0

    .line 105
    :cond_0
    invoke-direct {p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/y;->b()V

    .line 106
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/y;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;->g()Ljavax/net/ssl/SSLSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getPeerPrincipal()Ljava/security/Principal;

    move-result-object v0

    goto :goto_0
.end method

.method public final getPermission()Ljava/security/Permission;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/y;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;->getPermission()Ljava/security/Permission;

    move-result-object v0

    return-object v0
.end method

.method public final getReadTimeout()I
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/y;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;->getReadTimeout()I

    move-result v0

    return v0
.end method

.method public final getRequestMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/y;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;->getRequestMethod()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getRequestProperties()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 238
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/y;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;->getRequestProperties()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/y;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;

    invoke-virtual {v0, p1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getResponseCode()I
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/y;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;->getResponseCode()I

    move-result v0

    return v0
.end method

.method public final getResponseMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/y;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;->getResponseMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getServerCertificates()[Ljava/security/cert/Certificate;
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/y;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;->f()Ljava/net/SecureCacheResponse;

    move-result-object v0

    .line 91
    if-eqz v0, :cond_1

    .line 92
    invoke-virtual {v0}, Ljava/net/SecureCacheResponse;->getServerCertificateChain()Ljava/util/List;

    move-result-object v0

    .line 93
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/security/cert/Certificate;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/Certificate;

    .line 96
    :goto_0
    return-object v0

    .line 93
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 95
    :cond_1
    invoke-direct {p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/y;->b()V

    .line 96
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/y;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;->g()Ljavax/net/ssl/SSLSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    goto :goto_0
.end method

.method public final getURL()Ljava/net/URL;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/y;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;->getURL()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public final getUseCaches()Z
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/y;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;->getUseCaches()Z

    move-result v0

    return v0
.end method

.method public final setAllowUserInteraction(Z)V
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/y;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;

    invoke-virtual {v0, p1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;->setAllowUserInteraction(Z)V

    .line 309
    return-void
.end method

.method public final setChunkedStreamingMode(I)V
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/y;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;

    invoke-virtual {v0, p1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;->setChunkedStreamingMode(I)V

    .line 374
    return-void
.end method

.method public final setConnectTimeout(I)V
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/y;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;

    invoke-virtual {v0, p1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;->setConnectTimeout(I)V

    .line 344
    return-void
.end method

.method public final setDefaultUseCaches(Z)V
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/y;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;

    invoke-virtual {v0, p1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;->setDefaultUseCaches(Z)V

    .line 314
    return-void
.end method

.method public final setDoInput(Z)V
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/y;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;

    invoke-virtual {v0, p1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;->setDoInput(Z)V

    .line 319
    return-void
.end method

.method public final setDoOutput(Z)V
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/y;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;

    invoke-virtual {v0, p1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;->setDoOutput(Z)V

    .line 324
    return-void
.end method

.method public final setFixedLengthStreamingMode(I)V
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/y;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;

    invoke-virtual {v0, p1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;->setFixedLengthStreamingMode(I)V

    .line 369
    return-void
.end method

.method public final setIfModifiedSince(J)V
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/y;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;

    invoke-virtual {v0, p1, p2}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;->setIfModifiedSince(J)V

    .line 329
    return-void
.end method

.method public final setInstanceFollowRedirects(Z)V
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/y;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;

    invoke-virtual {v0, p1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;->setInstanceFollowRedirects(Z)V

    .line 162
    return-void
.end method

.method public final setReadTimeout(I)V
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/y;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;

    invoke-virtual {v0, p1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;->setReadTimeout(I)V

    .line 354
    return-void
.end method

.method public final setRequestMethod(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/y;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;

    invoke-virtual {v0, p1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;->setRequestMethod(Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method public final setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/y;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;

    invoke-virtual {v0, p1, p2}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    return-void
.end method

.method public final setUseCaches(Z)V
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/y;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;

    invoke-virtual {v0, p1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;->setUseCaches(Z)V

    .line 339
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/y;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final usingProxy()Z
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/y;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/z;->usingProxy()Z

    move-result v0

    return v0
.end method
