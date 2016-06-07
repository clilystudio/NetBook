.class public Lcom/ximalaya/ting/android/player/HlsAudioFile;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private buffItemQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcom/ximalaya/ting/android/player/BufferItem;",
            ">;"
        }
    .end annotation
.end field

.field private isRunning:Z

.field private lastIndex:I

.field private mHlsPlayUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHlsReadThread:Lcom/ximalaya/ting/android/player/HlsReadThread;

.field private mPlayUrl:Ljava/lang/String;

.field private mSourceUrl:Ljava/lang/String;

.field private mXMediaplayerJNI:Lcom/ximalaya/ting/android/player/XMediaplayerJNI;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/ximalaya/ting/android/player/XMediaplayerJNI;)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ximalaya/ting/android/player/HlsAudioFile;->mHlsPlayUrls:Ljava/util/List;

    .line 122
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ximalaya/ting/android/player/HlsAudioFile;->isRunning:Z

    .line 123
    const/4 v0, -0x1

    iput v0, p0, Lcom/ximalaya/ting/android/player/HlsAudioFile;->lastIndex:I

    .line 34
    iput-object p1, p0, Lcom/ximalaya/ting/android/player/HlsAudioFile;->mSourceUrl:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lcom/ximalaya/ting/android/player/HlsAudioFile;->mXMediaplayerJNI:Lcom/ximalaya/ting/android/player/XMediaplayerJNI;

    .line 36
    return-void
.end method

.method private startChacheFile()V
    .locals 4

    .prologue
    .line 127
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/HlsAudioFile;->mHlsReadThread:Lcom/ximalaya/ting/android/player/HlsReadThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ximalaya/ting/android/player/HlsAudioFile;->mHlsReadThread:Lcom/ximalaya/ting/android/player/HlsReadThread;

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/player/HlsReadThread;->isClose()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    :cond_0
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 129
    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    .line 128
    iput-object v0, p0, Lcom/ximalaya/ting/android/player/HlsAudioFile;->buffItemQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 130
    new-instance v0, Lcom/ximalaya/ting/android/player/HlsReadThread;

    iget-object v1, p0, Lcom/ximalaya/ting/android/player/HlsAudioFile;->mXMediaplayerJNI:Lcom/ximalaya/ting/android/player/XMediaplayerJNI;

    .line 131
    iget-object v2, p0, Lcom/ximalaya/ting/android/player/HlsAudioFile;->mSourceUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/ximalaya/ting/android/player/HlsAudioFile;->buffItemQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/ximalaya/ting/android/player/HlsReadThread;-><init>(Lcom/ximalaya/ting/android/player/HlsAudioFile;Lcom/ximalaya/ting/android/player/XMediaplayerJNI;Ljava/lang/String;Ljava/util/concurrent/LinkedBlockingQueue;)V

    .line 130
    iput-object v0, p0, Lcom/ximalaya/ting/android/player/HlsAudioFile;->mHlsReadThread:Lcom/ximalaya/ting/android/player/HlsReadThread;

    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ximalaya/ting/android/player/HlsAudioFile;->isRunning:Z

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/HlsAudioFile;->mHlsReadThread:Lcom/ximalaya/ting/android/player/HlsReadThread;

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/player/HlsReadThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/ximalaya/ting/android/player/HlsAudioFile;->isRunning:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/ximalaya/ting/android/player/HlsAudioFile;->getPlayIndex()I

    move-result v0

    if-ltz v0, :cond_2

    .line 136
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ximalaya/ting/android/player/HlsAudioFile;->isRunning:Z

    .line 137
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/HlsAudioFile;->mHlsReadThread:Lcom/ximalaya/ting/android/player/HlsReadThread;

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/player/HlsReadThread;->start()V

    .line 140
    :cond_2
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/HlsAudioFile;->mHlsReadThread:Lcom/ximalaya/ting/android/player/HlsReadThread;

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/player/HlsReadThread;->notifyDownload()V

    .line 142
    return-void
.end method


# virtual methods
.method public addPlayUrls([Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 47
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/HlsAudioFile;->mHlsPlayUrls:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 49
    invoke-direct {p0}, Lcom/ximalaya/ting/android/player/HlsAudioFile;->startChacheFile()V

    .line 51
    :cond_0
    return-void
.end method

.method public getCachePercent()I
    .locals 3

    .prologue
    .line 24
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/HlsAudioFile;->mHlsReadThread:Lcom/ximalaya/ting/android/player/HlsReadThread;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ximalaya/ting/android/player/HlsAudioFile;->getPlayUrlsLength()I

    move-result v0

    if-nez v0, :cond_1

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 30
    :goto_0
    return v0

    .line 26
    :cond_1
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DownloadThread hls mHlsReadThread.getCacheIndex():"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    iget-object v2, p0, Lcom/ximalaya/ting/android/player/HlsAudioFile;->mHlsReadThread:Lcom/ximalaya/ting/android/player/HlsReadThread;

    invoke-virtual {v2}, Lcom/ximalaya/ting/android/player/HlsReadThread;->getCacheIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 29
    const-string v2, "getPlayUrlsLength():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ximalaya/ting/android/player/HlsAudioFile;->getPlayUrlsLength()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 26
    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 30
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/HlsAudioFile;->mHlsReadThread:Lcom/ximalaya/ting/android/player/HlsReadThread;

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/player/HlsReadThread;->getCacheIndex()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/ximalaya/ting/android/player/HlsAudioFile;->getPlayUrlsLength()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0
.end method

.method public getHlsPlayUrls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/HlsAudioFile;->mHlsPlayUrls:Ljava/util/List;

    return-object v0
.end method

.method public getPlayIndex()I
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/HlsAudioFile;->mPlayUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 69
    const/4 v0, -0x1

    .line 71
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/HlsAudioFile;->mHlsPlayUrls:Ljava/util/List;

    iget-object v1, p0, Lcom/ximalaya/ting/android/player/HlsAudioFile;->mPlayUrl:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method public getPlayUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/HlsAudioFile;->mPlayUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayUrl(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/HlsAudioFile;->mHlsPlayUrls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/HlsAudioFile;->mHlsPlayUrls:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 60
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPlayUrlsLength()I
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/HlsAudioFile;->mHlsPlayUrls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public readData(Lcom/ximalaya/ting/android/player/model/JNIDataModel;)J
    .locals 8

    .prologue
    const-wide/16 v2, -0x1

    const/4 v0, 0x0

    .line 75
    sget-object v1, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    .line 76
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "hls readData callback:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 75
    invoke-static {v1, v4}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 77
    iget-object v1, p1, Lcom/ximalaya/ting/android/player/model/JNIDataModel;->filePath:Ljava/lang/String;

    iput-object v1, p0, Lcom/ximalaya/ting/android/player/HlsAudioFile;->mPlayUrl:Ljava/lang/String;

    .line 79
    const/4 v1, 0x1

    .line 81
    iget-object v4, p0, Lcom/ximalaya/ting/android/player/HlsAudioFile;->mXMediaplayerJNI:Lcom/ximalaya/ting/android/player/XMediaplayerJNI;

    invoke-virtual {v4}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->getAudioType()Lcom/ximalaya/ting/android/player/XMediaplayerJNI$AudioType;

    move-result-object v4

    sget-object v5, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$AudioType;->HLS_FILE:Lcom/ximalaya/ting/android/player/XMediaplayerJNI$AudioType;

    invoke-virtual {v4, v5}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$AudioType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/ximalaya/ting/android/player/HlsAudioFile;->getPlayIndex()I

    move-result v4

    .line 84
    sget-object v5, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "HlsReadThread notify555 curIndex:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "lastIndex:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/ximalaya/ting/android/player/HlsAudioFile;->lastIndex:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 84
    invoke-static {v5, v6}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 86
    iget v5, p0, Lcom/ximalaya/ting/android/player/HlsAudioFile;->lastIndex:I

    add-int/lit8 v5, v5, 0x1

    if-ne v5, v4, :cond_3

    .line 89
    :goto_0
    iput v4, p0, Lcom/ximalaya/ting/android/player/HlsAudioFile;->lastIndex:I

    .line 94
    :cond_0
    invoke-direct {p0}, Lcom/ximalaya/ting/android/player/HlsAudioFile;->startChacheFile()V

    .line 96
    if-eqz v0, :cond_1

    .line 97
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 98
    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    .line 97
    iput-object v0, p0, Lcom/ximalaya/ting/android/player/HlsAudioFile;->buffItemQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 99
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/HlsAudioFile;->mHlsReadThread:Lcom/ximalaya/ting/android/player/HlsReadThread;

    iget-object v1, p0, Lcom/ximalaya/ting/android/player/HlsAudioFile;->buffItemQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, v1}, Lcom/ximalaya/ting/android/player/HlsReadThread;->resetIndex(Ljava/util/concurrent/LinkedBlockingQueue;)V

    .line 103
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/HlsAudioFile;->buffItemQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 104
    const-wide/16 v4, 0x7530

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 103
    invoke-virtual {v0, v4, v5, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ximalaya/ting/android/player/BufferItem;

    .line 105
    sget-object v1, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    const-string v4, "dataStreamInputFuncCallBackT 3"

    invoke-static {v1, v4}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 106
    if-nez v0, :cond_2

    .line 107
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    .line 108
    const-string v1, "dataStreamInputFuncCallBackT timeout item null"

    .line 107
    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    move-wide v0, v2

    .line 117
    :goto_1
    return-wide v0

    .line 113
    :cond_2
    invoke-virtual {v0}, Lcom/ximalaya/ting/android/player/BufferItem;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    iput-object v0, p1, Lcom/ximalaya/ting/android/player/model/JNIDataModel;->buf:[B

    .line 114
    iget-object v0, p1, Lcom/ximalaya/ting/android/player/model/JNIDataModel;->buf:[B

    array-length v0, v0

    int-to-long v0, v0

    iput-wide v0, p1, Lcom/ximalaya/ting/android/player/model/JNIDataModel;->fileSize:J

    .line 115
    iget-wide v0, p1, Lcom/ximalaya/ting/android/player/model/JNIDataModel;->fileSize:J
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 117
    :catch_0
    move-exception v0

    move-wide v0, v2

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/HlsAudioFile;->mHlsReadThread:Lcom/ximalaya/ting/android/player/HlsReadThread;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/HlsAudioFile;->mHlsReadThread:Lcom/ximalaya/ting/android/player/HlsReadThread;

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/player/HlsReadThread;->close()V

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/HlsAudioFile;->buffItemQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    if-eqz v0, :cond_1

    .line 149
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/HlsAudioFile;->buffItemQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 151
    :cond_1
    return-void
.end method

.method public setPlayUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/ximalaya/ting/android/player/HlsAudioFile;->mPlayUrl:Ljava/lang/String;

    .line 40
    return-void
.end method
