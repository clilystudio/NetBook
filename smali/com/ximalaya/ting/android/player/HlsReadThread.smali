.class public Lcom/ximalaya/ting/android/player/HlsReadThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "dl_hls"


# instance fields
.field private volatile buffItemQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcom/ximalaya/ting/android/player/BufferItem;",
            ">;"
        }
    .end annotation
.end field

.field private volatile curIndex:I

.field private volatile fromIndex:I

.field private volatile isResetIndex:Z

.field private isStop:Z

.field public volatile isWaiting:Z

.field private mDownloadIndex:I

.field private mHlsAudioFile:Lcom/ximalaya/ting/android/player/HlsAudioFile;

.field private mSourceUrl:Ljava/lang/String;

.field private mXMediaplayerJNI:Lcom/ximalaya/ting/android/player/XMediaplayerJNI;

.field private volatile synKey:Ljava/lang/Object;

.field public synObject:Ljava/lang/Object;

.field public synWaitObject:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/ximalaya/ting/android/player/HlsAudioFile;Lcom/ximalaya/ting/android/player/XMediaplayerJNI;Ljava/lang/String;Ljava/util/concurrent/LinkedBlockingQueue;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ximalaya/ting/android/player/HlsAudioFile;",
            "Lcom/ximalaya/ting/android/player/XMediaplayerJNI;",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcom/ximalaya/ting/android/player/BufferItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 13
    iput-boolean v1, p0, Lcom/ximalaya/ting/android/player/HlsReadThread;->isStop:Z

    .line 19
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ximalaya/ting/android/player/HlsReadThread;->synObject:Ljava/lang/Object;

    .line 20
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ximalaya/ting/android/player/HlsReadThread;->synWaitObject:Ljava/lang/Object;

    .line 21
    iput-boolean v1, p0, Lcom/ximalaya/ting/android/player/HlsReadThread;->isWaiting:Z

    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ximalaya/ting/android/player/HlsReadThread;->synKey:Ljava/lang/Object;

    .line 27
    iput-object p1, p0, Lcom/ximalaya/ting/android/player/HlsReadThread;->mHlsAudioFile:Lcom/ximalaya/ting/android/player/HlsAudioFile;

    .line 28
    iput-object p2, p0, Lcom/ximalaya/ting/android/player/HlsReadThread;->mXMediaplayerJNI:Lcom/ximalaya/ting/android/player/XMediaplayerJNI;

    .line 29
    iput-object p3, p0, Lcom/ximalaya/ting/android/player/HlsReadThread;->mSourceUrl:Ljava/lang/String;

    .line 30
    iput-object p4, p0, Lcom/ximalaya/ting/android/player/HlsReadThread;->buffItemQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ximalaya/ting/android/player/HlsReadThread;->isResetIndex:Z

    .line 32
    return-void
.end method

.method private putItem(Lcom/ximalaya/ting/android/player/BufferItem;)V
    .locals 4

    .prologue
    .line 238
    iget-boolean v0, p0, Lcom/ximalaya/ting/android/player/HlsReadThread;->isResetIndex:Z

    if-nez v0, :cond_0

    .line 239
    const-string v0, "dl_hls"

    .line 240
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "putItem url:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ximalaya/ting/android/player/HlsReadThread;->mHlsAudioFile:Lcom/ximalaya/ting/android/player/HlsAudioFile;

    invoke-virtual {p1}, Lcom/ximalaya/ting/android/player/BufferItem;->getIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/ximalaya/ting/android/player/HlsAudioFile;->getPlayUrl(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 241
    const-string v2, " item Index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ximalaya/ting/android/player/BufferItem;->getIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 240
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 239
    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 242
    const-string v0, "dl_hls"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "putItem buffItemQueue.size()0:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ximalaya/ting/android/player/HlsReadThread;->buffItemQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 244
    :try_start_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/HlsReadThread;->buffItemQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    :goto_0
    const-string v0, "dl_hls"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "putItem buffItemQueue.size()1:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ximalaya/ting/android/player/HlsReadThread;->buffItemQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 252
    :goto_1
    return-void

    .line 250
    :cond_0
    const-string v0, "dl_hls"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "putItem buffItemQueue.size()2:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ximalaya/ting/android/player/HlsReadThread;->buffItemQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private readChunkData(Ljava/io/File;Lcom/ximalaya/ting/android/player/BufferItem;)I
    .locals 5

    .prologue
    .line 209
    const/4 v0, 0x0

    .line 211
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {v1, p1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    :try_start_1
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    .line 213
    long-to-int v0, v2

    new-array v2, v0, [B

    .line 215
    const/4 v0, 0x0

    .line 217
    :cond_0
    array-length v3, v2

    .line 218
    sub-int/2addr v3, v0

    .line 217
    invoke-virtual {v1, v2, v0, v3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v3

    .line 219
    add-int/2addr v0, v3

    .line 216
    if-gtz v3, :cond_0

    .line 221
    invoke-virtual {p2, v2}, Lcom/ximalaya/ting/android/player/BufferItem;->setBuffer([B)V

    .line 222
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 229
    :try_start_2
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 234
    :goto_0
    return v0

    .line 227
    :catch_0
    move-exception v1

    :goto_1
    if-eqz v0, :cond_1

    .line 229
    :try_start_3
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 234
    :cond_1
    :goto_2
    const/4 v0, -0x1

    goto :goto_0

    .line 226
    :catchall_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    .line 227
    :goto_3
    if-eqz v1, :cond_2

    .line 229
    :try_start_4
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 233
    :cond_2
    :goto_4
    throw v0

    :catch_1
    move-exception v1

    goto :goto_0

    .line 230
    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_4

    .line 226
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 227
    :catch_4
    move-exception v0

    move-object v0, v1

    goto :goto_1
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 262
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ximalaya/ting/android/player/HlsReadThread;->isStop:Z

    .line 263
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/HlsReadThread;->buffItemQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/HlsReadThread;->buffItemQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 266
    :cond_0
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    const-string v1, "HlsReadThread hls readData close"

    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 267
    return-void
.end method

.method public getCacheIndex()I
    .locals 1

    .prologue
    .line 255
    iget v0, p0, Lcom/ximalaya/ting/android/player/HlsReadThread;->mDownloadIndex:I

    if-nez v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/HlsReadThread;->mHlsAudioFile:Lcom/ximalaya/ting/android/player/HlsAudioFile;

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/player/HlsAudioFile;->getPlayIndex()I

    move-result v0

    .line 258
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/ximalaya/ting/android/player/HlsReadThread;->mDownloadIndex:I

    goto :goto_0
.end method

.method public isClose()Z
    .locals 1

    .prologue
    .line 270
    iget-boolean v0, p0, Lcom/ximalaya/ting/android/player/HlsReadThread;->isStop:Z

    return v0
.end method

.method public notifyDownload()V
    .locals 2

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/ximalaya/ting/android/player/HlsReadThread;->isWaiting:Z

    if-eqz v0, :cond_0

    .line 54
    iget-object v1, p0, Lcom/ximalaya/ting/android/player/HlsReadThread;->synWaitObject:Ljava/lang/Object;

    monitor-enter v1

    .line 55
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/ximalaya/ting/android/player/HlsReadThread;->isWaiting:Z

    .line 56
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/HlsReadThread;->synWaitObject:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 54
    monitor-exit v1

    .line 59
    :cond_0
    return-void

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public resetIndex(Ljava/util/concurrent/LinkedBlockingQueue;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcom/ximalaya/ting/android/player/BufferItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    iget-object v1, p0, Lcom/ximalaya/ting/android/player/HlsReadThread;->synKey:Ljava/lang/Object;

    monitor-enter v1

    .line 41
    :try_start_0
    const-string v0, "dl_hls"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "resetIndex bq.size()0:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ximalaya/ting/android/player/HlsReadThread;->isResetIndex:Z

    .line 43
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/HlsReadThread;->mHlsAudioFile:Lcom/ximalaya/ting/android/player/HlsAudioFile;

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/player/HlsAudioFile;->getPlayIndex()I

    move-result v0

    iput v0, p0, Lcom/ximalaya/ting/android/player/HlsReadThread;->fromIndex:I

    .line 44
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/HlsReadThread;->buffItemQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/HlsReadThread;->buffItemQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 47
    :cond_0
    iput-object p1, p0, Lcom/ximalaya/ting/android/player/HlsReadThread;->buffItemQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 48
    const-string v0, "dl_hls"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "resetIndex bq.size()1:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 40
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 63
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/HlsReadThread;->mHlsAudioFile:Lcom/ximalaya/ting/android/player/HlsAudioFile;

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/player/HlsAudioFile;->getPlayIndex()I

    move-result v0

    iput v0, p0, Lcom/ximalaya/ting/android/player/HlsReadThread;->fromIndex:I

    .line 64
    iput-boolean v5, p0, Lcom/ximalaya/ting/android/player/HlsReadThread;->isResetIndex:Z

    .line 65
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/ximalaya/ting/android/player/HlsReadThread;->isStop:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ximalaya/ting/android/player/HlsReadThread;->mXMediaplayerJNI:Lcom/ximalaya/ting/android/player/XMediaplayerJNI;

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->getPlayUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/player/HlsReadThread;->mSourceUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 203
    :cond_1
    :goto_1
    iput-boolean v5, p0, Lcom/ximalaya/ting/android/player/HlsReadThread;->isStop:Z

    .line 204
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "HlsReadThread isStop:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/ximalaya/ting/android/player/HlsReadThread;->isStop:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 205
    const-string v2, "cacheIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ximalaya/ting/android/player/HlsReadThread;->curIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 204
    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 206
    return-void

    .line 67
    :cond_2
    iget-object v1, p0, Lcom/ximalaya/ting/android/player/HlsReadThread;->synKey:Ljava/lang/Object;

    monitor-enter v1

    .line 68
    :try_start_0
    iget-boolean v0, p0, Lcom/ximalaya/ting/android/player/HlsReadThread;->isResetIndex:Z

    if-eqz v0, :cond_3

    .line 69
    const-string v0, "dl_hls"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "resetIndex isResetIndex buffItemQueue.size():"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ximalaya/ting/android/player/HlsReadThread;->buffItemQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ximalaya/ting/android/player/HlsReadThread;->isResetIndex:Z

    .line 71
    iget v0, p0, Lcom/ximalaya/ting/android/player/HlsReadThread;->fromIndex:I

    iput v0, p0, Lcom/ximalaya/ting/android/player/HlsReadThread;->curIndex:I

    .line 72
    iget v0, p0, Lcom/ximalaya/ting/android/player/HlsReadThread;->fromIndex:I

    iput v0, p0, Lcom/ximalaya/ting/android/player/HlsReadThread;->mDownloadIndex:I

    .line 67
    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 76
    iget v0, p0, Lcom/ximalaya/ting/android/player/HlsReadThread;->curIndex:I

    iget-object v1, p0, Lcom/ximalaya/ting/android/player/HlsReadThread;->mHlsAudioFile:Lcom/ximalaya/ting/android/player/HlsAudioFile;

    invoke-virtual {v1}, Lcom/ximalaya/ting/android/player/HlsAudioFile;->getPlayUrlsLength()I

    move-result v1

    if-lt v0, v1, :cond_4

    .line 77
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/HlsReadThread;->mXMediaplayerJNI:Lcom/ximalaya/ting/android/player/XMediaplayerJNI;

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->getAudioType()Lcom/ximalaya/ting/android/player/XMediaplayerJNI$AudioType;

    move-result-object v0

    .line 78
    sget-object v1, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$AudioType;->HLS_FILE:Lcom/ximalaya/ting/android/player/XMediaplayerJNI$AudioType;

    .line 77
    invoke-virtual {v0, v1}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$AudioType;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 78
    if-nez v0, :cond_4

    .line 80
    iget-boolean v0, p0, Lcom/ximalaya/ting/android/player/HlsReadThread;->isResetIndex:Z

    if-eqz v0, :cond_1

    .line 86
    :cond_4
    iget v0, p0, Lcom/ximalaya/ting/android/player/HlsReadThread;->mDownloadIndex:I

    iget v1, p0, Lcom/ximalaya/ting/android/player/HlsReadThread;->curIndex:I

    if-ge v0, v1, :cond_5

    .line 87
    iget v0, p0, Lcom/ximalaya/ting/android/player/HlsReadThread;->curIndex:I

    iput v0, p0, Lcom/ximalaya/ting/android/player/HlsReadThread;->mDownloadIndex:I

    .line 89
    :cond_5
    sget v0, Lcom/ximalaya/ting/android/player/XMediaPlayerConstants;->DOWNLOAD_QUEUE_SIZE:I

    add-int/lit8 v0, v0, -0x3

    .line 92
    :goto_2
    iget v1, p0, Lcom/ximalaya/ting/android/player/HlsReadThread;->mDownloadIndex:I

    iget v2, p0, Lcom/ximalaya/ting/android/player/HlsReadThread;->curIndex:I

    sub-int/2addr v1, v2

    if-ge v1, v0, :cond_6

    .line 93
    iget-object v1, p0, Lcom/ximalaya/ting/android/player/HlsReadThread;->buffItemQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_6

    .line 94
    iget-boolean v1, p0, Lcom/ximalaya/ting/android/player/HlsReadThread;->isStop:Z

    if-nez v1, :cond_6

    .line 95
    iget v1, p0, Lcom/ximalaya/ting/android/player/HlsReadThread;->mDownloadIndex:I

    iget-object v2, p0, Lcom/ximalaya/ting/android/player/HlsReadThread;->mHlsAudioFile:Lcom/ximalaya/ting/android/player/HlsAudioFile;

    invoke-virtual {v2}, Lcom/ximalaya/ting/android/player/HlsAudioFile;->getPlayUrlsLength()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 96
    iget-boolean v1, p0, Lcom/ximalaya/ting/android/player/HlsReadThread;->isResetIndex:Z

    if-eqz v1, :cond_7

    .line 127
    :cond_6
    iget-boolean v0, p0, Lcom/ximalaya/ting/android/player/HlsReadThread;->isStop:Z

    if-nez v0, :cond_1

    .line 130
    iget-boolean v0, p0, Lcom/ximalaya/ting/android/player/HlsReadThread;->isResetIndex:Z

    if-nez v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/HlsReadThread;->mHlsAudioFile:Lcom/ximalaya/ting/android/player/HlsAudioFile;

    iget v1, p0, Lcom/ximalaya/ting/android/player/HlsReadThread;->curIndex:I

    invoke-virtual {v0, v1}, Lcom/ximalaya/ting/android/player/HlsAudioFile;->getPlayUrl(I)Ljava/lang/String;

    move-result-object v0

    .line 135
    const-string v1, "dl_hls"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "HlsReadThread downUrl0:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 136
    const-string v3, "    cacheIndex:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/ximalaya/ting/android/player/HlsReadThread;->curIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "getPlayUrlsLength:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 137
    iget-object v3, p0, Lcom/ximalaya/ting/android/player/HlsReadThread;->mHlsAudioFile:Lcom/ximalaya/ting/android/player/HlsAudioFile;

    invoke-virtual {v3}, Lcom/ximalaya/ting/android/player/HlsAudioFile;->getPlayUrlsLength()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 135
    invoke-static {v1, v2}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 139
    if-nez v0, :cond_a

    .line 141
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/HlsReadThread;->mXMediaplayerJNI:Lcom/ximalaya/ting/android/player/XMediaplayerJNI;

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->getAudioType()Lcom/ximalaya/ting/android/player/XMediaplayerJNI$AudioType;

    move-result-object v0

    sget-object v1, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$AudioType;->HLS_FILE:Lcom/ximalaya/ting/android/player/XMediaplayerJNI$AudioType;

    invoke-virtual {v0, v1}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$AudioType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    iget-object v1, p0, Lcom/ximalaya/ting/android/player/HlsReadThread;->synWaitObject:Ljava/lang/Object;

    monitor-enter v1

    .line 143
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/ximalaya/ting/android/player/HlsReadThread;->isWaiting:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 145
    :try_start_2
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/HlsReadThread;->synWaitObject:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 142
    :goto_3
    :try_start_3
    monitor-exit v1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 67
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 97
    :cond_7
    iget-object v1, p0, Lcom/ximalaya/ting/android/player/HlsReadThread;->mHlsAudioFile:Lcom/ximalaya/ting/android/player/HlsAudioFile;

    .line 98
    iget v2, p0, Lcom/ximalaya/ting/android/player/HlsReadThread;->mDownloadIndex:I

    invoke-virtual {v1, v2}, Lcom/ximalaya/ting/android/player/HlsAudioFile;->getPlayUrl(I)Ljava/lang/String;

    move-result-object v1

    .line 99
    invoke-static {v1}, Lcom/ximalaya/ting/android/player/PlayerUtil;->isDownloadHlsTs(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 101
    new-instance v2, Lcom/ximalaya/ting/android/player/HlsDownloadThread;

    .line 102
    const/4 v3, 0x0

    .line 101
    invoke-direct {v2, v1, v3}, Lcom/ximalaya/ting/android/player/HlsDownloadThread;-><init>(Ljava/lang/String;Lcom/ximalaya/ting/android/player/BufferItem;)V

    .line 103
    invoke-virtual {v2}, Lcom/ximalaya/ting/android/player/HlsDownloadThread;->download()I

    move-result v2

    .line 104
    if-lez v2, :cond_8

    .line 105
    const-string v2, "dl_hls"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "url:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 106
    const-string v3, " downloadIndex:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/ximalaya/ting/android/player/HlsReadThread;->mDownloadIndex:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 107
    const-string v3, "\u4e0b\u8f7d\u5e76\u4e14\u7f13\u5b58\u6210\u529f1"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 105
    invoke-static {v2, v1}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 108
    iget v1, p0, Lcom/ximalaya/ting/android/player/HlsReadThread;->mDownloadIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/ximalaya/ting/android/player/HlsReadThread;->mDownloadIndex:I

    .line 109
    iget-object v1, p0, Lcom/ximalaya/ting/android/player/HlsReadThread;->mXMediaplayerJNI:Lcom/ximalaya/ting/android/player/XMediaplayerJNI;

    iget-object v2, p0, Lcom/ximalaya/ting/android/player/HlsReadThread;->mHlsAudioFile:Lcom/ximalaya/ting/android/player/HlsAudioFile;

    .line 110
    invoke-virtual {v2}, Lcom/ximalaya/ting/android/player/HlsAudioFile;->getCachePercent()I

    move-result v2

    .line 109
    invoke-virtual {v1, v2}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->onBufferingUpdateInner(I)V

    .line 124
    :goto_4
    const-string v1, "dl_hls"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getCachePercent percent mDownloadIndex:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 125
    iget v3, p0, Lcom/ximalaya/ting/android/player/HlsReadThread;->mDownloadIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 124
    invoke-static {v1, v2}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 112
    :cond_8
    const-string v2, "dl_hls"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "url:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 113
    const-string v3, " downloadIndex:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/ximalaya/ting/android/player/HlsReadThread;->mDownloadIndex:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 114
    const-string v3, "\u4e0b\u8f7d\u5931\u8d25error1"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 112
    invoke-static {v2, v1}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    .line 118
    :cond_9
    const-string v2, "dl_hls"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "url:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 119
    const-string v3, " downloadIndex:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/ximalaya/ting/android/player/HlsReadThread;->mDownloadIndex:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 120
    const-string v3, "\u672c\u5730\u5df2\u7f13\u51b2"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 118
    invoke-static {v2, v1}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 121
    iget v1, p0, Lcom/ximalaya/ting/android/player/HlsReadThread;->mDownloadIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/ximalaya/ting/android/player/HlsReadThread;->mDownloadIndex:I

    goto :goto_4

    .line 146
    :catch_0
    move-exception v0

    .line 147
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_3

    .line 157
    :cond_a
    invoke-static {v0}, Lcom/ximalaya/ting/android/player/PlayerUtil;->isDownloadHlsTs(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 159
    const-string v1, "dl_hls"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "url:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " curIndex:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/ximalaya/ting/android/player/HlsReadThread;->curIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 160
    const-string v3, "\u7f13\u5b58\u547d\u4e2d\u6210\u529f"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 159
    invoke-static {v1, v2}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 161
    new-instance v1, Lcom/ximalaya/ting/android/player/BufferItem;

    invoke-direct {v1}, Lcom/ximalaya/ting/android/player/BufferItem;-><init>()V

    .line 162
    iget v2, p0, Lcom/ximalaya/ting/android/player/HlsReadThread;->curIndex:I

    invoke-virtual {v1, v2}, Lcom/ximalaya/ting/android/player/BufferItem;->setIndex(I)V

    .line 163
    invoke-static {v0}, Lcom/ximalaya/ting/android/player/PlayerUtil;->getHlsFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 164
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 165
    invoke-direct {p0, v3, v1}, Lcom/ximalaya/ting/android/player/HlsReadThread;->readChunkData(Ljava/io/File;Lcom/ximalaya/ting/android/player/BufferItem;)I

    move-result v2

    .line 166
    if-lez v2, :cond_b

    .line 167
    const-string v2, "dl_hls"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "url:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " curIndex:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 168
    iget v3, p0, Lcom/ximalaya/ting/android/player/HlsReadThread;->curIndex:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\u7f13\u5b58\u83b7\u53d6\u6210\u529f"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 167
    invoke-static {v2, v0}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 169
    invoke-direct {p0, v1}, Lcom/ximalaya/ting/android/player/HlsReadThread;->putItem(Lcom/ximalaya/ting/android/player/BufferItem;)V

    .line 170
    iget v0, p0, Lcom/ximalaya/ting/android/player/HlsReadThread;->curIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ximalaya/ting/android/player/HlsReadThread;->curIndex:I

    .line 171
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/HlsReadThread;->mXMediaplayerJNI:Lcom/ximalaya/ting/android/player/XMediaplayerJNI;

    iget-object v1, p0, Lcom/ximalaya/ting/android/player/HlsReadThread;->mHlsAudioFile:Lcom/ximalaya/ting/android/player/HlsAudioFile;

    .line 172
    invoke-virtual {v1}, Lcom/ximalaya/ting/android/player/HlsAudioFile;->getCachePercent()I

    move-result v1

    .line 171
    invoke-virtual {v0, v1}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->onBufferingUpdateInner(I)V

    goto/16 :goto_0

    .line 175
    :cond_b
    const-string v1, "dl_hls"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "url:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " curIndex:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 176
    iget v3, p0, Lcom/ximalaya/ting/android/player/HlsReadThread;->curIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u7f13\u5b58\u83b7\u53d6\u5931\u8d25error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 175
    invoke-static {v1, v2}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 181
    :cond_c
    new-instance v1, Lcom/ximalaya/ting/android/player/BufferItem;

    invoke-direct {v1}, Lcom/ximalaya/ting/android/player/BufferItem;-><init>()V

    .line 182
    iget v2, p0, Lcom/ximalaya/ting/android/player/HlsReadThread;->curIndex:I

    invoke-virtual {v1, v2}, Lcom/ximalaya/ting/android/player/BufferItem;->setIndex(I)V

    .line 184
    new-instance v2, Lcom/ximalaya/ting/android/player/HlsDownloadThread;

    invoke-direct {v2, v0, v1}, Lcom/ximalaya/ting/android/player/HlsDownloadThread;-><init>(Ljava/lang/String;Lcom/ximalaya/ting/android/player/BufferItem;)V

    .line 186
    invoke-virtual {v2}, Lcom/ximalaya/ting/android/player/HlsDownloadThread;->download()I

    move-result v2

    .line 187
    if-lez v2, :cond_d

    .line 188
    invoke-direct {p0, v1}, Lcom/ximalaya/ting/android/player/HlsReadThread;->putItem(Lcom/ximalaya/ting/android/player/BufferItem;)V

    .line 190
    const-string v1, "dl_hls"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "url:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " curIndex:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/ximalaya/ting/android/player/HlsReadThread;->curIndex:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 191
    const-string v2, "\u4e0b\u8f7d\u5e76\u4e14\u7f13\u5b58\u6210\u529f2"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 190
    invoke-static {v1, v0}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 192
    iget v0, p0, Lcom/ximalaya/ting/android/player/HlsReadThread;->curIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ximalaya/ting/android/player/HlsReadThread;->curIndex:I

    .line 193
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/HlsReadThread;->mXMediaplayerJNI:Lcom/ximalaya/ting/android/player/XMediaplayerJNI;

    iget-object v1, p0, Lcom/ximalaya/ting/android/player/HlsReadThread;->mHlsAudioFile:Lcom/ximalaya/ting/android/player/HlsAudioFile;

    .line 194
    invoke-virtual {v1}, Lcom/ximalaya/ting/android/player/HlsAudioFile;->getCachePercent()I

    move-result v1

    .line 193
    invoke-virtual {v0, v1}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->onBufferingUpdateInner(I)V

    goto/16 :goto_0

    .line 197
    :cond_d
    const-string v1, "dl_hls"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "url:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " curIndex:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/ximalaya/ting/android/player/HlsReadThread;->curIndex:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 198
    const-string v2, "\u4e0b\u8f7d\u5e76\u4e14\u7f13\u5b58\u5931\u8d252"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 197
    invoke-static {v1, v0}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1
.end method
