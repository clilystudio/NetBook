.class public Lcom/ximalaya/ting/android/player/XMediaPlayerWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ximalaya/ting/android/player/XMediaplayerImpl;


# instance fields
.field private isUseSystemPlayer:Z

.field private mOnBufferingUpdateListener:Lcom/ximalaya/ting/android/player/XMediaPlayer$OnBufferingUpdateListener;

.field private mOnCompletionListener:Lcom/ximalaya/ting/android/player/XMediaPlayer$OnCompletionListener;

.field private mOnErrorListener:Lcom/ximalaya/ting/android/player/XMediaPlayer$OnErrorListener;

.field private mOnInfoListener:Lcom/ximalaya/ting/android/player/XMediaPlayer$OnInfoListener;

.field private mOnPositionChangeListener:Lcom/ximalaya/ting/android/player/XMediaPlayer$OnPositionChangeListener;

.field private mOnPreparedListener:Lcom/ximalaya/ting/android/player/XMediaPlayer$OnPreparedListener;

.field private mOnSeekCompleteListener:Lcom/ximalaya/ting/android/player/XMediaPlayer$OnSeekCompleteListener;

.field private mPlayUrl:Ljava/lang/String;

.field private mXMediaplayerImpl:Lcom/ximalaya/ting/android/player/XMediaplayerImpl;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayerWrapper;->isUseSystemPlayer:Z

    .line 30
    invoke-direct {p0}, Lcom/ximalaya/ting/android/player/XMediaPlayerWrapper;->init()V

    .line 32
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayerWrapper;->isUseSystemPlayer:Z

    .line 56
    if-eqz p1, :cond_0

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayerWrapper;->isUseSystemPlayer:Z

    .line 58
    invoke-direct {p0}, Lcom/ximalaya/ting/android/player/XMediaPlayerWrapper;->newXMediaplayer()Lcom/ximalaya/ting/android/player/XMediaplayerImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayerWrapper;->mXMediaplayerImpl:Lcom/ximalaya/ting/android/player/XMediaplayerImpl;

    .line 63
    :goto_0
    return-void

    .line 60
    :cond_0
    invoke-direct {p0}, Lcom/ximalaya/ting/android/player/XMediaPlayerWrapper;->init()V

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/ximalaya/ting/android/player/XMediaPlayerWrapper;)V
    .locals 0

    .prologue
    .line 218
    invoke-direct {p0}, Lcom/ximalaya/ting/android/player/XMediaPlayerWrapper;->reUseSMediaplayer()V

    return-void
.end method

.method static synthetic access$1(Lcom/ximalaya/ting/android/player/XMediaPlayerWrapper;)Lcom/ximalaya/ting/android/player/XMediaPlayer$OnErrorListener;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayerWrapper;->mOnErrorListener:Lcom/ximalaya/ting/android/player/XMediaPlayer$OnErrorListener;

    return-object v0
.end method

.method static synthetic access$2(Lcom/ximalaya/ting/android/player/XMediaPlayerWrapper;)Lcom/ximalaya/ting/android/player/XMediaplayerImpl;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayerWrapper;->mXMediaplayerImpl:Lcom/ximalaya/ting/android/player/XMediaplayerImpl;

    return-object v0
.end method

.method private init()V
    .locals 5

    .prologue
    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayerWrapper;->isUseSystemPlayer:Z

    .line 37
    invoke-static {}, Lcom/ximalaya/ting/android/player/PlayerUtil;->getCpuInfo()Ljava/lang/String;

    move-result-object v0

    .line 38
    const-string v1, "os.arch"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 40
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 41
    const-string v2, "Marvell"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "armv5tel"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 42
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/ximalaya/ting/android/player/XMediaPlayerWrapper;->isUseSystemPlayer:Z

    .line 44
    :cond_0
    sget-object v2, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "cpuinfo:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "cpuArch:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 44
    invoke-static {v2, v0}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 51
    :goto_0
    invoke-direct {p0}, Lcom/ximalaya/ting/android/player/XMediaPlayerWrapper;->newXMediaplayer()Lcom/ximalaya/ting/android/player/XMediaplayerImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayerWrapper;->mXMediaplayerImpl:Lcom/ximalaya/ting/android/player/XMediaplayerImpl;

    .line 52
    return-void

    .line 47
    :cond_1
    sget-object v2, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "cpuinfo null:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 48
    const-string v3, "cpuArch:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 47
    invoke-static {v2, v0}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private newXMediaplayer()Lcom/ximalaya/ting/android/player/XMediaplayerImpl;
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayerWrapper;->isUseSystemPlayer:Z

    if-eqz v0, :cond_0

    .line 71
    new-instance v0, Lcom/ximalaya/ting/android/player/SMediaPlayer;

    invoke-direct {v0}, Lcom/ximalaya/ting/android/player/SMediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayerWrapper;->mXMediaplayerImpl:Lcom/ximalaya/ting/android/player/XMediaplayerImpl;

    .line 75
    :goto_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayerWrapper;->mXMediaplayerImpl:Lcom/ximalaya/ting/android/player/XMediaplayerImpl;

    return-object v0

    .line 73
    :cond_0
    new-instance v0, Lcom/ximalaya/ting/android/player/XMediaPlayer;

    invoke-direct {v0}, Lcom/ximalaya/ting/android/player/XMediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayerWrapper;->mXMediaplayerImpl:Lcom/ximalaya/ting/android/player/XMediaplayerImpl;

    goto :goto_0
.end method

.method private reUseSMediaplayer()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 219
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayerWrapper;->isUseSystemPlayer:Z

    .line 220
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayerWrapper;->mXMediaplayerImpl:Lcom/ximalaya/ting/android/player/XMediaplayerImpl;

    invoke-interface {v0, v1}, Lcom/ximalaya/ting/android/player/XMediaplayerImpl;->setOnBufferingUpdateListener(Lcom/ximalaya/ting/android/player/XMediaPlayer$OnBufferingUpdateListener;)V

    .line 221
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayerWrapper;->mXMediaplayerImpl:Lcom/ximalaya/ting/android/player/XMediaplayerImpl;

    invoke-interface {v0, v1}, Lcom/ximalaya/ting/android/player/XMediaplayerImpl;->setOnCompletionListener(Lcom/ximalaya/ting/android/player/XMediaPlayer$OnCompletionListener;)V

    .line 222
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayerWrapper;->mXMediaplayerImpl:Lcom/ximalaya/ting/android/player/XMediaplayerImpl;

    invoke-interface {v0, v1}, Lcom/ximalaya/ting/android/player/XMediaplayerImpl;->setOnErrorListener(Lcom/ximalaya/ting/android/player/XMediaPlayer$OnErrorListener;)V

    .line 223
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayerWrapper;->mXMediaplayerImpl:Lcom/ximalaya/ting/android/player/XMediaplayerImpl;

    invoke-interface {v0, v1}, Lcom/ximalaya/ting/android/player/XMediaplayerImpl;->setOnInfoListener(Lcom/ximalaya/ting/android/player/XMediaPlayer$OnInfoListener;)V

    .line 224
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayerWrapper;->mXMediaplayerImpl:Lcom/ximalaya/ting/android/player/XMediaplayerImpl;

    invoke-interface {v0, v1}, Lcom/ximalaya/ting/android/player/XMediaplayerImpl;->setOnPreparedListener(Lcom/ximalaya/ting/android/player/XMediaPlayer$OnPreparedListener;)V

    .line 225
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayerWrapper;->mXMediaplayerImpl:Lcom/ximalaya/ting/android/player/XMediaplayerImpl;

    invoke-interface {v0, v1}, Lcom/ximalaya/ting/android/player/XMediaplayerImpl;->setOnSeekCompleteListener(Lcom/ximalaya/ting/android/player/XMediaPlayer$OnSeekCompleteListener;)V

    .line 226
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayerWrapper;->mXMediaplayerImpl:Lcom/ximalaya/ting/android/player/XMediaplayerImpl;

    invoke-interface {v0, v1}, Lcom/ximalaya/ting/android/player/XMediaplayerImpl;->setOnPositionChangeListener(Lcom/ximalaya/ting/android/player/XMediaPlayer$OnPositionChangeListener;)V

    .line 227
    invoke-direct {p0}, Lcom/ximalaya/ting/android/player/XMediaPlayerWrapper;->newXMediaplayer()Lcom/ximalaya/ting/android/player/XMediaplayerImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayerWrapper;->mXMediaplayerImpl:Lcom/ximalaya/ting/android/player/XMediaplayerImpl;

    .line 228
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayerWrapper;->mXMediaplayerImpl:Lcom/ximalaya/ting/android/player/XMediaplayerImpl;

    .line 229
    iget-object v2, p0, Lcom/ximalaya/ting/android/player/XMediaPlayerWrapper;->mOnBufferingUpdateListener:Lcom/ximalaya/ting/android/player/XMediaPlayer$OnBufferingUpdateListener;

    invoke-interface {v0, v2}, Lcom/ximalaya/ting/android/player/XMediaplayerImpl;->setOnBufferingUpdateListener(Lcom/ximalaya/ting/android/player/XMediaPlayer$OnBufferingUpdateListener;)V

    .line 230
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayerWrapper;->mXMediaplayerImpl:Lcom/ximalaya/ting/android/player/XMediaplayerImpl;

    iget-object v2, p0, Lcom/ximalaya/ting/android/player/XMediaPlayerWrapper;->mOnCompletionListener:Lcom/ximalaya/ting/android/player/XMediaPlayer$OnCompletionListener;

    invoke-interface {v0, v2}, Lcom/ximalaya/ting/android/player/XMediaplayerImpl;->setOnCompletionListener(Lcom/ximalaya/ting/android/player/XMediaPlayer$OnCompletionListener;)V

    .line 231
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayerWrapper;->mXMediaplayerImpl:Lcom/ximalaya/ting/android/player/XMediaplayerImpl;

    iget-object v2, p0, Lcom/ximalaya/ting/android/player/XMediaPlayerWrapper;->mOnErrorListener:Lcom/ximalaya/ting/android/player/XMediaPlayer$OnErrorListener;

    invoke-interface {v0, v2}, Lcom/ximalaya/ting/android/player/XMediaplayerImpl;->setOnErrorListener(Lcom/ximalaya/ting/android/player/XMediaPlayer$OnErrorListener;)V

    .line 232
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayerWrapper;->mXMediaplayerImpl:Lcom/ximalaya/ting/android/player/XMediaplayerImpl;

    iget-object v2, p0, Lcom/ximalaya/ting/android/player/XMediaPlayerWrapper;->mOnInfoListener:Lcom/ximalaya/ting/android/player/XMediaPlayer$OnInfoListener;

    invoke-interface {v0, v2}, Lcom/ximalaya/ting/android/player/XMediaplayerImpl;->setOnInfoListener(Lcom/ximalaya/ting/android/player/XMediaPlayer$OnInfoListener;)V

    .line 233
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayerWrapper;->mXMediaplayerImpl:Lcom/ximalaya/ting/android/player/XMediaplayerImpl;

    iget-object v2, p0, Lcom/ximalaya/ting/android/player/XMediaPlayerWrapper;->mOnPreparedListener:Lcom/ximalaya/ting/android/player/XMediaPlayer$OnPreparedListener;

    invoke-interface {v0, v2}, Lcom/ximalaya/ting/android/player/XMediaplayerImpl;->setOnPreparedListener(Lcom/ximalaya/ting/android/player/XMediaPlayer$OnPreparedListener;)V

    .line 234
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayerWrapper;->mXMediaplayerImpl:Lcom/ximalaya/ting/android/player/XMediaplayerImpl;

    iget-object v2, p0, Lcom/ximalaya/ting/android/player/XMediaPlayerWrapper;->mOnSeekCompleteListener:Lcom/ximalaya/ting/android/player/XMediaPlayer$OnSeekCompleteListener;

    invoke-interface {v0, v2}, Lcom/ximalaya/ting/android/player/XMediaplayerImpl;->setOnSeekCompleteListener(Lcom/ximalaya/ting/android/player/XMediaPlayer$OnSeekCompleteListener;)V

    .line 235
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayerWrapper;->mXMediaplayerImpl:Lcom/ximalaya/ting/android/player/XMediaplayerImpl;

    .line 236
    iget-object v2, p0, Lcom/ximalaya/ting/android/player/XMediaPlayerWrapper;->mOnPositionChangeListener:Lcom/ximalaya/ting/android/player/XMediaPlayer$OnPositionChangeListener;

    invoke-interface {v0, v2}, Lcom/ximalaya/ting/android/player/XMediaplayerImpl;->setOnPositionChangeListener(Lcom/ximalaya/ting/android/player/XMediaPlayer$OnPositionChangeListener;)V

    .line 237
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayerWrapper;->mPlayUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 239
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayerWrapper;->mPlayUrl:Ljava/lang/String;

    const-string v2, "http"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 240
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayerWrapper;->mXMediaplayerImpl:Lcom/ximalaya/ting/android/player/XMediaplayerImpl;

    iget-object v1, p0, Lcom/ximalaya/ting/android/player/XMediaPlayerWrapper;->mPlayUrl:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/ximalaya/ting/android/player/XMediaplayerImpl;->setDataSource(Ljava/lang/String;)V

    .line 260
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayerWrapper;->mXMediaplayerImpl:Lcom/ximalaya/ting/android/player/XMediaplayerImpl;

    invoke-interface {v0}, Lcom/ximalaya/ting/android/player/XMediaplayerImpl;->prepareAsync()V

    .line 263
    :cond_1
    return-void

    .line 245
    :cond_2
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/ximalaya/ting/android/player/XMediaPlayerWrapper;->mPlayUrl:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    :try_start_1
    iget-object v1, p0, Lcom/ximalaya/ting/android/player/XMediaPlayerWrapper;->mXMediaplayerImpl:Lcom/ximalaya/ting/android/player/XMediaplayerImpl;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    iget-object v3, p0, Lcom/ximalaya/ting/android/player/XMediaPlayerWrapper;->mPlayUrl:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/ximalaya/ting/android/player/XMediaplayerImpl;->setDataSource(Ljava/io/FileDescriptor;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 253
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v0, v1

    .line 251
    :goto_1
    if-eqz v0, :cond_0

    .line 253
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 254
    :catch_2
    move-exception v0

    goto :goto_0

    .line 250
    :catchall_0
    move-exception v0

    .line 251
    :goto_2
    if-eqz v1, :cond_3

    .line 253
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 257
    :cond_3
    :goto_3
    throw v0

    :catch_3
    move-exception v1

    goto :goto_3

    .line 250
    :catchall_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public getAudioType()Lcom/ximalaya/ting/android/player/XMediaplayerJNI$AudioType;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayerWrapper;->mXMediaplayerImpl:Lcom/ximalaya/ting/android/player/XMediaplayerImpl;

    invoke-interface {v0}, Lcom/ximalaya/ting/android/player/XMediaplayerImpl;->getAudioType()Lcom/ximalaya/ting/android/player/XMediaplayerJNI$AudioType;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayerWrapper;->mXMediaplayerImpl:Lcom/ximalaya/ting/android/player/XMediaplayerImpl;

    invoke-interface {v0}, Lcom/ximalaya/ting/android/player/XMediaplayerImpl;->getCurrentPosition()I

    move-result v0

    return v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayerWrapper;->mXMediaplayerImpl:Lcom/ximalaya/ting/android/player/XMediaplayerImpl;

    invoke-interface {v0}, Lcom/ximalaya/ting/android/player/XMediaplayerImpl;->getDuration()I

    move-result v0

    return v0
.end method

.method public getPlayState()I
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayerWrapper;->mXMediaplayerImpl:Lcom/ximalaya/ting/android/player/XMediaplayerImpl;

    invoke-interface {v0}, Lcom/ximalaya/ting/android/player/XMediaplayerImpl;->getPlayState()I

    move-result v0

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayerWrapper;->mXMediaplayerImpl:Lcom/ximalaya/ting/android/player/XMediaplayerImpl;

    invoke-interface {v0}, Lcom/ximalaya/ting/android/player/XMediaplayerImpl;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public isUseSystemPlayer()Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayerWrapper;->isUseSystemPlayer:Z

    return v0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayerWrapper;->mXMediaplayerImpl:Lcom/ximalaya/ting/android/player/XMediaplayerImpl;

    invoke-interface {v0}, Lcom/ximalaya/ting/android/player/XMediaplayerImpl;->pause()V

    .line 131
    return-void
.end method

.method public prepareAsync()V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayerWrapper;->mXMediaplayerImpl:Lcom/ximalaya/ting/android/player/XMediaplayerImpl;

    invoke-interface {v0}, Lcom/ximalaya/ting/android/player/XMediaplayerImpl;->prepareAsync()V

    .line 138
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayerWrapper;->mXMediaplayerImpl:Lcom/ximalaya/ting/android/player/XMediaplayerImpl;

    invoke-interface {v0}, Lcom/ximalaya/ting/android/player/XMediaplayerImpl;->release()V

    .line 145
    return-void
.end method

.method public removeProxy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 338
    invoke-static {v1}, Lcom/ximalaya/ting/android/player/PlayerUtil;->setProxyHost(Ljava/lang/String;)V

    .line 339
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/ximalaya/ting/android/player/PlayerUtil;->setProxyPort(I)V

    .line 340
    invoke-static {v1}, Lcom/ximalaya/ting/android/player/PlayerUtil;->setAuthorization(Ljava/lang/String;)V

    .line 342
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayerWrapper;->mXMediaplayerImpl:Lcom/ximalaya/ting/android/player/XMediaplayerImpl;

    invoke-interface {v0}, Lcom/ximalaya/ting/android/player/XMediaplayerImpl;->reset()V

    .line 152
    return-void
.end method

.method public seekTo(I)V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayerWrapper;->mXMediaplayerImpl:Lcom/ximalaya/ting/android/player/XMediaplayerImpl;

    invoke-interface {v0, p1}, Lcom/ximalaya/ting/android/player/XMediaplayerImpl;->seekTo(I)V

    .line 159
    return-void
.end method

.method public setAudioStreamType(I)V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayerWrapper;->mXMediaplayerImpl:Lcom/ximalaya/ting/android/player/XMediaplayerImpl;

    invoke-interface {v0, p1}, Lcom/ximalaya/ting/android/player/XMediaplayerImpl;->setAudioStreamType(I)V

    .line 93
    return-void
.end method

.method public setDataSource(Ljava/io/FileDescriptor;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 99
    iput-object p2, p0, Lcom/ximalaya/ting/android/player/XMediaPlayerWrapper;->mPlayUrl:Ljava/lang/String;

    .line 100
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayerWrapper;->mXMediaplayerImpl:Lcom/ximalaya/ting/android/player/XMediaplayerImpl;

    invoke-interface {v0, p1, p2}, Lcom/ximalaya/ting/android/player/XMediaplayerImpl;->setDataSource(Ljava/io/FileDescriptor;Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 163
    iput-object p1, p0, Lcom/ximalaya/ting/android/player/XMediaPlayerWrapper;->mPlayUrl:Ljava/lang/String;

    .line 164
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayerWrapper;->mXMediaplayerImpl:Lcom/ximalaya/ting/android/player/XMediaplayerImpl;

    invoke-interface {v0, p1}, Lcom/ximalaya/ting/android/player/XMediaplayerImpl;->setDataSource(Ljava/lang/String;)V

    .line 166
    return-void
.end method

.method public setDownloadBufferSize(J)V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayerWrapper;->mXMediaplayerImpl:Lcom/ximalaya/ting/android/player/XMediaplayerImpl;

    invoke-interface {v0, p1, p2}, Lcom/ximalaya/ting/android/player/XMediaplayerImpl;->setDownloadBufferSize(J)V

    .line 109
    return-void
.end method

.method public setOnBufferingUpdateListener(Lcom/ximalaya/ting/android/player/XMediaPlayer$OnBufferingUpdateListener;)V
    .locals 2

    .prologue
    .line 179
    iput-object p1, p0, Lcom/ximalaya/ting/android/player/XMediaPlayerWrapper;->mOnBufferingUpdateListener:Lcom/ximalaya/ting/android/player/XMediaPlayer$OnBufferingUpdateListener;

    .line 180
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayerWrapper;->mXMediaplayerImpl:Lcom/ximalaya/ting/android/player/XMediaplayerImpl;

    .line 181
    iget-object v1, p0, Lcom/ximalaya/ting/android/player/XMediaPlayerWrapper;->mOnBufferingUpdateListener:Lcom/ximalaya/ting/android/player/XMediaPlayer$OnBufferingUpdateListener;

    invoke-interface {v0, v1}, Lcom/ximalaya/ting/android/player/XMediaplayerImpl;->setOnBufferingUpdateListener(Lcom/ximalaya/ting/android/player/XMediaPlayer$OnBufferingUpdateListener;)V

    .line 183
    return-void
.end method

.method public setOnCompletionListener(Lcom/ximalaya/ting/android/player/XMediaPlayer$OnCompletionListener;)V
    .locals 2

    .prologue
    .line 188
    iput-object p1, p0, Lcom/ximalaya/ting/android/player/XMediaPlayerWrapper;->mOnCompletionListener:Lcom/ximalaya/ting/android/player/XMediaPlayer$OnCompletionListener;

    .line 189
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayerWrapper;->mXMediaplayerImpl:Lcom/ximalaya/ting/android/player/XMediaplayerImpl;

    iget-object v1, p0, Lcom/ximalaya/ting/android/player/XMediaPlayerWrapper;->mOnCompletionListener:Lcom/ximalaya/ting/android/player/XMediaPlayer$OnCompletionListener;

    invoke-interface {v0, v1}, Lcom/ximalaya/ting/android/player/XMediaplayerImpl;->setOnCompletionListener(Lcom/ximalaya/ting/android/player/XMediaPlayer$OnCompletionListener;)V

    .line 191
    return-void
.end method

.method public setOnErrorListener(Lcom/ximalaya/ting/android/player/XMediaPlayer$OnErrorListener;)V
    .locals 2

    .prologue
    .line 196
    iput-object p1, p0, Lcom/ximalaya/ting/android/player/XMediaPlayerWrapper;->mOnErrorListener:Lcom/ximalaya/ting/android/player/XMediaPlayer$OnErrorListener;

    .line 197
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayerWrapper;->mXMediaplayerImpl:Lcom/ximalaya/ting/android/player/XMediaplayerImpl;

    new-instance v1, Lcom/ximalaya/ting/android/player/XMediaPlayerWrapper$1;

    invoke-direct {v1, p0}, Lcom/ximalaya/ting/android/player/XMediaPlayerWrapper$1;-><init>(Lcom/ximalaya/ting/android/player/XMediaPlayerWrapper;)V

    invoke-interface {v0, v1}, Lcom/ximalaya/ting/android/player/XMediaplayerImpl;->setOnErrorListener(Lcom/ximalaya/ting/android/player/XMediaPlayer$OnErrorListener;)V

    .line 216
    return-void
.end method

.method public setOnInfoListener(Lcom/ximalaya/ting/android/player/XMediaPlayer$OnInfoListener;)V
    .locals 2

    .prologue
    .line 268
    iput-object p1, p0, Lcom/ximalaya/ting/android/player/XMediaPlayerWrapper;->mOnInfoListener:Lcom/ximalaya/ting/android/player/XMediaPlayer$OnInfoListener;

    .line 269
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayerWrapper;->mXMediaplayerImpl:Lcom/ximalaya/ting/android/player/XMediaplayerImpl;

    iget-object v1, p0, Lcom/ximalaya/ting/android/player/XMediaPlayerWrapper;->mOnInfoListener:Lcom/ximalaya/ting/android/player/XMediaPlayer$OnInfoListener;

    invoke-interface {v0, v1}, Lcom/ximalaya/ting/android/player/XMediaplayerImpl;->setOnInfoListener(Lcom/ximalaya/ting/android/player/XMediaPlayer$OnInfoListener;)V

    .line 271
    return-void
.end method

.method public setOnPositionChangeListener(Lcom/ximalaya/ting/android/player/XMediaPlayer$OnPositionChangeListener;)V
    .locals 2

    .prologue
    .line 292
    iput-object p1, p0, Lcom/ximalaya/ting/android/player/XMediaPlayerWrapper;->mOnPositionChangeListener:Lcom/ximalaya/ting/android/player/XMediaPlayer$OnPositionChangeListener;

    .line 293
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayerWrapper;->mXMediaplayerImpl:Lcom/ximalaya/ting/android/player/XMediaplayerImpl;

    .line 294
    iget-object v1, p0, Lcom/ximalaya/ting/android/player/XMediaPlayerWrapper;->mOnPositionChangeListener:Lcom/ximalaya/ting/android/player/XMediaPlayer$OnPositionChangeListener;

    invoke-interface {v0, v1}, Lcom/ximalaya/ting/android/player/XMediaplayerImpl;->setOnPositionChangeListener(Lcom/ximalaya/ting/android/player/XMediaPlayer$OnPositionChangeListener;)V

    .line 296
    return-void
.end method

.method public setOnPreparedListener(Lcom/ximalaya/ting/android/player/XMediaPlayer$OnPreparedListener;)V
    .locals 2

    .prologue
    .line 276
    iput-object p1, p0, Lcom/ximalaya/ting/android/player/XMediaPlayerWrapper;->mOnPreparedListener:Lcom/ximalaya/ting/android/player/XMediaPlayer$OnPreparedListener;

    .line 277
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayerWrapper;->mXMediaplayerImpl:Lcom/ximalaya/ting/android/player/XMediaplayerImpl;

    iget-object v1, p0, Lcom/ximalaya/ting/android/player/XMediaPlayerWrapper;->mOnPreparedListener:Lcom/ximalaya/ting/android/player/XMediaPlayer$OnPreparedListener;

    invoke-interface {v0, v1}, Lcom/ximalaya/ting/android/player/XMediaplayerImpl;->setOnPreparedListener(Lcom/ximalaya/ting/android/player/XMediaPlayer$OnPreparedListener;)V

    .line 279
    return-void
.end method

.method public setOnSeekCompleteListener(Lcom/ximalaya/ting/android/player/XMediaPlayer$OnSeekCompleteListener;)V
    .locals 2

    .prologue
    .line 284
    iput-object p1, p0, Lcom/ximalaya/ting/android/player/XMediaPlayerWrapper;->mOnSeekCompleteListener:Lcom/ximalaya/ting/android/player/XMediaPlayer$OnSeekCompleteListener;

    .line 285
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayerWrapper;->mXMediaplayerImpl:Lcom/ximalaya/ting/android/player/XMediaplayerImpl;

    iget-object v1, p0, Lcom/ximalaya/ting/android/player/XMediaPlayerWrapper;->mOnSeekCompleteListener:Lcom/ximalaya/ting/android/player/XMediaPlayer$OnSeekCompleteListener;

    invoke-interface {v0, v1}, Lcom/ximalaya/ting/android/player/XMediaplayerImpl;->setOnSeekCompleteListener(Lcom/ximalaya/ting/android/player/XMediaPlayer$OnSeekCompleteListener;)V

    .line 287
    return-void
.end method

.method public setProxy(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 329
    invoke-static {p1}, Lcom/ximalaya/ting/android/player/PlayerUtil;->setProxyHost(Ljava/lang/String;)V

    .line 330
    invoke-static {p2}, Lcom/ximalaya/ting/android/player/PlayerUtil;->setProxyPort(I)V

    .line 331
    invoke-static {p3}, Lcom/ximalaya/ting/android/player/PlayerUtil;->setAuthorization(Ljava/lang/String;)V

    .line 333
    return-void
.end method

.method public setVolume(FF)V
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayerWrapper;->mXMediaplayerImpl:Lcom/ximalaya/ting/android/player/XMediaplayerImpl;

    invoke-interface {v0, p1, p2}, Lcom/ximalaya/ting/android/player/XMediaplayerImpl;->setVolume(FF)V

    .line 303
    return-void
.end method

.method public setWakeMode(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayerWrapper;->mXMediaplayerImpl:Lcom/ximalaya/ting/android/player/XMediaplayerImpl;

    invoke-interface {v0, p1, p2}, Lcom/ximalaya/ting/android/player/XMediaplayerImpl;->setWakeMode(Landroid/content/Context;I)V

    .line 310
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayerWrapper;->mXMediaplayerImpl:Lcom/ximalaya/ting/android/player/XMediaplayerImpl;

    invoke-interface {v0}, Lcom/ximalaya/ting/android/player/XMediaplayerImpl;->start()V

    .line 317
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaPlayerWrapper;->mXMediaplayerImpl:Lcom/ximalaya/ting/android/player/XMediaplayerImpl;

    invoke-interface {v0}, Lcom/ximalaya/ting/android/player/XMediaplayerImpl;->stop()V

    .line 324
    return-void
.end method
