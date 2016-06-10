.class Lcom/qq/e/comm/net/NetworkClientImpl$TaskCallable;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/qq/e/comm/net/rr/Response;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/qq/e/comm/net/rr/Request;

.field private b:Lcom/qq/e/comm/net/NetworkCallBack;


# direct methods
.method public constructor <init>(Lcom/qq/e/comm/net/rr/Request;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/qq/e/comm/net/NetworkClientImpl$TaskCallable;-><init>(Lcom/qq/e/comm/net/rr/Request;Lcom/qq/e/comm/net/NetworkCallBack;)V

    return-void
.end method

.method public constructor <init>(Lcom/qq/e/comm/net/rr/Request;Lcom/qq/e/comm/net/NetworkCallBack;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qq/e/comm/net/NetworkClientImpl$TaskCallable;->a:Lcom/qq/e/comm/net/rr/Request;

    iput-object p2, p0, Lcom/qq/e/comm/net/NetworkClientImpl$TaskCallable;->b:Lcom/qq/e/comm/net/NetworkCallBack;

    return-void
.end method

.method private a(Lorg/apache/http/client/methods/HttpRequestBase;)V
    .locals 3

    iget-object v0, p0, Lcom/qq/e/comm/net/NetworkClientImpl$TaskCallable;->a:Lcom/qq/e/comm/net/rr/Request;

    invoke-interface {v0}, Lcom/qq/e/comm/net/rr/Request;->getHeaders()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "User-Agent"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GDTADNetClient-["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "http.agent"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Accept-Encoding"

    const-string v1, "gzip"

    invoke-virtual {p1, v0, v1}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/http/client/methods/HttpRequestBase;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    :cond_1
    iget-object v1, p0, Lcom/qq/e/comm/net/NetworkClientImpl$TaskCallable;->a:Lcom/qq/e/comm/net/rr/Request;

    invoke-interface {v1}, Lcom/qq/e/comm/net/rr/Request;->getConnectionTimeOut()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/qq/e/comm/net/NetworkClientImpl$TaskCallable;->a:Lcom/qq/e/comm/net/rr/Request;

    invoke-interface {v1}, Lcom/qq/e/comm/net/rr/Request;->getConnectionTimeOut()I

    move-result v1

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    :cond_2
    iget-object v1, p0, Lcom/qq/e/comm/net/NetworkClientImpl$TaskCallable;->a:Lcom/qq/e/comm/net/rr/Request;

    invoke-interface {v1}, Lcom/qq/e/comm/net/rr/Request;->getSocketTimeOut()I

    move-result v1

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/qq/e/comm/net/NetworkClientImpl$TaskCallable;->a:Lcom/qq/e/comm/net/rr/Request;

    invoke-interface {v1}, Lcom/qq/e/comm/net/rr/Request;->getSocketTimeOut()I

    move-result v1

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    :cond_3
    invoke-virtual {p1, v0}, Lorg/apache/http/client/methods/HttpRequestBase;->setParams(Lorg/apache/http/params/HttpParams;)V

    return-void
.end method


# virtual methods
.method public call()Lcom/qq/e/comm/net/rr/Response;
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/qq/e/comm/net/NetworkClientImpl;->a()Lorg/apache/http/client/HttpClient;

    move-result-object v2

    sget-object v0, Lcom/qq/e/comm/net/NetworkClientImpl$1;->a:[I

    iget-object v3, p0, Lcom/qq/e/comm/net/NetworkClientImpl$TaskCallable;->a:Lcom/qq/e/comm/net/rr/Request;

    invoke-interface {v3}, Lcom/qq/e/comm/net/rr/Request;->getMethod()Lcom/qq/e/comm/net/rr/Request$Method;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qq/e/comm/net/rr/Request$Method;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    move-object v0, v1

    :cond_0
    :goto_0
    invoke-interface {v2, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    iget-object v3, p0, Lcom/qq/e/comm/net/NetworkClientImpl$TaskCallable;->a:Lcom/qq/e/comm/net/rr/Request;

    invoke-interface {v3, v0, v2}, Lcom/qq/e/comm/net/rr/Request;->initResponse(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/HttpResponse;)Lcom/qq/e/comm/net/rr/Response;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_1
    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/qq/e/comm/net/NetworkClientImpl$TaskCallable;->b:Lcom/qq/e/comm/net/NetworkCallBack;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qq/e/comm/net/NetworkClientImpl$TaskCallable;->b:Lcom/qq/e/comm/net/NetworkCallBack;

    iget-object v2, p0, Lcom/qq/e/comm/net/NetworkClientImpl$TaskCallable;->a:Lcom/qq/e/comm/net/rr/Request;

    invoke-interface {v0, v2, v1}, Lcom/qq/e/comm/net/NetworkCallBack;->onResponse(Lcom/qq/e/comm/net/rr/Request;Lcom/qq/e/comm/net/rr/Response;)V

    :cond_1
    iget-object v0, p0, Lcom/qq/e/comm/net/NetworkClientImpl$TaskCallable;->a:Lcom/qq/e/comm/net/rr/Request;

    invoke-interface {v0}, Lcom/qq/e/comm/net/rr/Request;->isAutoClose()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Lcom/qq/e/comm/net/rr/Response;->close()V

    :cond_2
    :goto_2
    return-object v1

    :pswitch_0
    :try_start_1
    iget-object v0, p0, Lcom/qq/e/comm/net/NetworkClientImpl$TaskCallable;->a:Lcom/qq/e/comm/net/rr/Request;

    invoke-interface {v0}, Lcom/qq/e/comm/net/rr/Request;->getUrlWithParas()Ljava/lang/String;

    move-result-object v3

    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, v3}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/qq/e/comm/net/NetworkClientImpl$TaskCallable;->a(Lorg/apache/http/client/methods/HttpRequestBase;)V

    iget-object v3, p0, Lcom/qq/e/comm/net/NetworkClientImpl$TaskCallable;->a:Lcom/qq/e/comm/net/rr/Request;

    invoke-interface {v3}, Lcom/qq/e/comm/net/rr/Request;->getPostData()[B

    move-result-object v3

    if-eqz v3, :cond_0

    array-length v4, v3

    if-lez v4, :cond_0

    new-instance v4, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v4, v3}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-virtual {v0, v4}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :pswitch_1
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    iget-object v3, p0, Lcom/qq/e/comm/net/NetworkClientImpl$TaskCallable;->a:Lcom/qq/e/comm/net/rr/Request;

    invoke-interface {v3}, Lcom/qq/e/comm/net/rr/Request;->getUrlWithParas()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/qq/e/comm/net/NetworkClientImpl$TaskCallable;->a(Lorg/apache/http/client/methods/HttpRequestBase;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_3
    invoke-interface {v1}, Lcom/qq/e/comm/net/rr/Response;->close()V

    iget-object v2, p0, Lcom/qq/e/comm/net/NetworkClientImpl$TaskCallable;->b:Lcom/qq/e/comm/net/NetworkCallBack;

    if-eqz v2, :cond_4

    const-string v2, "NetworkClientException"

    invoke-static {v2, v0}, Lcom/qq/e/comm/util/GDTLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v2, p0, Lcom/qq/e/comm/net/NetworkClientImpl$TaskCallable;->b:Lcom/qq/e/comm/net/NetworkCallBack;

    invoke-interface {v2, v0}, Lcom/qq/e/comm/net/NetworkCallBack;->onException(Ljava/lang/Exception;)V

    goto :goto_2

    :cond_4
    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/qq/e/comm/net/NetworkClientImpl$TaskCallable;->call()Lcom/qq/e/comm/net/rr/Response;

    move-result-object v0

    return-object v0
.end method
