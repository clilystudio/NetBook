.class public Lcom/qq/e/comm/net/rr/PlainRequest;
.super Lcom/qq/e/comm/net/rr/AbstractRequest;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/qq/e/comm/net/rr/Request$Method;[B)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/qq/e/comm/net/rr/AbstractRequest;-><init>(Ljava/lang/String;Lcom/qq/e/comm/net/rr/Request$Method;[B)V

    return-void
.end method


# virtual methods
.method public initResponse(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/HttpResponse;)Lcom/qq/e/comm/net/rr/Response;
    .locals 1

    new-instance v0, Lcom/qq/e/comm/net/rr/PlainResponse;

    invoke-direct {v0, p2, p1}, Lcom/qq/e/comm/net/rr/PlainResponse;-><init>(Lorg/apache/http/HttpResponse;Lorg/apache/http/client/methods/HttpUriRequest;)V

    return-object v0
.end method
