.class public abstract Lcom/qq/e/comm/net/rr/AbstractRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/qq/e/comm/net/rr/Request;


# instance fields
.field private a:Z

.field private b:I

.field private c:I

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/qq/e/comm/net/rr/Request$Method;

.field private k:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/qq/e/comm/net/rr/Request$Method;[B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qq/e/comm/net/rr/AbstractRequest;->a:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/qq/e/comm/net/rr/AbstractRequest;->f:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/qq/e/comm/net/rr/AbstractRequest;->g:Ljava/util/Map;

    iget-object v0, p0, Lcom/qq/e/comm/net/rr/AbstractRequest;->f:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/e/comm/net/rr/AbstractRequest;->h:Ljava/util/Map;

    iget-object v0, p0, Lcom/qq/e/comm/net/rr/AbstractRequest;->g:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/e/comm/net/rr/AbstractRequest;->i:Ljava/util/Map;

    iput-object p1, p0, Lcom/qq/e/comm/net/rr/AbstractRequest;->e:Ljava/lang/String;

    iput-object p2, p0, Lcom/qq/e/comm/net/rr/AbstractRequest;->j:Lcom/qq/e/comm/net/rr/Request$Method;

    if-nez p3, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qq/e/comm/net/rr/AbstractRequest;->k:[B

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p3}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/qq/e/comm/net/rr/AbstractRequest;->k:[B

    goto :goto_0
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/qq/e/comm/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lcom/qq/e/comm/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/qq/e/comm/net/rr/AbstractRequest;->f:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public addQuery(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/qq/e/comm/net/rr/AbstractRequest;->g:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getConnectionTimeOut()I
    .locals 1

    iget v0, p0, Lcom/qq/e/comm/net/rr/AbstractRequest;->c:I

    return v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qq/e/comm/net/rr/AbstractRequest;->h:Ljava/util/Map;

    return-object v0
.end method

.method public getMethod()Lcom/qq/e/comm/net/rr/Request$Method;
    .locals 1

    iget-object v0, p0, Lcom/qq/e/comm/net/rr/AbstractRequest;->j:Lcom/qq/e/comm/net/rr/Request$Method;

    return-object v0
.end method

.method public getPostData()[B
    .locals 1

    iget-object v0, p0, Lcom/qq/e/comm/net/rr/AbstractRequest;->k:[B

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    iget v0, p0, Lcom/qq/e/comm/net/rr/AbstractRequest;->b:I

    return v0
.end method

.method public getQuerys()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qq/e/comm/net/rr/AbstractRequest;->i:Ljava/util/Map;

    return-object v0
.end method

.method public getSocketTimeOut()I
    .locals 1

    iget v0, p0, Lcom/qq/e/comm/net/rr/AbstractRequest;->d:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qq/e/comm/net/rr/AbstractRequest;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getUrlWithParas()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/qq/e/comm/net/rr/AbstractRequest;->getQuerys()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/qq/e/comm/net/rr/AbstractRequest;->getUrl()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/qq/e/comm/net/rr/AbstractRequest;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/qq/e/comm/net/rr/AbstractRequest;->getQuerys()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isAutoClose()Z
    .locals 1

    iget-boolean v0, p0, Lcom/qq/e/comm/net/rr/AbstractRequest;->a:Z

    return v0
.end method

.method public setAutoClose(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/qq/e/comm/net/rr/AbstractRequest;->a:Z

    return-void
.end method

.method public setConnectionTimeOut(I)V
    .locals 0

    iput p1, p0, Lcom/qq/e/comm/net/rr/AbstractRequest;->c:I

    return-void
.end method

.method public setPriority(I)V
    .locals 0

    iput p1, p0, Lcom/qq/e/comm/net/rr/AbstractRequest;->b:I

    return-void
.end method

.method public setSocketTimeOut(I)V
    .locals 0

    iput p1, p0, Lcom/qq/e/comm/net/rr/AbstractRequest;->d:I

    return-void
.end method
