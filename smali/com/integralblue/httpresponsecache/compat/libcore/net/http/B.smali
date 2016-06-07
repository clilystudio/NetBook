.class final Lcom/integralblue/httpresponsecache/compat/libcore/net/http/B;
.super Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/h;)V
    .locals 6

    .prologue
    .line 539
    const-string v2, "CONNECT"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;-><init>(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;Ljava/lang/String;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/h;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/I;)V

    .line 540
    return-void
.end method


# virtual methods
.method protected final r()Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;
    .locals 5

    .prologue
    .line 548
    invoke-virtual {p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/B;->g()Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;

    move-result-object v1

    .line 549
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/B;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->getURL()Ljava/net/URL;

    move-result-object v2

    .line 551
    new-instance v3, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;

    invoke-direct {v3}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;-><init>()V

    .line 552
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "CONNECT "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Lcom/arcsoft/hpay100/a/a;->a(Ljava/net/URL;)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " HTTP/1.1"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;->a(Ljava/lang/String;)V

    .line 556
    invoke-virtual {v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;->l()Ljava/lang/String;

    move-result-object v0

    .line 557
    if-nez v0, :cond_0

    .line 558
    invoke-virtual {p0, v2}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/B;->a(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v0

    .line 560
    :cond_0
    const-string v2, "Host"

    invoke-virtual {v3, v2, v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    invoke-virtual {v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;->k()Ljava/lang/String;

    move-result-object v0

    .line 563
    if-nez v0, :cond_1

    .line 564
    invoke-static {}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/B;->u()Ljava/lang/String;

    move-result-object v0

    .line 566
    :cond_1
    const-string v2, "User-Agent"

    invoke-virtual {v3, v2, v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    invoke-virtual {v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;->p()Ljava/lang/String;

    move-result-object v0

    .line 570
    if-eqz v0, :cond_2

    .line 571
    const-string v1, "Proxy-Authorization"

    invoke-virtual {v3, v1, v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    :cond_2
    const-string v0, "Proxy-Connection"

    const-string v1, "Keep-Alive"

    invoke-virtual {v3, v0, v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    return-object v3
.end method

.method protected final v()Z
    .locals 1

    .prologue
    .line 581
    const/4 v0, 0x1

    return v0
.end method
