.class public Lcom/qq/e/comm/services/RetCodeService;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/Random;


# direct methods
.method private constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Random;-><init>(J)V

    iput-object v0, p0, Lcom/qq/e/comm/services/RetCodeService;->a:Ljava/util/Random;

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/qq/e/comm/services/RetCodeService;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "0.0.0.0"

    goto :goto_0
.end method

.method static synthetic a(Lcom/qq/e/comm/services/RetCodeService;Lcom/qq/e/comm/services/RetCodeService$RetCodeInfo;I)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0, p2}, Lcom/qq/e/comm/services/RetCodeService;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/qq/e/comm/net/rr/PlainRequest;

    const-string v1, "http://wspeed.qq.com/w.cgi"

    sget-object v2, Lcom/qq/e/comm/net/rr/Request$Method;->GET:Lcom/qq/e/comm/net/rr/Request$Method;

    invoke-direct {v0, v1, v2, v4}, Lcom/qq/e/comm/net/rr/PlainRequest;-><init>(Ljava/lang/String;Lcom/qq/e/comm/net/rr/Request$Method;[B)V

    const-string v1, "appid"

    const-string v2, "1000162"

    invoke-interface {v0, v1, v2}, Lcom/qq/e/comm/net/rr/Request;->addQuery(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "apn"

    invoke-static {}, Lcom/qq/e/comm/managers/GDTADManager;->getInstance()Lcom/qq/e/comm/managers/GDTADManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qq/e/comm/managers/GDTADManager;->getDeviceStatus()Lcom/qq/e/comm/managers/status/DeviceStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qq/e/comm/managers/status/DeviceStatus;->getNetworkType()Lcom/qq/e/comm/managers/status/NetworkType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qq/e/comm/managers/status/NetworkType;->getConnValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/qq/e/comm/net/rr/Request;->addQuery(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "resultcode"

    iget v2, p1, Lcom/qq/e/comm/services/RetCodeService$RetCodeInfo;->d:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/qq/e/comm/net/rr/Request;->addQuery(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "sdkversion"

    invoke-static {}, Lcom/qq/e/comm/managers/status/SDKStatus;->getSDKVersion()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/qq/e/comm/net/rr/Request;->addQuery(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "touin"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/qq/e/comm/net/rr/Request;->addQuery(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "tmcost"

    iget v2, p1, Lcom/qq/e/comm/services/RetCodeService$RetCodeInfo;->e:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/qq/e/comm/net/rr/Request;->addQuery(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "reqsize"

    iget v2, p1, Lcom/qq/e/comm/services/RetCodeService$RetCodeInfo;->f:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/qq/e/comm/net/rr/Request;->addQuery(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "rspsize"

    iget v2, p1, Lcom/qq/e/comm/services/RetCodeService$RetCodeInfo;->g:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/qq/e/comm/net/rr/Request;->addQuery(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "frequency"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/qq/e/comm/net/rr/Request;->addQuery(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/qq/e/comm/managers/GDTADManager;->getInstance()Lcom/qq/e/comm/managers/GDTADManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qq/e/comm/managers/GDTADManager;->getDeviceStatus()Lcom/qq/e/comm/managers/status/DeviceStatus;

    move-result-object v1

    iget-object v1, v1, Lcom/qq/e/comm/managers/status/DeviceStatus;->model:Ljava/lang/String;

    const-string v2, "utf-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "deviceinfo"

    invoke-interface {v0, v2, v1}, Lcom/qq/e/comm/net/rr/Request;->addQuery(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "device"

    invoke-interface {v0, v2, v1}, Lcom/qq/e/comm/net/rr/Request;->addQuery(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p1, Lcom/qq/e/comm/services/RetCodeService$RetCodeInfo;->b:Ljava/lang/String;

    const-string v2, "utf-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "commandid"

    invoke-interface {v0, v2, v1}, Lcom/qq/e/comm/net/rr/Request;->addQuery(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "releaseversion"

    iget-object v2, p1, Lcom/qq/e/comm/services/RetCodeService$RetCodeInfo;->c:Ljava/lang/String;

    const-string v3, "utf-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/qq/e/comm/net/rr/Request;->addQuery(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "serverip"

    iget-object v2, p1, Lcom/qq/e/comm/services/RetCodeService$RetCodeInfo;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/qq/e/comm/services/RetCodeService;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "utf-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/qq/e/comm/net/rr/Request;->addQuery(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/qq/e/comm/net/NetworkClientImpl;->getInstance()Lcom/qq/e/comm/net/NetworkClient;

    move-result-object v1

    sget-object v2, Lcom/qq/e/comm/net/NetworkClient$Priority;->Low:Lcom/qq/e/comm/net/NetworkClient$Priority;

    invoke-interface {v1, v0, v2}, Lcom/qq/e/comm/net/NetworkClient;->submit(Lcom/qq/e/comm/net/rr/Request;Lcom/qq/e/comm/net/NetworkClient$Priority;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-direct {p0, p2}, Lcom/qq/e/comm/services/RetCodeService;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/qq/e/comm/net/rr/PlainRequest;

    const-string v1, "http://c.isdspeed.qq.com/code.cgi"

    sget-object v2, Lcom/qq/e/comm/net/rr/Request$Method;->GET:Lcom/qq/e/comm/net/rr/Request$Method;

    invoke-direct {v0, v1, v2, v4}, Lcom/qq/e/comm/net/rr/PlainRequest;-><init>(Ljava/lang/String;Lcom/qq/e/comm/net/rr/Request$Method;[B)V

    const-string v1, "domain"

    iget-object v2, p1, Lcom/qq/e/comm/services/RetCodeService$RetCodeInfo;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/qq/e/comm/net/rr/Request;->addQuery(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "cgi"

    iget-object v2, p1, Lcom/qq/e/comm/services/RetCodeService$RetCodeInfo;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/qq/e/comm/net/rr/Request;->addQuery(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "type"

    iget v2, p1, Lcom/qq/e/comm/services/RetCodeService$RetCodeInfo;->h:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/qq/e/comm/net/rr/Request;->addQuery(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "code"

    iget v2, p1, Lcom/qq/e/comm/services/RetCodeService$RetCodeInfo;->d:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/qq/e/comm/net/rr/Request;->addQuery(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "time"

    iget v2, p1, Lcom/qq/e/comm/services/RetCodeService$RetCodeInfo;->e:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/qq/e/comm/net/rr/Request;->addQuery(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "rate"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/qq/e/comm/net/rr/Request;->addQuery(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/qq/e/comm/net/NetworkClientImpl;->getInstance()Lcom/qq/e/comm/net/NetworkClient;

    move-result-object v1

    sget-object v2, Lcom/qq/e/comm/net/NetworkClient$Priority;->Low:Lcom/qq/e/comm/net/NetworkClient$Priority;

    invoke-interface {v1, v0, v2}, Lcom/qq/e/comm/net/NetworkClient;->submit(Lcom/qq/e/comm/net/rr/Request;Lcom/qq/e/comm/net/NetworkClient$Priority;)Ljava/util/concurrent/Future;

    :cond_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method private a(I)Z
    .locals 6

    iget-object v0, p0, Lcom/qq/e/comm/services/RetCodeService;->a:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L

    int-to-double v4, p1

    div-double/2addr v2, v4

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getInstance()Lcom/qq/e/comm/services/RetCodeService;
    .locals 1

    sget-object v0, Lcom/qq/e/comm/services/RetCodeService$Holder;->a:Lcom/qq/e/comm/services/RetCodeService;

    return-object v0
.end method


# virtual methods
.method public send(Lcom/qq/e/comm/services/RetCodeService$RetCodeInfo;)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/qq/e/comm/services/RetCodeService$SendTask;

    invoke-direct {v1, p0, p1}, Lcom/qq/e/comm/services/RetCodeService$SendTask;-><init>(Lcom/qq/e/comm/services/RetCodeService;Lcom/qq/e/comm/services/RetCodeService$RetCodeInfo;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
