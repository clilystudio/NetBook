.class public Lcom/qq/e/comm/net/rr/S2SSResponse;
.super Lcom/qq/e/comm/net/rr/AbstractResponse;


# direct methods
.method public constructor <init>(Lorg/apache/http/HttpResponse;Lorg/apache/http/client/methods/HttpUriRequest;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/qq/e/comm/net/rr/AbstractResponse;-><init>(Lorg/apache/http/HttpResponse;Lorg/apache/http/client/methods/HttpUriRequest;)V

    return-void
.end method


# virtual methods
.method public getBytesContent()[B
    .locals 1

    :try_start_0
    invoke-super {p0}, Lcom/qq/e/comm/net/rr/AbstractResponse;->getBytesContent()[B

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/comm/net/rr/a;->b([B)[B
    :try_end_0
    .catch Lcom/qq/e/comm/net/rr/a$b; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/qq/e/comm/net/rr/a$b;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method
