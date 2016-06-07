.class public Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final MSG_ADS_BUFFERING_START:I = 0xe

.field private static final MSG_ADS_BUFFERING_STOP:I = 0xf

.field private static final MSG_BUFFER_PROGRESS_CHANGE:I = 0x9

.field private static final MSG_BUFFER_STATUS_CHANGE:I = 0x6

.field private static final MSG_COMPLETE_PLAY_ADS:I = 0x11

.field private static final MSG_GET_ADS_INFO:I = 0xd

.field private static final MSG_PLAY_ADS_ERROR:I = 0x12

.field private static final MSG_PLAY_COMPLETE:I = 0x4

.field private static final MSG_PLAY_ERROR:I = 0xa

.field private static final MSG_PLAY_PAUSE:I = 0x2

.field private static final MSG_PLAY_START:I = 0x1

.field private static final MSG_PLAY_STOP:I = 0x3

.field private static final MSG_PROGRESS_CHANGE:I = 0x7

.field private static final MSG_SOUND_CHANGE:I = 0x8

.field private static final MSG_SOUND_PREPARED:I = 0x5

.field private static final MSG_START_GET_ADS_INFO:I = 0xc

.field private static final MSG_START_PLAY_ADS:I = 0x10

.field private static final TAG:Ljava/lang/String; = "XmPlayerServiceManager"

.field private static sInstance:Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;

.field private static sLock:[B


# instance fields
.field private mAdsListenerStub:Lcom/ximalaya/ting/android/opensdk/player/service/IXmAdsEventDispatcher$Stub;

.field private mAdsStatusListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/player/service/IXmAdsStatusListener;",
            ">;"
        }
    .end annotation
.end field

.field private mAppCtx:Landroid/content/Context;

.field private mBindRet:Z

.field private mConn:Landroid/content/ServiceConnection;

.field private mConnectListener:Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$IConnectListener;

.field private mConnected:Z

.field private mGetDownloadPlayPathCallbackStub:Lcom/ximalaya/ting/android/opensdk/player/service/IXmGetDownloadPlayPathCallback$Stub;

.field private mIXmGetDownloadPlayPathCallback:Lcom/ximalaya/ting/android/opensdk/player/service/IXmGetDownloadPlayPathCallback;

.field private mListenerStub:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerEventDispatcher$Stub;

.field private mNotification:Landroid/app/Notification;

.field private mNotificationId:I

.field private mPageSize:I

.field private mPlayerStatusListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPlayerStub:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

.field private mUiHandler:Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$UIHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->sLock:[B

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 371
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-boolean v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mConnected:Z

    .line 89
    iput-boolean v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mBindRet:Z

    .line 92
    iput v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mNotificationId:I

    .line 95
    const/16 v0, 0x14

    iput v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mPageSize:I

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mPlayerStatusListeners:Ljava/util/List;

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mAdsStatusListeners:Ljava/util/List;

    .line 102
    new-instance v0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$1;

    invoke-direct {v0, p0}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$1;-><init>(Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;)V

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mConn:Landroid/content/ServiceConnection;

    .line 171
    new-instance v0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$2;

    invoke-direct {v0, p0}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$2;-><init>(Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;)V

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mGetDownloadPlayPathCallbackStub:Lcom/ximalaya/ting/android/opensdk/player/service/IXmGetDownloadPlayPathCallback$Stub;

    .line 198
    new-instance v0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$3;

    invoke-direct {v0, p0}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$3;-><init>(Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;)V

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mAdsListenerStub:Lcom/ximalaya/ting/android/opensdk/player/service/IXmAdsEventDispatcher$Stub;

    .line 257
    new-instance v0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$4;

    invoke-direct {v0, p0}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$4;-><init>(Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;)V

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mListenerStub:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerEventDispatcher$Stub;

    .line 373
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mAppCtx:Landroid/content/Context;

    .line 374
    new-instance v0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$UIHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$UIHandler;-><init>(Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mUiHandler:Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$UIHandler;

    .line 375
    return-void
.end method

.method static synthetic access$0(Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;Z)V
    .locals 0

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mConnected:Z

    return-void
.end method

.method static synthetic access$1(Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;)Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mPlayerStub:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    return-object v0
.end method

.method static synthetic access$10(Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;)Lcom/ximalaya/ting/android/opensdk/player/service/IXmGetDownloadPlayPathCallback;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mIXmGetDownloadPlayPathCallback:Lcom/ximalaya/ting/android/opensdk/player/service/IXmGetDownloadPlayPathCallback;

    return-object v0
.end method

.method static synthetic access$11(Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;)Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$UIHandler;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mUiHandler:Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$UIHandler;

    return-object v0
.end method

.method static synthetic access$12(Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;)V
    .locals 0

    .prologue
    .line 1135
    invoke-direct {p0}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->handlePlayStart()V

    return-void
.end method

.method static synthetic access$13(Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;)V
    .locals 0

    .prologue
    .line 1157
    invoke-direct {p0}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->handlePlayPause()V

    return-void
.end method

.method static synthetic access$14(Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;)V
    .locals 0

    .prologue
    .line 1124
    invoke-direct {p0}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->handlePlayStop()V

    return-void
.end method

.method static synthetic access$15(Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;)V
    .locals 0

    .prologue
    .line 1168
    invoke-direct {p0}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->handlePlayComplete()V

    return-void
.end method

.method static synthetic access$16(Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;)V
    .locals 0

    .prologue
    .line 1101
    invoke-direct {p0}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->handleSoundPrepared()V

    return-void
.end method

.method static synthetic access$17(Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;Z)V
    .locals 0

    .prologue
    .line 1201
    invoke-direct {p0, p1}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->handleBufferStatusChange(Z)V

    return-void
.end method

.method static synthetic access$18(Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;II)V
    .locals 0

    .prologue
    .line 1146
    invoke-direct {p0, p1, p2}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->handlePlayProgressChange(II)V

    return-void
.end method

.method static synthetic access$19(Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;III)V
    .locals 0

    .prologue
    .line 1112
    invoke-direct {p0, p1, p2, p3}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->handleSoundChange(III)V

    return-void
.end method

.method static synthetic access$2(Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;)Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerEventDispatcher$Stub;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mListenerStub:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerEventDispatcher$Stub;

    return-object v0
.end method

.method static synthetic access$20(Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;I)V
    .locals 0

    .prologue
    .line 1190
    invoke-direct {p0, p1}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->handleBufferChange(I)V

    return-void
.end method

.method static synthetic access$21(Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerException;)V
    .locals 0

    .prologue
    .line 1179
    invoke-direct {p0, p1}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->handlePlayError(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerException;)V

    return-void
.end method

.method static synthetic access$22(Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;)V
    .locals 0

    .prologue
    .line 1219
    invoke-direct {p0}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->handleStartGetAdsInfo()V

    return-void
.end method

.method static synthetic access$23(Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;Lcom/ximalaya/ting/android/opensdk/model/advertis/AdvertisList;)V
    .locals 0

    .prologue
    .line 1230
    invoke-direct {p0, p1}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->handleGetAdsInfo(Lcom/ximalaya/ting/android/opensdk/model/advertis/AdvertisList;)V

    return-void
.end method

.method static synthetic access$24(Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;)V
    .locals 0

    .prologue
    .line 1241
    invoke-direct {p0}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->handleAdsBufferingStart()V

    return-void
.end method

.method static synthetic access$25(Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;)V
    .locals 0

    .prologue
    .line 1252
    invoke-direct {p0}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->handleAdsBufferingStop()V

    return-void
.end method

.method static synthetic access$26(Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;Lcom/ximalaya/ting/android/opensdk/model/advertis/Advertis;I)V
    .locals 0

    .prologue
    .line 1263
    invoke-direct {p0, p1, p2}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->handleStartPlayAds(Lcom/ximalaya/ting/android/opensdk/model/advertis/Advertis;I)V

    return-void
.end method

.method static synthetic access$27(Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;)V
    .locals 0

    .prologue
    .line 1274
    invoke-direct {p0}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->handleCompletePlayAds()V

    return-void
.end method

.method static synthetic access$28(Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;II)V
    .locals 0

    .prologue
    .line 1285
    invoke-direct {p0, p1, p2}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->handlePlayAdsError(II)V

    return-void
.end method

.method static synthetic access$3(Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;)Lcom/ximalaya/ting/android/opensdk/player/service/IXmAdsEventDispatcher$Stub;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mAdsListenerStub:Lcom/ximalaya/ting/android/opensdk/player/service/IXmAdsEventDispatcher$Stub;

    return-object v0
.end method

.method static synthetic access$4(Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;)I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mPageSize:I

    return v0
.end method

.method static synthetic access$5(Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mPlayerStub:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    return-void
.end method

.method static synthetic access$6(Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;)Lcom/ximalaya/ting/android/opensdk/player/service/IXmGetDownloadPlayPathCallback$Stub;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mGetDownloadPlayPathCallbackStub:Lcom/ximalaya/ting/android/opensdk/player/service/IXmGetDownloadPlayPathCallback$Stub;

    return-object v0
.end method

.method static synthetic access$7(Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;)I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mNotificationId:I

    return v0
.end method

.method static synthetic access$8(Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;)Landroid/app/Notification;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mNotification:Landroid/app/Notification;

    return-object v0
.end method

.method static synthetic access$9(Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;)Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$IConnectListener;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mConnectListener:Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$IConnectListener;

    return-object v0
.end method

.method private checkConnectionStatus()Z
    .locals 2

    .prologue
    .line 363
    iget-boolean v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mConnected:Z

    if-nez v0, :cond_0

    .line 365
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mNotificationId:I

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mNotification:Landroid/app/Notification;

    invoke-virtual {p0, v0, v1}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->init(ILandroid/app/Notification;)V

    .line 366
    const/4 v0, 0x0

    .line 368
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;
    .locals 2

    .prologue
    .line 348
    sget-object v0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->sInstance:Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;

    if-nez v0, :cond_1

    .line 350
    sget-object v1, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->sLock:[B

    monitor-enter v1

    .line 352
    :try_start_0
    sget-object v0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->sInstance:Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;

    if-nez v0, :cond_0

    .line 354
    new-instance v0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;

    invoke-direct {v0, p0}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->sInstance:Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;

    .line 350
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 358
    :cond_1
    sget-object v0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->sInstance:Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;

    return-object v0

    .line 350
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static getPlayCacheSize()J
    .locals 2

    .prologue
    .line 1098
    invoke-static {}, Lcom/ximalaya/ting/android/player/PlayerUtil;->getPlayCacheSize()J

    move-result-wide v0

    return-wide v0
.end method

.method private handleAdsBufferingStart()V
    .locals 3

    .prologue
    .line 1243
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mAdsStatusListeners:Ljava/util/List;

    monitor-enter v1

    .line 1245
    :try_start_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mAdsStatusListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1243
    monitor-exit v1

    return-void

    .line 1245
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ximalaya/ting/android/opensdk/player/service/IXmAdsStatusListener;

    .line 1247
    invoke-interface {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmAdsStatusListener;->onAdsStartBuffering()V

    goto :goto_0

    .line 1243
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleAdsBufferingStop()V
    .locals 3

    .prologue
    .line 1254
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mAdsStatusListeners:Ljava/util/List;

    monitor-enter v1

    .line 1256
    :try_start_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mAdsStatusListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1254
    monitor-exit v1

    return-void

    .line 1256
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ximalaya/ting/android/opensdk/player/service/IXmAdsStatusListener;

    .line 1258
    invoke-interface {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmAdsStatusListener;->onAdsStopBuffering()V

    goto :goto_0

    .line 1254
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleBufferChange(I)V
    .locals 3

    .prologue
    .line 1192
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mPlayerStatusListeners:Ljava/util/List;

    monitor-enter v1

    .line 1194
    :try_start_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mPlayerStatusListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1192
    monitor-exit v1

    return-void

    .line 1194
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;

    .line 1196
    invoke-interface {v0, p1}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;->onBufferProgress(I)V

    goto :goto_0

    .line 1192
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleBufferStatusChange(Z)V
    .locals 3

    .prologue
    .line 1203
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mPlayerStatusListeners:Ljava/util/List;

    monitor-enter v1

    .line 1205
    :try_start_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mPlayerStatusListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1203
    monitor-exit v1

    return-void

    .line 1205
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;

    .line 1207
    if-eqz p1, :cond_1

    .line 1209
    invoke-interface {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;->onBufferingStart()V

    goto :goto_0

    .line 1203
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1213
    :cond_1
    :try_start_1
    invoke-interface {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;->onBufferingStop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private handleCompletePlayAds()V
    .locals 3

    .prologue
    .line 1276
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mAdsStatusListeners:Ljava/util/List;

    monitor-enter v1

    .line 1278
    :try_start_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mAdsStatusListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1276
    monitor-exit v1

    return-void

    .line 1278
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ximalaya/ting/android/opensdk/player/service/IXmAdsStatusListener;

    .line 1280
    invoke-interface {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmAdsStatusListener;->onCompletePlayAds()V

    goto :goto_0

    .line 1276
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleGetAdsInfo(Lcom/ximalaya/ting/android/opensdk/model/advertis/AdvertisList;)V
    .locals 3

    .prologue
    .line 1232
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mAdsStatusListeners:Ljava/util/List;

    monitor-enter v1

    .line 1234
    :try_start_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mAdsStatusListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1232
    monitor-exit v1

    return-void

    .line 1234
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ximalaya/ting/android/opensdk/player/service/IXmAdsStatusListener;

    .line 1236
    invoke-interface {v0, p1}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmAdsStatusListener;->onGetAdsInfo(Lcom/ximalaya/ting/android/opensdk/model/advertis/AdvertisList;)V

    goto :goto_0

    .line 1232
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handlePlayAdsError(II)V
    .locals 3

    .prologue
    .line 1287
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mAdsStatusListeners:Ljava/util/List;

    monitor-enter v1

    .line 1289
    :try_start_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mAdsStatusListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1287
    monitor-exit v1

    return-void

    .line 1289
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ximalaya/ting/android/opensdk/player/service/IXmAdsStatusListener;

    .line 1291
    invoke-interface {v0, p1, p2}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmAdsStatusListener;->onError(II)V

    goto :goto_0

    .line 1287
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handlePlayComplete()V
    .locals 3

    .prologue
    .line 1170
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mPlayerStatusListeners:Ljava/util/List;

    monitor-enter v1

    .line 1172
    :try_start_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mPlayerStatusListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1170
    monitor-exit v1

    return-void

    .line 1172
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;

    .line 1174
    invoke-interface {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;->onSoundPlayComplete()V

    goto :goto_0

    .line 1170
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handlePlayError(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerException;)V
    .locals 3

    .prologue
    .line 1181
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mPlayerStatusListeners:Ljava/util/List;

    monitor-enter v1

    .line 1183
    :try_start_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mPlayerStatusListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1181
    monitor-exit v1

    return-void

    .line 1183
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;

    .line 1185
    invoke-interface {v0, p1}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;->onError(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerException;)Z

    goto :goto_0

    .line 1181
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handlePlayPause()V
    .locals 3

    .prologue
    .line 1159
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mPlayerStatusListeners:Ljava/util/List;

    monitor-enter v1

    .line 1161
    :try_start_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mPlayerStatusListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1159
    monitor-exit v1

    return-void

    .line 1161
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;

    .line 1163
    invoke-interface {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;->onPlayPause()V

    goto :goto_0

    .line 1159
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handlePlayProgressChange(II)V
    .locals 3

    .prologue
    .line 1148
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mPlayerStatusListeners:Ljava/util/List;

    monitor-enter v1

    .line 1150
    :try_start_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mPlayerStatusListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1148
    monitor-exit v1

    return-void

    .line 1150
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;

    .line 1152
    invoke-interface {v0, p1, p2}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;->onPlayProgress(II)V

    goto :goto_0

    .line 1148
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handlePlayStart()V
    .locals 3

    .prologue
    .line 1137
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mPlayerStatusListeners:Ljava/util/List;

    monitor-enter v1

    .line 1139
    :try_start_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mPlayerStatusListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1137
    monitor-exit v1

    return-void

    .line 1139
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;

    .line 1141
    invoke-interface {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;->onPlayStart()V

    goto :goto_0

    .line 1137
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handlePlayStop()V
    .locals 3

    .prologue
    .line 1126
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mPlayerStatusListeners:Ljava/util/List;

    monitor-enter v1

    .line 1128
    :try_start_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mPlayerStatusListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1126
    monitor-exit v1

    return-void

    .line 1128
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;

    .line 1130
    invoke-interface {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;->onPlayStop()V

    goto :goto_0

    .line 1126
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleSoundChange(III)V
    .locals 3

    .prologue
    .line 1115
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mPlayerStatusListeners:Ljava/util/List;

    monitor-enter v1

    .line 1117
    :try_start_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mPlayerStatusListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1115
    monitor-exit v1

    return-void

    .line 1117
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;

    .line 1119
    invoke-interface {v0, p1, p2, p3}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;->onSoundSwitch(III)V

    goto :goto_0

    .line 1115
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleSoundPrepared()V
    .locals 3

    .prologue
    .line 1103
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mPlayerStatusListeners:Ljava/util/List;

    monitor-enter v1

    .line 1105
    :try_start_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mPlayerStatusListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1103
    monitor-exit v1

    return-void

    .line 1105
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;

    .line 1107
    invoke-interface {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;->onSoundPrepared()V

    goto :goto_0

    .line 1103
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleStartGetAdsInfo()V
    .locals 3

    .prologue
    .line 1221
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mAdsStatusListeners:Ljava/util/List;

    monitor-enter v1

    .line 1223
    :try_start_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mAdsStatusListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1221
    monitor-exit v1

    return-void

    .line 1223
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ximalaya/ting/android/opensdk/player/service/IXmAdsStatusListener;

    .line 1225
    invoke-interface {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmAdsStatusListener;->onStartGetAdsInfo()V

    goto :goto_0

    .line 1221
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleStartPlayAds(Lcom/ximalaya/ting/android/opensdk/model/advertis/Advertis;I)V
    .locals 3

    .prologue
    .line 1265
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mAdsStatusListeners:Ljava/util/List;

    monitor-enter v1

    .line 1267
    :try_start_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mAdsStatusListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1265
    monitor-exit v1

    return-void

    .line 1267
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ximalaya/ting/android/opensdk/player/service/IXmAdsStatusListener;

    .line 1269
    invoke-interface {v0, p1, p2}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmAdsStatusListener;->onStartPlayAds(Lcom/ximalaya/ting/android/opensdk/model/advertis/Advertis;I)V

    goto :goto_0

    .line 1265
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public addAdsStatusListener(Lcom/ximalaya/ting/android/opensdk/player/service/IXmAdsStatusListener;)V
    .locals 2

    .prologue
    .line 431
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mAdsStatusListeners:Ljava/util/List;

    monitor-enter v1

    .line 433
    :try_start_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mAdsStatusListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mAdsStatusListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 431
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addPlayerStatusListener(Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;)V
    .locals 2

    .prologue
    .line 412
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mPlayerStatusListeners:Ljava/util/List;

    monitor-enter v1

    .line 414
    :try_start_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mPlayerStatusListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mPlayerStatusListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 412
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clearPlayCache()V
    .locals 1

    .prologue
    .line 1081
    invoke-direct {p0}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->checkConnectionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1094
    :goto_0
    return-void

    .line 1087
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mPlayerStub:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    invoke-interface {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;->clearPlayCache()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1089
    :catch_0
    move-exception v0

    .line 1091
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getCommonTrackList()Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 937
    invoke-direct {p0}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->checkConnectionStatus()Z

    move-result v1

    if-nez v1, :cond_0

    .line 952
    :goto_0
    return-object v0

    .line 943
    :cond_0
    :try_start_0
    new-instance v1, Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList;

    invoke-direct {v1}, Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList;-><init>()V

    .line 944
    iget-object v2, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mPlayerStub:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    invoke-interface {v2}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;->getParam()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList;->setParams(Ljava/util/Map;)V

    .line 945
    iget-object v2, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mPlayerStub:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    invoke-interface {v2}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;->getPlayList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList;->setTracks(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 946
    goto :goto_0

    .line 948
    :catch_0
    move-exception v1

    .line 950
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getCurrSound()Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 519
    invoke-direct {p0}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->checkConnectionStatus()Z

    move-result v1

    if-nez v1, :cond_1

    .line 544
    :cond_0
    :goto_0
    return-object v0

    .line 525
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mPlayerStub:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    invoke-interface {v1}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;->getPlaySourceType()I

    move-result v1

    .line 526
    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 528
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mPlayerStub:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    iget-object v2, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mPlayerStub:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    invoke-interface {v2}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;->getCurrIndex()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;->getTrack(I)Lcom/ximalaya/ting/android/opensdk/model/track/Track;

    move-result-object v1

    .line 529
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->getKind()Ljava/lang/String;

    move-result-object v2

    const-string v3, "schedule"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 531
    invoke-static {v1}, Lcom/ximalaya/ting/android/opensdk/util/ModelUtil;->trackToSchedule(Lcom/ximalaya/ting/android/opensdk/model/track/Track;)Lcom/ximalaya/ting/android/opensdk/model/live/schedule/Schedule;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 533
    goto :goto_0

    .line 535
    :cond_3
    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 537
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mPlayerStub:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    invoke-interface {v1}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;->getRadio()Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 541
    :catch_0
    move-exception v1

    .line 543
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getCurrentIndex()I
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 502
    invoke-direct {p0}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->checkConnectionStatus()Z

    move-result v1

    if-nez v1, :cond_0

    .line 514
    :goto_0
    return v0

    .line 508
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mPlayerStub:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    invoke-interface {v1}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;->getCurrIndex()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 510
    :catch_0
    move-exception v1

    .line 512
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getDuration()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1042
    invoke-direct {p0}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->checkConnectionStatus()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1054
    :goto_0
    return v0

    .line 1048
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mPlayerStub:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    invoke-interface {v1}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;->getDuration()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 1050
    :catch_0
    move-exception v1

    .line 1052
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getPlayList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/track/Track;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 709
    invoke-direct {p0}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->checkConnectionStatus()Z

    move-result v1

    if-nez v1, :cond_0

    .line 721
    :goto_0
    return-object v0

    .line 715
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mPlayerStub:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    invoke-interface {v1}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;->getPlayList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 717
    :catch_0
    move-exception v1

    .line 719
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getPlayListSize()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 726
    invoke-direct {p0}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->checkConnectionStatus()Z

    move-result v1

    if-nez v1, :cond_0

    .line 738
    :goto_0
    return v0

    .line 732
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mPlayerStub:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    invoke-interface {v1}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;->getPlayListSize()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 734
    :catch_0
    move-exception v1

    .line 736
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getPlayMode()Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl$PlayMode;
    .locals 1

    .prologue
    .line 662
    invoke-direct {p0}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->checkConnectionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 664
    sget-object v0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl$PlayMode;->PLAY_MODEL_LIST:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl$PlayMode;

    .line 674
    :goto_0
    return-object v0

    .line 668
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mPlayerStub:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    invoke-interface {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;->getPlayMode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl$PlayMode;->valueOf(Ljava/lang/String;)Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl$PlayMode;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 670
    :catch_0
    move-exception v0

    .line 672
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 674
    sget-object v0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl$PlayMode;->PLAY_MODEL_LIST:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl$PlayMode;

    goto :goto_0
.end method

.method public getPlayerStatus()I
    .locals 2

    .prologue
    const/4 v0, 0x7

    .line 485
    invoke-direct {p0}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->checkConnectionStatus()Z

    move-result v1

    if-nez v1, :cond_0

    .line 496
    :goto_0
    return v0

    .line 491
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mPlayerStub:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    invoke-interface {v1}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;->getPlayerStatus()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 493
    :catch_0
    move-exception v1

    .line 495
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getTrack(I)Lcom/ximalaya/ting/android/opensdk/model/track/Track;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 743
    invoke-direct {p0}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->checkConnectionStatus()Z

    move-result v1

    if-nez v1, :cond_0

    .line 755
    :goto_0
    return-object v0

    .line 749
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mPlayerStub:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    invoke-interface {v1, p1}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;->getTrack(I)Lcom/ximalaya/ting/android/opensdk/model/track/Track;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 751
    :catch_0
    move-exception v1

    .line 753
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public hasNextSound()Z
    .locals 1

    .prologue
    .line 1025
    invoke-direct {p0}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->checkConnectionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1027
    const/4 v0, 0x0

    .line 1037
    :goto_0
    return v0

    .line 1031
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mPlayerStub:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    invoke-interface {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;->hasNextSound()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 1033
    :catch_0
    move-exception v0

    .line 1035
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1037
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hasPreSound()Z
    .locals 1

    .prologue
    .line 1008
    invoke-direct {p0}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->checkConnectionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1010
    const/4 v0, 0x0

    .line 1020
    :goto_0
    return v0

    .line 1014
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mPlayerStub:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    invoke-interface {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;->hasPreSound()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 1016
    :catch_0
    move-exception v0

    .line 1018
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1020
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public init()V
    .locals 4

    .prologue
    .line 450
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mAppCtx:Landroid/content/Context;

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mAppCtx:Landroid/content/Context;

    invoke-static {v1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 451
    iget-boolean v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mBindRet:Z

    if-nez v0, :cond_0

    .line 453
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mAppCtx:Landroid/content/Context;

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mAppCtx:Landroid/content/Context;

    invoke-static {v1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    .line 454
    iget-object v2, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mConn:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    .line 453
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mBindRet:Z

    .line 456
    :cond_0
    const-string v0, "XmPlayerServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bind ret "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mBindRet:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    return-void
.end method

.method public init(ILandroid/app/Notification;)V
    .locals 0

    .prologue
    .line 461
    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mNotificationId:I

    .line 462
    iput-object p2, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mNotification:Landroid/app/Notification;

    .line 463
    invoke-virtual {p0}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->init()V

    .line 464
    return-void
.end method

.method public isAdsActive()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 991
    invoke-direct {p0}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->checkConnectionStatus()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1002
    :goto_0
    return v0

    .line 997
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mPlayerStub:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    invoke-interface {v1}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;->isAdsActive()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 999
    :catch_0
    move-exception v1

    .line 1001
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 407
    iget-boolean v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mConnected:Z

    return v0
.end method

.method public isOnlineSource()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 957
    invoke-direct {p0}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->checkConnectionStatus()Z

    move-result v1

    if-nez v1, :cond_0

    .line 969
    :goto_0
    return v0

    .line 963
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mPlayerStub:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    invoke-interface {v1}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;->isOnlineSource()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 965
    :catch_0
    move-exception v1

    .line 967
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 974
    invoke-direct {p0}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->checkConnectionStatus()Z

    move-result v1

    if-nez v1, :cond_0

    .line 985
    :goto_0
    return v0

    .line 980
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mPlayerStub:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    invoke-interface {v1}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;->isPlaying()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 982
    :catch_0
    move-exception v1

    .line 984
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 582
    invoke-direct {p0}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->checkConnectionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 594
    :goto_0
    return-void

    .line 588
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mPlayerStub:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    invoke-interface {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;->pausePlay()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 590
    :catch_0
    move-exception v0

    .line 592
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public play()V
    .locals 1

    .prologue
    .line 550
    invoke-direct {p0}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->checkConnectionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 562
    :goto_0
    return-void

    .line 556
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mPlayerStub:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    invoke-interface {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;->startPlay()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 558
    :catch_0
    move-exception v0

    .line 560
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public play(I)V
    .locals 1

    .prologue
    .line 566
    invoke-direct {p0}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->checkConnectionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 578
    :goto_0
    return-void

    .line 572
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mPlayerStub:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    invoke-interface {v0, p1}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;->play(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 574
    :catch_0
    move-exception v0

    .line 576
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public playList(Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList;I)V
    .locals 3

    .prologue
    .line 856
    invoke-direct {p0}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->checkConnectionStatus()Z

    move-result v0

    if-nez v0, :cond_1

    .line 875
    :cond_0
    :goto_0
    return-void

    .line 860
    :cond_1
    if-eqz p1, :cond_0

    .line 861
    invoke-virtual {p1}, Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList;->getTracks()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 862
    invoke-virtual {p1}, Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList;->getTracks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 868
    :try_start_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mPlayerStub:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    invoke-virtual {p1}, Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList;->getParams()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList;->getTracks()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;->setPlayList(Ljava/util/Map;Ljava/util/List;)V

    .line 869
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mPlayerStub:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    invoke-interface {v0, p2}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;->play(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 871
    :catch_0
    move-exception v0

    .line 873
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public playList(Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/track/Track;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 833
    invoke-direct {p0}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->checkConnectionStatus()Z

    move-result v0

    if-nez v0, :cond_1

    .line 852
    :cond_0
    :goto_0
    return-void

    .line 837
    :cond_1
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 844
    :try_start_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mPlayerStub:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;->setPlayList(Ljava/util/Map;Ljava/util/List;)V

    .line 846
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mPlayerStub:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    invoke-interface {v0, p2}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;->play(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 848
    :catch_0
    move-exception v0

    .line 850
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public playNext()V
    .locals 1

    .prologue
    .line 630
    invoke-direct {p0}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->checkConnectionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 642
    :goto_0
    return-void

    .line 636
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mPlayerStub:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    invoke-interface {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;->playNext()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 638
    :catch_0
    move-exception v0

    .line 640
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public playPre()V
    .locals 1

    .prologue
    .line 614
    invoke-direct {p0}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->checkConnectionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 626
    :goto_0
    return-void

    .line 620
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mPlayerStub:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    invoke-interface {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;->playPre()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 622
    :catch_0
    move-exception v0

    .line 624
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public playRadio(Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 806
    invoke-direct {p0}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->checkConnectionStatus()Z

    move-result v1

    if-nez v1, :cond_1

    .line 822
    :cond_0
    :goto_0
    return v0

    .line 810
    :cond_1
    if-eqz p1, :cond_0

    .line 816
    :try_start_0
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mPlayerStub:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    invoke-interface {v1, p1}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;->playRadio(Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 818
    :catch_0
    move-exception v1

    .line 820
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public playSchedule(Ljava/util/List;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/live/schedule/Schedule;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 760
    invoke-direct {p0}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->checkConnectionStatus()Z

    move-result v1

    if-nez v1, :cond_1

    .line 778
    :cond_0
    :goto_0
    return v0

    .line 764
    :cond_1
    if-eqz p1, :cond_0

    .line 770
    :try_start_0
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mPlayerStub:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/ximalaya/ting/android/opensdk/util/ModelUtil;->toTrackList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;->setPlayList(Ljava/util/Map;Ljava/util/List;)V

    .line 771
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mPlayerStub:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    invoke-interface {v1, p2}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;->play(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 772
    const/4 v0, 0x1

    goto :goto_0

    .line 774
    :catch_0
    move-exception v1

    .line 776
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public release()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 468
    const-string v0, "XmPlayerServiceManager"

    const-string v1, "release"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    invoke-virtual {p0}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->pause()V

    .line 471
    iget-boolean v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mBindRet:Z

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mAppCtx:Landroid/content/Context;

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mConn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 474
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mBindRet:Z

    .line 476
    :cond_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mAppCtx:Landroid/content/Context;

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mAppCtx:Landroid/content/Context;

    invoke-static {v1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 477
    iput-object v2, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mNotification:Landroid/app/Notification;

    .line 478
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mPlayerStatusListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 479
    iput-object v2, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mConnectListener:Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$IConnectListener;

    .line 480
    sput-object v2, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->sInstance:Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;

    .line 481
    return-void
.end method

.method public removeAdsStatusListener(Lcom/ximalaya/ting/android/opensdk/player/service/IXmAdsStatusListener;)V
    .locals 2

    .prologue
    .line 442
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mAdsStatusListeners:Ljava/util/List;

    monitor-enter v1

    .line 444
    :try_start_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mAdsStatusListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 442
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removePlayerStatusListener(Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;)V
    .locals 2

    .prologue
    .line 423
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mPlayerStatusListeners:Ljava/util/List;

    monitor-enter v1

    .line 425
    :try_start_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mPlayerStatusListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 423
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public seekTo(I)V
    .locals 1

    .prologue
    .line 1064
    invoke-direct {p0}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->checkConnectionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1076
    :goto_0
    return-void

    .line 1070
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mPlayerStub:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    invoke-interface {v0, p1}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;->seekTo(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1072
    :catch_0
    move-exception v0

    .line 1074
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public seekToByPercent(F)V
    .locals 1

    .prologue
    .line 1059
    invoke-virtual {p0}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->getDuration()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->seekTo(I)V

    .line 1060
    return-void
.end method

.method public setAutoLoadPageSizeInner(I)V
    .locals 1

    .prologue
    .line 683
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mPageSize:I

    if-ne v0, p1, :cond_1

    .line 700
    :cond_0
    :goto_0
    return-void

    .line 687
    :cond_1
    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mPageSize:I

    .line 688
    invoke-direct {p0}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->checkConnectionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 694
    :try_start_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mPlayerStub:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    invoke-interface {v0, p1}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;->setPageSize(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 696
    :catch_0
    move-exception v0

    .line 698
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setDownloadPlayPathCallback(Lcom/ximalaya/ting/android/opensdk/player/service/IXmGetDownloadPlayPathCallback;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mIXmGetDownloadPlayPathCallback:Lcom/ximalaya/ting/android/opensdk/player/service/IXmGetDownloadPlayPathCallback;

    .line 196
    return-void
.end method

.method public setOnConnectedListerner(Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$IConnectListener;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mConnectListener:Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$IConnectListener;

    .line 169
    return-void
.end method

.method public setPlayList(Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList;I)V
    .locals 3

    .prologue
    .line 914
    invoke-direct {p0}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->checkConnectionStatus()Z

    move-result v0

    if-nez v0, :cond_1

    .line 933
    :cond_0
    :goto_0
    return-void

    .line 918
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList;->getTracks()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList;->getTracks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 925
    :try_start_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mPlayerStub:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    invoke-virtual {p1}, Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList;->getParams()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList;->getTracks()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;->setPlayList(Ljava/util/Map;Ljava/util/List;)V

    .line 927
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mPlayerStub:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    invoke-interface {v0, p2}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;->setPlayIndex(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 929
    :catch_0
    move-exception v0

    .line 931
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setPlayList(Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/track/Track;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 885
    invoke-direct {p0}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->checkConnectionStatus()Z

    move-result v0

    if-nez v0, :cond_1

    .line 904
    :cond_0
    :goto_0
    return-void

    .line 889
    :cond_1
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 896
    :try_start_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mPlayerStub:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;->setPlayList(Ljava/util/Map;Ljava/util/List;)V

    .line 898
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mPlayerStub:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    invoke-interface {v0, p2}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;->setPlayIndex(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 900
    :catch_0
    move-exception v0

    .line 902
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setPlayMode(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl$PlayMode;)V
    .locals 2

    .prologue
    .line 646
    invoke-direct {p0}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->checkConnectionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 658
    :goto_0
    return-void

    .line 652
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mPlayerStub:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    invoke-virtual {p1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl$PlayMode;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;->setPlayMode(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 654
    :catch_0
    move-exception v0

    .line 656
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 598
    invoke-direct {p0}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->checkConnectionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 610
    :goto_0
    return-void

    .line 604
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mPlayerStub:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    invoke-interface {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;->stopPlay()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 606
    :catch_0
    move-exception v0

    .line 608
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
