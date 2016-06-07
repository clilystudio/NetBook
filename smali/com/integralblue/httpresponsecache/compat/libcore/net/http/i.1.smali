.class public final Lcom/integralblue/httpresponsecache/compat/libcore/net/http/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/net/Proxy;

.field private final b:Z

.field private final c:Ljava/lang/String;

.field private final d:I

.field private final e:Ljava/lang/String;

.field private final f:I

.field private final g:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method public constructor <init>(Ljava/net/URI;Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 2

    .prologue
    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 285
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/i;->a:Ljava/net/Proxy;

    .line 286
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/i;->b:Z

    .line 287
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/i;->c:Ljava/lang/String;

    .line 288
    invoke-static {p1}, Lcom/arcsoft/hpay100/a/a;->a(Ljava/net/URI;)I

    move-result v0

    iput v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/i;->d:I

    .line 289
    iput-object p2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/i;->g:Ljavax/net/ssl/SSLSocketFactory;

    .line 290
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/i;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/i;->e:Ljava/lang/String;

    .line 291
    iget v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/i;->d:I

    iput v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/i;->f:I

    .line 292
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/i;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 293
    new-instance v0, Ljava/net/UnknownHostException;

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 295
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Ljavax/net/ssl/SSLSocketFactory;Ljava/net/Proxy;Z)V
    .locals 4

    .prologue
    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 305
    iput-object p3, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/i;->a:Ljava/net/Proxy;

    .line 306
    iput-boolean p4, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/i;->b:Z

    .line 307
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/i;->c:Ljava/lang/String;

    .line 308
    invoke-static {p1}, Lcom/arcsoft/hpay100/a/a;->a(Ljava/net/URI;)I

    move-result v0

    iput v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/i;->d:I

    .line 309
    iput-object p2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/i;->g:Ljavax/net/ssl/SSLSocketFactory;

    .line 311
    invoke-virtual {p3}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    .line 312
    instance-of v1, v0, Ljava/net/InetSocketAddress;

    if-nez v1, :cond_0

    .line 313
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Proxy.address() is not an InetSocketAddress: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 314
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 316
    :cond_0
    check-cast v0, Ljava/net/InetSocketAddress;

    .line 317
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/i;->e:Ljava/lang/String;

    .line 318
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    iput v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/i;->f:I

    .line 319
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/i;->c:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 320
    new-instance v0, Ljava/net/UnknownHostException;

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 322
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/i;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/i;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/i;)Ljava/net/Proxy;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/i;->a:Ljava/net/Proxy;

    return-object v0
.end method

.method static synthetic c(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/i;)I
    .locals 1

    .prologue
    .line 275
    iget v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/i;->f:I

    return v0
.end method

.method static synthetic d(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/i;)Z
    .locals 1

    .prologue
    .line 275
    iget-boolean v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/i;->b:Z

    return v0
.end method

.method static synthetic e(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/i;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/i;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/i;)I
    .locals 1

    .prologue
    .line 275
    iget v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/i;->d:I

    return v0
.end method


# virtual methods
.method public final a()Ljava/net/Proxy;
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/i;->a:Ljava/net/Proxy;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 329
    instance-of v1, p1, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/i;

    if-eqz v1, :cond_0

    .line 330
    check-cast p1, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/i;

    .line 331
    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/i;->a:Ljava/net/Proxy;

    iget-object v2, p1, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/i;->a:Ljava/net/Proxy;

    invoke-static {v1, v2}, Lcom/arcsoft/hpay100/a/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/i;->c:Ljava/lang/String;

    iget-object v2, p1, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/i;->c:Ljava/lang/String;

    .line 332
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/i;->d:I

    iget v2, p1, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/i;->d:I

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/i;->b:Z

    iget-boolean v2, p1, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/i;->b:Z

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 336
    :cond_0
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 341
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/i;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 342
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/i;->d:I

    add-int/2addr v0, v2

    .line 343
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/i;->g:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/i;->g:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v2

    .line 344
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/i;->a:Ljava/net/Proxy;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/i;->a:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 345
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/i;->b:Z

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/2addr v0, v1

    .line 346
    return v0

    :cond_1
    move v0, v1

    .line 343
    goto :goto_0

    :cond_2
    move v0, v1

    .line 344
    goto :goto_1
.end method
