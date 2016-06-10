.class public Lcom/ximalaya/ting/android/player/SMediaPlayer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/ximalaya/ting/android/player/XMediaplayerImpl;


# static fields
.field private static final MSG_COMPLETE:I = 0x9

.field private static final MSG_INCREMENTAL_PREPARE:I = 0x2

.field private static final MSG_PAUSE:I = 0x3

.field private static final MSG_PREPARE:I = 0x1

.field private static final MSG_RELEASE:I = 0x5

.field private static final MSG_RESET:I = 0x7

.field private static final MSG_SEEK_TO:I = 0x6

.field private static final MSG_SET_DATA_SOURCE:I = 0x8

.field private static final MSG_START:I = 0x0

.field private static final MSG_STOP:I = 0x4


# instance fields
.field private hasSetDataSource:Z

.field private isBuffering:Z

.field private isPrepareing:Z

.field private isSeeking:Z

.field private mAudioType:Lcom/ximalaya/ting/android/player/XMediaplayerJNI$AudioType;

.field private mCurrentPosition:I

.field private mDuration:I

.field private mEventHandler:Landroid/os/Handler;

.field private final mHandler:Landroid/os/Handler;

.field private final mInternalPlaybackThread:Landroid/os/HandlerThread;

.field public mMediaPlayer:Landroid/media/MediaPlayer;

.field private mOnPositionChangeListener:Lcom/ximalaya/ting/android/player/XMediaPlayer$OnPositionChangeListener;

.field private mPlayState:I

.field private mPlayUrl:Ljava/lang/String;

.field private runnable:Ljava/lang/Runnable;

.field private time:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-boolean v2, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer;->isSeeking:Z

    .line 46
    iput-boolean v2, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer;->isBuffering:Z

    .line 47
    iput-boolean v2, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer;->isPrepareing:Z

    .line 71
    iput v2, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer;->mCurrentPosition:I

    .line 80
    iput v2, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer;->mDuration:I

    .line 126
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer;->time:J

    .line 245
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$AudioType;->NORMAL_FILE:Lcom/ximalaya/ting/android/player/XMediaplayerJNI$AudioType;

    iput-object v0, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer;->mAudioType:Lcom/ximalaya/ting/android/player/XMediaplayerJNI$AudioType;

    .line 246
    iput-boolean v2, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer;->hasSetDataSource:Z

    .line 399
    new-instance v0, Lcom/ximalaya/ting/android/player/SMediaPlayer$1;

    invoke-direct {v0, p0}, Lcom/ximalaya/ting/android/player/SMediaPlayer$1;-><init>(Lcom/ximalaya/ting/android/player/SMediaPlayer;)V

    iput-object v0, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer;->runnable:Ljava/lang/Runnable;

    .line 50
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 51
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 52
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer;->mEventHandler:Landroid/os/Handler;

    .line 53
    const/4 v0, 0x1

    iput v0, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer;->mPlayState:I

    .line 54
    new-instance v0, Lcom/ximalaya/ting/android/player/PriorityHandlerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 55
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

    .line 54
    iput-object v0, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer;->mInternalPlaybackThread:Landroid/os/HandlerThread;

    .line 56
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer;->mInternalPlaybackThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 57
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer;->mInternalPlaybackThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer;->mHandler:Landroid/os/Handler;

    .line 58
    return-void
.end method

.method static synthetic access$0(Lcom/ximalaya/ting/android/player/SMediaPlayer;)Lcom/ximalaya/ting/android/player/XMediaPlayer$OnPositionChangeListener;
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer;->mOnPositionChangeListener:Lcom/ximalaya/ting/android/player/XMediaPlayer$OnPositionChangeListener;

    return-object v0
.end method

.method static synthetic access$1(Lcom/ximalaya/ting/android/player/SMediaPlayer;)I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer;->mPlayState:I

    return v0
.end method

.method static synthetic access$10(Lcom/ximalaya/ting/android/player/SMediaPlayer;Z)V
    .locals 0

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer;->isPrepareing:Z

    return-void
.end method

.method static synthetic access$11(Lcom/ximalaya/ting/android/player/SMediaPlayer;I)V
    .locals 0

    .prologue
    .line 80
    iput p1, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer;->mDuration:I

    return-void
.end method

.method static synthetic access$12(Lcom/ximalaya/ting/android/player/SMediaPlayer;I)V
    .locals 0

    .prologue
    .line 71
    iput p1, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer;->mCurrentPosition:I

    return-void
.end method

.method static synthetic access$13(Lcom/ximalaya/ting/android/player/SMediaPlayer;Z)V
    .locals 0

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer;->isSeeking:Z

    return-void
.end method

.method static synthetic access$2(Lcom/ximalaya/ting/android/player/SMediaPlayer;)Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer;->isBuffering:Z

    return v0
.end method

.method static synthetic access$3(Lcom/ximalaya/ting/android/player/SMediaPlayer;)Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer;->isSeeking:Z

    return v0
.end method

.method static synthetic access$4(Lcom/ximalaya/ting/android/player/SMediaPlayer;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer;->mEventHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$5(Lcom/ximalaya/ting/android/player/SMediaPlayer;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer;->runnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$6(Lcom/ximalaya/ting/android/player/SMediaPlayer;I)V
    .locals 0

    .prologue
    .line 40
    iput p1, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer;->mPlayState:I

    return-void
.end method

.method static synthetic access$7(Lcom/ximalaya/ting/android/player/SMediaPlayer;)V
    .locals 0

    .prologue
    .line 324
    invoke-direct {p0}, Lcom/ximalaya/ting/android/player/SMediaPlayer;->resetState()V

    return-void
.end method

.method static synthetic access$8(Lcom/ximalaya/ting/android/player/SMediaPlayer;Z)V
    .locals 0

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer;->isBuffering:Z

    return-void
.end method

.method static synthetic access$9(Lcom/ximalaya/ting/android/player/SMediaPlayer;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/ximalaya/ting/android/player/SMediaPlayer;->printTime(Ljava/lang/String;)V

    return-void
.end method

.method private printTime(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 140
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaPlayer;->Tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " nowtime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "long:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer;->time:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 141
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer;->time:J

    .line 142
    return-void
.end method

.method private resetState()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 325
    iput-boolean v0, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer;->isSeeking:Z

    .line 326
    iput-boolean v0, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer;->isBuffering:Z

    .line 327
    iput-boolean v0, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer;->isPrepareing:Z

    .line 328
    return-void
.end method


# virtual methods
.method public getAudioType()Lcom/ximalaya/ting/android/player/XMediaplayerJNI$AudioType;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer;->mAudioType:Lcom/ximalaya/ting/android/player/XMediaplayerJNI$AudioType;

    return-object v0
.end method

.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer;->isSeeking:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer;->isBuffering:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer;->isPrepareing:Z

    if-nez v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer;->mCurrentPosition:I

    .line 77
    :cond_0
    iget v0, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer;->mCurrentPosition:I

    return v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer;->isSeeking:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer;->isBuffering:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer;->isPrepareing:Z

    if-eqz v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer;->mDuration:I

    if-nez v0, :cond_2

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    iput v0, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer;->mDuration:I

    .line 86
    :cond_2
    iget v0, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer;->mDuration:I

    return v0
.end method

.method public getPlayState()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer;->mPlayState:I

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 165
    :try_start_0
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 241
    :goto_0
    :pswitch_0
    return v0

    .line 167
    :pswitch_1
    const/4 v0, 0x2

    iput v0, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer;->mPlayState:I

    .line 168
    const-string v0, "MSG_PREPARE start"

    invoke-direct {p0, v0}, Lcom/ximalaya/ting/android/player/SMediaPlayer;->printTime(Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 170
    const-string v0, "MSG_PREPARE end"

    invoke-direct {p0, v0}, Lcom/ximalaya/ting/android/player/SMediaPlayer;->printTime(Ljava/lang/String;)V

    move v0, v1

    .line 171
    goto :goto_0

    .line 174
    :pswitch_2
    const/4 v0, 0x4

    iput v0, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer;->mPlayState:I

    .line 175
    const-string v0, "MSG_START start"

    invoke-direct {p0, v0}, Lcom/ximalaya/ting/android/player/SMediaPlayer;->printTime(Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 177
    const-string v0, "MSG_START end"

    invoke-direct {p0, v0}, Lcom/ximalaya/ting/android/player/SMediaPlayer;->printTime(Ljava/lang/String;)V

    move v0, v1

    .line 178
    goto :goto_0

    .line 181
    :pswitch_3
    const/4 v0, 0x5

    iput v0, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer;->mPlayState:I

    .line 182
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    move v0, v1

    .line 183
    goto :goto_0

    .line 186
    :pswitch_4
    const/4 v0, 0x6

    iput v0, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer;->mPlayState:I

    .line 187
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    move v0, v1

    .line 188
    goto :goto_0

    .line 191
    :pswitch_5
    const/16 v0, 0x9

    iput v0, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer;->mPlayState:I

    .line 192
    const-string v0, "MSG_RELEASE start"

    invoke-direct {p0, v0}, Lcom/ximalaya/ting/android/player/SMediaPlayer;->printTime(Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 194
    const-string v0, "MSG_RELEASE end"

    invoke-direct {p0, v0}, Lcom/ximalaya/ting/android/player/SMediaPlayer;->printTime(Ljava/lang/String;)V

    move v0, v1

    .line 195
    goto :goto_0

    .line 198
    :pswitch_6
    const/4 v0, 0x0

    iput v0, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer;->mPlayState:I

    .line 199
    const-string v0, "MSG_RESET start"

    invoke-direct {p0, v0}, Lcom/ximalaya/ting/android/player/SMediaPlayer;->printTime(Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 201
    invoke-direct {p0}, Lcom/ximalaya/ting/android/player/SMediaPlayer;->resetState()V

    .line 202
    const-string v0, "MSG_RESET end"

    invoke-direct {p0, v0}, Lcom/ximalaya/ting/android/player/SMediaPlayer;->printTime(Ljava/lang/String;)V

    move v0, v1

    .line 203
    goto :goto_0

    .line 206
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 207
    iget-object v2, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, v0}, Landroid/media/MediaPlayer;->seekTo(I)V

    move v0, v1

    .line 208
    goto :goto_0

    .line 211
    :pswitch_8
    const-string v0, "MSG_SET_DATA_SOURCE start"

    invoke-direct {p0, v0}, Lcom/ximalaya/ting/android/player/SMediaPlayer;->printTime(Ljava/lang/String;)V

    .line 212
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_0

    .line 214
    :try_start_1
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 229
    :cond_0
    :goto_1
    :try_start_2
    const-string v0, "MSG_SET_DATA_SOURCE end"

    invoke-direct {p0, v0}, Lcom/ximalaya/ting/android/player/SMediaPlayer;->printTime(Ljava/lang/String;)V

    move v0, v1

    .line 230
    goto/16 :goto_0

    .line 215
    :catch_0
    move-exception v0

    .line 217
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 241
    :catch_1
    move-exception v0

    move v0, v1

    goto/16 :goto_0

    .line 218
    :catch_2
    move-exception v0

    .line 220
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_1

    .line 221
    :catch_3
    move-exception v0

    .line 223
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_1

    .line 224
    :catch_4
    move-exception v0

    .line 226
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 165
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_6
        :pswitch_8
    .end packed-switch
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer;->isSeeking:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer;->isBuffering:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer;->isPrepareing:Z

    if-nez v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    .line 93
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUseSystemPlayer()Z
    .locals 1

    .prologue
    .line 474
    const/4 v0, 0x1

    return v0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer;->mHandler:Landroid/os/Handler;

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
    const/4 v1, 0x1

    .line 105
    iput-boolean v1, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer;->isPrepareing:Z

    .line 106
    const-string v0, "prepareAsync"

    invoke-direct {p0, v0}, Lcom/ximalaya/ting/android/player/SMediaPlayer;->printTime(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 109
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    .line 130
    const-string v0, "release"

    invoke-direct {p0, v0}, Lcom/ximalaya/ting/android/player/SMediaPlayer;->printTime(Ljava/lang/String;)V

    .line 131
    invoke-direct {p0}, Lcom/ximalaya/ting/android/player/SMediaPlayer;->resetState()V

    .line 132
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer;->mOnPositionChangeListener:Lcom/ximalaya/ting/android/player/XMediaPlayer$OnPositionChangeListener;

    .line 134
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer;->mInternalPlaybackThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 135
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer;->mInternalPlaybackThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->interrupt()V

    .line 137
    return-void
.end method

.method public removeProxy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 489
    invoke-static {v1}, Lcom/ximalaya/ting/android/player/PlayerUtil;->setProxyHost(Ljava/lang/String;)V

    .line 490
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/ximalaya/ting/android/player/PlayerUtil;->setProxyPort(I)V

    .line 491
    invoke-static {v1}, Lcom/ximalaya/ting/android/player/PlayerUtil;->setAuthorization(Ljava/lang/String;)V

    .line 493
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 146
    const/4 v0, 0x0

    iput v0, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer;->mDuration:I

    .line 147
    iget-boolean v0, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer;->hasSetDataSource:Z

    if-eqz v0, :cond_0

    .line 148
    const-string v0, "reset"

    invoke-direct {p0, v0}, Lcom/ximalaya/ting/android/player/SMediaPlayer;->printTime(Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 152
    :cond_0
    return-void
.end method

.method public seekTo(I)V
    .locals 3

    .prologue
    .line 157
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer;->isSeeking:Z

    .line 158
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 160
    return-void
.end method

.method public setAudioStreamType(I)V
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 443
    return-void
.end method

.method public setDataSource(Ljava/io/FileDescriptor;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 447
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer;->hasSetDataSource:Z

    .line 449
    :try_start_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 461
    :goto_0
    return-void

    .line 450
    :catch_0
    move-exception v0

    .line 452
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 453
    :catch_1
    move-exception v0

    .line 455
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 456
    :catch_2
    move-exception v0

    .line 458
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 251
    const-string v0, "setDataSource"

    invoke-direct {p0, v0}, Lcom/ximalaya/ting/android/player/SMediaPlayer;->printTime(Ljava/lang/String;)V

    .line 252
    const/4 v0, 0x0

    iput v0, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer;->mDuration:I

    .line 253
    const-string v0, "m3u8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$AudioType;->M3U8_FILE:Lcom/ximalaya/ting/android/player/XMediaplayerJNI$AudioType;

    iput-object v0, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer;->mAudioType:Lcom/ximalaya/ting/android/player/XMediaplayerJNI$AudioType;

    .line 258
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer;->hasSetDataSource:Z

    .line 259
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 261
    return-void

    .line 256
    :cond_0
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$AudioType;->NORMAL_FILE:Lcom/ximalaya/ting/android/player/XMediaplayerJNI$AudioType;

    iput-object v0, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer;->mAudioType:Lcom/ximalaya/ting/android/player/XMediaplayerJNI$AudioType;

    goto :goto_0
.end method

.method public setDownloadBufferSize(J)V
    .locals 0

    .prologue
    .line 470
    return-void
.end method

.method public setOnBufferingUpdateListener(Lcom/ximalaya/ting/android/player/XMediaPlayer$OnBufferingUpdateListener;)V
    .locals 2

    .prologue
    .line 267
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 268
    new-instance v1, Lcom/ximalaya/ting/android/player/SMediaPlayer$2;

    invoke-direct {v1, p0, p1}, Lcom/ximalaya/ting/android/player/SMediaPlayer$2;-><init>(Lcom/ximalaya/ting/android/player/SMediaPlayer;Lcom/ximalaya/ting/android/player/XMediaPlayer$OnBufferingUpdateListener;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 278
    return-void
.end method

.method public setOnCompletionListener(Lcom/ximalaya/ting/android/player/XMediaPlayer$OnCompletionListener;)V
    .locals 2

    .prologue
    .line 283
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 284
    new-instance v1, Lcom/ximalaya/ting/android/player/SMediaPlayer$3;

    invoke-direct {v1, p0, p1}, Lcom/ximalaya/ting/android/player/SMediaPlayer$3;-><init>(Lcom/ximalaya/ting/android/player/SMediaPlayer;Lcom/ximalaya/ting/android/player/XMediaPlayer$OnCompletionListener;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 295
    return-void
.end method

.method public setOnErrorListener(Lcom/ximalaya/ting/android/player/XMediaPlayer$OnErrorListener;)V
    .locals 2

    .prologue
    .line 300
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/ximalaya/ting/android/player/SMediaPlayer$4;

    invoke-direct {v1, p0, p1}, Lcom/ximalaya/ting/android/player/SMediaPlayer$4;-><init>(Lcom/ximalaya/ting/android/player/SMediaPlayer;Lcom/ximalaya/ting/android/player/XMediaPlayer$OnErrorListener;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 322
    return-void
.end method

.method public setOnInfoListener(Lcom/ximalaya/ting/android/player/XMediaPlayer$OnInfoListener;)V
    .locals 2

    .prologue
    .line 333
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    const-string v1, "SMediaPlayer setOnInfoListener"

    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 334
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/ximalaya/ting/android/player/SMediaPlayer$5;

    invoke-direct {v1, p0, p1}, Lcom/ximalaya/ting/android/player/SMediaPlayer$5;-><init>(Lcom/ximalaya/ting/android/player/SMediaPlayer;Lcom/ximalaya/ting/android/player/XMediaPlayer$OnInfoListener;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 358
    return-void
.end method

.method public setOnPositionChangeListener(Lcom/ximalaya/ting/android/player/XMediaPlayer$OnPositionChangeListener;)V
    .locals 4

    .prologue
    .line 417
    iput-object p1, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer;->mOnPositionChangeListener:Lcom/ximalaya/ting/android/player/XMediaPlayer$OnPositionChangeListener;

    .line 418
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer;->mOnPositionChangeListener:Lcom/ximalaya/ting/android/player/XMediaPlayer$OnPositionChangeListener;

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer;->mEventHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer;->runnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 422
    :cond_0
    return-void
.end method

.method public setOnPreparedListener(Lcom/ximalaya/ting/android/player/XMediaPlayer$OnPreparedListener;)V
    .locals 2

    .prologue
    .line 363
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 364
    new-instance v1, Lcom/ximalaya/ting/android/player/SMediaPlayer$6;

    invoke-direct {v1, p0, p1}, Lcom/ximalaya/ting/android/player/SMediaPlayer$6;-><init>(Lcom/ximalaya/ting/android/player/SMediaPlayer;Lcom/ximalaya/ting/android/player/XMediaPlayer$OnPreparedListener;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 378
    return-void
.end method

.method public setOnSeekCompleteListener(Lcom/ximalaya/ting/android/player/XMediaPlayer$OnSeekCompleteListener;)V
    .locals 2

    .prologue
    .line 383
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 384
    new-instance v1, Lcom/ximalaya/ting/android/player/SMediaPlayer$7;

    invoke-direct {v1, p0, p1}, Lcom/ximalaya/ting/android/player/SMediaPlayer$7;-><init>(Lcom/ximalaya/ting/android/player/SMediaPlayer;Lcom/ximalaya/ting/android/player/XMediaPlayer$OnSeekCompleteListener;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 395
    return-void
.end method

.method public setProxy(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 480
    invoke-static {p1}, Lcom/ximalaya/ting/android/player/PlayerUtil;->setProxyHost(Ljava/lang/String;)V

    .line 481
    invoke-static {p2}, Lcom/ximalaya/ting/android/player/PlayerUtil;->setProxyPort(I)V

    .line 482
    invoke-static {p3}, Lcom/ximalaya/ting/android/player/PlayerUtil;->setAuthorization(Ljava/lang/String;)V

    .line 484
    return-void
.end method

.method public setVolume(FF)V
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 429
    return-void
.end method

.method public setWakeMode(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 436
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 113
    const-string v0, "start"

    invoke-direct {p0, v0}, Lcom/ximalaya/ting/android/player/SMediaPlayer;->printTime(Ljava/lang/String;)V

    .line 114
    iget v0, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer;->mPlayState:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer;->mPlayState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 117
    :cond_1
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 124
    return-void
.end method
