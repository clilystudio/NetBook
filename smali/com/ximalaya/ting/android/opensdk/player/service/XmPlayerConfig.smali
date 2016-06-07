.class public Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final KEY_BREAKPOINT_RESUME:Ljava/lang/String; = "KEY_BREAKPOINT_RESUME"

.field private static final KEY_USE_RADIO_HIGH_BITRATE:Ljava/lang/String; = "KEY_USE_RADIO_HIGH_BITRATE"

.field private static final KEY_USE_SYSTEM_PLAYER:Ljava/lang/String; = "KEY_USE_SYSTEM_PLAYER"

.field private static final KEY_USE_TRACK_HIGH_BITRATE:Ljava/lang/String; = "KEY_USE_TRACK_HIGH_BITRATE"

.field private static final PREFERENCE_MODE:I = 0x0

.field private static final PREFERENCE_NAME:Ljava/lang/String; = "xmplayer_config"

.field private static sInstance:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerConfig;

.field private static sLock:[B


# instance fields
.field private mAppCtx:Landroid/content/Context;

.field private mPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerConfig;->sLock:[B

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerConfig;->mAppCtx:Landroid/content/Context;

    .line 52
    invoke-direct {p0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerConfig;->init()V

    .line 53
    return-void
.end method

.method private apply(Landroid/content/SharedPreferences$Editor;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    .line 119
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    .line 121
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 127
    :goto_0
    return-void

    .line 125
    :cond_0
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerConfig;
    .locals 2

    .prologue
    .line 57
    sget-object v0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerConfig;->sInstance:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerConfig;

    if-nez v0, :cond_1

    .line 59
    sget-object v1, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerConfig;->sLock:[B

    monitor-enter v1

    .line 61
    :try_start_0
    sget-object v0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerConfig;->sInstance:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerConfig;

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerConfig;

    invoke-direct {v0, p0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerConfig;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerConfig;->sInstance:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerConfig;

    .line 59
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    :cond_1
    sget-object v0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerConfig;->sInstance:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerConfig;

    return-object v0

    .line 59
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 72
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerConfig;->mAppCtx:Landroid/content/Context;

    const-string v1, "xmplayer_config"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerConfig;->mPreferences:Landroid/content/SharedPreferences;

    .line 73
    return-void
.end method


# virtual methods
.method public isBreakpointResume()Z
    .locals 3

    .prologue
    .line 77
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "KEY_BREAKPOINT_RESUME"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isUseRadioHighBitrate()Z
    .locals 3

    .prologue
    .line 87
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "KEY_USE_RADIO_HIGH_BITRATE"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method protected isUseSystemPlayer()Z
    .locals 3

    .prologue
    .line 107
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "KEY_USE_SYSTEM_PLAYER"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isUseTrackHighBitrate()Z
    .locals 3

    .prologue
    .line 97
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "KEY_USE_TRACK_HIGH_BITRATE"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public release()V
    .locals 2

    .prologue
    .line 131
    sget-object v1, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerConfig;->sLock:[B

    monitor-enter v1

    .line 133
    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerConfig;->sInstance:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerConfig;

    .line 131
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setBreakpointResume(Z)V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerConfig;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "KEY_BREAKPOINT_RESUME"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerConfig;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 83
    return-void
.end method

.method public setUseRadioHighBitrate(Z)V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerConfig;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "KEY_USE_RADIO_HIGH_BITRATE"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerConfig;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 93
    return-void
.end method

.method protected setUseSystemPlayer(Z)V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerConfig;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "KEY_USE_SYSTEM_PLAYER"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerConfig;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 113
    return-void
.end method

.method public setUseTrackHighBitrate(Z)V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerConfig;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "KEY_USE_TRACK_HIGH_BITRATE"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerConfig;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 103
    return-void
.end method
