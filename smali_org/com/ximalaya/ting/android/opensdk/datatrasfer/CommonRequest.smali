.class public Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TAG:Ljava/lang/String; = "XiMaLaYaSDK"

.field private static delivery:Lcom/ximalaya/ting/android/opensdk/httputil/ExecutorDelivery;

.field private static mContext:Landroid/content/Context;

.field public static mHandler:Landroid/os/Handler;

.field private static singleton:Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;


# instance fields
.field private mAppid:Ljava/lang/String;

.field private mAppkey:Ljava/lang/String;

.field private mAppsecret:Ljava/lang/String;

.field private mDeviceid:Ljava/lang/String;

.field private mDisplay:Ljava/lang/String;

.field private mMac:Ljava/lang/String;

.field private mNetWorkType:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;

.field private mPagesize:I

.field private mSimName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 116
    const/4 v0, 0x0

    sput-object v0, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->mContext:Landroid/content/Context;

    .line 129
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->mHandler:Landroid/os/Handler;

    .line 130
    new-instance v0, Lcom/ximalaya/ting/android/opensdk/httputil/ExecutorDelivery;

    sget-object v1, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/ximalaya/ting/android/opensdk/httputil/ExecutorDelivery;-><init>(Landroid/os/Handler;)V

    sput-object v0, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->delivery:Lcom/ximalaya/ting/android/opensdk/httputil/ExecutorDelivery;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    const/16 v0, 0x14

    iput v0, p0, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->mPagesize:I

    .line 121
    const-string v0, ""

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->mAppkey:Ljava/lang/String;

    .line 122
    const-string v0, ""

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->mAppid:Ljava/lang/String;

    .line 123
    const-string v0, ""

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->mDeviceid:Ljava/lang/String;

    .line 124
    const-string v0, ""

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->mMac:Ljava/lang/String;

    .line 125
    const-string v0, ""

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->mPackageName:Ljava/lang/String;

    .line 126
    const-string v0, ""

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->mSimName:Ljava/lang/String;

    .line 127
    const-string v0, ""

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->mNetWorkType:Ljava/lang/String;

    .line 128
    const-string v0, ""

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->mDisplay:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public static CommonParams(Ljava/util/Map;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 357
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 358
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getInstanse()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->assembleCommonParams()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 359
    invoke-interface {v0, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 360
    const-string v1, "otp"

    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/OtpManager;->getInstanse()Lcom/ximalaya/ting/android/opensdk/datatrasfer/OtpManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/OtpManager;->getOtp()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    return-object v0
.end method

.method static synthetic access$0()Lcom/ximalaya/ting/android/opensdk/httputil/ExecutorDelivery;
    .locals 1

    .prologue
    .line 130
    sget-object v0, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->delivery:Lcom/ximalaya/ting/android/opensdk/httputil/ExecutorDelivery;

    return-object v0
.end method

.method public static getAdvertis(Ljava/util/Map;Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/advertis/AdvertisList;",
            ">;)V"
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0xbb8

    .line 2241
    :try_start_0
    const-string v0, "appid"

    const-string v1, "-2"

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2242
    const-string v0, "version"

    const-string v1, "1.0"

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2243
    const-string v0, "device"

    const-string v1, "android"

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2244
    const-string v0, "uid"

    const-string v1, "-1"

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2245
    const-string v0, "operator"

    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getInstanse()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    move-result-object v1

    .line 2246
    invoke-virtual {v1}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getSimName()Ljava/lang/String;

    move-result-object v1

    .line 2245
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2247
    const-string v0, "network"

    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getInstanse()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    move-result-object v1

    .line 2248
    invoke-virtual {v1}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getNetWorkType()Ljava/lang/String;

    move-result-object v1

    .line 2247
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2249
    const-string v0, "deviceId"

    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getInstanse()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    move-result-object v1

    .line 2250
    invoke-virtual {v1}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 2249
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2251
    const-string v0, "appKey"

    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getInstanse()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    move-result-object v1

    .line 2252
    invoke-virtual {v1}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getAppKey()Ljava/lang/String;

    move-result-object v1

    .line 2251
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2253
    const-string v0, "http://adse.test.ximalaya.com/soundPatch/"

    invoke-static {v0, p0}, Lcom/ximalaya/ting/android/opensdk/httputil/BaseBuilder;->urlGet(Ljava/lang/String;Ljava/util/Map;)Lcom/squareup/okhttp/D;
    :try_end_0
    .catch Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2261
    const-string v1, "User-agent"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ting_v1.0.6_c0("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2262
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2263
    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2261
    invoke-virtual {v0, v1, v2}, Lcom/squareup/okhttp/D;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/D;

    .line 2264
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2269
    :try_start_1
    const-string v2, "environmentId&_device="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2271
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "2&android&"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2273
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getInstanse()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2271
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2274
    const-string v4, "UTF-8"

    .line 2271
    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2274
    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2276
    const-string v2, "impl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2278
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getInstanse()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    move-result-object v3

    .line 2279
    invoke-virtual {v3}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    .line 2278
    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2279
    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2281
    const-string v2, "XUM="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2283
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getInstanse()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    move-result-object v3

    .line 2284
    invoke-virtual {v3}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getLocalMacAddress()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    .line 2283
    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2284
    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2286
    const-string v2, "c-oper="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2288
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getInstanse()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    move-result-object v3

    .line 2289
    invoke-virtual {v3}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getSimName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    .line 2288
    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2289
    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2291
    const-string v2, "net-mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2293
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getInstanse()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    move-result-object v3

    .line 2294
    invoke-virtual {v3}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getNetWorkType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    .line 2293
    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2294
    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2296
    const-string v2, "res="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2298
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getInstanse()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    move-result-object v3

    .line 2299
    invoke-virtual {v3}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getDisplay()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    .line 2298
    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2301
    const-string v2, "Cookie"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/squareup/okhttp/D;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/D;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException; {:try_start_1 .. :try_end_1} :catch_2

    .line 2314
    invoke-virtual {v0}, Lcom/squareup/okhttp/D;->a()Lcom/squareup/okhttp/C;

    move-result-object v0

    .line 2315
    new-instance v1, Lcom/squareup/okhttp/A;

    invoke-direct {v1}, Lcom/squareup/okhttp/A;-><init>()V

    .line 2316
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v6, v7, v2}, Lcom/squareup/okhttp/A;->a(JLjava/util/concurrent/TimeUnit;)V

    .line 2317
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v6, v7, v2}, Lcom/squareup/okhttp/A;->b(JLjava/util/concurrent/TimeUnit;)V

    .line 2318
    new-instance v2, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest$36;

    invoke-direct {v2, p1}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest$36;-><init>(Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;)V

    invoke-static {v1, v0, v2}, Lcom/ximalaya/ting/android/opensdk/httputil/BaseCall;->doAsync(Lcom/squareup/okhttp/A;Lcom/squareup/okhttp/C;Lcom/ximalaya/ting/android/opensdk/httputil/IHttpCallBack;)V

    .line 2356
    :goto_0
    return-void

    .line 2256
    :catch_0
    move-exception v0

    .line 2258
    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException;->getErrorCode()I

    move-result v1

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;->onError(ILjava/lang/String;)V

    goto :goto_0

    .line 2305
    :catch_1
    move-exception v0

    const/16 v0, 0x258

    const-string v1, "UnsupportedEncodingException"

    invoke-interface {p1, v0, v1}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;->onError(ILjava/lang/String;)V

    goto :goto_0

    .line 2308
    :catch_2
    move-exception v0

    .line 2310
    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException;->getErrorCode()I

    move-result v1

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;->onError(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public static getAlbums(Ljava/util/Map;Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/album/AlbumList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 801
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getInstanse()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->setPageSize(Ljava/util/Map;)V

    .line 804
    :try_start_0
    const-string v0, "http://api.ximalaya.com/openapi-gateway-app/albums/hot"

    .line 805
    invoke-static {p0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->CommonParams(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 806
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getInstanse()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getAppsecret()Ljava/lang/String;

    move-result-object v2

    .line 804
    invoke-static {v0, v1, v2}, Lcom/ximalaya/ting/android/opensdk/httputil/BaseBuilder;->urlGet(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/squareup/okhttp/D;

    move-result-object v0

    .line 806
    invoke-virtual {v0}, Lcom/squareup/okhttp/D;->a()Lcom/squareup/okhttp/C;
    :try_end_0
    .catch Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 816
    new-instance v1, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest$9;

    invoke-direct {v1, p1}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest$9;-><init>(Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;)V

    .line 844
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getInstanse()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getAppsecret()Ljava/lang/String;

    move-result-object v2

    .line 845
    const-string v3, "http://api.ximalaya.com/openapi-gateway-app/albums/hot"

    .line 814
    invoke-static {v0, v1, p0, v2, v3}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/OtpBaseCall;->doAsync(Lcom/squareup/okhttp/C;Lcom/ximalaya/ting/android/opensdk/httputil/IHttpCallBack;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 846
    :goto_0
    return-void

    .line 808
    :catch_0
    move-exception v0

    .line 810
    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException;->getErrorCode()I

    move-result v1

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;->onError(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public static getAllAlbums(Ljava/util/Map;Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/album/AlbumList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1347
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getInstanse()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->setPageSize(Ljava/util/Map;)V

    .line 1350
    :try_start_0
    const-string v0, "http://api.ximalaya.com/openapi-gateway-app/albums/get_all"

    .line 1351
    invoke-static {p0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->CommonParams(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 1352
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getInstanse()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getAppsecret()Ljava/lang/String;

    move-result-object v2

    .line 1350
    invoke-static {v0, v1, v2}, Lcom/ximalaya/ting/android/opensdk/httputil/BaseBuilder;->urlGet(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/squareup/okhttp/D;

    move-result-object v0

    .line 1352
    invoke-virtual {v0}, Lcom/squareup/okhttp/D;->a()Lcom/squareup/okhttp/C;
    :try_end_0
    .catch Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1361
    new-instance v1, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest$19;

    invoke-direct {v1, p1}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest$19;-><init>(Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;)V

    .line 1389
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getInstanse()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getAppsecret()Ljava/lang/String;

    move-result-object v2

    .line 1390
    const-string v3, "http://api.ximalaya.com/openapi-gateway-app/albums/get_all"

    .line 1359
    invoke-static {v0, v1, p0, v2, v3}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/OtpBaseCall;->doAsync(Lcom/squareup/okhttp/C;Lcom/ximalaya/ting/android/opensdk/httputil/IHttpCallBack;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 1391
    :goto_0
    return-void

    .line 1354
    :catch_0
    move-exception v0

    .line 1356
    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException;->getErrorCode()I

    move-result v1

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;->onError(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private getAplication()Landroid/content/Context;
    .locals 3

    .prologue
    .line 172
    sget-object v0, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 174
    new-instance v0, Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException;

    const/16 v1, 0x258

    const-string v2, "you must call #XiMaLaYa.init"

    invoke-direct {v0, v1, v2}, Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 176
    :cond_0
    sget-object v0, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static getAppModel(Ljava/util/Map;Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/app/AppModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2194
    const-string v0, "http://api.ximalaya.com/version/get_latest_version"

    .line 2198
    :try_start_0
    invoke-static {v0, p0}, Lcom/ximalaya/ting/android/opensdk/httputil/BaseBuilder;->urlGet(Ljava/lang/String;Ljava/util/Map;)Lcom/squareup/okhttp/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/D;->a()Lcom/squareup/okhttp/C;
    :try_end_0
    .catch Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2205
    new-instance v1, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest$35;

    invoke-direct {v1, p1}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest$35;-><init>(Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;)V

    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/opensdk/httputil/BaseCall;->doAsync(Lcom/squareup/okhttp/C;Lcom/ximalaya/ting/android/opensdk/httputil/IHttpCallBack;)V

    .line 2232
    :goto_0
    return-void

    .line 2200
    :catch_0
    move-exception v0

    .line 2202
    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException;->getErrorCode()I

    move-result v1

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;->onError(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public static getBatch(Ljava/util/Map;Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/album/BatchAlbumList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 640
    :try_start_0
    const-string v0, "http://api.ximalaya.com/openapi-gateway-app/albums/get_batch"

    .line 641
    invoke-static {p0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->CommonParams(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 642
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getInstanse()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getAppsecret()Ljava/lang/String;

    move-result-object v2

    .line 639
    invoke-static {v0, v1, v2}, Lcom/ximalaya/ting/android/opensdk/httputil/BaseBuilder;->urlGet(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/squareup/okhttp/D;

    move-result-object v0

    .line 642
    invoke-virtual {v0}, Lcom/squareup/okhttp/D;->a()Lcom/squareup/okhttp/C;
    :try_end_0
    .catch Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 652
    new-instance v1, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest$6;

    invoke-direct {v1, p1}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest$6;-><init>(Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;)V

    .line 683
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getInstanse()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getAppsecret()Ljava/lang/String;

    move-result-object v2

    .line 684
    const-string v3, "http://api.ximalaya.com/openapi-gateway-app/albums/get_batch"

    .line 650
    invoke-static {v0, v1, p0, v2, v3}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/OtpBaseCall;->doAsync(Lcom/squareup/okhttp/C;Lcom/ximalaya/ting/android/opensdk/httputil/IHttpCallBack;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    :goto_0
    return-void

    .line 644
    :catch_0
    move-exception v0

    .line 646
    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException;->getErrorCode()I

    move-result v1

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;->onError(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public static getBatchTracks(Ljava/util/Map;Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/track/BatchTrackList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 694
    :try_start_0
    const-string v0, "http://api.ximalaya.com/openapi-gateway-app/tracks/get_batch"

    .line 695
    invoke-static {p0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->CommonParams(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 696
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getInstanse()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getAppsecret()Ljava/lang/String;

    move-result-object v2

    .line 693
    invoke-static {v0, v1, v2}, Lcom/ximalaya/ting/android/opensdk/httputil/BaseBuilder;->urlGet(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/squareup/okhttp/D;

    move-result-object v0

    .line 696
    invoke-virtual {v0}, Lcom/squareup/okhttp/D;->a()Lcom/squareup/okhttp/C;
    :try_end_0
    .catch Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 706
    new-instance v1, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest$7;

    invoke-direct {v1, p1}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest$7;-><init>(Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;)V

    .line 735
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getInstanse()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getAppsecret()Ljava/lang/String;

    move-result-object v2

    .line 736
    const-string v3, "http://api.ximalaya.com/openapi-gateway-app/tracks/get_batch"

    .line 704
    invoke-static {v0, v1, p0, v2, v3}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/OtpBaseCall;->doAsync(Lcom/squareup/okhttp/C;Lcom/ximalaya/ting/android/opensdk/httputil/IHttpCallBack;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    :goto_0
    return-void

    .line 698
    :catch_0
    move-exception v0

    .line 700
    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException;->getErrorCode()I

    move-result v1

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;->onError(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public static getCategories(Ljava/util/Map;Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/category/CategoryList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 371
    :try_start_0
    const-string v0, "http://api.ximalaya.com/openapi-gateway-app/categories/list"

    .line 372
    invoke-static {p0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->CommonParams(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 373
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getInstanse()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getAppsecret()Ljava/lang/String;

    move-result-object v2

    .line 371
    invoke-static {v0, v1, v2}, Lcom/ximalaya/ting/android/opensdk/httputil/BaseBuilder;->urlGet(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/squareup/okhttp/D;

    move-result-object v0

    .line 373
    invoke-virtual {v0}, Lcom/squareup/okhttp/D;->a()Lcom/squareup/okhttp/C;
    :try_end_0
    .catch Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 382
    new-instance v1, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest$1;

    invoke-direct {v1, p1}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest$1;-><init>(Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;)V

    .line 413
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getInstanse()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getAppsecret()Ljava/lang/String;

    move-result-object v2

    .line 414
    const-string v3, "http://api.ximalaya.com/openapi-gateway-app/categories/list"

    .line 380
    invoke-static {v0, v1, p0, v2, v3}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/OtpBaseCall;->doAsync(Lcom/squareup/okhttp/C;Lcom/ximalaya/ting/android/opensdk/httputil/IHttpCallBack;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    :goto_0
    return-void

    .line 375
    :catch_0
    move-exception v0

    .line 377
    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException;->getErrorCode()I

    move-result v1

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;->onError(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public static getCategoryBannerList(Ljava/util/Map;Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/banner/CategoryBannerList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1136
    :try_start_0
    const-string v0, "http://api.ximalaya.com/openapi-gateway-app/banners/category_banners"

    .line 1137
    invoke-static {p0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->CommonParams(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 1138
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getInstanse()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getAppsecret()Ljava/lang/String;

    move-result-object v2

    .line 1135
    invoke-static {v0, v1, v2}, Lcom/ximalaya/ting/android/opensdk/httputil/BaseBuilder;->urlGet(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/squareup/okhttp/D;

    move-result-object v0

    .line 1138
    invoke-virtual {v0}, Lcom/squareup/okhttp/D;->a()Lcom/squareup/okhttp/C;
    :try_end_0
    .catch Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1147
    new-instance v1, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest$15;

    invoke-direct {v1, p1}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest$15;-><init>(Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;)V

    .line 1178
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getInstanse()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getAppsecret()Ljava/lang/String;

    move-result-object v2

    .line 1179
    const-string v3, "http://api.ximalaya.com/openapi-gateway-app/banners/category_banners"

    .line 1145
    invoke-static {v0, v1, p0, v2, v3}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/OtpBaseCall;->doAsync(Lcom/squareup/okhttp/C;Lcom/ximalaya/ting/android/opensdk/httputil/IHttpCallBack;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 1180
    :goto_0
    return-void

    .line 1140
    :catch_0
    move-exception v0

    .line 1142
    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException;->getErrorCode()I

    move-result v1

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;->onError(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public static getColumnList(Ljava/util/Map;Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/column/ColumnList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1397
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getInstanse()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->setPageSize(Ljava/util/Map;)V

    .line 1400
    :try_start_0
    const-string v0, "http://api.ximalaya.com/openapi-gateway-app/column/quality_list"

    .line 1401
    invoke-static {p0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->CommonParams(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 1402
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getInstanse()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getAppsecret()Ljava/lang/String;

    move-result-object v2

    .line 1400
    invoke-static {v0, v1, v2}, Lcom/ximalaya/ting/android/opensdk/httputil/BaseBuilder;->urlGet(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/squareup/okhttp/D;

    move-result-object v0

    .line 1402
    invoke-virtual {v0}, Lcom/squareup/okhttp/D;->a()Lcom/squareup/okhttp/C;
    :try_end_0
    .catch Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1411
    new-instance v1, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest$20;

    invoke-direct {v1, p1}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest$20;-><init>(Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;)V

    .line 1439
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getInstanse()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getAppsecret()Ljava/lang/String;

    move-result-object v2

    .line 1440
    const-string v3, "http://api.ximalaya.com/openapi-gateway-app/column/quality_list"

    .line 1409
    invoke-static {v0, v1, p0, v2, v3}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/OtpBaseCall;->doAsync(Lcom/squareup/okhttp/C;Lcom/ximalaya/ting/android/opensdk/httputil/IHttpCallBack;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 1441
    :goto_0
    return-void

    .line 1404
    :catch_0
    move-exception v0

    .line 1406
    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException;->getErrorCode()I

    move-result v1

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;->onError(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public static getComlumnDetail(Ljava/util/Map;Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/column/ColumnDetail;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1449
    :try_start_0
    const-string v0, "http://api.ximalaya.com/openapi-gateway-app/column/detail"

    .line 1450
    invoke-static {p0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->CommonParams(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 1451
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getInstanse()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getAppsecret()Ljava/lang/String;

    move-result-object v2

    .line 1449
    invoke-static {v0, v1, v2}, Lcom/ximalaya/ting/android/opensdk/httputil/BaseBuilder;->urlGet(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/squareup/okhttp/D;

    move-result-object v0

    .line 1451
    invoke-virtual {v0}, Lcom/squareup/okhttp/D;->a()Lcom/squareup/okhttp/C;
    :try_end_0
    .catch Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1460
    new-instance v1, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest$21;

    invoke-direct {v1, p1}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest$21;-><init>(Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;)V

    .line 1516
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getInstanse()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getAppsecret()Ljava/lang/String;

    move-result-object v2

    .line 1517
    const-string v3, "http://api.ximalaya.com/openapi-gateway-app/column/detail"

    .line 1458
    invoke-static {v0, v1, p0, v2, v3}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/OtpBaseCall;->doAsync(Lcom/squareup/okhttp/C;Lcom/ximalaya/ting/android/opensdk/httputil/IHttpCallBack;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 1518
    :goto_0
    return-void

    .line 1453
    :catch_0
    move-exception v0

    .line 1455
    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException;->getErrorCode()I

    move-result v1

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;->onError(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public static getDiscoveryBannerList(Ljava/util/Map;Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/banner/DiscoveryBannerList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1082
    :try_start_0
    const-string v0, "http://api.ximalaya.com/openapi-gateway-app/banners/discovery_banners"

    .line 1083
    invoke-static {p0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->CommonParams(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 1084
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getInstanse()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getAppsecret()Ljava/lang/String;

    move-result-object v2

    .line 1081
    invoke-static {v0, v1, v2}, Lcom/ximalaya/ting/android/opensdk/httputil/BaseBuilder;->urlGet(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/squareup/okhttp/D;

    move-result-object v0

    .line 1084
    invoke-virtual {v0}, Lcom/squareup/okhttp/D;->a()Lcom/squareup/okhttp/C;
    :try_end_0
    .catch Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1093
    new-instance v1, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest$14;

    invoke-direct {v1, p1}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest$14;-><init>(Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;)V

    .line 1124
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getInstanse()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getAppsecret()Ljava/lang/String;

    move-result-object v2

    .line 1125
    const-string v3, "http://api.ximalaya.com/openapi-gateway-app/banners/discovery_banners"

    .line 1091
    invoke-static {v0, v1, p0, v2, v3}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/OtpBaseCall;->doAsync(Lcom/squareup/okhttp/C;Lcom/ximalaya/ting/android/opensdk/httputil/IHttpCallBack;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 1126
    :goto_0
    return-void

    .line 1086
    :catch_0
    move-exception v0

    .line 1088
    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException;->getErrorCode()I

    move-result v1

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;->onError(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public static getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 162
    sget-object v0, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static getHotAggregationList(Ljava/util/Map;Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/album/HotAggregationList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1888
    :try_start_0
    const-string v0, "http://api.ximalaya.com/openapi-gateway-app/albums/hot_aggregation"

    .line 1889
    invoke-static {p0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->CommonParams(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 1890
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getInstanse()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getAppsecret()Ljava/lang/String;

    move-result-object v2

    .line 1887
    invoke-static {v0, v1, v2}, Lcom/ximalaya/ting/android/opensdk/httputil/BaseBuilder;->urlGet(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/squareup/okhttp/D;

    move-result-object v0

    .line 1890
    invoke-virtual {v0}, Lcom/squareup/okhttp/D;->a()Lcom/squareup/okhttp/C;
    :try_end_0
    .catch Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1899
    new-instance v1, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest$29;

    invoke-direct {v1, p1}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest$29;-><init>(Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;)V

    .line 1930
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getInstanse()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getAppsecret()Ljava/lang/String;

    move-result-object v2

    .line 1931
    const-string v3, "http://api.ximalaya.com/openapi-gateway-app/albums/hot_aggregation"

    .line 1897
    invoke-static {v0, v1, p0, v2, v3}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/OtpBaseCall;->doAsync(Lcom/squareup/okhttp/C;Lcom/ximalaya/ting/android/opensdk/httputil/IHttpCallBack;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 1932
    :goto_0
    return-void

    .line 1892
    :catch_0
    move-exception v0

    .line 1894
    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException;->getErrorCode()I

    move-result v1

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;->onError(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public static getHotTracks(Ljava/util/Map;Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/track/TrackHotList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 743
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 744
    const-string v1, "track_base_url"

    sget-object v2, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest$UrlConstants;->TRACKHOTLIST:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 745
    invoke-interface {v0, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 746
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getInstanse()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->setPageSize(Ljava/util/Map;)V

    .line 750
    :try_start_0
    const-string v1, "http://api.ximalaya.com/openapi-gateway-app/tracks/hot"

    .line 751
    invoke-static {p0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->CommonParams(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    .line 752
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getInstanse()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getAppsecret()Ljava/lang/String;

    move-result-object v3

    .line 750
    invoke-static {v1, v2, v3}, Lcom/ximalaya/ting/android/opensdk/httputil/BaseBuilder;->urlGet(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/squareup/okhttp/D;

    move-result-object v1

    .line 752
    invoke-virtual {v1}, Lcom/squareup/okhttp/D;->a()Lcom/squareup/okhttp/C;
    :try_end_0
    .catch Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 762
    new-instance v2, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest$8;

    invoke-direct {v2, v0, p1}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest$8;-><init>(Ljava/util/Map;Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;)V

    .line 793
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getInstanse()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getAppsecret()Ljava/lang/String;

    move-result-object v0

    .line 794
    const-string v3, "http://api.ximalaya.com/openapi-gateway-app/tracks/hot"

    .line 760
    invoke-static {v1, v2, p0, v0, v3}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/OtpBaseCall;->doAsync(Lcom/squareup/okhttp/C;Lcom/ximalaya/ting/android/opensdk/httputil/IHttpCallBack;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    :goto_0
    return-void

    .line 754
    :catch_0
    move-exception v0

    .line 756
    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException;->getErrorCode()I

    move-result v1

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;->onError(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public static getHotWords(Ljava/util/Map;Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/word/HotWordList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 977
    :try_start_0
    const-string v0, "http://api.ximalaya.com/openapi-gateway-app/search/hot_words"

    .line 978
    invoke-static {p0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->CommonParams(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 979
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getInstanse()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getAppsecret()Ljava/lang/String;

    move-result-object v2

    .line 976
    invoke-static {v0, v1, v2}, Lcom/ximalaya/ting/android/opensdk/httputil/BaseBuilder;->urlGet(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/squareup/okhttp/D;

    move-result-object v0

    .line 979
    invoke-virtual {v0}, Lcom/squareup/okhttp/D;->a()Lcom/squareup/okhttp/C;
    :try_end_0
    .catch Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 988
    new-instance v1, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest$12;

    invoke-direct {v1, p1}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest$12;-><init>(Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;)V

    .line 1019
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getInstanse()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getAppsecret()Ljava/lang/String;

    move-result-object v2

    .line 1020
    const-string v3, "http://api.ximalaya.com/openapi-gateway-app/search/hot_words"

    .line 986
    invoke-static {v0, v1, p0, v2, v3}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/OtpBaseCall;->doAsync(Lcom/squareup/okhttp/C;Lcom/ximalaya/ting/android/opensdk/httputil/IHttpCallBack;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 1021
    :goto_0
    return-void

    .line 981
    :catch_0
    move-exception v0

    .line 983
    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException;->getErrorCode()I

    move-result v1

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;->onError(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public static getInstanse()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;
    .locals 2

    .prologue
    .line 139
    sget-object v0, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->singleton:Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    if-nez v0, :cond_1

    .line 141
    const-class v1, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    monitor-enter v1

    .line 143
    :try_start_0
    sget-object v0, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->singleton:Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    if-nez v0, :cond_0

    .line 145
    new-instance v0, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    invoke-direct {v0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;-><init>()V

    sput-object v0, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->singleton:Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    .line 141
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    :cond_1
    sget-object v0, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->singleton:Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    return-object v0

    .line 141
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static getLastPlayTracks(Ljava/util/Map;Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/track/LastPlayTrackList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 852
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 853
    const-string v1, "track_base_url"

    sget-object v2, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest$UrlConstants;->TRACKLIST:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 854
    invoke-interface {v0, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 855
    const-string v1, "pid"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 856
    const-string v1, "track_id"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 857
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getInstanse()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->setPageSize(Ljava/util/Map;)V

    .line 862
    :try_start_0
    const-string v1, "http://api.ximalaya.com/openapi-gateway-app/tracks/get_last_play_tracks"

    .line 863
    invoke-static {p0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->CommonParams(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    .line 864
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getInstanse()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getAppsecret()Ljava/lang/String;

    move-result-object v3

    .line 861
    invoke-static {v1, v2, v3}, Lcom/ximalaya/ting/android/opensdk/httputil/BaseBuilder;->urlGet(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/squareup/okhttp/D;

    move-result-object v1

    .line 864
    invoke-virtual {v1}, Lcom/squareup/okhttp/D;->a()Lcom/squareup/okhttp/C;
    :try_end_0
    .catch Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 874
    new-instance v2, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest$10;

    invoke-direct {v2, v0, p1}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest$10;-><init>(Ljava/util/Map;Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;)V

    .line 907
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getInstanse()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getAppsecret()Ljava/lang/String;

    move-result-object v0

    .line 908
    const-string v3, "http://api.ximalaya.com/openapi-gateway-app/tracks/get_last_play_tracks"

    .line 872
    invoke-static {v1, v2, p0, v0, v3}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/OtpBaseCall;->doAsync(Lcom/squareup/okhttp/C;Lcom/ximalaya/ting/android/opensdk/httputil/IHttpCallBack;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 909
    :goto_0
    return-void

    .line 866
    :catch_0
    move-exception v0

    .line 868
    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException;->getErrorCode()I

    move-result v1

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;->onError(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public static getProgram(Ljava/util/Map;Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/live/program/ProgramList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2145
    :try_start_0
    const-string v0, "http://api.ximalaya.com/openapi-gateway-app/live/get_playing_program"

    .line 2146
    invoke-static {p0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->CommonParams(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 2147
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getInstanse()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getAppsecret()Ljava/lang/String;

    move-result-object v2

    .line 2144
    invoke-static {v0, v1, v2}, Lcom/ximalaya/ting/android/opensdk/httputil/BaseBuilder;->urlGet(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/squareup/okhttp/D;

    move-result-object v0

    .line 2147
    invoke-virtual {v0}, Lcom/squareup/okhttp/D;->a()Lcom/squareup/okhttp/C;
    :try_end_0
    .catch Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2156
    new-instance v1, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest$34;

    invoke-direct {v1, p1}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest$34;-><init>(Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;)V

    .line 2187
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getInstanse()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getAppsecret()Ljava/lang/String;

    move-result-object v2

    .line 2188
    const-string v3, "http://api.ximalaya.com/openapi-gateway-app/live/get_playing_program"

    .line 2154
    invoke-static {v0, v1, p0, v2, v3}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/OtpBaseCall;->doAsync(Lcom/squareup/okhttp/C;Lcom/ximalaya/ting/android/opensdk/httputil/IHttpCallBack;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 2189
    :goto_0
    return-void

    .line 2149
    :catch_0
    move-exception v0

    .line 2151
    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException;->getErrorCode()I

    move-result v1

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;->onError(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public static getProvinces(Ljava/util/Map;Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/live/provinces/ProvinceList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1993
    :try_start_0
    const-string v0, "http://api.ximalaya.com/openapi-gateway-app/live/provinces"

    .line 1994
    invoke-static {p0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->CommonParams(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 1995
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getInstanse()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getAppsecret()Ljava/lang/String;

    move-result-object v2

    .line 1992
    invoke-static {v0, v1, v2}, Lcom/ximalaya/ting/android/opensdk/httputil/BaseBuilder;->urlGet(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/squareup/okhttp/D;

    move-result-object v0

    .line 1995
    invoke-virtual {v0}, Lcom/squareup/okhttp/D;->a()Lcom/squareup/okhttp/C;
    :try_end_0
    .catch Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2004
    new-instance v1, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest$31;

    invoke-direct {v1, p1}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest$31;-><init>(Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;)V

    .line 2032
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getInstanse()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getAppsecret()Ljava/lang/String;

    move-result-object v2

    .line 2033
    const-string v3, "http://api.ximalaya.com/openapi-gateway-app/live/provinces"

    .line 2002
    invoke-static {v0, v1, p0, v2, v3}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/OtpBaseCall;->doAsync(Lcom/squareup/okhttp/C;Lcom/ximalaya/ting/android/opensdk/httputil/IHttpCallBack;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 2034
    :goto_0
    return-void

    .line 1997
    :catch_0
    move-exception v0

    .line 1999
    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException;->getErrorCode()I

    move-result v1

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;->onError(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public static getRadios(Ljava/util/Map;Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/live/radio/RadioList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2042
    :try_start_0
    const-string v0, "http://api.ximalaya.com/openapi-gateway-app/live/radios"

    .line 2043
    invoke-static {p0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->CommonParams(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 2044
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getInstanse()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getAppsecret()Ljava/lang/String;

    move-result-object v2

    .line 2042
    invoke-static {v0, v1, v2}, Lcom/ximalaya/ting/android/opensdk/httputil/BaseBuilder;->urlGet(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/squareup/okhttp/D;

    move-result-object v0

    .line 2044
    invoke-virtual {v0}, Lcom/squareup/okhttp/D;->a()Lcom/squareup/okhttp/C;
    :try_end_0
    .catch Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2053
    new-instance v1, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest$32;

    invoke-direct {v1, p1}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest$32;-><init>(Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;)V

    .line 2081
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getInstanse()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getAppsecret()Ljava/lang/String;

    move-result-object v2

    .line 2082
    const-string v3, "http://api.ximalaya.com/openapi-gateway-app/live/radios"

    .line 2051
    invoke-static {v0, v1, p0, v2, v3}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/OtpBaseCall;->doAsync(Lcom/squareup/okhttp/C;Lcom/ximalaya/ting/android/opensdk/httputil/IHttpCallBack;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 2083
    :goto_0
    return-void

    .line 2046
    :catch_0
    move-exception v0

    .line 2048
    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException;->getErrorCode()I

    move-result v1

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;->onError(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public static getRankAlbumList(Ljava/util/Map;Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/ranks/RankAlbumList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1576
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getInstanse()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->setPageSize(Ljava/util/Map;)V

    .line 1579
    :try_start_0
    const-string v0, "http://api.ximalaya.com/openapi-gateway-app/ranks/albums"

    .line 1580
    invoke-static {p0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->CommonParams(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 1581
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getInstanse()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getAppsecret()Ljava/lang/String;

    move-result-object v2

    .line 1579
    invoke-static {v0, v1, v2}, Lcom/ximalaya/ting/android/opensdk/httputil/BaseBuilder;->urlGet(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/squareup/okhttp/D;

    move-result-object v0

    .line 1581
    invoke-virtual {v0}, Lcom/squareup/okhttp/D;->a()Lcom/squareup/okhttp/C;
    :try_end_0
    .catch Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1590
    new-instance v1, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest$23;

    invoke-direct {v1, p1}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest$23;-><init>(Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;)V

    .line 1618
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getInstanse()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getAppsecret()Ljava/lang/String;

    move-result-object v2

    .line 1619
    const-string v3, "http://api.ximalaya.com/openapi-gateway-app/ranks/albums"

    .line 1588
    invoke-static {v0, v1, p0, v2, v3}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/OtpBaseCall;->doAsync(Lcom/squareup/okhttp/C;Lcom/ximalaya/ting/android/opensdk/httputil/IHttpCallBack;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 1620
    :goto_0
    return-void

    .line 1583
    :catch_0
    move-exception v0

    .line 1585
    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException;->getErrorCode()I

    move-result v1

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;->onError(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public static getRankBannerList(Ljava/util/Map;Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/banner/RankBannerList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1189
    :try_start_0
    const-string v0, "http://api.ximalaya.com/openapi-gateway-app/banners/rank_banners"

    .line 1190
    invoke-static {p0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->CommonParams(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 1191
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getInstanse()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getAppsecret()Ljava/lang/String;

    move-result-object v2

    .line 1188
    invoke-static {v0, v1, v2}, Lcom/ximalaya/ting/android/opensdk/httputil/BaseBuilder;->urlGet(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/squareup/okhttp/D;

    move-result-object v0

    .line 1191
    invoke-virtual {v0}, Lcom/squareup/okhttp/D;->a()Lcom/squareup/okhttp/C;
    :try_end_0
    .catch Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1200
    new-instance v1, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest$16;

    invoke-direct {v1, p1}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest$16;-><init>(Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;)V

    .line 1231
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getInstanse()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getAppsecret()Ljava/lang/String;

    move-result-object v2

    .line 1232
    const-string v3, "http://api.ximalaya.com/openapi-gateway-app/banners/rank_banners"

    .line 1198
    invoke-static {v0, v1, p0, v2, v3}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/OtpBaseCall;->doAsync(Lcom/squareup/okhttp/C;Lcom/ximalaya/ting/android/opensdk/httputil/IHttpCallBack;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 1233
    :goto_0
    return-void

    .line 1193
    :catch_0
    move-exception v0

    .line 1195
    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException;->getErrorCode()I

    move-result v1

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;->onError(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public static getRankList(Ljava/util/Map;Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/ranks/RankList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1526
    :try_start_0
    const-string v0, "http://api.ximalaya.com/openapi-gateway-app/ranks/index_list"

    .line 1527
    invoke-static {p0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->CommonParams(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 1528
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getInstanse()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getAppsecret()Ljava/lang/String;

    move-result-object v2

    .line 1526
    invoke-static {v0, v1, v2}, Lcom/ximalaya/ting/android/opensdk/httputil/BaseBuilder;->urlGet(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/squareup/okhttp/D;

    move-result-object v0

    .line 1528
    invoke-virtual {v0}, Lcom/squareup/okhttp/D;->a()Lcom/squareup/okhttp/C;
    :try_end_0
    .catch Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1537
    new-instance v1, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest$22;

    invoke-direct {v1, p1}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest$22;-><init>(Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;)V

    .line 1568
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getInstanse()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getAppsecret()Ljava/lang/String;

    move-result-object v2

    .line 1569
    const-string v3, "http://api.ximalaya.com/openapi-gateway-app/ranks/index_list"

    .line 1535
    invoke-static {v0, v1, p0, v2, v3}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/OtpBaseCall;->doAsync(Lcom/squareup/okhttp/C;Lcom/ximalaya/ting/android/opensdk/httputil/IHttpCallBack;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 1570
    :goto_0
    return-void

    .line 1530
    :catch_0
    move-exception v0

    .line 1532
    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException;->getErrorCode()I

    move-result v1

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;->onError(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public static getRankRadios(Ljava/util/Map;Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/live/radio/RadioList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1681
    :try_start_0
    const-string v0, "http://api.ximalaya.com/openapi-gateway-app/ranks/radios"

    .line 1682
    invoke-static {p0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->CommonParams(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 1683
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getInstanse()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getAppsecret()Ljava/lang/String;

    move-result-object v2

    .line 1680
    invoke-static {v0, v1, v2}, Lcom/ximalaya/ting/android/opensdk/httputil/BaseBuilder;->urlGet(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/squareup/okhttp/D;

    move-result-object v0

    .line 1683
    invoke-virtual {v0}, Lcom/squareup/okhttp/D;->a()Lcom/squareup/okhttp/C;
    :try_end_0
    .catch Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1692
    new-instance v1, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest$25;

    invoke-direct {v1, p1}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest$25;-><init>(Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;)V

    .line 1723
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getInstanse()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getAppsecret()Ljava/lang/String;

    move-result-object v2

    .line 1724
    const-string v3, "http://api.ximalaya.com/openapi-gateway-app/ranks/radios"

    .line 1690
    invoke-static {v0, v1, p0, v2, v3}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/OtpBaseCall;->doAsync(Lcom/squareup/okhttp/C;Lcom/ximalaya/ting/android/opensdk/httputil/IHttpCallBack;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 1725
    :goto_0
    return-void

    .line 1685
    :catch_0
    move-exception v0

    .line 1687
    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException;->getErrorCode()I

    move-result v1

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;->onError(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public static getRankTrackList(Ljava/util/Map;Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/ranks/RankTrackList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1626
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getInstanse()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->setPageSize(Ljava/util/Map;)V

    .line 1629
    :try_start_0
    const-string v0, "http://api.ximalaya.com/openapi-gateway-app/ranks/tracks"

    .line 1630
    invoke-static {p0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->CommonParams(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 1631
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getInstanse()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getAppsecret()Ljava/lang/String;

    move-result-object v2

    .line 1629
    invoke-static {v0, v1, v2}, Lcom/ximalaya/ting/android/opensdk/httputil/BaseBuilder;->urlGet(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/squareup/okhttp/D;

    move-result-object v0

    .line 1631
    invoke-virtual {v0}, Lcom/squareup/okhttp/D;->a()Lcom/squareup/okhttp/C;
    :try_end_0
    .catch Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1640
    new-instance v1, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest$24;

    invoke-direct {v1, p1}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest$24;-><init>(Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;)V

    .line 1668
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getInstanse()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getAppsecret()Ljava/lang/String;

    move-result-object v2

    .line 1669
    const-string v3, "http://api.ximalaya.com/openapi-gateway-app/ranks/tracks"

    .line 1638
    invoke-static {v0, v1, p0, v2, v3}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/OtpBaseCall;->doAsync(Lcom/squareup/okhttp/C;Lcom/ximalaya/ting/android/opensdk/httputil/IHttpCallBack;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 1670
    :goto_0
    return-void

    .line 1633
    :catch_0
    move-exception v0

    .line 1635
    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException;->getErrorCode()I

    move-result v1

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;->onError(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public static getRecommendAlbum(Ljava/util/Map;Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/album/HumanRecommendAlbumList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1239
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getInstanse()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->setPageSize(Ljava/util/Map;)V

    .line 1243
    :try_start_0
    const-string v0, "http://api.ximalaya.com/openapi-gateway-app/albums/human_recommend"

    .line 1244
    invoke-static {p0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->CommonParams(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 1245
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getInstanse()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getAppsecret()Ljava/lang/String;

    move-result-object v2

    .line 1242
    invoke-static {v0, v1, v2}, Lcom/ximalaya/ting/android/opensdk/httputil/BaseBuilder;->urlGet(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/squareup/okhttp/D;

    move-result-object v0

    .line 1245
    invoke-virtual {v0}, Lcom/squareup/okhttp/D;->a()Lcom/squareup/okhttp/C;
    :try_end_0
    .catch Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1254
    new-instance v1, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest$17;

    invoke-direct {v1, p1}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest$17;-><init>(Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;)V

    .line 1285
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getInstanse()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getAppsecret()Ljava/lang/String;

    move-result-object v2

    .line 1286
    const-string v3, "http://api.ximalaya.com/openapi-gateway-app/albums/human_recommend"

    .line 1252
    invoke-static {v0, v1, p0, v2, v3}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/OtpBaseCall;->doAsync(Lcom/squareup/okhttp/C;Lcom/ximalaya/ting/android/opensdk/httputil/IHttpCallBack;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 1287
    :goto_0
    return-void

    .line 1247
    :catch_0
    move-exception v0

    .line 1249
    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException;->getErrorCode()I

    move-result v1

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;->onError(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public static getRecommendCategory(Ljava/util/Map;Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/category/HumanRecommendCategoryList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1296
    :try_start_0
    const-string v0, "http://api.ximalaya.com/openapi-gateway-app/categories/human_recommend"

    .line 1297
    invoke-static {p0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->CommonParams(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 1298
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getInstanse()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getAppsecret()Ljava/lang/String;

    move-result-object v2

    .line 1295
    invoke-static {v0, v1, v2}, Lcom/ximalaya/ting/android/opensdk/httputil/BaseBuilder;->urlGet(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/squareup/okhttp/D;

    move-result-object v0

    .line 1298
    invoke-virtual {v0}, Lcom/squareup/okhttp/D;->a()Lcom/squareup/okhttp/C;
    :try_end_0
    .catch Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1307
    new-instance v1, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest$18;

    invoke-direct {v1, p1}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest$18;-><init>(Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;)V

    .line 1338
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getInstanse()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getAppsecret()Ljava/lang/String;

    move-result-object v2

    .line 1339
    const-string v3, "http://api.ximalaya.com/openapi-gateway-app/categories/human_recommend"

    .line 1305
    invoke-static {v0, v1, p0, v2, v3}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/OtpBaseCall;->doAsync(Lcom/squareup/okhttp/C;Lcom/ximalaya/ting/android/opensdk/httputil/IHttpCallBack;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 1340
    :goto_0
    return-void

    .line 1300
    :catch_0
    move-exception v0

    .line 1302
    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException;->getErrorCode()I

    move-result v1

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;->onError(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public static getRecommendDownloadList(Ljava/util/Map;Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/download/RecommendDownload;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1939
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getInstanse()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->setPageSize(Ljava/util/Map;)V

    .line 1943
    :try_start_0
    const-string v0, "http://api.ximalaya.com/openapi-gateway-app/albums/recommend_download"

    .line 1944
    invoke-static {p0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->CommonParams(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 1945
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getInstanse()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getAppsecret()Ljava/lang/String;

    move-result-object v2

    .line 1942
    invoke-static {v0, v1, v2}, Lcom/ximalaya/ting/android/opensdk/httputil/BaseBuilder;->urlGet(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/squareup/okhttp/D;

    move-result-object v0

    .line 1945
    invoke-virtual {v0}, Lcom/squareup/okhttp/D;->a()Lcom/squareup/okhttp/C;
    :try_end_0
    .catch Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1954
    new-instance v1, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest$30;

    invoke-direct {v1, p1}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest$30;-><init>(Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;)V

    .line 1982
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getInstanse()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getAppsecret()Ljava/lang/String;

    move-result-object v2

    .line 1983
    const-string v3, "http://api.ximalaya.com/openapi-gateway-app/albums/recommend_download"

    .line 1952
    invoke-static {v0, v1, p0, v2, v3}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/OtpBaseCall;->doAsync(Lcom/squareup/okhttp/C;Lcom/ximalaya/ting/android/opensdk/httputil/IHttpCallBack;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 1984
    :goto_0
    return-void

    .line 1947
    :catch_0
    move-exception v0

    .line 1949
    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException;->getErrorCode()I

    move-result v1

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;->onError(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public static getRelativeAlbums(Ljava/util/Map;Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/album/RelativeAlbums;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1785
    :try_start_0
    const-string v0, "http://api.ximalaya.com/openapi-gateway-app/albums/relative_album"

    .line 1786
    invoke-static {p0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->CommonParams(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 1787
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getInstanse()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getAppsecret()Ljava/lang/String;

    move-result-object v2

    .line 1784
    invoke-static {v0, v1, v2}, Lcom/ximalaya/ting/android/opensdk/httputil/BaseBuilder;->urlGet(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/squareup/okhttp/D;

    move-result-object v0

    .line 1787
    invoke-virtual {v0}, Lcom/squareup/okhttp/D;->a()Lcom/squareup/okhttp/C;
    :try_end_0
    .catch Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1796
    new-instance v1, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest$27;

    invoke-direct {v1, p1}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest$27;-><init>(Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;)V

    .line 1824
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getInstanse()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getAppsecret()Ljava/lang/String;

    move-result-object v2

    .line 1825
    const-string v3, "http://api.ximalaya.com/openapi-gateway-app/albums/relative_album"

    .line 1794
    invoke-static {v0, v1, p0, v2, v3}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/OtpBaseCall;->doAsync(Lcom/squareup/okhttp/C;Lcom/ximalaya/ting/android/opensdk/httputil/IHttpCallBack;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 1826
    :goto_0
    return-void

    .line 1789
    :catch_0
    move-exception v0

    .line 1791
    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException;->getErrorCode()I

    move-result v1

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;->onError(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public static getRelativeAlbumsUseTrackId(Ljava/util/Map;Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/album/RelativeAlbums;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1735
    :try_start_0
    const-string v0, "http://api.ximalaya.com/openapi-gateway-app/tracks/relative_album"

    .line 1736
    invoke-static {p0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->CommonParams(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 1737
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getInstanse()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getAppsecret()Ljava/lang/String;

    move-result-object v2

    .line 1734
    invoke-static {v0, v1, v2}, Lcom/ximalaya/ting/android/opensdk/httputil/BaseBuilder;->urlGet(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/squareup/okhttp/D;

    move-result-object v0

    .line 1737
    invoke-virtual {v0}, Lcom/squareup/okhttp/D;->a()Lcom/squareup/okhttp/C;
    :try_end_0
    .catch Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1746
    new-instance v1, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest$26;

    invoke-direct {v1, p1}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest$26;-><init>(Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;)V

    .line 1774
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getInstanse()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getAppsecret()Ljava/lang/String;

    move-result-object v2

    .line 1775
    const-string v3, "http://api.ximalaya.com/openapi-gateway-app/tracks/relative_album"

    .line 1744
    invoke-static {v0, v1, p0, v2, v3}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/OtpBaseCall;->doAsync(Lcom/squareup/okhttp/C;Lcom/ximalaya/ting/android/opensdk/httputil/IHttpCallBack;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 1776
    :goto_0
    return-void

    .line 1739
    :catch_0
    move-exception v0

    .line 1741
    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException;->getErrorCode()I

    move-result v1

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;->onError(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public static getSchedules(Ljava/util/Map;Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/live/schedule/ScheduleList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2092
    :try_start_0
    const-string v0, "http://api.ximalaya.com/openapi-gateway-app/live/schedules"

    .line 2093
    invoke-static {p0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->CommonParams(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 2094
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getInstanse()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getAppsecret()Ljava/lang/String;

    move-result-object v2

    .line 2091
    invoke-static {v0, v1, v2}, Lcom/ximalaya/ting/android/opensdk/httputil/BaseBuilder;->urlGet(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/squareup/okhttp/D;

    move-result-object v0

    .line 2094
    invoke-virtual {v0}, Lcom/squareup/okhttp/D;->a()Lcom/squareup/okhttp/C;
    :try_end_0
    .catch Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2103
    new-instance v1, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest$33;

    invoke-direct {v1, p1}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest$33;-><init>(Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;)V

    .line 2134
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getInstanse()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getAppsecret()Ljava/lang/String;

    move-result-object v2

    .line 2135
    const-string v3, "http://api.ximalaya.com/openapi-gateway-app/live/schedules"

    .line 2101
    invoke-static {v0, v1, p0, v2, v3}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/OtpBaseCall;->doAsync(Lcom/squareup/okhttp/C;Lcom/ximalaya/ting/android/opensdk/httputil/IHttpCallBack;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 2136
    :goto_0
    return-void

    .line 2096
    :catch_0
    move-exception v0

    .line 2098
    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException;->getErrorCode()I

    move-result v1

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;->onError(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public static getSearchedAlbums(Ljava/util/Map;Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/album/SearchAlbumList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 474
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getInstanse()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->setPageSize(Ljava/util/Map;)V

    .line 478
    :try_start_0
    const-string v0, "http://api.ximalaya.com/openapi-gateway-app/search/albums"

    .line 479
    invoke-static {p0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->CommonParams(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 480
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getInstanse()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getAppsecret()Ljava/lang/String;

    move-result-object v2

    .line 477
    invoke-static {v0, v1, v2}, Lcom/ximalaya/ting/android/opensdk/httputil/BaseBuilder;->urlGet(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/squareup/okhttp/D;

    move-result-object v0

    .line 480
    invoke-virtual {v0}, Lcom/squareup/okhttp/D;->a()Lcom/squareup/okhttp/C;
    :try_end_0
    .catch Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 489
    new-instance v1, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest$3;

    invoke-direct {v1, p1}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest$3;-><init>(Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;)V

    .line 517
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getInstanse()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getAppsecret()Ljava/lang/String;

    move-result-object v2

    .line 518
    const-string v3, "http://api.ximalaya.com/openapi-gateway-app/search/albums"

    .line 487
    invoke-static {v0, v1, p0, v2, v3}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/OtpBaseCall;->doAsync(Lcom/squareup/okhttp/C;Lcom/ximalaya/ting/android/opensdk/httputil/IHttpCallBack;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    :goto_0
    return-void

    .line 482
    :catch_0
    move-exception v0

    .line 484
    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException;->getErrorCode()I

    move-result v1

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;->onError(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public static getSearchedRadios(Ljava/util/Map;Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/live/radio/RadioList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 590
    :try_start_0
    const-string v0, "http://api.ximalaya.com/openapi-gateway-app/search/radios"

    .line 591
    invoke-static {p0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->CommonParams(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 592
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getInstanse()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getAppsecret()Ljava/lang/String;

    move-result-object v2

    .line 589
    invoke-static {v0, v1, v2}, Lcom/ximalaya/ting/android/opensdk/httputil/BaseBuilder;->urlGet(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/squareup/okhttp/D;

    move-result-object v0

    .line 592
    invoke-virtual {v0}, Lcom/squareup/okhttp/D;->a()Lcom/squareup/okhttp/C;
    :try_end_0
    .catch Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 601
    new-instance v1, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest$5;

    invoke-direct {v1, p1}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest$5;-><init>(Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;)V

    .line 629
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getInstanse()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getAppsecret()Ljava/lang/String;

    move-result-object v2

    .line 630
    const-string v3, "http://api.ximalaya.com/openapi-gateway-app/search/radios"

    .line 599
    invoke-static {v0, v1, p0, v2, v3}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/OtpBaseCall;->doAsync(Lcom/squareup/okhttp/C;Lcom/ximalaya/ting/android/opensdk/httputil/IHttpCallBack;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    :goto_0
    return-void

    .line 594
    :catch_0
    move-exception v0

    .line 596
    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException;->getErrorCode()I

    move-result v1

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;->onError(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public static getSearchedTracks(Ljava/util/Map;Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/track/SearchTrackList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 525
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 526
    const-string v1, "track_base_url"

    .line 527
    sget-object v2, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest$UrlConstants;->SEARCHTRACKLIST:Ljava/lang/String;

    .line 526
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    invoke-interface {v0, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 529
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getInstanse()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->setPageSize(Ljava/util/Map;)V

    .line 534
    :try_start_0
    const-string v1, "http://api.ximalaya.com/openapi-gateway-app/search/tracks"

    .line 535
    invoke-static {p0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->CommonParams(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    .line 536
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getInstanse()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getAppsecret()Ljava/lang/String;

    move-result-object v3

    .line 533
    invoke-static {v1, v2, v3}, Lcom/ximalaya/ting/android/opensdk/httputil/BaseBuilder;->urlGet(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/squareup/okhttp/D;

    move-result-object v1

    .line 536
    invoke-virtual {v1}, Lcom/squareup/okhttp/D;->a()Lcom/squareup/okhttp/C;
    :try_end_0
    .catch Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 546
    new-instance v2, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest$4;

    invoke-direct {v2, v0, p1}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest$4;-><init>(Ljava/util/Map;Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;)V

    .line 578
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getInstanse()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getAppsecret()Ljava/lang/String;

    move-result-object v0

    .line 579
    const-string v3, "http://api.ximalaya.com/openapi-gateway-app/search/tracks"

    .line 544
    invoke-static {v1, v2, p0, v0, v3}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/OtpBaseCall;->doAsync(Lcom/squareup/okhttp/C;Lcom/ximalaya/ting/android/opensdk/httputil/IHttpCallBack;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    :goto_0
    return-void

    .line 538
    :catch_0
    move-exception v0

    .line 540
    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException;->getErrorCode()I

    move-result v1

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;->onError(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public static getSuggestWord(Ljava/util/Map;Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/word/SuggestWords;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1030
    :try_start_0
    const-string v0, "http://api.ximalaya.com/openapi-gateway-app/search/suggest_words"

    .line 1031
    invoke-static {p0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->CommonParams(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 1032
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getInstanse()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getAppsecret()Ljava/lang/String;

    move-result-object v2

    .line 1029
    invoke-static {v0, v1, v2}, Lcom/ximalaya/ting/android/opensdk/httputil/BaseBuilder;->urlGet(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/squareup/okhttp/D;

    move-result-object v0

    .line 1032
    invoke-virtual {v0}, Lcom/squareup/okhttp/D;->a()Lcom/squareup/okhttp/C;
    :try_end_0
    .catch Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1042
    new-instance v1, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest$13;

    invoke-direct {v1, p1}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest$13;-><init>(Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;)V

    .line 1070
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getInstanse()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getAppsecret()Ljava/lang/String;

    move-result-object v2

    .line 1071
    const-string v3, "http://api.ximalaya.com/openapi-gateway-app/search/suggest_words"

    .line 1040
    invoke-static {v0, v1, p0, v2, v3}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/OtpBaseCall;->doAsync(Lcom/squareup/okhttp/C;Lcom/ximalaya/ting/android/opensdk/httputil/IHttpCallBack;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 1072
    :goto_0
    return-void

    .line 1034
    :catch_0
    move-exception v0

    .line 1036
    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException;->getErrorCode()I

    move-result v1

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;->onError(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public static getTags(Ljava/util/Map;Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/tag/TagList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1834
    :try_start_0
    const-string v0, "http://api.ximalaya.com/openapi-gateway-app/tags/list"

    .line 1835
    invoke-static {p0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->CommonParams(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 1836
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getInstanse()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getAppsecret()Ljava/lang/String;

    move-result-object v2

    .line 1834
    invoke-static {v0, v1, v2}, Lcom/ximalaya/ting/android/opensdk/httputil/BaseBuilder;->urlGet(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/squareup/okhttp/D;

    move-result-object v0

    .line 1836
    invoke-virtual {v0}, Lcom/squareup/okhttp/D;->a()Lcom/squareup/okhttp/C;
    :try_end_0
    .catch Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1845
    new-instance v1, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest$28;

    invoke-direct {v1, p1}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest$28;-><init>(Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;)V

    .line 1876
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getInstanse()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getAppsecret()Ljava/lang/String;

    move-result-object v2

    .line 1877
    const-string v3, "http://api.ximalaya.com/openapi-gateway-app/tags/list"

    .line 1843
    invoke-static {v0, v1, p0, v2, v3}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/OtpBaseCall;->doAsync(Lcom/squareup/okhttp/C;Lcom/ximalaya/ting/android/opensdk/httputil/IHttpCallBack;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 1878
    :goto_0
    return-void

    .line 1838
    :catch_0
    move-exception v0

    .line 1840
    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException;->getErrorCode()I

    move-result v1

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;->onError(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public static getTrackList(Ljava/util/Map;Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2366
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2367
    invoke-interface {v1, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 2368
    const-string v0, "track_base_url"

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2369
    const-string v2, "total_page"

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2374
    :try_start_0
    invoke-static {v1}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->CommonParams(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    .line 2375
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getInstanse()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getAppsecret()Ljava/lang/String;

    move-result-object v3

    .line 2374
    invoke-static {v0, v2, v3}, Lcom/ximalaya/ting/android/opensdk/httputil/BaseBuilder;->urlGet(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/squareup/okhttp/D;

    move-result-object v2

    .line 2375
    invoke-virtual {v2}, Lcom/squareup/okhttp/D;->a()Lcom/squareup/okhttp/C;
    :try_end_0
    .catch Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 2382
    new-instance v3, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest$37;

    invoke-direct {v3, p1}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest$37;-><init>(Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;)V

    .line 2408
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getInstanse()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getAppsecret()Ljava/lang/String;

    move-result-object v4

    .line 2382
    invoke-static {v2, v3, v1, v4, v0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/OtpBaseCall;->doAsync(Lcom/squareup/okhttp/C;Lcom/ximalaya/ting/android/opensdk/httputil/IHttpCallBack;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 2409
    :goto_0
    return-void

    .line 2377
    :catch_0
    move-exception v0

    .line 2379
    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException;->getErrorCode()I

    move-result v1

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;->onError(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public static getTracks(Ljava/util/Map;Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/track/TrackList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 915
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 916
    const-string v1, "track_base_url"

    sget-object v2, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest$UrlConstants;->TRACKLIST:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 917
    invoke-interface {v0, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 918
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getInstanse()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->setPageSize(Ljava/util/Map;)V

    .line 923
    :try_start_0
    const-string v1, "http://api.ximalaya.com/openapi-gateway-app/albums/browse"

    .line 924
    invoke-static {p0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->CommonParams(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    .line 925
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getInstanse()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getAppsecret()Ljava/lang/String;

    move-result-object v3

    .line 923
    invoke-static {v1, v2, v3}, Lcom/ximalaya/ting/android/opensdk/httputil/BaseBuilder;->urlGet(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/squareup/okhttp/D;

    move-result-object v1

    .line 925
    invoke-virtual {v1}, Lcom/squareup/okhttp/D;->a()Lcom/squareup/okhttp/C;
    :try_end_0
    .catch Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 935
    new-instance v2, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest$11;

    invoke-direct {v2, v0, p1}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest$11;-><init>(Ljava/util/Map;Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;)V

    .line 966
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getInstanse()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getAppsecret()Ljava/lang/String;

    move-result-object v0

    .line 967
    const-string v3, "http://api.ximalaya.com/openapi-gateway-app/albums/browse"

    .line 933
    invoke-static {v1, v2, p0, v0, v3}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/OtpBaseCall;->doAsync(Lcom/squareup/okhttp/C;Lcom/ximalaya/ting/android/opensdk/httputil/IHttpCallBack;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 968
    :goto_0
    return-void

    .line 927
    :catch_0
    move-exception v0

    .line 929
    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException;->getErrorCode()I

    move-result v1

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;->onError(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public static getUpdateBatch(Ljava/util/Map;Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/album/UpdateBatchList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 424
    :try_start_0
    const-string v0, "http://api.ximalaya.com/openapi-gateway-app/albums/get_update_batch"

    .line 425
    invoke-static {p0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->CommonParams(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 426
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getInstanse()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getAppsecret()Ljava/lang/String;

    move-result-object v2

    .line 424
    invoke-static {v0, v1, v2}, Lcom/ximalaya/ting/android/opensdk/httputil/BaseBuilder;->urlGet(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/squareup/okhttp/D;

    move-result-object v0

    .line 426
    invoke-virtual {v0}, Lcom/squareup/okhttp/D;->a()Lcom/squareup/okhttp/C;
    :try_end_0
    .catch Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 435
    new-instance v1, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest$2;

    invoke-direct {v1, p1}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest$2;-><init>(Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;)V

    .line 466
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getInstanse()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getAppsecret()Ljava/lang/String;

    move-result-object v2

    .line 467
    const-string v3, "http://api.ximalaya.com/openapi-gateway-app/albums/get_update_batch"

    .line 433
    invoke-static {v0, v1, p0, v2, v3}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/OtpBaseCall;->doAsync(Lcom/squareup/okhttp/C;Lcom/ximalaya/ting/android/opensdk/httputil/IHttpCallBack;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    :goto_0
    return-void

    .line 428
    :catch_0
    move-exception v0

    .line 430
    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException;->getErrorCode()I

    move-result v1

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;->onError(ILjava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public assembleCommonParams()Ljava/util/Map;
    .locals 3
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

    .prologue
    .line 324
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 325
    const-string v1, "app_key"

    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getInstanse()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    move-result-object v2

    .line 326
    invoke-virtual {v2}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getAppKey()Ljava/lang/String;

    move-result-object v2

    .line 325
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    const-string v1, "device_id"

    invoke-virtual {p0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    const-string v1, "pack_id"

    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getInstanse()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    move-result-object v2

    .line 329
    invoke-virtual {v2}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getPackId()Ljava/lang/String;

    move-result-object v2

    .line 328
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    const-string v1, "sdk_version"

    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getInstanse()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    move-result-object v2

    .line 331
    invoke-virtual {v2}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getSdkVersion()Ljava/lang/String;

    move-result-object v2

    .line 330
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    const-string v1, "client_os_type"

    .line 333
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getInstanse()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getClientOsType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 332
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    return-object v0
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 351
    const/4 v0, 0x0

    sput-object v0, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->singleton:Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    .line 352
    return-void
.end method

.method public getAppKey()Ljava/lang/String;
    .locals 3

    .prologue
    .line 181
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->mAppkey:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    :try_start_0
    invoke-direct {p0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getAplication()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 187
    invoke-direct {p0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getAplication()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 188
    const/16 v2, 0x80

    .line 187
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 189
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "app_key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->mAppkey:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->mAppkey:Ljava/lang/String;

    return-object v0

    .line 193
    :catch_0
    move-exception v0

    new-instance v0, Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException;

    const/16 v1, 0x258

    const-string v2, "get appkey error"

    invoke-direct {v0, v1, v2}, Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public getAppsecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->mAppsecret:Ljava/lang/String;

    return-object v0
.end method

.method public getClientOsType()I
    .locals 1

    .prologue
    .line 313
    const/4 v0, 0x2

    return v0
.end method

.method public getDefaultPagesize()I
    .locals 1

    .prologue
    .line 300
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->mPagesize:I

    return v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 217
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->mDeviceid:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    invoke-direct {p0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getAplication()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 221
    const-string v1, "android_id"

    .line 219
    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->mDeviceid:Ljava/lang/String;

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->mDeviceid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 225
    new-instance v0, Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException;

    const/16 v1, 0x258

    const-string v2, "get deviceid error"

    invoke-direct {v0, v1, v2}, Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 227
    :cond_1
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->mDeviceid:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplay()Ljava/lang/String;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->mDisplay:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalMacAddress()Ljava/lang/String;
    .locals 3

    .prologue
    .line 201
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->mMac:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    invoke-direct {p0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getAplication()Landroid/content/Context;

    move-result-object v0

    .line 204
    const-string v1, "wifi"

    .line 203
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 205
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 206
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->mMac:Ljava/lang/String;

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->mMac:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 210
    new-instance v0, Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException;

    const/16 v1, 0x258

    const-string v2, "get mac address error"

    invoke-direct {v0, v1, v2}, Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 212
    :cond_1
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->mMac:Ljava/lang/String;

    return-object v0
.end method

.method public getNetWorkType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 272
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->mNetWorkType:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    sget-object v0, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/util/NetworkType;->getNetWorkType(Landroid/content/Context;)Lcom/ximalaya/ting/android/opensdk/util/NetworkType$NetWorkType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/util/NetworkType$NetWorkType;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->mNetWorkType:Ljava/lang/String;

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->mNetWorkType:Ljava/lang/String;

    return-object v0
.end method

.method public getPackId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 232
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->mAppid:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    :try_start_0
    invoke-direct {p0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getAplication()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 238
    invoke-direct {p0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getAplication()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 239
    const/16 v2, 0x80

    .line 238
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 240
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "pack_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->mAppid:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->mAppid:Ljava/lang/String;

    return-object v0

    .line 244
    :catch_0
    move-exception v0

    new-instance v0, Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException;

    const/16 v1, 0x258

    const-string v2, "get packid error"

    invoke-direct {v0, v1, v2}, Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 252
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->mPackageName:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    sget-object v0, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->mPackageName:Ljava/lang/String;

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getSdkVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 305
    const-string v0, "v1.0"

    return-object v0
.end method

.method public getSimName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 261
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->mSimName:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    sget-object v0, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->mContext:Landroid/content/Context;

    .line 264
    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 263
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 265
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->mSimName:Ljava/lang/String;

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->mSimName:Ljava/lang/String;

    return-object v0
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 155
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->mContext:Landroid/content/Context;

    .line 156
    iput-object p2, p0, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->mAppsecret:Ljava/lang/String;

    .line 157
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/OtpManager;->getInstanse()Lcom/ximalaya/ting/android/opensdk/datatrasfer/OtpManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/OtpManager;->init(Landroid/content/Context;)V

    .line 158
    return-void
.end method

.method public parseResponseHandler(Lcom/ximalaya/ting/android/opensdk/httputil/BaseResponse;)Lcom/ximalaya/ting/android/opensdk/datatrasfer/DataErrorCategory;
    .locals 3

    .prologue
    .line 2413
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 2417
    :try_start_0
    invoke-virtual {p1}, Lcom/ximalaya/ting/android/opensdk/httputil/BaseResponse;->getResponseBodyToString()Ljava/lang/String;

    move-result-object v1

    .line 2418
    const-class v2, Lcom/ximalaya/ting/android/opensdk/datatrasfer/DataErrorCategory;

    .line 2416
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ximalaya/ting/android/opensdk/datatrasfer/DataErrorCategory;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2423
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDefaultPagesize(I)V
    .locals 3

    .prologue
    .line 286
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->mPagesize:I

    if-ne v0, p1, :cond_0

    .line 296
    :goto_0
    return-void

    .line 290
    :cond_0
    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->mPagesize:I

    .line 291
    sget-object v0, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 293
    new-instance v0, Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException;

    const/16 v1, 0x258

    const-string v2, "you must call #XiMaLaYa.init"

    invoke-direct {v0, v1, v2}, Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 295
    :cond_1
    sget-object v0, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->getInstance(Landroid/content/Context;)Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->setAutoLoadPageSizeInner(I)V

    goto :goto_0
.end method

.method public setPageSize(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2429
    const-string v0, "count"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2431
    const-string v0, "count"

    .line 2432
    invoke-virtual {p0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getDefaultPagesize()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 2431
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2434
    :cond_0
    return-void
.end method
