.class public Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final STATE_COMPLETED:I = 0x5

.field public static final STATE_ERR:I = -0x1

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_PAUSED:I = 0x3

.field public static final STATE_PREPARED:I = 0x1

.field public static final STATE_STARTED:I = 0x2

.field public static final STATE_STOPPED:I = 0x4

.field private static final TAG:Ljava/lang/String; = "MiniPlayer"


# instance fields
.field private mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mLeftVol:F

.field private mLoop:Z

.field private mPlayer:Landroid/media/MediaPlayer;

.field private mPlayerStatusListener:Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer$PlayerStatusListener;

.field private mRightVol:F

.field private mStatus:I

.field private mStreamType:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x3

    iput v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->mStreamType:I

    .line 41
    iput v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->mLeftVol:F

    .line 42
    iput v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->mRightVol:F

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->mLoop:Z

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->mStatus:I

    .line 53
    invoke-virtual {p0}, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->resetPlayer()V

    .line 54
    return-void
.end method

.method static synthetic access$0(Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;I)V
    .locals 0

    .prologue
    .line 49
    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->mStatus:I

    return-void
.end method

.method static synthetic access$1(Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;)Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer$PlayerStatusListener;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->mPlayerStatusListener:Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer$PlayerStatusListener;

    return-object v0
.end method

.method static synthetic access$2(Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    return-object v0
.end method


# virtual methods
.method public getCurrPos()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->mStatus:I

    packed-switch v0, :pswitch_data_0

    .line 100
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 95
    :pswitch_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    goto :goto_0

    .line 87
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->mStatus:I

    packed-switch v0, :pswitch_data_0

    .line 126
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 121
    :pswitch_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    goto :goto_0

    .line 115
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getSessionId()I
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    .line 69
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    .line 71
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    move-result v0

    .line 73
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 274
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->mStatus:I

    return v0
.end method

.method public init(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 218
    :try_start_0
    invoke-virtual {p0}, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->resetPlayer()V

    .line 219
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 220
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 221
    const/4 v0, 0x1

    iput v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->mStatus:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    :goto_0
    return-void

    .line 223
    :catch_0
    move-exception v0

    .line 225
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 226
    const/4 v0, -0x1

    iput v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->mStatus:I

    goto :goto_0
.end method

.method public init(Landroid/content/Context;Landroid/net/Uri;II)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 201
    :try_start_0
    invoke-virtual {p0}, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->resetPlayer()V

    .line 202
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 203
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 204
    const/4 v0, 0x1

    iput v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->mStatus:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    :goto_0
    return-void

    .line 206
    :catch_0
    move-exception v0

    .line 208
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 209
    const/4 v0, -0x1

    iput v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->mStatus:I

    goto :goto_0
.end method

.method public init(Ljava/io/FileDescriptor;I)V
    .locals 3

    .prologue
    .line 299
    const-string v0, "MiniPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "init seek "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/opensdk/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    :try_start_0
    invoke-virtual {p0}, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->resetPlayer()V

    .line 303
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 304
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 305
    if-lez p2, :cond_0

    .line 307
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p2}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 309
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->mStatus:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    :goto_0
    return-void

    .line 311
    :catch_0
    move-exception v0

    .line 313
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 314
    const/4 v0, -0x1

    iput v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->mStatus:I

    goto :goto_0
.end method

.method public init(Ljava/io/FileDescriptor;JJ)V
    .locals 6

    .prologue
    .line 320
    const-string v0, "MiniPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "init offset "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/opensdk/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    :try_start_0
    invoke-virtual {p0}, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->resetPlayer()V

    .line 324
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->mPlayer:Landroid/media/MediaPlayer;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 325
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 326
    const/4 v0, 0x1

    iput v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->mStatus:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    :goto_0
    return-void

    .line 328
    :catch_0
    move-exception v0

    .line 330
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 331
    const/4 v0, -0x1

    iput v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->mStatus:I

    goto :goto_0
.end method

.method public init(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 339
    invoke-virtual {p0}, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->resetPlayer()V

    .line 340
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 341
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 342
    const/4 v0, 0x1

    iput v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->mStatus:I

    .line 353
    return-void
.end method

.method public isPaused()Z
    .locals 2

    .prologue
    .line 289
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->mStatus:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 2

    .prologue
    .line 284
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->mStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStop()Z
    .locals 2

    .prologue
    .line 279
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->mStatus:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pausePlay()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 395
    :try_start_0
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->mStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 397
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 398
    const/4 v0, 0x3

    iput v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->mStatus:I

    .line 399
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->mPlayerStatusListener:Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer$PlayerStatusListener;

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->mPlayerStatusListener:Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer$PlayerStatusListener;

    invoke-interface {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer$PlayerStatusListener;->onPause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 414
    :cond_0
    :goto_0
    return-void

    .line 405
    :catch_0
    move-exception v0

    .line 407
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 408
    const/4 v1, -0x1

    iput v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->mStatus:I

    .line 409
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->mPlayerStatusListener:Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer$PlayerStatusListener;

    if-eqz v1, :cond_0

    .line 411
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->mPlayerStatusListener:Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer$PlayerStatusListener;

    invoke-interface {v1, v0, v2, v2}, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer$PlayerStatusListener;->onError(Ljava/lang/Exception;II)Z

    goto :goto_0
.end method

.method public release()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 445
    :try_start_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 447
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->mStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 449
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 450
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->mPlayerStatusListener:Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer$PlayerStatusListener;

    if-eqz v0, :cond_0

    .line 452
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->mPlayerStatusListener:Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer$PlayerStatusListener;

    invoke-interface {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer$PlayerStatusListener;->onStop()V

    .line 455
    :cond_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 466
    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->mPlayer:Landroid/media/MediaPlayer;

    .line 467
    return-void

    .line 458
    :catch_0
    move-exception v0

    .line 460
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 461
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->mPlayerStatusListener:Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer$PlayerStatusListener;

    if-eqz v1, :cond_1

    .line 463
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->mPlayerStatusListener:Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer$PlayerStatusListener;

    invoke-interface {v1, v0, v2, v2}, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer$PlayerStatusListener;->onError(Ljava/lang/Exception;II)Z

    goto :goto_0
.end method

.method public resetPlayer()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 134
    :try_start_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->mPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 136
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->mPlayer:Landroid/media/MediaPlayer;

    .line 137
    const/4 v0, 0x0

    iput v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->mStatus:I

    .line 138
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->mPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer$1;

    invoke-direct {v1, p0}, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer$1;-><init>(Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 152
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->mPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer$2;

    invoke-direct {v1, p0}, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer$2;-><init>(Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 170
    :cond_0
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->mStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 172
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 173
    const/4 v0, 0x4

    iput v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->mStatus:I

    .line 174
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->mPlayerStatusListener:Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer$PlayerStatusListener;

    if-eqz v0, :cond_1

    .line 176
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->mPlayerStatusListener:Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer$PlayerStatusListener;

    invoke-interface {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer$PlayerStatusListener;->onStop()V

    .line 179
    :cond_1
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 181
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->mPlayer:Landroid/media/MediaPlayer;

    iget-boolean v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->mLoop:Z

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 182
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->mPlayer:Landroid/media/MediaPlayer;

    iget v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->mLeftVol:F

    iget v2, p0, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->mRightVol:F

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 183
    const/4 v0, 0x0

    iput v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->mStatus:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :cond_2
    :goto_0
    return-void

    .line 185
    :catch_0
    move-exception v0

    .line 187
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 188
    const/4 v1, -0x1

    iput v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->mStatus:I

    .line 189
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->mPlayerStatusListener:Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer$PlayerStatusListener;

    if-eqz v1, :cond_2

    .line 191
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->mPlayerStatusListener:Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer$PlayerStatusListener;

    invoke-interface {v1, v0, v3, v3}, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer$PlayerStatusListener;->onError(Ljava/lang/Exception;II)Z

    goto :goto_0
.end method

.method public restart()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 234
    :try_start_0
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->mStatus:I

    packed-switch v0, :pswitch_data_0

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 239
    :pswitch_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 240
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 241
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 242
    const/4 v0, 0x2

    iput v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->mStatus:I

    .line 243
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->mPlayerStatusListener:Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer$PlayerStatusListener;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->mPlayerStatusListener:Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer$PlayerStatusListener;

    invoke-interface {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer$PlayerStatusListener;->onStart()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 261
    :catch_0
    move-exception v0

    .line 263
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 264
    const/4 v1, -0x1

    iput v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->mStatus:I

    .line 265
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->mPlayerStatusListener:Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer$PlayerStatusListener;

    if-eqz v1, :cond_0

    .line 267
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->mPlayerStatusListener:Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer$PlayerStatusListener;

    invoke-interface {v1, v0, v2, v2}, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer$PlayerStatusListener;->onError(Ljava/lang/Exception;II)Z

    goto :goto_0

    .line 250
    :pswitch_1
    :try_start_1
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 251
    const/4 v0, 0x2

    iput v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->mStatus:I

    .line 252
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->mPlayerStatusListener:Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer$PlayerStatusListener;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->mPlayerStatusListener:Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer$PlayerStatusListener;

    invoke-interface {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer$PlayerStatusListener;->onStart()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 234
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setAudioStreamType(I)V
    .locals 0

    .prologue
    .line 58
    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->mStreamType:I

    .line 59
    return-void
.end method

.method public setLooping(Z)V
    .locals 2

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->mLoop:Z

    .line 79
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->mStatus:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 81
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 83
    :cond_0
    return-void
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 64
    return-void
.end method

.method public setPlayerStatueListener(Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer$PlayerStatusListener;)V
    .locals 0

    .prologue
    .line 471
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->mPlayerStatusListener:Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer$PlayerStatusListener;

    .line 472
    return-void
.end method

.method public setVolume(FF)V
    .locals 3

    .prologue
    .line 105
    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->mLeftVol:F

    .line 106
    iput p2, p0, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->mRightVol:F

    .line 107
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->mStatus:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 109
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->mPlayer:Landroid/media/MediaPlayer;

    iget v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->mLeftVol:F

    iget v2, p0, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->mRightVol:F

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 111
    :cond_0
    return-void
.end method

.method public startPlay()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 359
    :try_start_0
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->mStatus:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->mStatus:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 360
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->mStatus:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 363
    const/4 v0, 0x2

    iput v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->mStatus:I

    .line 364
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->mPlayerStatusListener:Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer$PlayerStatusListener;

    if-eqz v0, :cond_1

    .line 366
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->mPlayerStatusListener:Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer$PlayerStatusListener;

    invoke-interface {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer$PlayerStatusListener;->onStart()V

    .line 389
    :cond_1
    :goto_0
    return-void

    .line 369
    :cond_2
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->mStatus:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 371
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 372
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 373
    const/4 v0, 0x2

    iput v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->mStatus:I

    .line 374
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->mPlayerStatusListener:Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer$PlayerStatusListener;

    if-eqz v0, :cond_1

    .line 376
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->mPlayerStatusListener:Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer$PlayerStatusListener;

    invoke-interface {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer$PlayerStatusListener;->onStart()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 380
    :catch_0
    move-exception v0

    .line 382
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 383
    const/4 v1, -0x1

    iput v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->mStatus:I

    .line 384
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->mPlayerStatusListener:Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer$PlayerStatusListener;

    if-eqz v1, :cond_1

    .line 386
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->mPlayerStatusListener:Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer$PlayerStatusListener;

    invoke-interface {v1, v0, v2, v2}, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer$PlayerStatusListener;->onError(Ljava/lang/Exception;II)Z

    goto :goto_0
.end method

.method public stopPlay()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 420
    :try_start_0
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->mStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 422
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 423
    const/4 v0, 0x4

    iput v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->mStatus:I

    .line 424
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->mPlayerStatusListener:Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer$PlayerStatusListener;

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->mPlayerStatusListener:Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer$PlayerStatusListener;

    invoke-interface {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer$PlayerStatusListener;->onStop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 439
    :cond_0
    :goto_0
    return-void

    .line 430
    :catch_0
    move-exception v0

    .line 432
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 433
    const/4 v1, -0x1

    iput v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->mStatus:I

    .line 434
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->mPlayerStatusListener:Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer$PlayerStatusListener;

    if-eqz v1, :cond_0

    .line 436
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer;->mPlayerStatusListener:Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer$PlayerStatusListener;

    invoke-interface {v1, v0, v2, v2}, Lcom/ximalaya/ting/android/opensdk/player/service/MiniPlayer$PlayerStatusListener;->onError(Ljava/lang/Exception;II)Z

    goto :goto_0
.end method
