.class public Lcom/ximalaya/ting/android/player/XMediaPlayer;
.super Lcom/ximalaya/ting/android/player/XMediaplayerJNI;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final MEDIA_BUFFERING_UPDATE:I = 0x3

.field private static final MEDIA_ERROR:I = 0x64

.field public static final MEDIA_ERROR_ARCH_UNSUPPORTED:I = -0x3f3

.field public static final MEDIA_ERROR_IO:I = -0x3ec

.field public static final MEDIA_ERROR_MALFORMED:I = -0x3ef

.field public static final MEDIA_ERROR_NOT_VALID_FOR_PROGRESSIVE_PLAYBACK:I = 0xc8

.field public static final MEDIA_ERROR_SERVER_DIED:I = 0x64

.field public static final MEDIA_ERROR_TIMED_OUT:I = -0x6e

.field public static final MEDIA_ERROR_UNKNOWN:I = 0x1

.field public static final MEDIA_ERROR_UNSUPPORTED:I = -0x3f2

.field private static final MEDIA_INFO:I = 0xc8

.field public static final MEDIA_INFO_BUFFERING_END:I = 0x2be

.field public static final MEDIA_INFO_BUFFERING_START:I = 0x2bd

.field public static final MEDIA_INFO_DOWNLOAD_RATE_CHANGED:I = 0x385

.field public static final MEDIA_INFO_NOT_SEEKABLE:I = 0x321

.field public static final MEDIA_INFO_VIDEO_TRACK_LAGGING:I = 0x2bc

.field private static final MEDIA_NOP:I = 0x0

.field private static final MEDIA_PAUSED:I = 0x7

.field private static final MEDIA_PLAYBACK_COMPLETE:I = 0x2

.field private static final MEDIA_PREPARED:I = 0x1

.field private static final MEDIA_SEEK_COMPLETE:I = 0x4

.field private static final MEDIA_SET_VIDEO_SIZE:I = 0x5

.field private static final MEDIA_SKIPPED:I = 0x9

.field private static final MEDIA_STARTED:I = 0x6

.field private static final MEDIA_STOPPED:I = 0x8

.field private static final MEDIA_SUBTITLE_DATA:I = 0xc9

.field private static final MEDIA_TIMED_CHANGE:I = 0xca

.field private static final MEDIA_TIMED_TEXT:I = 0x63

.field private static final MSG_COMPLETE:I = 0x9

.field private static final MSG_INCREMENTAL_PREPARE:I = 0x2

.field private static final MSG_INIT:I = 0xa

.field private static final MSG_PAUSE:I = 0x3

.field private static final MSG_PREPARE:I = 0x1

.field private static final MSG_RELEASE:I = 0x5

.field private static final MSG_RESET:I = 0x7

.field private static final MSG_SEEK_TO:I = 0x6

.field private static final MSG_SET_DATA_SOURCE:I = 0x8

.field private static final MSG_START:I = 0x0

.field private static final MSG_STOP:I = 0x4


# instance fields
.field private mEventHandler:Lcom/ximalaya/ting/android/player/XMediaPlayer$EventHandler;

.field private final mHandler:Landroid/os/Handler;

.field private final mInternalPlaybackThread:Landroid/os/HandlerThread;

.field private mOnBufferingUpdateListener:Lcom/ximalaya/ting/android/player/XMediaPlayer$OnBufferingUpdateListener;

.field private mOnCompletionListener:Lcom/ximalaya/ting/android/player/XMediaPlayer$OnCompletionListener;

.field private mOnErrorListener:Lcom/ximalaya/ting/android/player/XMediaPlayer$OnErrorListener;

.field private mOnInfoListener:Lcom/ximalaya/ting/android/player/XMediaPlayer$OnInfoListener;

.field private mOnPreparedListener:Lcom/ximalaya/ting/android/player/XMediaPlayer$OnPreparedListener;

.field private mOnSeekCompleteListener:Lcom/ximalaya/ting/android/player/XMediaPlayer$OnSeekCompleteListener;

.field private mOnTimedChangeListener:Lcom/ximalaya/ting/android/player/XMediaPlayer$OnPositionChangeListener;

.field private volatile mPlayState:I

.field private mStayAwake:Z

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 54
    invoke-direct {p0}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;-><init>()V

    .line 27
    iput-object v3, p0, Lcom/ximalaya/ting/android/player/XMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 56
    const/4 v0, 0x1

    iput v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayer;->mPlayState:I

    .line 58
    new-instance v0, Lcom/ximalaya/ting/android/player/PriorityHandlerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 59
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ":Handler"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, -0x10

    invoke-direct {v0, v1, v2}, Lcom/ximalaya/ting/android/player/PriorityHandlerThread;-><init>(Ljava/lang/String;I)V

    .line 58
    iput-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayer;->mInternalPlaybackThread:Landroid/os/HandlerThread;

    .line 60
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayer;->mInternalPlaybackThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 61
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/ximalaya/ting/android/player/XMediaPlayer;->mInternalPlaybackThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayer;->mHandler:Landroid/os/Handler;

    .line 62
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayer;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 66
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67
    new-instance v1, Lcom/ximalaya/ting/android/player/XMediaPlayer$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Lcom/ximalaya/ting/android/player/XMediaPlayer$EventHandler;-><init>(Lcom/ximalaya/ting/android/player/XMediaPlayer;Lcom/ximalaya/ting/android/player/XMediaPlayer;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/ximalaya/ting/android/player/XMediaPlayer;->mEventHandler:Lcom/ximalaya/ting/android/player/XMediaPlayer$EventHandler;

    .line 74
    :goto_0
    return-void

    .line 68
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 69
    new-instance v1, Lcom/ximalaya/ting/android/player/XMediaPlayer$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Lcom/ximalaya/ting/android/player/XMediaPlayer$EventHandler;-><init>(Lcom/ximalaya/ting/android/player/XMediaPlayer;Lcom/ximalaya/ting/android/player/XMediaPlayer;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/ximalaya/ting/android/player/XMediaPlayer;->mEventHandler:Lcom/ximalaya/ting/android/player/XMediaPlayer$EventHandler;

    goto :goto_0

    .line 71
    :cond_1
    iput-object v3, p0, Lcom/ximalaya/ting/android/player/XMediaPlayer;->mEventHandler:Lcom/ximalaya/ting/android/player/XMediaPlayer$EventHandler;

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/ximalaya/ting/android/player/XMediaPlayer;)I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayer;->mPlayState:I

    return v0
.end method

.method static synthetic access$1(Lcom/ximalaya/ting/android/player/XMediaPlayer;)Lcom/ximalaya/ting/android/player/XMediaPlayer$OnPreparedListener;
    .locals 1

    .prologue
    .line 565
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayer;->mOnPreparedListener:Lcom/ximalaya/ting/android/player/XMediaPlayer$OnPreparedListener;

    return-object v0
.end method

.method static synthetic access$2(Lcom/ximalaya/ting/android/player/XMediaPlayer;)Lcom/ximalaya/ting/android/player/XMediaPlayer$OnCompletionListener;
    .locals 1

    .prologue
    .line 592
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayer;->mOnCompletionListener:Lcom/ximalaya/ting/android/player/XMediaPlayer$OnCompletionListener;

    return-object v0
.end method

.method static synthetic access$3(Lcom/ximalaya/ting/android/player/XMediaPlayer;)Lcom/ximalaya/ting/android/player/XMediaPlayer$OnBufferingUpdateListener;
    .locals 1

    .prologue
    .line 627
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayer;->mOnBufferingUpdateListener:Lcom/ximalaya/ting/android/player/XMediaPlayer$OnBufferingUpdateListener;

    return-object v0
.end method

.method static synthetic access$4(Lcom/ximalaya/ting/android/player/XMediaPlayer;)Lcom/ximalaya/ting/android/player/XMediaPlayer$OnSeekCompleteListener;
    .locals 1

    .prologue
    .line 654
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayer;->mOnSeekCompleteListener:Lcom/ximalaya/ting/android/player/XMediaPlayer$OnSeekCompleteListener;

    return-object v0
.end method

.method static synthetic access$5(Lcom/ximalaya/ting/android/player/XMediaPlayer;I)V
    .locals 0

    .prologue
    .line 50
    iput p1, p0, Lcom/ximalaya/ting/android/player/XMediaPlayer;->mPlayState:I

    return-void
.end method

.method static synthetic access$6(Lcom/ximalaya/ting/android/player/XMediaPlayer;)Lcom/ximalaya/ting/android/player/XMediaPlayer$OnErrorListener;
    .locals 1

    .prologue
    .line 739
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayer;->mOnErrorListener:Lcom/ximalaya/ting/android/player/XMediaPlayer$OnErrorListener;

    return-object v0
.end method

.method static synthetic access$7(Lcom/ximalaya/ting/android/player/XMediaPlayer;)Lcom/ximalaya/ting/android/player/XMediaPlayer$OnInfoListener;
    .locals 1

    .prologue
    .line 814
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayer;->mOnInfoListener:Lcom/ximalaya/ting/android/player/XMediaPlayer$OnInfoListener;

    return-object v0
.end method

.method static synthetic access$8(Lcom/ximalaya/ting/android/player/XMediaPlayer;)Lcom/ximalaya/ting/android/player/XMediaPlayer$OnPositionChangeListener;
    .locals 1

    .prologue
    .line 845
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayer;->mOnTimedChangeListener:Lcom/ximalaya/ting/android/player/XMediaPlayer$OnPositionChangeListener;

    return-object v0
.end method

.method private stayAwake(Z)V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 117
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_1

    .line 118
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 123
    :cond_0
    :goto_0
    iput-boolean p1, p0, Lcom/ximalaya/ting/android/player/XMediaPlayer;->mStayAwake:Z

    .line 124
    return-void

    .line 119
    :cond_1
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0
.end method


# virtual methods
.method public getCurrentPosition()I
    .locals 2

    .prologue
    .line 189
    iget v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayer;->mPlayState:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 190
    const/4 v0, 0x0

    .line 192
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->getCurrentPosition()I

    move-result v0

    goto :goto_0
.end method

.method public getDuration()I
    .locals 2

    .prologue
    .line 197
    iget v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayer;->mPlayState:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 198
    const/4 v0, 0x0

    .line 200
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->getDuration()I

    move-result v0

    goto :goto_0
.end method

.method public getPlayState()I
    .locals 1

    .prologue
    .line 229
    iget v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayer;->mPlayState:I

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 235
    iget v2, p0, Lcom/ximalaya/ting/android/player/XMediaPlayer;->mPlayState:I

    const/16 v3, 0xc

    if-ne v2, v3, :cond_0

    .line 236
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    .line 237
    const-string v2, "handleMessage00 mPlayState NOT_ARCH_SUPPORT"

    .line 236
    invoke-static {v0, v2}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    move v0, v1

    .line 332
    :goto_0
    return v0

    .line 240
    :cond_0
    sget-object v2, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "handleMessage00 mPlayState:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 241
    iget v4, p0, Lcom/ximalaya/ting/android/player/XMediaPlayer;->mPlayState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 240
    invoke-static {v2, v3}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 245
    :try_start_0
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 263
    :pswitch_1
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    const-string v2, "handleMessage00 STARTED start"

    invoke-static {v0, v2}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 264
    const/4 v0, 0x4

    iput v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayer;->mPlayState:I

    .line 265
    invoke-super {p0}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->start()V

    .line 266
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    const-string v2, "handleMessage00 STARTED end"

    invoke-static {v0, v2}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    move v0, v1

    .line 267
    goto :goto_0

    .line 247
    :pswitch_2
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    .line 248
    const-string v2, "handleMessage00 MSG_INIT start"

    .line 247
    invoke-static {v0, v2}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 249
    invoke-virtual {p0}, Lcom/ximalaya/ting/android/player/XMediaPlayer;->xmediaplayerInit()V

    .line 250
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    const-string v2, "handleMessage00 MSG_INIT end"

    invoke-static {v0, v2}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    move v0, v1

    .line 251
    goto :goto_0

    .line 254
    :pswitch_3
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    .line 255
    const-string v2, "handleMessage00 MSG_PREPARE start"

    .line 254
    invoke-static {v0, v2}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 256
    const/4 v0, 0x2

    iput v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayer;->mPlayState:I

    .line 257
    invoke-super {p0}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->prepareAsync()V

    .line 258
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    .line 259
    const-string v2, "handleMessage00 MSG_PREPARE end"

    .line 258
    invoke-static {v0, v2}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    move v0, v1

    .line 260
    goto :goto_0

    .line 270
    :pswitch_4
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    .line 271
    const-string v2, "handleMessage00 MSG_PAUSE start"

    .line 270
    invoke-static {v0, v2}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 272
    const/4 v0, 0x5

    iput v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayer;->mPlayState:I

    .line 273
    invoke-super {p0}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->pause()V

    .line 274
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    const-string v2, "handleMessage00 MSG_PAUSE end"

    invoke-static {v0, v2}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    move v0, v1

    .line 275
    goto :goto_0

    .line 278
    :pswitch_5
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    .line 279
    const-string v2, "handleMessage00 MSG_STOP start"

    .line 278
    invoke-static {v0, v2}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 280
    const/4 v0, 0x6

    iput v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayer;->mPlayState:I

    .line 281
    invoke-super {p0}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->stop()V

    .line 282
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    const-string v2, "handleMessage00 MSG_STOP end"

    invoke-static {v0, v2}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    move v0, v1

    .line 283
    goto/16 :goto_0

    .line 286
    :pswitch_6
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    .line 287
    const-string v2, "handleMessage00 MSG_RELEASE start"

    .line 286
    invoke-static {v0, v2}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 288
    const/16 v0, 0x9

    iput v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayer;->mPlayState:I

    .line 289
    invoke-super {p0}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->release()V

    .line 290
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayer;->mInternalPlaybackThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 291
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayer;->mInternalPlaybackThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->interrupt()V

    .line 292
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    .line 293
    const-string v2, "handleMessage00 MSG_RELEASE end"

    .line 292
    invoke-static {v0, v2}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    move v0, v1

    .line 294
    goto/16 :goto_0

    .line 297
    :pswitch_7
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    .line 298
    const-string v2, "handleMessage00 MSG_RESET start"

    .line 297
    invoke-static {v0, v2}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 299
    const/4 v0, 0x0

    iput v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayer;->mPlayState:I

    .line 300
    invoke-super {p0}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->reset()V

    .line 301
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    const-string v2, "handleMessage00 MSG_RESET end"

    invoke-static {v0, v2}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    move v0, v1

    .line 302
    goto/16 :goto_0

    .line 305
    :pswitch_8
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    .line 306
    const-string v2, "handleMessage00 MSG_SEEK_TO start"

    .line 305
    invoke-static {v0, v2}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 307
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 308
    invoke-super {p0, v0}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->seekTo(I)V

    .line 309
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    .line 310
    const-string v2, "handleMessage00 MSG_SEEK_TO end"

    .line 309
    invoke-static {v0, v2}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    move v0, v1

    .line 311
    goto/16 :goto_0

    .line 314
    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 315
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->setDataSource(Ljava/lang/String;)V

    :cond_1
    move v0, v1

    .line 317
    goto/16 :goto_0

    .line 320
    :pswitch_a
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    .line 321
    const-string v2, "handleMessage00 MSG_COMPLETE start"

    .line 320
    invoke-static {v0, v2}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 322
    const/16 v0, 0xb

    iput v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayer;->mPlayState:I

    .line 323
    invoke-super {p0}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->onCompletionInner()V

    .line 324
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    .line 325
    const-string v2, "handleMessage00 MSG_COMPLETE end"

    .line 324
    invoke-static {v0, v2}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 326
    goto/16 :goto_0

    .line 332
    :catch_0
    move-exception v0

    move v0, v1

    goto/16 :goto_0

    .line 245
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_8
        :pswitch_7
        :pswitch_9
        :pswitch_a
        :pswitch_2
    .end packed-switch
.end method

.method public isPlaying()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 205
    iget v1, p0, Lcom/ximalaya/ting/android/player/XMediaPlayer;->mPlayState:I

    const/16 v2, 0xc

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/ximalaya/ting/android/player/XMediaPlayer;->mPlayState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 208
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-super {p0}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/ximalaya/ting/android/player/XMediaPlayer;->mPlayState:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isUseSystemPlayer()Z
    .locals 1

    .prologue
    .line 860
    const/4 v0, 0x0

    return v0
.end method

.method public final mOnTimedChangeListenerInner()V
    .locals 2

    .prologue
    .line 407
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayer;->mEventHandler:Lcom/ximalaya/ting/android/player/XMediaPlayer$EventHandler;

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayer;->mEventHandler:Lcom/ximalaya/ting/android/player/XMediaPlayer$EventHandler;

    const/16 v1, 0xca

    invoke-virtual {v0, v1}, Lcom/ximalaya/ting/android/player/XMediaPlayer$EventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 409
    :cond_0
    return-void
.end method

.method public final onBufferingUpdateInner(I)V
    .locals 3

    .prologue
    .line 421
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayer;->mEventHandler:Lcom/ximalaya/ting/android/player/XMediaPlayer$EventHandler;

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayer;->mEventHandler:Lcom/ximalaya/ting/android/player/XMediaPlayer$EventHandler;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/ximalaya/ting/android/player/XMediaPlayer$EventHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 423
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 424
    :cond_0
    return-void
.end method

.method public final onCompletionInner()V
    .locals 2

    .prologue
    .line 413
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ximalaya/ting/android/player/XMediaPlayer;->stayAwake(Z)V

    .line 414
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayer;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 415
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayer;->mEventHandler:Lcom/ximalaya/ting/android/player/XMediaPlayer$EventHandler;

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayer;->mEventHandler:Lcom/ximalaya/ting/android/player/XMediaPlayer$EventHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/ximalaya/ting/android/player/XMediaPlayer$EventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 417
    :cond_0
    return-void
.end method

.method public final onErrorInner(II)V
    .locals 3

    .prologue
    .line 387
    const/16 v0, -0x3f3

    if-ne p2, v0, :cond_1

    .line 388
    const/16 v0, 0xc

    iput v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayer;->mPlayState:I

    .line 389
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    .line 390
    const-string v1, "onErrorInner mPlayState NOT_ARCH_SUPPORT"

    .line 389
    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 398
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->onErrorInner(II)V

    .line 399
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ximalaya/ting/android/player/XMediaPlayer;->stayAwake(Z)V

    .line 400
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayer;->mEventHandler:Lcom/ximalaya/ting/android/player/XMediaPlayer$EventHandler;

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayer;->mEventHandler:Lcom/ximalaya/ting/android/player/XMediaPlayer$EventHandler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1, p1, p2}, Lcom/ximalaya/ting/android/player/XMediaPlayer$EventHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 402
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 403
    :cond_0
    return-void

    .line 395
    :cond_1
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onErrorInner errorCode:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 396
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "extra:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 395
    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final onInfoInner(II)V
    .locals 2

    .prologue
    .line 373
    iget v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayer;->mPlayState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayer;->mPlayState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 383
    :cond_0
    :goto_0
    return-void

    .line 376
    :cond_1
    const/16 v0, 0x2bd

    if-ne p2, v0, :cond_3

    .line 377
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayer;->isBuffing:Z

    .line 381
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayer;->mEventHandler:Lcom/ximalaya/ting/android/player/XMediaPlayer$EventHandler;

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayer;->mEventHandler:Lcom/ximalaya/ting/android/player/XMediaPlayer$EventHandler;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1, p1, p2}, Lcom/ximalaya/ting/android/player/XMediaPlayer$EventHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 378
    :cond_3
    const/16 v0, 0x2be

    if-ne p2, v0, :cond_2

    .line 379
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayer;->isBuffing:Z

    goto :goto_1
.end method

.method public final onPreparedInner()V
    .locals 2

    .prologue
    .line 358
    invoke-super {p0}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->onPreparedInner()V

    .line 359
    const/4 v0, 0x3

    iput v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayer;->mPlayState:I

    .line 360
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayer;->mEventHandler:Lcom/ximalaya/ting/android/player/XMediaPlayer$EventHandler;

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayer;->mEventHandler:Lcom/ximalaya/ting/android/player/XMediaPlayer$EventHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ximalaya/ting/android/player/XMediaPlayer$EventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 362
    :cond_0
    return-void
.end method

.method public final onSeekCompletedInner()V
    .locals 2

    .prologue
    .line 366
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaPlayer;->Tag:Ljava/lang/String;

    const-string v1, "onSeekCompletedInner"

    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 367
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayer;->mEventHandler:Lcom/ximalaya/ting/android/player/XMediaPlayer$EventHandler;

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayer;->mEventHandler:Lcom/ximalaya/ting/android/player/XMediaPlayer$EventHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/ximalaya/ting/android/player/XMediaPlayer$EventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 369
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 99
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ximalaya/ting/android/player/XMediaPlayer;->stayAwake(Z)V

    .line 100
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 101
    return-void
.end method

.method public prepareAsync()V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 84
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 104
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ximalaya/ting/android/player/XMediaPlayer;->stayAwake(Z)V

    .line 105
    iput-object v1, p0, Lcom/ximalaya/ting/android/player/XMediaPlayer;->mOnPreparedListener:Lcom/ximalaya/ting/android/player/XMediaPlayer$OnPreparedListener;

    .line 106
    iput-object v1, p0, Lcom/ximalaya/ting/android/player/XMediaPlayer;->mOnBufferingUpdateListener:Lcom/ximalaya/ting/android/player/XMediaPlayer$OnBufferingUpdateListener;

    .line 107
    iput-object v1, p0, Lcom/ximalaya/ting/android/player/XMediaPlayer;->mOnCompletionListener:Lcom/ximalaya/ting/android/player/XMediaPlayer$OnCompletionListener;

    .line 108
    iput-object v1, p0, Lcom/ximalaya/ting/android/player/XMediaPlayer;->mOnSeekCompleteListener:Lcom/ximalaya/ting/android/player/XMediaPlayer$OnSeekCompleteListener;

    .line 109
    iput-object v1, p0, Lcom/ximalaya/ting/android/player/XMediaPlayer;->mOnErrorListener:Lcom/ximalaya/ting/android/player/XMediaPlayer$OnErrorListener;

    .line 110
    iput-object v1, p0, Lcom/ximalaya/ting/android/player/XMediaPlayer;->mOnInfoListener:Lcom/ximalaya/ting/android/player/XMediaPlayer$OnInfoListener;

    .line 111
    iput-object v1, p0, Lcom/ximalaya/ting/android/player/XMediaPlayer;->mOnTimedChangeListener:Lcom/ximalaya/ting/android/player/XMediaPlayer$OnPositionChangeListener;

    .line 112
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 113
    return-void
.end method

.method public removeProxy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 875
    invoke-static {v1}, Lcom/ximalaya/ting/android/player/PlayerUtil;->setProxyHost(Ljava/lang/String;)V

    .line 876
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/ximalaya/ting/android/player/PlayerUtil;->setProxyPort(I)V

    .line 877
    invoke-static {v1}, Lcom/ximalaya/ting/android/player/PlayerUtil;->setAuthorization(Ljava/lang/String;)V

    .line 879
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 213
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ximalaya/ting/android/player/XMediaPlayer;->stayAwake(Z)V

    .line 214
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 215
    return-void
.end method

.method public seekTo(I)V
    .locals 3

    .prologue
    .line 219
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 220
    return-void
.end method

.method public setAudioStreamType(I)V
    .locals 0

    .prologue
    .line 129
    return-void
.end method

.method public setDataSource(Ljava/io/FileDescriptor;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 134
    invoke-virtual {p0, p2}, Lcom/ximalaya/ting/android/player/XMediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayer;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 79
    return-void
.end method

.method public setDownloadBufferSize(J)V
    .locals 3

    .prologue
    .line 853
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 854
    const-wide/32 v0, 0x10000

    div-long v0, p1, v0

    long-to-int v0, v0

    sput v0, Lcom/ximalaya/ting/android/player/XMediaPlayerConstants;->DOWNLOAD_QUEUE_SIZE:I

    .line 856
    :cond_0
    return-void
.end method

.method public setOnBufferingUpdateListener(Lcom/ximalaya/ting/android/player/XMediaPlayer$OnBufferingUpdateListener;)V
    .locals 0

    .prologue
    .line 624
    iput-object p1, p0, Lcom/ximalaya/ting/android/player/XMediaPlayer;->mOnBufferingUpdateListener:Lcom/ximalaya/ting/android/player/XMediaPlayer$OnBufferingUpdateListener;

    .line 625
    return-void
.end method

.method public setOnCompletionListener(Lcom/ximalaya/ting/android/player/XMediaPlayer$OnCompletionListener;)V
    .locals 0

    .prologue
    .line 589
    iput-object p1, p0, Lcom/ximalaya/ting/android/player/XMediaPlayer;->mOnCompletionListener:Lcom/ximalaya/ting/android/player/XMediaPlayer$OnCompletionListener;

    .line 590
    return-void
.end method

.method public setOnErrorListener(Lcom/ximalaya/ting/android/player/XMediaPlayer$OnErrorListener;)V
    .locals 0

    .prologue
    .line 736
    iput-object p1, p0, Lcom/ximalaya/ting/android/player/XMediaPlayer;->mOnErrorListener:Lcom/ximalaya/ting/android/player/XMediaPlayer$OnErrorListener;

    .line 737
    return-void
.end method

.method public setOnInfoListener(Lcom/ximalaya/ting/android/player/XMediaPlayer$OnInfoListener;)V
    .locals 0

    .prologue
    .line 811
    iput-object p1, p0, Lcom/ximalaya/ting/android/player/XMediaPlayer;->mOnInfoListener:Lcom/ximalaya/ting/android/player/XMediaPlayer$OnInfoListener;

    .line 812
    return-void
.end method

.method public setOnPositionChangeListener(Lcom/ximalaya/ting/android/player/XMediaPlayer$OnPositionChangeListener;)V
    .locals 0

    .prologue
    .line 842
    iput-object p1, p0, Lcom/ximalaya/ting/android/player/XMediaPlayer;->mOnTimedChangeListener:Lcom/ximalaya/ting/android/player/XMediaPlayer$OnPositionChangeListener;

    .line 843
    return-void
.end method

.method public setOnPreparedListener(Lcom/ximalaya/ting/android/player/XMediaPlayer$OnPreparedListener;)V
    .locals 0

    .prologue
    .line 562
    iput-object p1, p0, Lcom/ximalaya/ting/android/player/XMediaPlayer;->mOnPreparedListener:Lcom/ximalaya/ting/android/player/XMediaPlayer$OnPreparedListener;

    .line 563
    return-void
.end method

.method public setOnSeekCompleteListener(Lcom/ximalaya/ting/android/player/XMediaPlayer$OnSeekCompleteListener;)V
    .locals 0

    .prologue
    .line 651
    iput-object p1, p0, Lcom/ximalaya/ting/android/player/XMediaPlayer;->mOnSeekCompleteListener:Lcom/ximalaya/ting/android/player/XMediaPlayer$OnSeekCompleteListener;

    .line 652
    return-void
.end method

.method public setProxy(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 866
    invoke-static {p1}, Lcom/ximalaya/ting/android/player/PlayerUtil;->setProxyHost(Ljava/lang/String;)V

    .line 867
    invoke-static {p2}, Lcom/ximalaya/ting/android/player/PlayerUtil;->setProxyPort(I)V

    .line 868
    invoke-static {p3}, Lcom/ximalaya/ting/android/player/PlayerUtil;->setAuthorization(Ljava/lang/String;)V

    .line 870
    return-void
.end method

.method public setVolume(FF)V
    .locals 0

    .prologue
    .line 224
    invoke-super {p0, p1, p2}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->setVolume(FF)V

    .line 225
    return-void
.end method

.method public setWakeMode(Landroid/content/Context;I)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 161
    if-nez p1, :cond_1

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_3

    .line 166
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 167
    const/4 v0, 0x1

    .line 168
    iget-object v2, p0, Lcom/ximalaya/ting/android/player/XMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 170
    :goto_1
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/ximalaya/ting/android/player/XMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move v2, v0

    .line 174
    :goto_2
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 173
    check-cast v0, Landroid/os/PowerManager;

    .line 176
    if-eqz v0, :cond_0

    .line 179
    const/high16 v3, 0x20000000

    or-int/2addr v3, p2

    .line 180
    const-class v4, Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 179
    invoke-virtual {v0, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 181
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 182
    if-eqz v2, :cond_0

    .line 183
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    move v2, v1

    goto :goto_2
.end method

.method public start()V
    .locals 2

    .prologue
    .line 88
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ximalaya/ting/android/player/XMediaPlayer;->stayAwake(Z)V

    .line 89
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 90
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 94
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ximalaya/ting/android/player/XMediaPlayer;->stayAwake(Z)V

    .line 95
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 96
    return-void
.end method
