.class public Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final MAX_ADS_CACHE:I = 0xa

.field private static final TAG:Ljava/lang/String; = "XmAdsManager"

.field private static sInstance:Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;

.field private static sLock:[B


# instance fields
.field private mAdsActive:Z

.field private mAdsFileCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAdsPlayer:Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;

.field private mAppCtx:Landroid/content/Context;

.field private mLastTask:Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$TaskWrapper;

.field private mListener:Lcom/ximalaya/ting/android/opensdk/player/service/IXmAdsStatusListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->sLock:[B

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->mAdsFileCache:Ljava/util/List;

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->mAdsActive:Z

    .line 139
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->mAppCtx:Landroid/content/Context;

    .line 140
    invoke-direct {p0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->loadCachedAdsFile()V

    .line 141
    return-void
.end method

.method static synthetic access$0(Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;ZLcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$PlayAdsCallback;)Z
    .locals 1

    .prologue
    .line 247
    invoke-direct {p0, p1, p2}, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->exitPlayAds(ZLcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$PlayAdsCallback;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1(Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;Z)V
    .locals 0

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->mAdsActive:Z

    return-void
.end method

.method static synthetic access$2(Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;)Lcom/ximalaya/ting/android/opensdk/player/service/IXmAdsStatusListener;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->mListener:Lcom/ximalaya/ting/android/opensdk/player/service/IXmAdsStatusListener;

    return-object v0
.end method

.method static synthetic access$3(Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$TaskWrapper;)V
    .locals 0

    .prologue
    .line 264
    invoke-direct {p0, p1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->downloadAndPlayAds(Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$TaskWrapper;)V

    return-void
.end method

.method static synthetic access$4(Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$TaskWrapper;)V
    .locals 0

    .prologue
    .line 490
    invoke-direct {p0, p1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->uploadAdsLog(Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$TaskWrapper;)V

    return-void
.end method

.method static synthetic access$5(Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->mAppCtx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6(Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;Ljava/lang/String;Ljava/lang/String;Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$TaskWrapper;)I
    .locals 1

    .prologue
    .line 434
    invoke-direct {p0, p1, p2, p3}, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->downloadFile(Ljava/lang/String;Ljava/lang/String;Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$TaskWrapper;)I

    move-result v0

    return v0
.end method

.method static synthetic access$7(Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;)Ljava/util/List;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->mAdsFileCache:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$8(Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 160
    invoke-direct {p0, p1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->deleteAdsCacheFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$9(Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$TaskWrapper;)V
    .locals 0

    .prologue
    .line 300
    invoke-direct {p0, p1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->playAdsInternal(Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$TaskWrapper;)V

    return-void
.end method

.method private deleteAdsCacheFile(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 162
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->mAppCtx:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/ximalaya/ting/android/opensdk/util/FileUtilBase;->getAdsCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 163
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 165
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    .line 169
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private downloadAdsFile(Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$TaskWrapper;)V
    .locals 2

    .prologue
    .line 367
    iget-boolean v0, p1, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$TaskWrapper;->cancel:Z

    iget-object v1, p1, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$TaskWrapper;->callback:Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$PlayAdsCallback;

    invoke-direct {p0, v0, v1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->exitPlayAds(ZLcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$PlayAdsCallback;)Z

    move-result v0

    .line 368
    if-eqz v0, :cond_0

    .line 432
    :goto_0
    return-void

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->mListener:Lcom/ximalaya/ting/android/opensdk/player/service/IXmAdsStatusListener;

    if-eqz v0, :cond_1

    .line 374
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->mListener:Lcom/ximalaya/ting/android/opensdk/player/service/IXmAdsStatusListener;

    invoke-interface {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmAdsStatusListener;->onAdsStartBuffering()V

    .line 376
    :cond_1
    new-instance v0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$3;

    invoke-direct {v0, p0, p1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$3;-><init>(Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$TaskWrapper;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 431
    invoke-virtual {v0, v1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$3;->myexec([Ljava/lang/Object;)Lcom/ximalaya/ting/android/opensdk/util/MyAsyncTask;

    goto :goto_0
.end method

.method private downloadAndPlayAds(Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$TaskWrapper;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 267
    iget-boolean v0, p1, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$TaskWrapper;->cancel:Z

    iget-object v1, p1, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$TaskWrapper;->callback:Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$PlayAdsCallback;

    invoke-direct {p0, v0, v1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->exitPlayAds(ZLcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$PlayAdsCallback;)Z

    move-result v0

    .line 268
    if-eqz v0, :cond_0

    .line 289
    :goto_0
    return-void

    .line 272
    :cond_0
    iget-object v0, p1, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$TaskWrapper;->ads:Lcom/ximalaya/ting/android/opensdk/model/advertis/AdvertisList;

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/model/advertis/AdvertisList;->getAdvertisList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ximalaya/ting/android/opensdk/model/advertis/Advertis;

    .line 273
    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/model/advertis/Advertis;->getSoundUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 275
    iput-boolean v2, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->mAdsActive:Z

    .line 276
    const/4 v0, 0x1

    iget-object v1, p1, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$TaskWrapper;->callback:Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$PlayAdsCallback;

    invoke-direct {p0, v0, v1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->exitPlayAds(ZLcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$PlayAdsCallback;)Z

    goto :goto_0

    .line 279
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/model/advertis/Advertis;->getSoundUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ximalaya/ting/android/opensdk/util/DigestUtils;->md5Hex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 280
    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/model/advertis/Advertis;->getSoundUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->getSuffixFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 279
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 281
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->mAdsFileCache:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 283
    invoke-direct {p0, p1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->playAdsInternal(Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$TaskWrapper;)V

    goto :goto_0

    .line 287
    :cond_2
    invoke-direct {p0, p1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->downloadAdsFile(Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$TaskWrapper;)V

    goto :goto_0
.end method

.method private downloadFile(Ljava/lang/String;Ljava/lang/String;Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$TaskWrapper;)I
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 437
    const/4 v3, 0x0

    .line 440
    :try_start_0
    new-instance v2, Lcom/ximalaya/ting/android/opensdk/util/HttpUrlUtil$Config;

    invoke-direct {v2}, Lcom/ximalaya/ting/android/opensdk/util/HttpUrlUtil$Config;-><init>()V

    .line 441
    const/16 v4, 0xbb8

    iput v4, v2, Lcom/ximalaya/ting/android/opensdk/util/HttpUrlUtil$Config;->connectionTimeOut:I

    .line 442
    const/16 v4, 0xbb8

    iput v4, v2, Lcom/ximalaya/ting/android/opensdk/util/HttpUrlUtil$Config;->readTimeOut:I

    .line 443
    invoke-static {p1, v2}, Lcom/ximalaya/ting/android/opensdk/util/HttpUrlUtil;->getHttpURLConnection(Ljava/lang/String;Lcom/ximalaya/ting/android/opensdk/util/HttpUrlUtil$Config;)Ljava/net/HttpURLConnection;

    move-result-object v2

    .line 445
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    .line 446
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    .line 447
    const-string v5, "Content-Length"

    invoke-virtual {v2, v5}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 448
    const/16 v6, 0xc8

    if-ne v4, v6, :cond_0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 449
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gtz v4, :cond_1

    .line 472
    :cond_0
    :goto_0
    return v0

    .line 453
    :cond_1
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 454
    const/16 v2, 0x2000

    new-array v5, v2, [B

    .line 456
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 457
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v7, 0x0

    invoke-direct {v2, v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 458
    :goto_1
    :try_start_1
    invoke-virtual {v4, v5}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-gtz v3, :cond_2

    .line 466
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 480
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :goto_2
    move v0, v1

    .line 467
    goto :goto_0

    .line 460
    :cond_2
    :try_start_3
    iget-boolean v6, p3, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$TaskWrapper;->cancel:Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v6, :cond_3

    .line 480
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 482
    :catch_0
    move-exception v1

    .line 484
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 464
    :cond_3
    const/4 v6, 0x0

    :try_start_5
    invoke-virtual {v2, v5, v6, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    .line 469
    :catch_1
    move-exception v1

    .line 471
    :goto_3
    :try_start_6
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 476
    if-eqz v2, :cond_0

    .line 480
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_0

    .line 482
    :catch_2
    move-exception v1

    .line 484
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 482
    :catch_3
    move-exception v0

    .line 484
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 475
    :catchall_0
    move-exception v0

    .line 476
    :goto_4
    if-eqz v3, :cond_4

    .line 480
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 487
    :cond_4
    :goto_5
    throw v0

    .line 482
    :catch_4
    move-exception v1

    .line 484
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 475
    :catchall_1
    move-exception v0

    move-object v3, v2

    goto :goto_4

    .line 469
    :catch_5
    move-exception v1

    move-object v2, v3

    goto :goto_3
.end method

.method private exitPlayAds(ZLcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$PlayAdsCallback;)Z
    .locals 1

    .prologue
    .line 249
    if-eqz p1, :cond_1

    .line 251
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->mListener:Lcom/ximalaya/ting/android/opensdk/player/service/IXmAdsStatusListener;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->mListener:Lcom/ximalaya/ting/android/opensdk/player/service/IXmAdsStatusListener;

    invoke-interface {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmAdsStatusListener;->onCompletePlayAds()V

    .line 255
    :cond_0
    invoke-interface {p2}, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$PlayAdsCallback;->onFinish()V

    .line 256
    const/4 v0, 0x1

    .line 260
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized getAdsInfoAndPlay(Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$TaskWrapper;)V
    .locals 3

    .prologue
    .line 193
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->mListener:Lcom/ximalaya/ting/android/opensdk/player/service/IXmAdsStatusListener;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->mListener:Lcom/ximalaya/ting/android/opensdk/player/service/IXmAdsStatusListener;

    invoke-interface {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmAdsStatusListener;->onStartGetAdsInfo()V

    .line 197
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 204
    const-string v1, "trackId"

    const-string v2, "87288"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    const-string v1, "mode"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    const-string v1, "playMethod"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    new-instance v1, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$1;

    invoke-direct {v1, p0, p1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$1;-><init>(Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$TaskWrapper;)V

    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getAdvertis(Ljava/util/Map;Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    monitor-exit p0

    return-void

    .line 193
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;
    .locals 2

    .prologue
    .line 80
    sget-object v0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->sInstance:Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;

    if-nez v0, :cond_1

    .line 82
    sget-object v1, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->sLock:[B

    monitor-enter v1

    .line 84
    :try_start_0
    sget-object v0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->sInstance:Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;

    invoke-direct {v0, p0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->sInstance:Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;

    .line 82
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    :cond_1
    sget-object v0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->sInstance:Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;

    return-object v0

    .line 82
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static getSuffixFromUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 293
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 295
    :cond_0
    const/4 v0, 0x0

    .line 297
    :goto_0
    return-object v0

    :cond_1
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private loadCachedAdsFile()V
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->mAppCtx:Landroid/content/Context;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/opensdk/util/FileUtilBase;->getAdsCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 146
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 147
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 149
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 151
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 152
    if-eqz v0, :cond_1

    array-length v1, v0

    if-nez v1, :cond_2

    .line 158
    :cond_1
    :goto_0
    return-void

    .line 156
    :cond_2
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->mAdsFileCache:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 157
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->mAdsFileCache:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method private playAdsInternal(Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$TaskWrapper;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 303
    iget-boolean v0, p1, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$TaskWrapper;->cancel:Z

    iget-object v1, p1, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$TaskWrapper;->callback:Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$PlayAdsCallback;

    invoke-direct {p0, v0, v1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->exitPlayAds(ZLcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$PlayAdsCallback;)Z

    move-result v0

    .line 304
    if-eqz v0, :cond_1

    .line 306
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->mListener:Lcom/ximalaya/ting/android/opensdk/player/service/IXmAdsStatusListener;

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->mListener:Lcom/ximalaya/ting/android/opensdk/player/service/IXmAdsStatusListener;

    invoke-interface {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmAdsStatusListener;->onAdsStopBuffering()V

    .line 362
    :cond_0
    :goto_0
    return-void

    .line 312
    :cond_1
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->mAdsPlayer:Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;

    if-eqz v0, :cond_3

    .line 314
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->mAdsPlayer:Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->stopPlay()V

    .line 320
    :goto_1
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->mAdsPlayer:Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;

    new-instance v1, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$2;

    invoke-direct {v1, p0, p1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$2;-><init>(Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$TaskWrapper;)V

    invoke-virtual {v0, v1}, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 330
    iget-object v0, p1, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$TaskWrapper;->ads:Lcom/ximalaya/ting/android/opensdk/model/advertis/AdvertisList;

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/model/advertis/AdvertisList;->getAdvertisList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ximalaya/ting/android/opensdk/model/advertis/Advertis;

    .line 331
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/model/advertis/Advertis;->getSoundUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ximalaya/ting/android/opensdk/util/DigestUtils;->md5Hex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 332
    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/model/advertis/Advertis;->getSoundUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->getSuffixFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 331
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 333
    iget-object v2, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->mAppCtx:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/ximalaya/ting/android/opensdk/util/FileUtilBase;->getAdsCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 334
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 335
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 339
    :try_start_0
    iget-object v2, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->mAdsPlayer:Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;

    invoke-virtual {v2, v1}, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->init(Ljava/lang/String;)V

    .line 340
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->mAdsPlayer:Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;

    invoke-virtual {v1}, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->startPlay()V

    .line 341
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->mListener:Lcom/ximalaya/ting/android/opensdk/player/service/IXmAdsStatusListener;

    if-eqz v1, :cond_0

    .line 343
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->mListener:Lcom/ximalaya/ting/android/opensdk/player/service/IXmAdsStatusListener;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmAdsStatusListener;->onStartPlayAds(Lcom/ximalaya/ting/android/opensdk/model/advertis/Advertis;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 346
    :catch_0
    move-exception v0

    .line 348
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 349
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->mListener:Lcom/ximalaya/ting/android/opensdk/player/service/IXmAdsStatusListener;

    if-eqz v0, :cond_2

    .line 351
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->mListener:Lcom/ximalaya/ting/android/opensdk/player/service/IXmAdsStatusListener;

    invoke-interface {v0, v3, v3}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmAdsStatusListener;->onError(II)V

    .line 353
    :cond_2
    iput-boolean v3, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->mAdsActive:Z

    .line 354
    iget-object v0, p1, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$TaskWrapper;->callback:Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$PlayAdsCallback;

    invoke-direct {p0, v4, v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->exitPlayAds(ZLcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$PlayAdsCallback;)Z

    goto :goto_0

    .line 318
    :cond_3
    new-instance v0, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;

    invoke-direct {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;-><init>()V

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->mAdsPlayer:Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;

    goto :goto_1

    .line 359
    :cond_4
    iput-boolean v3, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->mAdsActive:Z

    .line 360
    iget-object v0, p1, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$TaskWrapper;->callback:Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$PlayAdsCallback;

    invoke-direct {p0, v4, v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->exitPlayAds(ZLcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$PlayAdsCallback;)Z

    goto/16 :goto_0
.end method

.method private uploadAdsLog(Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$TaskWrapper;)V
    .locals 4

    .prologue
    .line 492
    new-instance v1, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsRecord;

    invoke-direct {v1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsRecord;-><init>()V

    .line 493
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsRecord;->setTime(J)V

    .line 494
    iget-object v0, p1, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$TaskWrapper;->track:Lcom/ximalaya/ting/android/opensdk/model/track/Track;

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->getDataId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsRecord;->setTrackId(J)V

    .line 495
    iget-object v0, p1, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$TaskWrapper;->ads:Lcom/ximalaya/ting/android/opensdk/model/advertis/AdvertisList;

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/model/advertis/AdvertisList;->getAdvertisList()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ximalaya/ting/android/opensdk/model/advertis/Advertis;

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/model/advertis/Advertis;->getAdid()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsRecord;->setAdItemId(J)V

    .line 496
    iget-object v0, p1, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$TaskWrapper;->ads:Lcom/ximalaya/ting/android/opensdk/model/advertis/AdvertisList;

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/model/advertis/AdvertisList;->getResponseId()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsRecord;->setResponseId(J)V

    .line 497
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getInstanse()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getSdkVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsRecord;->setVersion(Ljava/lang/String;)V

    .line 500
    :try_start_0
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getInstanse()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getAppKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsRecord;->setAppKey(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException; {:try_start_0 .. :try_end_0} :catch_1

    .line 506
    new-instance v0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsEvents;

    invoke-direct {v0, v1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsEvents;-><init>(Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsRecord;)V

    .line 507
    const-string v1, "http://xdcs-collector.test.ximalaya.com/api/v1/realtime"

    .line 511
    :try_start_1
    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsEvents;->toJsonString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ximalaya/ting/android/opensdk/httputil/BaseBuilder;->urlPost(Ljava/lang/String;[B)Lcom/squareup/okhttp/D;

    move-result-object v0

    .line 512
    invoke-virtual {v0}, Lcom/squareup/okhttp/D;->a()Lcom/squareup/okhttp/C;
    :try_end_1
    .catch Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 518
    new-instance v1, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$4;

    invoke-direct {v1, p0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$4;-><init>(Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;)V

    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/opensdk/httputil/BaseCall;->doAsync(Lcom/squareup/okhttp/C;Lcom/ximalaya/ting/android/opensdk/httputil/IHttpCallBack;)V

    .line 533
    :goto_0
    return-void

    .line 516
    :catch_0
    move-exception v0

    goto :goto_0

    .line 504
    :catch_1
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public isAdsActive()Z
    .locals 1

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->mAdsActive:Z

    return v0
.end method

.method public isAdsBuffering()Z
    .locals 1

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->mAdsActive:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->isAdsPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAdsPlaying()Z
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->mAdsPlayer:Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->mAdsPlayer:Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pauseAd()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->mAdsPlayer:Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->mAdsPlayer:Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->pausePlay()V

    .line 130
    :cond_0
    return-void
.end method

.method public playAd()V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->mAdsPlayer:Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->mAdsPlayer:Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->startPlay()V

    .line 124
    :cond_0
    return-void
.end method

.method public playAds(Lcom/ximalaya/ting/android/opensdk/model/track/Track;Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$PlayAdsCallback;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 175
    iput-boolean v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->mAdsActive:Z

    .line 176
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->mLastTask:Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$TaskWrapper;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->mLastTask:Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$TaskWrapper;

    iput-boolean v1, v0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$TaskWrapper;->cancel:Z

    .line 180
    :cond_0
    new-instance v0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$TaskWrapper;

    invoke-direct {v0, p0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$TaskWrapper;-><init>(Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;)V

    .line 181
    iput-object p1, v0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$TaskWrapper;->track:Lcom/ximalaya/ting/android/opensdk/model/track/Track;

    .line 182
    iput-object p2, v0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$TaskWrapper;->callback:Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$PlayAdsCallback;

    .line 183
    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->mLastTask:Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$TaskWrapper;

    .line 184
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->mAdsPlayer:Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;

    if-eqz v0, :cond_1

    .line 186
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->mAdsPlayer:Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->stopPlay()V

    .line 188
    :cond_1
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->mLastTask:Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$TaskWrapper;

    invoke-direct {p0, v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->getAdsInfoAndPlay(Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$TaskWrapper;)V

    .line 189
    return-void
.end method

.method public release()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 95
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->mAdsPlayer:Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->mAdsPlayer:Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->stopPlay()V

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->mLastTask:Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$TaskWrapper;

    if-eqz v0, :cond_1

    .line 101
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->mLastTask:Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$TaskWrapper;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$TaskWrapper;->cancel:Z

    .line 103
    :cond_1
    iput-object v2, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->mListener:Lcom/ximalaya/ting/android/opensdk/player/service/IXmAdsStatusListener;

    .line 104
    sget-object v1, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->sLock:[B

    monitor-enter v1

    .line 106
    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->sInstance:Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;

    .line 104
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAdsStatusListener(Lcom/ximalaya/ting/android/opensdk/player/service/IXmAdsStatusListener;)V
    .locals 0

    .prologue
    .line 537
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->mListener:Lcom/ximalaya/ting/android/opensdk/player/service/IXmAdsStatusListener;

    .line 538
    return-void
.end method
