.class public Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field private static final COMPLETE_OFFSET:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "XmPlayerService"

.field private static mService:Landroid/app/Service;


# instance fields
.field private mAdsDispatcher:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/player/service/IXmAdsEventDispatcher;",
            ">;"
        }
    .end annotation
.end field

.field private mAdsListener:Lcom/ximalaya/ting/android/opensdk/player/service/IXmAdsStatusListener;

.field private mAdsManager:Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;

.field private mAppCtx:Landroid/content/Context;

.field private mAppSecret:Ljava/lang/String;

.field private mIXmGetDownloadPlayPathCallback:Lcom/ximalaya/ting/android/opensdk/player/service/IXmGetDownloadPlayPathCallback;

.field private mLastDuration:I

.field private mLastModel:Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;

.field private mListControl:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;

.field private mNotification:Landroid/app/Notification;

.field private mNotificationId:I

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mPlayHistory:Landroid/content/SharedPreferences;

.field private mPlayerAudioFocusControl:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl;

.field private mPlayerConfig:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerConfig;

.field private mPlayerControl:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;

.field private mPlayerDispatcher:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerEventDispatcher;",
            ">;"
        }
    .end annotation
.end field

.field private mPlayerImpl:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$XmPlayerImpl;

.field private mPlayerStatusListener:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;

.field private mRemoteControlClient:Landroid/media/RemoteControlClient;

.field private mStatisticsManager:Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager;

.field private mediaButtonReceiver:Landroid/content/ComponentName;

.field private wireControlReceiver:Lcom/ximalaya/ting/android/opensdk/player/receive/WireControlReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 71
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mPlayerDispatcher:Landroid/os/RemoteCallbackList;

    .line 74
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mAdsDispatcher:Landroid/os/RemoteCallbackList;

    .line 104
    new-instance v0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$1;

    invoke-direct {v0, p0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$1;-><init>(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)V

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mPlayerStatusListener:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;

    .line 406
    new-instance v0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$2;

    invoke-direct {v0, p0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$2;-><init>(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)V

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mAdsListener:Lcom/ximalaya/ting/android/opensdk/player/service/IXmAdsStatusListener;

    .line 64
    return-void
.end method

.method static synthetic access$0(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mPlayerControl:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;

    return-object v0
.end method

.method static synthetic access$1(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;I)V
    .locals 0

    .prologue
    .line 93
    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mLastDuration:I

    return-void
.end method

.method static synthetic access$10(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mNotificationId:I

    return v0
.end method

.method static synthetic access$11(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;IZ)Z
    .locals 1

    .prologue
    .line 866
    invoke-direct {p0, p1, p2}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->play(IZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$12(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Landroid/os/RemoteCallbackList;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mAdsDispatcher:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic access$13(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;Ljava/util/List;)Z
    .locals 1

    .prologue
    .line 713
    invoke-direct {p0, p1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->isNewList(Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$14(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mAdsManager:Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;

    return-object v0
.end method

.method static synthetic access$15(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mAppSecret:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$16(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mAppSecret:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$17()Landroid/app/Service;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mService:Landroid/app/Service;

    return-object v0
.end method

.method static synthetic access$18(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;Landroid/app/Notification;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mNotification:Landroid/app/Notification;

    return-void
.end method

.method static synthetic access$19(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;I)V
    .locals 0

    .prologue
    .line 100
    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mNotificationId:I

    return-void
.end method

.method static synthetic access$2(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Landroid/os/RemoteCallbackList;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mPlayerDispatcher:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic access$20(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mPlayerAudioFocusControl:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl;

    return-object v0
.end method

.method static synthetic access$21(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerConfig;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mPlayerConfig:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerConfig;

    return-object v0
.end method

.method static synthetic access$22(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mLastModel:Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;

    return-object v0
.end method

.method static synthetic access$23(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mPlayerStatusListener:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;

    return-object v0
.end method

.method static synthetic access$24(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 757
    invoke-direct {p0, p1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->getRadioUrl(Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$25(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mLastModel:Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;

    return-void
.end method

.method static synthetic access$26(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;Lcom/ximalaya/ting/android/opensdk/player/service/IXmGetDownloadPlayPathCallback;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mIXmGetDownloadPlayPathCallback:Lcom/ximalaya/ting/android/opensdk/player/service/IXmGetDownloadPlayPathCallback;

    return-void
.end method

.method static synthetic access$27(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;Lcom/ximalaya/ting/android/opensdk/model/track/Track;Z)V
    .locals 0

    .prologue
    .line 797
    invoke-direct {p0, p1, p2}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->playTrack(Lcom/ximalaya/ting/android/opensdk/model/track/Track;Z)V

    return-void
.end method

.method static synthetic access$3(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mListControl:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;

    return-object v0
.end method

.method static synthetic access$4(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mLastDuration:I

    return v0
.end method

.method static synthetic access$5(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;JI)V
    .locals 1

    .prologue
    .line 783
    invoke-direct {p0, p1, p2, p3}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->saveSoundHistoryPos(JI)V

    return-void
.end method

.method static synthetic access$6(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mStatisticsManager:Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager;

    return-object v0
.end method

.method static synthetic access$7(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mAppCtx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$8(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Landroid/app/NotificationManager;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mNotificationManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$9(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)Landroid/app/Notification;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mNotification:Landroid/app/Notification;

    return-object v0
.end method

.method public static final getIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 613
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 614
    return-object v0
.end method

.method public static getPlayerSrvice()Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;
    .locals 1

    .prologue
    .line 658
    sget-object v0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mService:Landroid/app/Service;

    check-cast v0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    return-object v0
.end method

.method private getRadioUrl(Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 758
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mPlayerConfig:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerConfig;

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerConfig;->isUseSystemPlayer()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 759
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mPlayerConfig:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerConfig;

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerConfig;->isUseRadioHighBitrate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 760
    invoke-virtual {p1}, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->getRate64TsUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 761
    invoke-virtual {p1}, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->getRate64TsUrl()Ljava/lang/String;

    move-result-object v0

    .line 770
    :goto_0
    return-object v0

    .line 763
    :cond_0
    invoke-virtual {p1}, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->getRate24TsUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 766
    :cond_1
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mPlayerConfig:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerConfig;

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerConfig;->isUseRadioHighBitrate()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 767
    invoke-virtual {p1}, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->getRate64AacUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 768
    invoke-virtual {p1}, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->getRate64AacUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 770
    :cond_2
    invoke-virtual {p1}, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->getRate24AacUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getSoundHistoryPos(J)I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 776
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mPlayerConfig:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerConfig;

    invoke-virtual {v1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerConfig;->isBreakpointResume()Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-lez v1, :cond_0

    .line 777
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mPlayHistory:Landroid/content/SharedPreferences;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 779
    :cond_0
    return v0
.end method

.method private getTrackUrl(Lcom/ximalaya/ting/android/opensdk/model/track/Track;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 729
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mIXmGetDownloadPlayPathCallback:Lcom/ximalaya/ting/android/opensdk/player/service/IXmGetDownloadPlayPathCallback;

    if-eqz v0, :cond_0

    .line 730
    const/4 v0, 0x0

    .line 732
    :try_start_0
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mIXmGetDownloadPlayPathCallback:Lcom/ximalaya/ting/android/opensdk/player/service/IXmGetDownloadPlayPathCallback;

    .line 733
    invoke-interface {v1, p1}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmGetDownloadPlayPathCallback;->getDownloadPlayPath(Lcom/ximalaya/ting/android/opensdk/model/track/Track;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 736
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 738
    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 740
    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    .line 754
    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    .line 750
    :cond_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mPlayerConfig:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerConfig;

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerConfig;->isUseTrackHighBitrate()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 751
    invoke-virtual {p1}, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->getPlayUrl64()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 752
    invoke-virtual {p1}, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->getPlayUrl64()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 754
    :cond_1
    invoke-virtual {p1}, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->getPlayUrl32()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private isNewList(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 714
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mLastModel:Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mLastModel:Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 715
    const/4 v0, 0x0

    .line 717
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private play(IZ)Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 867
    if-ltz p1, :cond_4

    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mListControl:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->getCurrListSize()I

    move-result v0

    if-ge p1, v0, :cond_4

    .line 869
    :try_start_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mPlayerControl:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->getCurrentPos()I

    move-result v0

    .line 870
    iget-object v2, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mListControl:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;

    invoke-virtual {v2, p1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->setCurrIndex(I)V

    .line 871
    iget-object v2, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mListControl:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;

    invoke-virtual {v2, p1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->getPlayableModel(I)Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;

    move-result-object v2

    .line 872
    if-nez v2, :cond_1

    .line 873
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mLastModel:Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;

    move v0, v1

    .line 898
    :cond_0
    :goto_0
    return v0

    .line 876
    :cond_1
    iget-object v3, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mLastModel:Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;

    invoke-virtual {v2, v3}, Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 877
    iget-object v3, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mPlayerControl:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;

    invoke-virtual {v3}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->pause()Z

    .line 878
    iget-object v3, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mPlayerStatusListener:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;

    .line 879
    iget-object v4, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mListControl:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;

    invoke-virtual {v4}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->getLastIndex()I

    move-result v4

    .line 878
    invoke-interface {v3, p1, v4, v0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;->onSoundSwitch(III)V

    .line 880
    iput-object v2, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mLastModel:Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;

    .line 881
    invoke-direct {p0, v2, p2}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->playTrackPrivate(Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;Z)Z

    move-result v0

    goto :goto_0

    .line 883
    :cond_2
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mAdsManager:Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->isAdsActive()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 884
    goto :goto_0

    .line 886
    :cond_3
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mPlayerControl:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->play()Z

    move-result v0

    .line 887
    if-nez v0, :cond_0

    .line 888
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mLastModel:Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;

    invoke-direct {p0, v0, p2}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->playTrackPrivate(Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 896
    :cond_4
    iput-object v5, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mLastModel:Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;

    move v0, v1

    .line 898
    goto :goto_0
.end method

.method private playTrack(Lcom/ximalaya/ting/android/opensdk/model/track/Track;Z)V
    .locals 3

    .prologue
    .line 798
    invoke-virtual {p1}, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->getDataId()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->getSoundHistoryPos(J)I

    move-result v0

    .line 799
    if-eqz p2, :cond_0

    .line 800
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mPlayerControl:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;

    invoke-direct {p0, p1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->getTrackUrl(Lcom/ximalaya/ting/android/opensdk/model/track/Track;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->initAndPlay(Ljava/lang/String;I)V

    .line 804
    :goto_0
    return-void

    .line 802
    :cond_0
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mPlayerControl:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;

    invoke-direct {p0, p1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->getTrackUrl(Lcom/ximalaya/ting/android/opensdk/model/track/Track;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->init(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private playTrackPrivate(Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;Z)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 903
    iget-object v2, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mPlayerAudioFocusControl:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl;

    invoke-virtual {v2}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl;->setAudioFocusAtStartState()V

    .line 904
    instance-of v2, p1, Lcom/ximalaya/ting/android/opensdk/model/track/Track;

    if-eqz v2, :cond_1

    .line 905
    check-cast p1, Lcom/ximalaya/ting/android/opensdk/model/track/Track;

    .line 906
    if-eqz p2, :cond_0

    .line 907
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mAdsManager:Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;

    new-instance v2, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$3;

    invoke-direct {v2, p0, p1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$3;-><init>(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;Lcom/ximalaya/ting/android/opensdk/model/track/Track;)V

    invoke-virtual {v1, p1, v2}, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->playAds(Lcom/ximalaya/ting/android/opensdk/model/track/Track;Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$PlayAdsCallback;)V

    .line 931
    :goto_0
    return v0

    .line 920
    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1, v1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->playTrack(Lcom/ximalaya/ting/android/opensdk/model/track/Track;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 921
    :catch_0
    move-exception v1

    .line 922
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 926
    :cond_1
    instance-of v2, p1, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;

    if-eqz v2, :cond_2

    .line 927
    check-cast p1, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;

    .line 928
    iget-object v2, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mPlayerControl:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;

    invoke-direct {p0, p1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->getRadioUrl(Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->init(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 931
    goto :goto_0
.end method

.method private saveSoundHistoryPos(JI)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 784
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 795
    :goto_0
    return-void

    .line 787
    :cond_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mPlayHistory:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 788
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 790
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_1

    .line 791
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 793
    :cond_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method


# virtual methods
.method public getPlayerImpl()Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$XmPlayerImpl;
    .locals 1

    .prologue
    .line 662
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mPlayerImpl:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$XmPlayerImpl;

    return-object v0
.end method

.method public isPlaying()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 673
    .line 674
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mPlayerControl:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;

    if-eqz v0, :cond_2

    .line 675
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mPlayerControl:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->isPlaying()Z

    move-result v0

    .line 678
    :goto_0
    iget-object v2, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mAdsManager:Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;

    if-eqz v2, :cond_1

    .line 679
    iget-object v2, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mAdsManager:Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;

    invoke-virtual {v2}, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->isAdsPlaying()Z

    move-result v2

    .line 682
    :goto_1
    if-nez v0, :cond_0

    if-nez v2, :cond_0

    :goto_2
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_2

    :cond_1
    move v2, v1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3

    .prologue
    .line 692
    const-string v0, "XmPlayerService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onBind "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mPlayerImpl:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$XmPlayerImpl;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mPlayerImpl:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$XmPlayerImpl;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 619
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 620
    sget-object v0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mService:Landroid/app/Service;

    if-nez v0, :cond_0

    .line 621
    sput-object p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mService:Landroid/app/Service;

    .line 623
    :cond_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mAppCtx:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 624
    invoke-virtual {p0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mAppCtx:Landroid/content/Context;

    .line 626
    :cond_1
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mPlayerConfig:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerConfig;

    if-nez v0, :cond_2

    .line 627
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mAppCtx:Landroid/content/Context;

    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerConfig;->getInstance(Landroid/content/Context;)Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mPlayerConfig:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerConfig;

    .line 629
    :cond_2
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mPlayerControl:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;

    if-nez v0, :cond_3

    .line 630
    new-instance v0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mAppCtx:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mPlayerControl:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;

    .line 631
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mPlayerControl:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mPlayerStatusListener:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;

    invoke-virtual {v0, v1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->setPlayerStatusListener(Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;)V

    .line 633
    :cond_3
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mListControl:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;

    if-nez v0, :cond_4

    .line 634
    new-instance v0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;

    invoke-direct {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;-><init>()V

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mListControl:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;

    .line 637
    :cond_4
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mPlayerImpl:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$XmPlayerImpl;

    if-nez v0, :cond_5

    .line 638
    new-instance v0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$XmPlayerImpl;

    invoke-direct {v0, p0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$XmPlayerImpl;-><init>(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;)V

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mPlayerImpl:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$XmPlayerImpl;

    .line 640
    :cond_5
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mPlayHistory:Landroid/content/SharedPreferences;

    if-nez v0, :cond_6

    .line 641
    const-string v0, "play_history_record"

    .line 642
    const/4 v1, 0x0

    .line 641
    invoke-virtual {p0, v0, v1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mPlayHistory:Landroid/content/SharedPreferences;

    .line 644
    :cond_6
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mPlayerAudioFocusControl:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl;

    if-nez v0, :cond_7

    .line 645
    new-instance v0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl;

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mAppCtx:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mPlayerAudioFocusControl:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl;

    .line 647
    :cond_7
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager;->getInstance()Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mStatisticsManager:Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager;

    .line 648
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mAppCtx:Landroid/content/Context;

    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->getInstance(Landroid/content/Context;)Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mAdsManager:Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;

    .line 649
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mAdsManager:Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mAdsListener:Lcom/ximalaya/ting/android/opensdk/player/service/IXmAdsStatusListener;

    invoke-virtual {v0, v1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->setAdsStatusListener(Lcom/ximalaya/ting/android/opensdk/player/service/IXmAdsStatusListener;)V

    .line 650
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mAppCtx:Landroid/content/Context;

    .line 651
    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 650
    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 652
    new-instance v0, Lcom/ximalaya/ting/android/opensdk/player/receive/WireControlReceiver;

    invoke-direct {v0}, Lcom/ximalaya/ting/android/opensdk/player/receive/WireControlReceiver;-><init>()V

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->wireControlReceiver:Lcom/ximalaya/ting/android/opensdk/player/receive/WireControlReceiver;

    .line 653
    invoke-virtual {p0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->registerWireControlReciever()V

    .line 654
    const-string v0, "XmPlayerService"

    const-string v1, "---onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 698
    const-string v0, "XmPlayerService"

    const-string v1, "---onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 700
    if-eqz v0, :cond_0

    .line 702
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mediaButtonReceiver:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->unregisterMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 704
    :cond_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->wireControlReceiver:Lcom/ximalaya/ting/android/opensdk/player/receive/WireControlReceiver;

    invoke-virtual {p0, v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 705
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mPlayerControl:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->release()V

    .line 706
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mStatisticsManager:Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager;

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager;->release()V

    .line 707
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mAdsManager:Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->release()V

    .line 708
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mNotificationManager:Landroid/app/NotificationManager;

    iget v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mNotificationId:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 709
    const/4 v0, 0x0

    sput-object v0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mService:Landroid/app/Service;

    .line 710
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 711
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    .prologue
    .line 687
    const/4 v0, 0x1

    return v0
.end method

.method public pausePlay()Z
    .locals 1

    .prologue
    .line 823
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mPlayerAudioFocusControl:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl;

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl;->setAudioFocusAtPauseState()V

    .line 824
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mAdsManager:Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->isAdsActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 826
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mAdsManager:Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->pauseAd()V

    .line 827
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mPlayerStatusListener:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;

    if-eqz v0, :cond_0

    .line 828
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mPlayerStatusListener:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;

    invoke-interface {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;->onPlayPause()V

    .line 830
    :cond_0
    const/4 v0, 0x1

    .line 832
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mPlayerControl:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->pause()Z

    move-result v0

    goto :goto_0
.end method

.method public play(I)Z
    .locals 1

    .prologue
    .line 863
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->play(IZ)Z

    move-result v0

    return v0
.end method

.method public playNext()Z
    .locals 1

    .prologue
    .line 815
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mListControl:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->getNextIndex()I

    move-result v0

    .line 816
    if-ltz v0, :cond_0

    .line 817
    invoke-virtual {p0, v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->play(I)Z

    move-result v0

    .line 819
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public playPre()Z
    .locals 1

    .prologue
    .line 807
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mListControl:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->getPreIndex()I

    move-result v0

    .line 808
    if-ltz v0, :cond_0

    .line 809
    invoke-virtual {p0, v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->play(I)Z

    move-result v0

    .line 811
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerWireControlReciever()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1296
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1297
    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1298
    const-class v3, Lcom/ximalaya/ting/android/opensdk/player/receive/WireControlReceiver;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1297
    iput-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mediaButtonReceiver:Landroid/content/ComponentName;

    .line 1299
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mediaButtonReceiver:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 1300
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_1

    .line 1301
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mRemoteControlClient:Landroid/media/RemoteControlClient;

    if-nez v1, :cond_0

    .line 1302
    new-instance v1, Landroid/content/Intent;

    .line 1303
    const-string v2, "android.intent.action.MEDIA_BUTTON"

    .line 1302
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1304
    iget-object v2, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mediaButtonReceiver:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1305
    invoke-static {p0, v4, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 1309
    new-instance v2, Landroid/media/RemoteControlClient;

    .line 1310
    invoke-direct {v2, v1}, Landroid/media/RemoteControlClient;-><init>(Landroid/app/PendingIntent;)V

    .line 1309
    iput-object v2, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mRemoteControlClient:Landroid/media/RemoteControlClient;

    .line 1311
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mRemoteControlClient:Landroid/media/RemoteControlClient;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->registerRemoteControlClient(Landroid/media/RemoteControlClient;)V

    .line 1314
    :cond_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mRemoteControlClient:Landroid/media/RemoteControlClient;

    .line 1315
    const/16 v1, 0xb5

    invoke-virtual {v0, v1}, Landroid/media/RemoteControlClient;->setTransportControlFlags(I)V

    .line 1321
    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    .line 1322
    const-string v1, "android.intent.action.MEDIA_BUTTON"

    .line 1321
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1323
    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 1324
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->wireControlReceiver:Lcom/ximalaya/ting/android/opensdk/player/receive/WireControlReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    .line 1325
    const-string v2, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1324
    invoke-virtual {p0, v0, v1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1326
    return-void
.end method

.method public setVolume(FF)V
    .locals 1

    .prologue
    .line 666
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mPlayerControl:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;

    if-nez v0, :cond_0

    .line 670
    :goto_0
    return-void

    .line 669
    :cond_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mPlayerControl:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;

    invoke-virtual {v0, p1, p2}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->setVolume(FF)V

    goto :goto_0
.end method

.method public startPlay()Z
    .locals 2

    .prologue
    .line 841
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mPlayerAudioFocusControl:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl;

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl;->setAudioFocusAtStartState()V

    .line 842
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mAdsManager:Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->isAdsActive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 844
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mAdsManager:Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->playAd()V

    .line 845
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mPlayerStatusListener:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;

    if-eqz v0, :cond_0

    .line 846
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mPlayerStatusListener:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;

    invoke-interface {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;->onPlayStart()V

    .line 848
    :cond_0
    const/4 v0, 0x1

    .line 859
    :cond_1
    :goto_0
    return v0

    .line 851
    :cond_2
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mPlayerControl:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->play()Z

    move-result v0

    .line 853
    if-nez v0, :cond_1

    .line 854
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mListControl:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;

    invoke-virtual {v1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->getCurrIndex()I

    move-result v1

    .line 855
    if-ltz v1, :cond_1

    .line 856
    invoke-virtual {p0, v1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->play(I)Z

    move-result v0

    goto :goto_0
.end method

.method public stopPlay()Z
    .locals 1

    .prologue
    .line 836
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mPlayerAudioFocusControl:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl;

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerAudioFocusControl;->setAudioFocusAtStopState()V

    .line 837
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->mPlayerControl:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->stop()Z

    move-result v0

    return v0
.end method
