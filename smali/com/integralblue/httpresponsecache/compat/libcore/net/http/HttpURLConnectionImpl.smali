.class Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;
.super Ljava/net/HttpURLConnection;
.source "SourceFile"


# instance fields
.field protected a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;

.field private final b:I

.field private c:Ljava/net/Proxy;

.field private final d:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;

.field private e:I

.field private f:Ljava/io/IOException;


# direct methods
.method protected constructor <init>(Ljava/net/URL;I)V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0, p1}, Ljava/net/HttpURLConnection;-><init>(Ljava/net/URL;)V

    .line 65
    new-instance v0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;

    invoke-direct {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;-><init>()V

    iput-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->d:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;

    .line 74
    iput p2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->b:I

    .line 75
    return-void
.end method

.method protected constructor <init>(Ljava/net/URL;ILjava/net/Proxy;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;-><init>(Ljava/net/URL;I)V

    .line 79
    iput-object p3, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->c:Ljava/net/Proxy;

    .line 80
    return-void
.end method

.method private a(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 438
    invoke-static {p1, p2}, Lcom/arcsoft/hpay100/a/a;->a(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 439
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 440
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No authentication challenges found"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 443
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/c;

    .line 2463
    invoke-virtual {p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->usingProxy()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->c:Ljava/net/Proxy;

    .line 2464
    invoke-virtual {v0}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 446
    :goto_0
    invoke-direct {p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->f()I

    move-result v3

    iget-object v4, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->url:Ljava/net/URL;

    invoke-virtual {v4}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/c;->b:Ljava/lang/String;

    iget-object v6, v1, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/c;->a:Ljava/lang/String;

    .line 445
    invoke-static {v0, v3, v4, v5, v6}, Ljava/net/Authenticator;->requestPasswordAuthentication(Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/PasswordAuthentication;

    move-result-object v0

    .line 448
    if-eqz v0, :cond_1

    .line 453
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/net/PasswordAuthentication;->getUserName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/net/PasswordAuthentication;->getPassword()[C

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 454
    sget-object v2, Lcom/integralblue/httpresponsecache/compat/a;->c:Ljava/nio/charset/Charset;

    invoke-static {v0, v2}, Lcom/integralblue/httpresponsecache/compat/c;->a(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 455
    invoke-static {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/a/a;->b([B)Ljava/lang/String;

    move-result-object v0

    .line 456
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v1, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/c;->a:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 459
    :goto_1
    return-object v0

    .line 2465
    :cond_2
    invoke-virtual {p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    goto :goto_0

    .line 459
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private f()I
    .locals 1

    .prologue
    .line 225
    invoke-virtual {p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->usingProxy()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->c:Ljava/net/Proxy;

    .line 226
    invoke-virtual {v0}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    .line 228
    :goto_0
    if-gez v0, :cond_0

    .line 1469
    iget v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->b:I

    .line 228
    :cond_0
    return v0

    .line 227
    :cond_1
    invoke-virtual {p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->getPort()I

    move-result v0

    goto :goto_0
.end method

.method private g()V
    .locals 4

    .prologue
    .line 239
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->f:Ljava/io/IOException;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->f:Ljava/io/IOException;

    throw v0

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;

    if-eqz v0, :cond_1

    .line 260
    :goto_0
    return-void

    .line 245
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->connected:Z

    .line 247
    :try_start_0
    iget-boolean v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->doOutput:Z

    if-eqz v0, :cond_2

    .line 248
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->method:Ljava/lang/String;

    const-string v1, "GET"

    if-ne v0, v1, :cond_3

    .line 250
    const-string v0, "POST"

    iput-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->method:Ljava/lang/String;

    .line 256
    :cond_2
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->method:Ljava/lang/String;

    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->d:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->a(Ljava/lang/String;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/h;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/I;)Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;

    move-result-object v0

    iput-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 257
    :catch_0
    move-exception v0

    .line 258
    iput-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->f:Ljava/io/IOException;

    .line 259
    throw v0

    .line 251
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->method:Ljava/lang/String;

    const-string v1, "POST"

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->method:Ljava/lang/String;

    const-string v1, "PUT"

    if-eq v0, v1, :cond_2

    .line 253
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->method:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not support writing"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method private h()Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 278
    invoke-direct {p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->g()V

    .line 280
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 281
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;

    .line 308
    :goto_0
    return-object v0

    .line 288
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 293
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->e()Ljava/io/OutputStream;

    move-result-object v0

    .line 294
    iget-object v3, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;

    invoke-virtual {v3}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->m()Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v0, :cond_0

    instance-of v3, v0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/I;

    if-eqz v3, :cond_3

    .line 296
    :cond_0
    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->a(Z)V

    .line 297
    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->method:Ljava/lang/String;

    iget-object v3, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->d:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;

    check-cast v0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/I;

    invoke-virtual {p0, v1, v3, v2, v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->a(Ljava/lang/String;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/h;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/I;)Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;

    move-result-object v0

    iput-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;

    .line 286
    :cond_1
    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->b()V

    .line 287
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->w()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2361
    invoke-virtual {p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->getResponseCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 2400
    :cond_2
    sget-object v0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl$Retry;->NONE:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl$Retry;

    move-object v1, v0

    .line 306
    :goto_2
    sget-object v0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl$Retry;->NONE:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl$Retry;

    if-ne v1, v0, :cond_8

    .line 307
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->o()V

    .line 308
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;

    goto :goto_0

    .line 301
    :cond_3
    iput-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->f:Ljava/io/IOException;

    .line 302
    throw v1

    .line 2363
    :sswitch_0
    invoke-virtual {p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->usingProxy()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2364
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Received HTTP_PROXY_AUTH (407) code while not using proxy"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2369
    :cond_4
    :sswitch_1
    invoke-virtual {p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->getResponseCode()I

    move-result v0

    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;

    .line 2370
    invoke-virtual {v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->h()Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;

    move-result-object v1

    iget-object v3, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->d:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;

    .line 2369
    invoke-virtual {p0, v0, v1, v3}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->a(ILcom/integralblue/httpresponsecache/compat/libcore/net/http/G;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;)Z

    move-result v0

    .line 2371
    if-eqz v0, :cond_5

    sget-object v0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl$Retry;->SAME_CONNECTION:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl$Retry;

    move-object v1, v0

    goto :goto_2

    :cond_5
    sget-object v0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl$Retry;->NONE:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl$Retry;

    move-object v1, v0

    goto :goto_2

    .line 2377
    :sswitch_2
    invoke-virtual {p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->getInstanceFollowRedirects()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2380
    iget v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->e:I

    const/4 v1, 0x5

    if-le v0, v1, :cond_6

    .line 2381
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Too many redirects"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2383
    :cond_6
    const-string v0, "Location"

    invoke-virtual {p0, v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2384
    if-eqz v0, :cond_2

    .line 2387
    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->url:Ljava/net/URL;

    .line 2388
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v1, v0}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->url:Ljava/net/URL;

    .line 2389
    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->url:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2392
    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->url:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2393
    invoke-static {v1}, Lcom/arcsoft/hpay100/a/a;->a(Ljava/net/URL;)I

    move-result v0

    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->url:Ljava/net/URL;

    invoke-static {v1}, Lcom/arcsoft/hpay100/a/a;->a(Ljava/net/URL;)I

    move-result v1

    if-ne v0, v1, :cond_7

    .line 2394
    sget-object v0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl$Retry;->SAME_CONNECTION:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl$Retry;

    move-object v1, v0

    goto/16 :goto_2

    .line 2396
    :cond_7
    sget-object v0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl$Retry;->DIFFERENT_CONNECTION:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl$Retry;

    move-object v1, v0

    goto/16 :goto_2

    .line 314
    :cond_8
    iget-object v3, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->method:Ljava/lang/String;

    .line 315
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->e()Ljava/io/OutputStream;

    move-result-object v0

    .line 322
    invoke-virtual {p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->getResponseCode()I

    move-result v4

    .line 323
    const/16 v5, 0x12c

    if-eq v4, v5, :cond_9

    const/16 v5, 0x12d

    if-eq v4, v5, :cond_9

    const/16 v5, 0x12e

    if-eq v4, v5, :cond_9

    const/16 v5, 0x12f

    if-ne v4, v5, :cond_a

    .line 325
    :cond_9
    const-string v0, "GET"

    move-object v3, v0

    move-object v0, v2

    .line 329
    :cond_a
    if-eqz v0, :cond_b

    instance-of v4, v0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/I;

    if-nez v4, :cond_b

    .line 330
    new-instance v0, Ljava/net/HttpRetryException;

    const-string v1, "Cannot retry streamed HTTP body"

    iget-object v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;

    .line 331
    invoke-virtual {v2}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->i()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/net/HttpRetryException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 334
    :cond_b
    sget-object v4, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl$Retry;->DIFFERENT_CONNECTION:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl$Retry;

    if-ne v1, v4, :cond_c

    .line 335
    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;

    invoke-virtual {v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->o()V

    .line 338
    :cond_c
    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->a(Z)V

    .line 340
    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->d:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;

    iget-object v4, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;

    .line 341
    invoke-virtual {v4}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->l()Lcom/integralblue/httpresponsecache/compat/libcore/net/http/h;

    move-result-object v4

    check-cast v0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/I;

    .line 340
    invoke-virtual {p0, v3, v1, v4, v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->a(Ljava/lang/String;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/h;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/I;)Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;

    move-result-object v0

    iput-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;

    goto/16 :goto_1

    .line 2361
    nop

    :sswitch_data_0
    .sparse-switch
        0x12c -> :sswitch_2
        0x12d -> :sswitch_2
        0x12e -> :sswitch_2
        0x12f -> :sswitch_2
        0x191 -> :sswitch_1
        0x197 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method final a()Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;

    return-object v0
.end method

.method protected a(Ljava/lang/String;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/h;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/I;)Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;
    .locals 6

    .prologue
    .line 269
    new-instance v0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;-><init>(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;Ljava/lang/String;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/h;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/I;)V

    return-object v0
.end method

.method final a(Ljava/net/Proxy;)V
    .locals 0

    .prologue
    .line 487
    iput-object p1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->c:Ljava/net/Proxy;

    .line 488
    return-void
.end method

.method final a(ILcom/integralblue/httpresponsecache/compat/libcore/net/http/G;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;)Z
    .locals 3

    .prologue
    const/16 v2, 0x197

    .line 412
    if-eq p1, v2, :cond_0

    const/16 v0, 0x191

    if-eq p1, v0, :cond_0

    .line 413
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 417
    :cond_0
    if-ne p1, v2, :cond_1

    const-string v0, "Proxy-Authenticate"

    .line 420
    :goto_0
    invoke-virtual {p2}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;->e()Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->a(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 421
    if-nez v1, :cond_2

    .line 422
    const/4 v0, 0x0

    .line 430
    :goto_1
    return v0

    .line 417
    :cond_1
    const-string v0, "WWW-Authenticate"

    goto :goto_0

    .line 426
    :cond_2
    if-ne p1, v2, :cond_3

    const-string v0, "Proxy-Authorization"

    .line 429
    :goto_2
    invoke-virtual {p3, v0, v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    const/4 v0, 0x1

    goto :goto_1

    .line 426
    :cond_3
    const-string v0, "Authorization"

    goto :goto_2
.end method

.method public final addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 513
    iget-boolean v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->connected:Z

    if-eqz v0, :cond_0

    .line 514
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot add request property after connection is made"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 516
    :cond_0
    if-nez p1, :cond_1

    .line 517
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "field == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 519
    :cond_1
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->d:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;

    invoke-virtual {v0, p1, p2}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    return-void
.end method

.method final b()I
    .locals 1

    .prologue
    .line 469
    iget v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->b:I

    return v0
.end method

.method final c()I
    .locals 1

    .prologue
    .line 474
    iget v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->fixedContentLength:I

    return v0
.end method

.method public final connect()V
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->g()V

    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->b()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    return-void

    .line 86
    :catch_0
    move-exception v0

    .line 87
    iput-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->f:Ljava/io/IOException;

    .line 88
    throw v0
.end method

.method final d()I
    .locals 1

    .prologue
    .line 479
    iget v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->chunkLength:I

    return v0
.end method

.method public final disconnect()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;

    if-eqz v0, :cond_1

    .line 100
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->j()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->b(Ljava/io/Closeable;)V

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->a(Z)V

    .line 105
    :cond_1
    return-void
.end method

.method final e()Ljava/net/Proxy;
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->c:Ljava/net/Proxy;

    return-object v0
.end method

.method public final getErrorStream()Ljava/io/InputStream;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 113
    :try_start_0
    invoke-direct {p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->h()Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;

    move-result-object v1

    .line 114
    invoke-virtual {v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->p()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 115
    invoke-virtual {v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->i()I

    move-result v2

    const/16 v3, 0x190

    if-lt v2, v3, :cond_0

    .line 116
    invoke-virtual {v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->j()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 120
    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final getHeaderField(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    :try_start_0
    invoke-direct {p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->h()Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->h()Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;

    move-result-object v0

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;->e()Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;->b(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 132
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    :try_start_0
    invoke-direct {p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->h()Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->h()Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;

    move-result-object v0

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;->e()Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;

    move-result-object v0

    .line 144
    if-nez p1, :cond_0

    .line 145
    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;->a()Ljava/lang/String;

    move-result-object v0

    .line 148
    :goto_0
    return-object v0

    .line 146
    :cond_0
    invoke-virtual {v0, p1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;->d(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 148
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getHeaderFieldKey(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    :try_start_0
    invoke-direct {p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->h()Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->h()Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;

    move-result-object v0

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;->e()Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;->a(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 156
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
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
    .line 162
    :try_start_0
    invoke-direct {p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->h()Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->h()Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;

    move-result-object v0

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;->e()Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;->g()Ljava/util/Map;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 164
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getInputStream()Ljava/io/InputStream;
    .locals 3

    .prologue
    .line 177
    iget-boolean v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->doInput:Z

    if-nez v0, :cond_0

    .line 178
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "This protocol does not support input"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :cond_0
    invoke-direct {p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->h()Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;

    move-result-object v0

    .line 189
    invoke-virtual {p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->getResponseCode()I

    move-result v1

    const/16 v2, 0x190

    if-lt v1, v2, :cond_1

    .line 190
    new-instance v0, Ljava/io/FileNotFoundException;

    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 193
    :cond_1
    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->j()Ljava/io/InputStream;

    move-result-object v0

    .line 194
    if-nez v0, :cond_2

    .line 195
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No response body exists; responseCode="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->getResponseCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 197
    :cond_2
    return-object v0
.end method

.method public final getOutputStream()Ljava/io/OutputStream;
    .locals 3

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->connect()V

    .line 203
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->e()Ljava/io/OutputStream;

    move-result-object v0

    .line 204
    if-nez v0, :cond_0

    .line 205
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "method does not support a request body: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->method:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 206
    :cond_0
    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;

    invoke-virtual {v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 207
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "cannot write request body after response has been read"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 210
    :cond_1
    return-object v0
.end method

.method public final getPermission()Ljava/security/Permission;
    .locals 3

    .prologue
    .line 214
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1219
    invoke-virtual {p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->usingProxy()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->c:Ljava/net/Proxy;

    .line 1220
    invoke-virtual {v0}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    .line 214
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 215
    new-instance v1, Ljava/net/SocketPermission;

    const-string v2, "connect, resolve"

    invoke-direct {v1, v0, v2}, Ljava/net/SocketPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 1221
    :cond_0
    invoke-virtual {p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final getRequestProperties()Ljava/util/Map;
    .locals 2
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
    .line 169
    iget-boolean v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->connected:Z

    if-eqz v0, :cond_0

    .line 170
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot access request header fields after connection is set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->d:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;->g()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    if-nez p1, :cond_0

    .line 233
    const/4 v0, 0x0

    .line 235
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->d:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;

    invoke-virtual {v0, p1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final getResponseCode()I
    .locals 1

    .prologue
    .line 499
    invoke-direct {p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->h()Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->i()I

    move-result v0

    return v0
.end method

.method public getResponseMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 495
    invoke-direct {p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->h()Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->h()Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;

    move-result-object v0

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;->e()Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 503
    iget-boolean v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->connected:Z

    if-eqz v0, :cond_0

    .line 504
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot set request property after connection is made"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 506
    :cond_0
    if-nez p1, :cond_1

    .line 507
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "field == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 509
    :cond_1
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->d:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;

    invoke-virtual {v0, p1, p2}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    return-void
.end method

.method public final usingProxy()Z
    .locals 2

    .prologue
    .line 491
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->c:Ljava/net/Proxy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->c:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
