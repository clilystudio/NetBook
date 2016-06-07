.class public Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "XmPlayerControl"


# instance fields
.field private mAppCtx:Landroid/content/Context;

.field private mBuffering:Z

.field private mDuration:I

.field private mLastUrl:Ljava/lang/String;

.field private mMediaPlayer:Lcom/ximalaya/ting/android/player/XMediaplayerImpl;

.field private mOffset:I

.field private mOnBufferingUpdateListener:Lcom/ximalaya/ting/android/player/XMediaPlayer$OnBufferingUpdateListener;

.field private mOnCompletionListener:Lcom/ximalaya/ting/android/player/XMediaPlayer$OnCompletionListener;

.field private mOnErrorListener:Lcom/ximalaya/ting/android/player/XMediaPlayer$OnErrorListener;

.field private mOnInfoListener:Lcom/ximalaya/ting/android/player/XMediaPlayer$OnInfoListener;

.field private mOnPositionChangeListener:Lcom/ximalaya/ting/android/player/XMediaPlayer$OnPositionChangeListener;

.field private mOnPreparedListener:Lcom/ximalaya/ting/android/player/XMediaPlayer$OnPreparedListener;

.field private mOnSeekCompleteListener:Lcom/ximalaya/ting/android/player/XMediaPlayer$OnSeekCompleteListener;

.field private mPlayerStatusListener:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;

.field private mShoudPlay:Z

.field private volatile mState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->mShoudPlay:Z

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->mBuffering:Z

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->mAppCtx:Landroid/content/Context;

    .line 48
    return-void
.end method

.method static synthetic access$0(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;I)V
    .locals 0

    .prologue
    .line 36
    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->mState:I

    return-void
.end method

.method static synthetic access$1(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;)Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->mPlayerStatusListener:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;

    return-object v0
.end method

.method static synthetic access$2(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;I)V
    .locals 0

    .prologue
    .line 39
    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->mDuration:I

    return-void
.end method

.method static synthetic access$3(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;)Z
    .locals 1

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->mShoudPlay:Z

    return v0
.end method

.method static synthetic access$4(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;Z)V
    .locals 0

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->mShoudPlay:Z

    return-void
.end method

.method static synthetic access$5(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;)I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->mState:I

    return v0
.end method

.method static synthetic access$6(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;Z)V
    .locals 0

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->mBuffering:Z

    return-void
.end method

.method static synthetic access$7(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;)Z
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->mBuffering:Z

    return v0
.end method

.method private initMediaPlayerListener()V
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->mOnCompletionListener:Lcom/ximalaya/ting/android/player/XMediaPlayer$OnCompletionListener;

    if-nez v0, :cond_0

    .line 390
    new-instance v0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl$1;

    invoke-direct {v0, p0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl$1;-><init>(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;)V

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->mOnCompletionListener:Lcom/ximalaya/ting/android/player/XMediaPlayer$OnCompletionListener;

    .line 405
    :cond_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->mOnPreparedListener:Lcom/ximalaya/ting/android/player/XMediaPlayer$OnPreparedListener;

    if-nez v0, :cond_1

    .line 407
    new-instance v0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl$2;

    invoke-direct {v0, p0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl$2;-><init>(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;)V

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->mOnPreparedListener:Lcom/ximalaya/ting/android/player/XMediaPlayer$OnPreparedListener;

    .line 428
    :cond_1
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->mOnSeekCompleteListener:Lcom/ximalaya/ting/android/player/XMediaPlayer$OnSeekCompleteListener;

    if-nez v0, :cond_2

    .line 430
    new-instance v0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl$3;

    invoke-direct {v0, p0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl$3;-><init>(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;)V

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->mOnSeekCompleteListener:Lcom/ximalaya/ting/android/player/XMediaPlayer$OnSeekCompleteListener;

    .line 445
    :cond_2
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->mOnErrorListener:Lcom/ximalaya/ting/android/player/XMediaPlayer$OnErrorListener;

    if-nez v0, :cond_3

    .line 447
    new-instance v0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl$4;

    invoke-direct {v0, p0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl$4;-><init>(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;)V

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->mOnErrorListener:Lcom/ximalaya/ting/android/player/XMediaPlayer$OnErrorListener;

    .line 466
    :cond_3
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->mOnInfoListener:Lcom/ximalaya/ting/android/player/XMediaPlayer$OnInfoListener;

    if-nez v0, :cond_4

    .line 468
    new-instance v0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl$5;

    invoke-direct {v0, p0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl$5;-><init>(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;)V

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->mOnInfoListener:Lcom/ximalaya/ting/android/player/XMediaPlayer$OnInfoListener;

    .line 505
    :cond_4
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->mOnBufferingUpdateListener:Lcom/ximalaya/ting/android/player/XMediaPlayer$OnBufferingUpdateListener;

    if-nez v0, :cond_5

    .line 507
    new-instance v0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl$6;

    invoke-direct {v0, p0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl$6;-><init>(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;)V

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->mOnBufferingUpdateListener:Lcom/ximalaya/ting/android/player/XMediaPlayer$OnBufferingUpdateListener;

    .line 521
    :cond_5
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->mOnPositionChangeListener:Lcom/ximalaya/ting/android/player/XMediaPlayer$OnPositionChangeListener;

    if-nez v0, :cond_6

    .line 523
    new-instance v0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl$7;

    invoke-direct {v0, p0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl$7;-><init>(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;)V

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->mOnPositionChangeListener:Lcom/ximalaya/ting/android/player/XMediaPlayer$OnPositionChangeListener;

    .line 550
    :cond_6
    return-void
.end method

.method private initPlayerDataSource()V
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->mMediaPlayer:Lcom/ximalaya/ting/android/player/XMediaplayerImpl;

    if-nez v0, :cond_0

    .line 133
    invoke-direct {p0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->setupPlayer()Lcom/ximalaya/ting/android/player/XMediaplayerImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->mMediaPlayer:Lcom/ximalaya/ting/android/player/XMediaplayerImpl;

    .line 139
    :goto_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->mMediaPlayer:Lcom/ximalaya/ting/android/player/XMediaplayerImpl;

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->mLastUrl:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/ximalaya/ting/android/player/XMediaplayerImpl;->setDataSource(Ljava/lang/String;)V

    .line 140
    const/4 v0, 0x1

    iput v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->mState:I

    .line 141
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->mMediaPlayer:Lcom/ximalaya/ting/android/player/XMediaplayerImpl;

    invoke-interface {v0}, Lcom/ximalaya/ting/android/player/XMediaplayerImpl;->prepareAsync()V

    .line 142
    const/16 v0, 0x9

    iput v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->mState:I

    .line 143
    const/4 v0, 0x0

    iput v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->mDuration:I

    .line 148
    return-void

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->mMediaPlayer:Lcom/ximalaya/ting/android/player/XMediaplayerImpl;

    invoke-interface {v0}, Lcom/ximalaya/ting/android/player/XMediaplayerImpl;->reset()V

    goto :goto_0
.end method

.method private releaseLastPlayer()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 339
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->mMediaPlayer:Lcom/ximalaya/ting/android/player/XMediaplayerImpl;

    if-nez v0, :cond_0

    .line 369
    :goto_0
    return-void

    .line 345
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->mMediaPlayer:Lcom/ximalaya/ting/android/player/XMediaplayerImpl;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/ximalaya/ting/android/player/XMediaplayerImpl;->setOnBufferingUpdateListener(Lcom/ximalaya/ting/android/player/XMediaPlayer$OnBufferingUpdateListener;)V

    .line 346
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->mMediaPlayer:Lcom/ximalaya/ting/android/player/XMediaplayerImpl;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/ximalaya/ting/android/player/XMediaplayerImpl;->setOnCompletionListener(Lcom/ximalaya/ting/android/player/XMediaPlayer$OnCompletionListener;)V

    .line 347
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->mMediaPlayer:Lcom/ximalaya/ting/android/player/XMediaplayerImpl;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/ximalaya/ting/android/player/XMediaplayerImpl;->setOnPreparedListener(Lcom/ximalaya/ting/android/player/XMediaPlayer$OnPreparedListener;)V

    .line 348
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->mMediaPlayer:Lcom/ximalaya/ting/android/player/XMediaplayerImpl;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/ximalaya/ting/android/player/XMediaplayerImpl;->setOnSeekCompleteListener(Lcom/ximalaya/ting/android/player/XMediaPlayer$OnSeekCompleteListener;)V

    .line 349
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->mMediaPlayer:Lcom/ximalaya/ting/android/player/XMediaplayerImpl;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/ximalaya/ting/android/player/XMediaplayerImpl;->setOnErrorListener(Lcom/ximalaya/ting/android/player/XMediaPlayer$OnErrorListener;)V

    .line 350
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->mMediaPlayer:Lcom/ximalaya/ting/android/player/XMediaplayerImpl;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/ximalaya/ting/android/player/XMediaplayerImpl;->setOnInfoListener(Lcom/ximalaya/ting/android/player/XMediaPlayer$OnInfoListener;)V

    .line 351
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->mMediaPlayer:Lcom/ximalaya/ting/android/player/XMediaplayerImpl;

    invoke-interface {v0}, Lcom/ximalaya/ting/android/player/XMediaplayerImpl;->stop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 361
    :try_start_1
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->mMediaPlayer:Lcom/ximalaya/ting/android/player/XMediaplayerImpl;

    invoke-interface {v0}, Lcom/ximalaya/ting/android/player/XMediaplayerImpl;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 367
    :goto_1
    iput-object v2, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->mMediaPlayer:Lcom/ximalaya/ting/android/player/XMediaplayerImpl;

    goto :goto_0

    .line 353
    :catch_0
    move-exception v0

    .line 355
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 361
    :try_start_3
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->mMediaPlayer:Lcom/ximalaya/ting/android/player/XMediaplayerImpl;

    invoke-interface {v0}, Lcom/ximalaya/ting/android/player/XMediaplayerImpl;->release()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 367
    :goto_2
    iput-object v2, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->mMediaPlayer:Lcom/ximalaya/ting/android/player/XMediaplayerImpl;

    goto :goto_0

    .line 363
    :catch_1
    move-exception v0

    .line 365
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 358
    :catchall_0
    move-exception v0

    .line 361
    :try_start_4
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->mMediaPlayer:Lcom/ximalaya/ting/android/player/XMediaplayerImpl;

    invoke-interface {v1}, Lcom/ximalaya/ting/android/player/XMediaplayerImpl;->release()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 367
    :goto_3
    iput-object v2, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->mMediaPlayer:Lcom/ximalaya/ting/android/player/XMediaplayerImpl;

    .line 368
    throw v0

    .line 363
    :catch_2
    move-exception v1

    .line 365
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 363
    :catch_3
    move-exception v0

    .line 365
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private setupPlayer()Lcom/ximalaya/ting/android/player/XMediaplayerImpl;
    .locals 2

    .prologue
    .line 374
    invoke-direct {p0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->initMediaPlayerListener()V

    .line 375
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->mAppCtx:Landroid/content/Context;

    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmMediaPlayerFactory;->getMediaPlayer(Landroid/content/Context;)Lcom/ximalaya/ting/android/player/XMediaplayerImpl;

    move-result-object v0

    .line 376
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->mOnBufferingUpdateListener:Lcom/ximalaya/ting/android/player/XMediaPlayer$OnBufferingUpdateListener;

    invoke-interface {v0, v1}, Lcom/ximalaya/ting/android/player/XMediaplayerImpl;->setOnBufferingUpdateListener(Lcom/ximalaya/ting/android/player/XMediaPlayer$OnBufferingUpdateListener;)V

    .line 377
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->mOnCompletionListener:Lcom/ximalaya/ting/android/player/XMediaPlayer$OnCompletionListener;

    invoke-interface {v0, v1}, Lcom/ximalaya/ting/android/player/XMediaplayerImpl;->setOnCompletionListener(Lcom/ximalaya/ting/android/player/XMediaPlayer$OnCompletionListener;)V

    .line 378
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->mOnPreparedListener:Lcom/ximalaya/ting/android/player/XMediaPlayer$OnPreparedListener;

    invoke-interface {v0, v1}, Lcom/ximalaya/ting/android/player/XMediaplayerImpl;->setOnPreparedListener(Lcom/ximalaya/ting/android/player/XMediaPlayer$OnPreparedListener;)V

    .line 379
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->mOnSeekCompleteListener:Lcom/ximalaya/ting/android/player/XMediaPlayer$OnSeekCompleteListener;

    invoke-interface {v0, v1}, Lcom/ximalaya/ting/android/player/XMediaplayerImpl;->setOnSeekCompleteListener(Lcom/ximalaya/ting/android/player/XMediaPlayer$OnSeekCompleteListener;)V

    .line 380
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->mOnErrorListener:Lcom/ximalaya/ting/android/player/XMediaPlayer$OnErrorListener;

    invoke-interface {v0, v1}, Lcom/ximalaya/ting/android/player/XMediaplayerImpl;->setOnErrorListener(Lcom/ximalaya/ting/android/player/XMediaPlayer$OnErrorListener;)V

    .line 381
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->mOnInfoListener:Lcom/ximalaya/ting/android/player/XMediaPlayer$OnInfoListener;

    invoke-interface {v0, v1}, Lcom/ximalaya/ting/android/player/XMediaplayerImpl;->setOnInfoListener(Lcom/ximalaya/ting/android/player/XMediaPlayer$OnInfoListener;)V

    .line 382
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->mOnPositionChangeListener:Lcom/ximalaya/ting/android/player/XMediaPlayer$OnPositionChangeListener;

    invoke-interface {v0, v1}, Lcom/ximalaya/ting/android/player/XMediaplayerImpl;->setOnPositionChangeListener(Lcom/ximalaya/ting/android/player/XMediaPlayer$OnPositionChangeListener;)V

    .line 383
    return-object v0
.end method


# virtual methods
.method public getCurPlayUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->mLastUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentPos()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 73
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 70
    :pswitch_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->mMediaPlayer:Lcom/ximalaya/ting/android/player/XMediaplayerImpl;

    invoke-interface {v0}, Lcom/ximalaya/ting/android/player/XMediaplayerImpl;->getCurrentPosition()I

    move-result v0

    goto :goto_0

    .line 64
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 303
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->mDuration:I

    return v0
.end method

.method public getPlayerState()I
    .locals 1

    .prologue
    .line 328
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->mState:I

    return v0
.end method

.method public init(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 89
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    const-string v0, "XmPlayerControl"

    const-string v1, "Play Track with null url, return"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :goto_0
    return-void

    .line 94
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->mShoudPlay:Z

    .line 95
    iput p2, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->mOffset:I

    .line 96
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->mLastUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->mLastUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->mState:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 109
    :pswitch_1
    invoke-direct {p0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->initPlayerDataSource()V

    goto :goto_0

    .line 101
    :pswitch_2
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->mMediaPlayer:Lcom/ximalaya/ting/android/player/XMediaplayerImpl;

    invoke-interface {v0}, Lcom/ximalaya/ting/android/player/XMediaplayerImpl;->prepareAsync()V

    .line 102
    const/16 v0, 0x9

    iput v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->mState:I

    goto :goto_0

    .line 124
    :cond_1
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->mLastUrl:Ljava/lang/String;

    .line 125
    invoke-direct {p0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->initPlayerDataSource()V

    goto :goto_0

    .line 98
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public initAndPlay(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 152
    invoke-virtual {p0, p1, p2}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->init(Ljava/lang/String;I)V

    .line 153
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->mShoudPlay:Z

    .line 154
    return-void
.end method

.method public isOnlineSource()Z
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->mLastUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->mLastUrl:Ljava/lang/String;

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->mMediaPlayer:Lcom/ximalaya/ting/android/player/XMediaplayerImpl;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 59
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->mMediaPlayer:Lcom/ximalaya/ting/android/player/XMediaplayerImpl;

    invoke-interface {v0}, Lcom/ximalaya/ting/android/player/XMediaplayerImpl;->isPlaying()Z

    move-result v0

    goto :goto_0
.end method

.method public pause()Z
    .locals 2

    .prologue
    .line 235
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 248
    const/4 v0, 0x0

    .line 251
    :cond_0
    :goto_0
    return v0

    .line 238
    :pswitch_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->mMediaPlayer:Lcom/ximalaya/ting/android/player/XMediaplayerImpl;

    invoke-interface {v0}, Lcom/ximalaya/ting/android/player/XMediaplayerImpl;->pause()V

    .line 239
    const/4 v0, 0x5

    iput v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->mState:I

    .line 240
    const/4 v0, 0x1

    .line 241
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->mPlayerStatusListener:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;

    if-eqz v1, :cond_0

    .line 243
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->mPlayerStatusListener:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;

    invoke-interface {v1}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;->onPlayPause()V

    goto :goto_0

    .line 235
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public play()Z
    .locals 5

    .prologue
    const/16 v3, 0x9

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 162
    iget v2, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->mState:I

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    move v0, v1

    .line 226
    :cond_0
    :goto_0
    :pswitch_1
    return v0

    .line 177
    :pswitch_2
    iget-object v2, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->mMediaPlayer:Lcom/ximalaya/ting/android/player/XMediaplayerImpl;

    invoke-interface {v2}, Lcom/ximalaya/ting/android/player/XMediaplayerImpl;->start()V

    .line 178
    iget v2, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->mOffset:I

    if-lez v2, :cond_1

    .line 180
    const-string v2, "XmPlayerControl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Start Play By Seek "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->mOffset:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v2, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->mMediaPlayer:Lcom/ximalaya/ting/android/player/XMediaplayerImpl;

    iget v3, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->mOffset:I

    invoke-interface {v2, v3}, Lcom/ximalaya/ting/android/player/XMediaplayerImpl;->seekTo(I)V

    .line 182
    iput v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->mOffset:I

    .line 184
    :cond_1
    const/4 v1, 0x3

    iput v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->mState:I

    .line 186
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->mPlayerStatusListener:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;

    if-eqz v1, :cond_0

    .line 188
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->mPlayerStatusListener:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;

    invoke-interface {v1}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;->onPlayStart()V

    goto :goto_0

    .line 193
    :pswitch_3
    iput-boolean v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->mShoudPlay:Z

    goto :goto_0

    .line 198
    :pswitch_4
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->mMediaPlayer:Lcom/ximalaya/ting/android/player/XMediaplayerImpl;

    invoke-interface {v1}, Lcom/ximalaya/ting/android/player/XMediaplayerImpl;->prepareAsync()V

    .line 199
    iput v3, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->mState:I

    .line 200
    iput-boolean v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->mShoudPlay:Z

    goto :goto_0

    .line 205
    :pswitch_5
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->mMediaPlayer:Lcom/ximalaya/ting/android/player/XMediaplayerImpl;

    invoke-interface {v1}, Lcom/ximalaya/ting/android/player/XMediaplayerImpl;->prepareAsync()V

    .line 206
    iput v3, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->mState:I

    .line 207
    iput-boolean v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->mShoudPlay:Z

    .line 209
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->mPlayerStatusListener:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;

    if-eqz v1, :cond_0

    .line 211
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->mPlayerStatusListener:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;

    invoke-interface {v1}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;->onPlayStart()V

    goto :goto_0

    .line 162
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public release()V
    .locals 1

    .prologue
    .line 297
    const/16 v0, 0x8

    iput v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->mState:I

    .line 298
    invoke-direct {p0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->releaseLastPlayer()V

    .line 299
    return-void
.end method

.method public seekTo(I)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 308
    iget v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->mState:I

    packed-switch v1, :pswitch_data_0

    .line 322
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 314
    :pswitch_1
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->mMediaPlayer:Lcom/ximalaya/ting/android/player/XMediaplayerImpl;

    invoke-interface {v1, p1}, Lcom/ximalaya/ting/android/player/XMediaplayerImpl;->seekTo(I)V

    goto :goto_0

    .line 318
    :pswitch_2
    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->mOffset:I

    goto :goto_0

    .line 308
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setPlayerStatusListener(Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;)V
    .locals 0

    .prologue
    .line 333
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->mPlayerStatusListener:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;

    .line 334
    return-void
.end method

.method public setVolume(FF)V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->mMediaPlayer:Lcom/ximalaya/ting/android/player/XMediaplayerImpl;

    if-nez v0, :cond_0

    .line 54
    :goto_0
    return-void

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->mMediaPlayer:Lcom/ximalaya/ting/android/player/XMediaplayerImpl;

    invoke-interface {v0, p1, p2}, Lcom/ximalaya/ting/android/player/XMediaplayerImpl;->setVolume(FF)V

    goto :goto_0
.end method

.method public stop()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 260
    iget v2, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->mState:I

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    move v0, v1

    .line 292
    :cond_0
    :goto_0
    :pswitch_1
    return v0

    .line 266
    :pswitch_2
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->mMediaPlayer:Lcom/ximalaya/ting/android/player/XMediaplayerImpl;

    invoke-interface {v1}, Lcom/ximalaya/ting/android/player/XMediaplayerImpl;->stop()V

    .line 267
    const/4 v1, 0x4

    iput v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->mState:I

    .line 269
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->mPlayerStatusListener:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;

    if-eqz v1, :cond_0

    .line 271
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->mPlayerStatusListener:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;

    invoke-interface {v1}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;->onPlayStop()V

    goto :goto_0

    .line 281
    :pswitch_3
    iput-boolean v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->mShoudPlay:Z

    goto :goto_0

    .line 260
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
