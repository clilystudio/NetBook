.class public Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# static fields
.field public static final AUDIO_CHANNEL:I = 0xc

.field public static final AUDIO_CHANNEL_NUM:I = 0x2

.field public static final AUDIO_FORMAT:I = 0x2

.field public static final BUFFER_TIME:I = 0x1

.field public static final BYTES_PER_SAMPLE:I = 0x2

.field public static final DEFAULT_MIN_BUFFER_MULTIPLICATION_FACTOR:I = 0x4

.field private static DEF_BUFF_SIZE:I = 0x0

.field public static final PLAYBACK_STREAM:I = 0x3

.field public static final SAMPLE_RATE:I = 0xac44

.field public static final WRITE_NON_BLOCKING:I = 0x1


# instance fields
.field private volatile isPlaying:Z

.field private volatile isRelaseFlag:Z

.field private isRunning:Z

.field private isWaiting:Z

.field private lastUpdateTime:J

.field private mAudioTrack:Landroid/media/AudioTrack;

.field private mAudiodata:[B

.field private mBufferSize:I

.field private mVolume:F

.field private mXMediaplayerJNI:Lcom/ximalaya/ting/android/player/XMediaplayerJNI;

.field private syncObject:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/16 v0, 0x2000

    sput v0, Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;->DEF_BUFF_SIZE:I

    .line 37
    return-void
.end method

.method public constructor <init>(Lcom/ximalaya/ting/android/player/XMediaplayerJNI;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 15
    iput-boolean v2, p0, Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;->isRelaseFlag:Z

    .line 44
    iput-boolean v2, p0, Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;->isRunning:Z

    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;->syncObject:Ljava/lang/Object;

    .line 46
    iput-boolean v2, p0, Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;->isWaiting:Z

    .line 47
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;->lastUpdateTime:J

    .line 289
    iput-boolean v2, p0, Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;->isPlaying:Z

    .line 51
    iput-object p1, p0, Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;->mXMediaplayerJNI:Lcom/ximalaya/ting/android/player/XMediaplayerJNI;

    .line 52
    invoke-direct {p0}, Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;->initAudioTrack()V

    .line 54
    return-void
.end method

.method private audioTrackRelease()V
    .locals 2

    .prologue
    .line 373
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;->isPlaying:Z

    .line 374
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    const-string v1, "AudioTrackPlayThread audioTrackRelease"

    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 375
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 378
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;->mAudioTrack:Landroid/media/AudioTrack;

    .line 379
    return-void
.end method

.method private audioTrackStart()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 340
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;->mAudioTrack:Landroid/media/AudioTrack;

    if-nez v0, :cond_0

    .line 364
    :goto_0
    return-void

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 343
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 344
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    const-string v1, "AudioTrackPlayThread startPlay3"

    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 345
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 346
    iput-boolean v2, p0, Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;->isPlaying:Z

    .line 347
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    const-string v1, "AudioTrackPlayThread startPlay4"

    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 349
    :cond_1
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_2

    .line 350
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    const-string v1, "AudioTrackPlayThread startPlay5"

    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 351
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 352
    invoke-direct {p0}, Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;->initAudioTrack()V

    .line 353
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 354
    iput-boolean v2, p0, Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;->isPlaying:Z

    .line 355
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    const-string v1, "AudioTrackPlayThread startPlay6"

    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 357
    :cond_2
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    const-string v1, "AudioTrackPlayThread startPlay7"

    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 358
    invoke-direct {p0}, Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;->initAudioTrack()V

    .line 359
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 360
    iput-boolean v2, p0, Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;->isPlaying:Z

    .line 361
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    const-string v1, "AudioTrackPlayThread startPlay8"

    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private audioTrackWrite([BII)I
    .locals 8

    .prologue
    const/4 v7, 0x3

    .line 231
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    const-string v1, "AudioTrackPlayThread audioTrackWrite start"

    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 232
    const/4 v0, 0x0

    .line 233
    iget-object v1, p0, Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v1, :cond_2

    .line 234
    iget-object v1, p0, Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v1

    if-ne v1, v7, :cond_2

    move v2, v0

    move v1, p3

    .line 236
    :cond_0
    :goto_0
    if-lez v1, :cond_1

    iget-boolean v0, p0, Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;->isPlaying:Z

    if-nez v0, :cond_3

    :cond_1
    move v0, v2

    .line 260
    :cond_2
    :goto_1
    sget-object v1, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    const-string v2, "AudioTrackPlayThread audioTrackWrite end"

    invoke-static {v1, v2}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 261
    return v0

    .line 237
    :cond_3
    iget v0, p0, Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;->mBufferSize:I

    if-le v1, v0, :cond_4

    iget v0, p0, Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;->mBufferSize:I

    .line 238
    :goto_2
    sget-object v3, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "AudioTrackPlayThread audioTrackWrite 0 written\uff1a"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 240
    iget-object v3, p0, Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v3}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v3

    if-ne v3, v7, :cond_0

    .line 241
    sget-object v3, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "AudioTrackPlayThread audioTrackWrite 22 written\uff1a"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 242
    iget-object v3, p0, Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v3, p1, p2, v0}, Landroid/media/AudioTrack;->write([BII)I

    move-result v3

    .line 245
    if-gez v3, :cond_5

    .line 246
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "AudioTrackPlayThread audioTrackWrite 1 error wriBytes\uff1a"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    move v0, v2

    .line 247
    goto :goto_1

    :cond_4
    move v0, v1

    .line 237
    goto :goto_2

    .line 250
    :cond_5
    sget-object v4, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "AudioTrackPlayThread audioTrackWrite 1 wriBytes\uff1a"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 251
    add-int/2addr v2, v3

    .line 252
    sub-int/2addr v1, v0

    .line 253
    add-int/2addr p2, v0

    goto :goto_0
.end method

.method private initAudioTrack()V
    .locals 7

    .prologue
    const v2, 0xac44

    const/16 v3, 0xc

    const/4 v4, 0x2

    .line 58
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    const-string v1, "initAudioTrack"

    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 64
    invoke-static {v2, v3, v4}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v0

    .line 68
    mul-int/lit8 v1, v0, 0x4

    .line 67
    iput v1, p0, Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;->mBufferSize:I

    .line 70
    sget v1, Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;->DEF_BUFF_SIZE:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;->mBufferSize:I

    .line 72
    new-instance v0, Landroid/media/AudioTrack;

    const/4 v1, 0x3

    .line 73
    iget v5, p0, Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;->mBufferSize:I

    .line 74
    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    .line 72
    iput-object v0, p0, Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;->mAudioTrack:Landroid/media/AudioTrack;

    .line 76
    iget v0, p0, Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;->mBufferSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;->mAudiodata:[B

    .line 79
    return-void
.end method

.method private static setVolumeV3(Landroid/media/AudioTrack;F)V
    .locals 0

    .prologue
    .line 412
    if-nez p0, :cond_0

    .line 416
    :goto_0
    return-void

    .line 415
    :cond_0
    invoke-virtual {p0, p1, p1}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    goto :goto_0
.end method

.method private writePcm([B)V
    .locals 3

    .prologue
    .line 209
    if-nez p1, :cond_0

    .line 222
    :goto_0
    return-void

    .line 212
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    .line 213
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/ximalaya/ting/android/player/XMediaPlayerConstants;->APP_BASE_DIR:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/log/pcm.pcm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 212
    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 214
    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 215
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 216
    :catch_0
    move-exception v0

    .line 217
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 218
    :catch_1
    move-exception v0

    .line 220
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public dataReady()V
    .locals 3

    .prologue
    .line 265
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    const-string v1, "AudioTrackPlayThread dataReady"

    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 266
    iget-boolean v0, p0, Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;->isWaiting:Z

    if-eqz v0, :cond_0

    .line 267
    iget-object v1, p0, Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;->syncObject:Ljava/lang/Object;

    monitor-enter v1

    .line 268
    :try_start_0
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    const-string v2, "AudioTrackPlayThread notify"

    invoke-static {v0, v2}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 269
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;->syncObject:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 270
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;->isWaiting:Z

    .line 267
    monitor-exit v1

    .line 273
    :cond_0
    return-void

    .line 267
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getMinOutputBufferSize()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;->mBufferSize:I

    return v0
.end method

.method public getVolume()F
    .locals 1

    .prologue
    .line 390
    iget v0, p0, Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;->mVolume:F

    return v0
.end method

.method public isPlaying()Z
    .locals 2

    .prologue
    .line 382
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 383
    const/4 v0, 0x1

    .line 384
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pausePlay()V
    .locals 2

    .prologue
    .line 308
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;->mAudioTrack:Landroid/media/AudioTrack;

    if-nez v0, :cond_1

    .line 317
    :cond_0
    :goto_0
    return-void

    .line 310
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;->isPlaying:Z

    .line 311
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    const-string v1, "AudioTrackPlayThread pausePlay0"

    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 313
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 314
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    .line 315
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    const-string v1, "AudioTrackPlayThread pausePlay1"

    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public releasePlay()V
    .locals 2

    .prologue
    .line 332
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;->isPlaying:Z

    .line 333
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;->isRelaseFlag:Z

    .line 334
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    const-string v1, "AudioTrackPlayThread releasePlay"

    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 335
    invoke-virtual {p0}, Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;->interrupt()V

    .line 337
    return-void
.end method

.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v1, -0x1

    const/4 v0, 0x1

    const/4 v8, 0x0

    .line 87
    iput-boolean v0, p0, Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;->isRunning:Z

    .line 89
    :goto_0
    iget-boolean v0, p0, Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;->isRelaseFlag:Z

    if-eqz v0, :cond_0

    .line 203
    :goto_1
    iput-boolean v8, p0, Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;->isRunning:Z

    .line 204
    invoke-virtual {p0}, Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;->stopPlay()V

    .line 205
    invoke-direct {p0}, Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;->audioTrackRelease()V

    .line 206
    return-void

    .line 96
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;->syncObject:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :try_start_1
    iget-boolean v0, p0, Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;->isRelaseFlag:Z

    if-eqz v0, :cond_1

    .line 99
    monitor-exit v2

    goto :goto_1

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 198
    :catch_0
    move-exception v0

    .line 199
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 101
    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;->mXMediaplayerJNI:Lcom/ximalaya/ting/android/player/XMediaplayerJNI;

    .line 102
    iget-object v3, p0, Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;->mAudiodata:[B

    iget-object v4, p0, Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;->mAudiodata:[B

    array-length v4, v4

    .line 101
    invoke-virtual {v0, v3, v4}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->getOutputData([BI)I

    move-result v0

    .line 103
    sget-object v3, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    .line 104
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "AudioTrackPlayThread result0:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 103
    invoke-static {v3, v4}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 106
    if-lez v0, :cond_2

    .line 107
    :goto_2
    iget v3, p0, Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;->mBufferSize:I

    if-ge v0, v3, :cond_2

    iget-boolean v3, p0, Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;->isRelaseFlag:Z

    if-eqz v3, :cond_3

    .line 138
    :cond_2
    iget-boolean v3, p0, Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;->isRelaseFlag:Z

    if-eqz v3, :cond_6

    .line 139
    monitor-exit v2

    goto :goto_1

    .line 108
    :cond_3
    iget v3, p0, Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;->mBufferSize:I

    sub-int/2addr v3, v0

    new-array v3, v3, [B

    .line 110
    iget-boolean v4, p0, Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;->isRelaseFlag:Z

    if-nez v4, :cond_2

    .line 113
    iget-object v4, p0, Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;->mXMediaplayerJNI:Lcom/ximalaya/ting/android/player/XMediaplayerJNI;

    .line 114
    array-length v5, v3

    .line 113
    invoke-virtual {v4, v3, v5}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->getOutputData([BI)I

    move-result v4

    .line 115
    sget-object v5, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    .line 116
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "AudioTrackPlayThread result1 reLength:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 115
    invoke-static {v5, v6}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 117
    if-lez v4, :cond_4

    .line 118
    const/4 v5, 0x0

    iget-object v6, p0, Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;->mAudiodata:[B

    array-length v7, v3

    invoke-static {v3, v5, v6, v0, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 119
    add-int/2addr v0, v4

    .line 120
    sget-object v3, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    .line 121
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "AudioTrackPlayThread result2:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 120
    invoke-static {v3, v4}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 123
    :cond_4
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;->isWaiting:Z

    .line 124
    sget-object v3, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    const-string v4, "AudioTrackPlayThread mAudioTrack wait0"

    invoke-static {v3, v4}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 125
    iget-object v3, p0, Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;->mXMediaplayerJNI:Lcom/ximalaya/ting/android/player/XMediaplayerJNI;

    invoke-virtual {v3}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->outputDataAppointment()I

    .line 126
    iget-object v3, p0, Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;->mXMediaplayerJNI:Lcom/ximalaya/ting/android/player/XMediaplayerJNI;

    iget-boolean v3, v3, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->isBuffing:Z

    if-nez v3, :cond_5

    .line 127
    iget-object v3, p0, Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;->mXMediaplayerJNI:Lcom/ximalaya/ting/android/player/XMediaplayerJNI;

    invoke-virtual {v3}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->getPlayState()I

    move-result v3

    if-ne v3, v9, :cond_5

    .line 128
    iget-object v3, p0, Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;->mXMediaplayerJNI:Lcom/ximalaya/ting/android/player/XMediaplayerJNI;

    const/16 v4, 0xa

    .line 129
    const/16 v5, 0x2bd

    .line 128
    invoke-virtual {v3, v4, v5}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->onInfoInner(II)V

    .line 131
    :cond_5
    iget-object v3, p0, Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;->syncObject:Ljava/lang/Object;

    const-wide/16 v4, 0x7530

    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 132
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;->isWaiting:Z

    goto/16 :goto_2

    .line 142
    :cond_6
    sget-object v3, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    .line 143
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "AudioTrackPlayThread result3:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 142
    invoke-static {v3, v4}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 145
    const/4 v3, -0x2

    if-ne v0, v3, :cond_8

    .line 146
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    .line 147
    const-string v3, "AudioTrackPlayThread decode over"

    .line 146
    invoke-static {v0, v3}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 148
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;->mXMediaplayerJNI:Lcom/ximalaya/ting/android/player/XMediaplayerJNI;

    iget-boolean v0, v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->isBuffing:Z

    if-eqz v0, :cond_7

    .line 149
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;->mXMediaplayerJNI:Lcom/ximalaya/ting/android/player/XMediaplayerJNI;

    const/16 v3, 0xa

    .line 150
    const/16 v4, 0x2be

    .line 149
    invoke-virtual {v0, v3, v4}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->onInfoInner(II)V

    .line 152
    :cond_7
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;->mAudiodata:[B

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;->mAudiodata:[B

    array-length v4, v4

    invoke-direct {p0, v0, v3, v4}, Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;->audioTrackWrite([BII)I

    .line 153
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 154
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;->mXMediaplayerJNI:Lcom/ximalaya/ting/android/player/XMediaplayerJNI;

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->onCompletionInner()V

    .line 155
    monitor-exit v2

    goto/16 :goto_1

    .line 156
    :cond_8
    if-eq v0, v1, :cond_d

    .line 159
    if-nez v0, :cond_b

    .line 160
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;->isWaiting:Z

    .line 161
    sget-object v3, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    const-string v4, "AudioTrackPlayThread wait"

    invoke-static {v3, v4}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 162
    iget-object v3, p0, Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;->mXMediaplayerJNI:Lcom/ximalaya/ting/android/player/XMediaplayerJNI;

    invoke-virtual {v3}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->outputDataAppointment()I

    .line 163
    iget-object v3, p0, Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;->mXMediaplayerJNI:Lcom/ximalaya/ting/android/player/XMediaplayerJNI;

    iget-boolean v3, v3, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->isBuffing:Z

    if-nez v3, :cond_9

    .line 164
    iget-object v3, p0, Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;->mXMediaplayerJNI:Lcom/ximalaya/ting/android/player/XMediaplayerJNI;

    invoke-virtual {v3}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->getPlayState()I

    move-result v3

    if-ne v3, v9, :cond_9

    .line 165
    iget-object v3, p0, Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;->mXMediaplayerJNI:Lcom/ximalaya/ting/android/player/XMediaplayerJNI;

    const/16 v4, 0xa

    .line 166
    const/16 v5, 0x2bd

    .line 165
    invoke-virtual {v3, v4, v5}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->onInfoInner(II)V

    .line 168
    :cond_9
    iget-object v3, p0, Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;->syncObject:Ljava/lang/Object;

    const-wide/16 v4, 0x7530

    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 169
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;->isWaiting:Z

    .line 191
    :cond_a
    :goto_3
    if-gez v0, :cond_e

    .line 192
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;->mXMediaplayerJNI:Lcom/ximalaya/ting/android/player/XMediaplayerJNI;

    const/16 v3, 0x8

    .line 193
    const/4 v4, 0x1

    .line 192
    invoke-virtual {v0, v3, v4}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->onErrorInner(II)V

    .line 194
    monitor-exit v2

    goto/16 :goto_1

    .line 172
    :cond_b
    if-lez v0, :cond_d

    .line 173
    iget-object v3, p0, Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;->mXMediaplayerJNI:Lcom/ximalaya/ting/android/player/XMediaplayerJNI;

    iget-boolean v3, v3, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->isBuffing:Z

    if-eqz v3, :cond_c

    .line 174
    iget-object v3, p0, Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;->mXMediaplayerJNI:Lcom/ximalaya/ting/android/player/XMediaplayerJNI;

    const/16 v4, 0xa

    .line 175
    const/16 v5, 0x2be

    .line 174
    invoke-virtual {v3, v4, v5}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->onInfoInner(II)V

    .line 178
    :cond_c
    iget-object v3, p0, Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;->mAudiodata:[B

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4, v0}, Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;->audioTrackWrite([BII)I

    move-result v0

    .line 179
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 180
    iget-wide v6, p0, Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;->lastUpdateTime:J

    .line 179
    sub-long/2addr v4, v6

    .line 182
    const-wide/16 v6, 0x3e8

    cmp-long v3, v4, v6

    if-lez v3, :cond_a

    .line 183
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;->lastUpdateTime:J

    .line 184
    sget-object v3, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    .line 185
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "AudioTrackPlayThread ttseek3:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 184
    invoke-static {v3, v4}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 186
    iget-object v3, p0, Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;->mXMediaplayerJNI:Lcom/ximalaya/ting/android/player/XMediaplayerJNI;

    invoke-virtual {v3}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->mOnTimedChangeListenerInner()V

    goto :goto_3

    :cond_d
    move v0, v1

    .line 189
    goto :goto_3

    .line 96
    :cond_e
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0
.end method

.method public seekPlay()V
    .locals 2

    .prologue
    .line 277
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;->mAudioTrack:Landroid/media/AudioTrack;

    if-nez v0, :cond_1

    .line 287
    :cond_0
    :goto_0
    return-void

    .line 280
    :cond_1
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 281
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    .line 282
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V

    .line 283
    invoke-direct {p0}, Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;->audioTrackStart()V

    goto :goto_0

    .line 284
    :cond_2
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 285
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V

    goto :goto_0
.end method

.method public setVolume(F)V
    .locals 1

    .prologue
    .line 395
    iput p1, p0, Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;->mVolume:F

    .line 401
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-static {v0, p1}, Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;->setVolumeV3(Landroid/media/AudioTrack;F)V

    .line 402
    return-void
.end method

.method public startPlay()V
    .locals 2

    .prologue
    .line 292
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;->mAudioTrack:Landroid/media/AudioTrack;

    if-nez v0, :cond_1

    .line 305
    :cond_0
    :goto_0
    return-void

    .line 294
    :cond_1
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    const-string v1, "AudioTrackPlayThread startPlay0"

    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 295
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    .line 296
    invoke-direct {p0}, Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;->audioTrackStart()V

    .line 297
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    const-string v1, "AudioTrackPlayThread startPlay1"

    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 299
    :cond_2
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    const-string v1, "AudioTrackPlayThread startPlay isRunning0"

    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 300
    iget-boolean v0, p0, Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;->isRunning:Z

    if-nez v0, :cond_0

    .line 301
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    const-string v1, "AudioTrackPlayThread startPlay isRunning1"

    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 302
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;->isRunning:Z

    .line 303
    invoke-virtual {p0}, Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;->start()V

    goto :goto_0
.end method

.method public stopPlay()V
    .locals 2

    .prologue
    .line 320
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;->mAudioTrack:Landroid/media/AudioTrack;

    if-nez v0, :cond_1

    .line 329
    :cond_0
    :goto_0
    return-void

    .line 322
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;->isPlaying:Z

    .line 323
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    const-string v1, "AudioTrackPlayThread stopPlay0"

    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 324
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 325
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 326
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V

    .line 327
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    const-string v1, "AudioTrackPlayThread stopPlay1"

    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method
