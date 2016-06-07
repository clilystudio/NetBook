.class public Lcom/ximalaya/ting/android/player/ReadThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "dl_mp3"


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

.field private currentDownload:Lcom/ximalaya/ting/android/player/DownloadThread;

.field private volatile fromIndex:I

.field private volatile isResetIndex:Z

.field private mDownloadIndex:I

.field private mFile:Lcom/ximalaya/ting/android/player/AudioFile;

.field private mXMediaplayerJNI:Lcom/ximalaya/ting/android/player/XMediaplayerJNI;

.field private volatile stopFlag:Z

.field private volatile synKey:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/ximalaya/ting/android/player/AudioFile;ILjava/util/concurrent/LinkedBlockingQueue;Lcom/ximalaya/ting/android/player/XMediaplayerJNI;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ximalaya/ting/android/player/AudioFile;",
            "I",
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcom/ximalaya/ting/android/player/BufferItem;",
            ">;",
            "Lcom/ximalaya/ting/android/player/XMediaplayerJNI;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 20
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 12
    iput v1, p0, Lcom/ximalaya/ting/android/player/ReadThread;->curIndex:I

    .line 17
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ximalaya/ting/android/player/ReadThread;->synKey:Ljava/lang/Object;

    .line 22
    iput-object p1, p0, Lcom/ximalaya/ting/android/player/ReadThread;->mFile:Lcom/ximalaya/ting/android/player/AudioFile;

    .line 23
    iput p2, p0, Lcom/ximalaya/ting/android/player/ReadThread;->fromIndex:I

    .line 24
    iput-object p3, p0, Lcom/ximalaya/ting/android/player/ReadThread;->buffItemQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 25
    iput-boolean v1, p0, Lcom/ximalaya/ting/android/player/ReadThread;->stopFlag:Z

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ximalaya/ting/android/player/ReadThread;->isResetIndex:Z

    .line 27
    iput-object p4, p0, Lcom/ximalaya/ting/android/player/ReadThread;->mXMediaplayerJNI:Lcom/ximalaya/ting/android/player/XMediaplayerJNI;

    .line 28
    return-void
.end method

.method private putItem(Lcom/ximalaya/ting/android/player/BufferItem;)V
    .locals 3

    .prologue
    .line 280
    iget-boolean v0, p0, Lcom/ximalaya/ting/android/player/ReadThread;->isResetIndex:Z

    if-nez v0, :cond_0

    .line 281
    const-string v0, "dl_mp3"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "putItem url:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ximalaya/ting/android/player/ReadThread;->mFile:Lcom/ximalaya/ting/android/player/AudioFile;

    invoke-virtual {v2}, Lcom/ximalaya/ting/android/player/AudioFile;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " item Index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 282
    invoke-virtual {p1}, Lcom/ximalaya/ting/android/player/BufferItem;->getIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 281
    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 283
    const-string v0, "dl_mp3"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "resetIndex count3:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ximalaya/ting/android/player/ReadThread;->buffItemQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 284
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/ReadThread;->buffItemQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V

    .line 285
    const-string v0, "dl_mp3"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "resetIndex count4:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ximalaya/ting/android/player/ReadThread;->buffItemQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 289
    :goto_0
    return-void

    .line 287
    :cond_0
    const-string v0, "dl_mp3"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "resetIndex count5:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ximalaya/ting/android/player/ReadThread;->buffItemQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private readChunk(I)Lcom/ximalaya/ting/android/player/BufferItem;
    .locals 6

    .prologue
    const/high16 v5, 0x10000

    .line 293
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 297
    :try_start_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/ReadThread;->mFile:Lcom/ximalaya/ting/android/player/AudioFile;

    .line 298
    const/high16 v2, 0x10000

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    .line 299
    const/4 v4, 0x0

    .line 297
    invoke-virtual {v0, p1, v2, v3, v4}, Lcom/ximalaya/ting/android/player/AudioFile;->readChunkData(II[BI)I

    move-result v0

    .line 301
    if-ne v0, v5, :cond_0

    .line 302
    new-instance v0, Lcom/ximalaya/ting/android/player/BufferItem;

    invoke-direct {v0}, Lcom/ximalaya/ting/android/player/BufferItem;-><init>()V

    .line 303
    invoke-virtual {v0, v1}, Lcom/ximalaya/ting/android/player/BufferItem;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 304
    invoke-virtual {v0, p1}, Lcom/ximalaya/ting/android/player/BufferItem;->setIndex(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 314
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ximalaya/ting/android/player/ReadThread;->stopFlag:Z

    .line 315
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/ReadThread;->buffItemQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 316
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/ReadThread;->currentDownload:Lcom/ximalaya/ting/android/player/DownloadThread;

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/ReadThread;->currentDownload:Lcom/ximalaya/ting/android/player/DownloadThread;

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/player/DownloadThread;->close()V

    .line 319
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ximalaya/ting/android/player/ReadThread;->mXMediaplayerJNI:Lcom/ximalaya/ting/android/player/XMediaplayerJNI;

    .line 321
    return-void
.end method

.method public getAudioFile()Lcom/ximalaya/ting/android/player/AudioFile;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/ReadThread;->mFile:Lcom/ximalaya/ting/android/player/AudioFile;

    return-object v0
.end method

.method public getCacheIndex()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/ximalaya/ting/android/player/ReadThread;->mDownloadIndex:I

    return v0
.end method

.method public getCachePercent()I
    .locals 4

    .prologue
    .line 55
    iget v0, p0, Lcom/ximalaya/ting/android/player/ReadThread;->mDownloadIndex:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/player/ReadThread;->mFile:Lcom/ximalaya/ting/android/player/AudioFile;

    invoke-virtual {v1}, Lcom/ximalaya/ting/android/player/AudioFile;->getFileInfo()Lcom/ximalaya/ting/android/player/FileDesc;

    move-result-object v1

    .line 56
    invoke-virtual {v1}, Lcom/ximalaya/ting/android/player/FileDesc;->getComChunkNum()I

    move-result v1

    int-to-float v1, v1

    .line 55
    div-float/2addr v0, v1

    .line 56
    const/high16 v1, 0x42c80000    # 100.0f

    .line 55
    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 58
    const-string v1, "dl_mp3"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getCachePercent percent:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mDownloadIndex:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/ximalaya/ting/android/player/ReadThread;->mDownloadIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "getComChunkNum:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ximalaya/ting/android/player/ReadThread;->mFile:Lcom/ximalaya/ting/android/player/AudioFile;

    invoke-virtual {v3}, Lcom/ximalaya/ting/android/player/AudioFile;->getFileInfo()Lcom/ximalaya/ting/android/player/FileDesc;

    move-result-object v3

    .line 59
    invoke-virtual {v3}, Lcom/ximalaya/ting/android/player/FileDesc;->getComChunkNum()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 58
    invoke-static {v1, v2}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 61
    return v0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 324
    iget-boolean v0, p0, Lcom/ximalaya/ting/android/player/ReadThread;->stopFlag:Z

    return v0
.end method

.method public resetIndex(ILjava/util/concurrent/LinkedBlockingQueue;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcom/ximalaya/ting/android/player/BufferItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    iget-object v1, p0, Lcom/ximalaya/ting/android/player/ReadThread;->synKey:Ljava/lang/Object;

    monitor-enter v1

    .line 38
    :try_start_0
    const-string v0, "dl_mp3"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "resetIndex count0:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ximalaya/ting/android/player/ReadThread;->isResetIndex:Z

    .line 40
    iput p1, p0, Lcom/ximalaya/ting/android/player/ReadThread;->fromIndex:I

    .line 41
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/ReadThread;->buffItemQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/ReadThread;->buffItemQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 44
    :cond_0
    iput-object p2, p0, Lcom/ximalaya/ting/android/player/ReadThread;->buffItemQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 45
    const-string v0, "dl_mp3"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "resetIndex count1:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 37
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
    .locals 9

    .prologue
    const/16 v8, 0xc8

    const/4 v7, 0x1

    .line 65
    const-string v0, "dl_mp3"

    const-string v1, "======================ReadThread run() start"

    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 69
    :cond_0
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/ximalaya/ting/android/player/ReadThread;->stopFlag:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ximalaya/ting/android/player/ReadThread;->mXMediaplayerJNI:Lcom/ximalaya/ting/android/player/XMediaplayerJNI;

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->getPlayUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/player/ReadThread;->mFile:Lcom/ximalaya/ting/android/player/AudioFile;

    invoke-virtual {v1}, Lcom/ximalaya/ting/android/player/AudioFile;->getFileInfo()Lcom/ximalaya/ting/android/player/FileDesc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ximalaya/ting/android/player/FileDesc;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-nez v0, :cond_2

    .line 275
    :cond_1
    :goto_1
    iput-boolean v7, p0, Lcom/ximalaya/ting/android/player/ReadThread;->stopFlag:Z

    .line 276
    const-string v0, "dl_mp3"

    const-string v1, "======================ReadThread run() end"

    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 277
    return-void

    .line 71
    :cond_2
    :try_start_1
    const-string v0, "dl_mp3"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "======================ReadThread while("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    iget v2, p0, Lcom/ximalaya/ting/android/player/ReadThread;->curIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ximalaya/ting/android/player/ReadThread;->mFile:Lcom/ximalaya/ting/android/player/AudioFile;

    invoke-virtual {v2}, Lcom/ximalaya/ting/android/player/AudioFile;->getFileInfo()Lcom/ximalaya/ting/android/player/FileDesc;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ximalaya/ting/android/player/FileDesc;->getComChunkNum()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 73
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 71
    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 75
    iget-object v1, p0, Lcom/ximalaya/ting/android/player/ReadThread;->synKey:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 76
    :try_start_2
    const-string v0, "dl_mp3"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "resetIndex count6:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ximalaya/ting/android/player/ReadThread;->buffItemQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 77
    iget-boolean v0, p0, Lcom/ximalaya/ting/android/player/ReadThread;->isResetIndex:Z

    if-eqz v0, :cond_3

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ximalaya/ting/android/player/ReadThread;->isResetIndex:Z

    .line 79
    iget v0, p0, Lcom/ximalaya/ting/android/player/ReadThread;->fromIndex:I

    iput v0, p0, Lcom/ximalaya/ting/android/player/ReadThread;->curIndex:I

    .line 80
    iget v0, p0, Lcom/ximalaya/ting/android/player/ReadThread;->fromIndex:I

    iput v0, p0, Lcom/ximalaya/ting/android/player/ReadThread;->mDownloadIndex:I

    .line 82
    :cond_3
    const-string v0, "dl_mp3"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "resetIndex count7:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ximalaya/ting/android/player/ReadThread;->buffItemQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 75
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 90
    :try_start_3
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/ReadThread;->mFile:Lcom/ximalaya/ting/android/player/AudioFile;

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/player/AudioFile;->getFileInfo()Lcom/ximalaya/ting/android/player/FileDesc;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Lcom/ximalaya/ting/android/player/FileDesc;->isValid()Z

    move-result v1

    if-nez v1, :cond_4

    .line 92
    new-instance v0, Lcom/ximalaya/ting/android/player/BufferItem;

    invoke-direct {v0}, Lcom/ximalaya/ting/android/player/BufferItem;-><init>()V

    .line 93
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/ximalaya/ting/android/player/BufferItem;->fails:Z

    .line 94
    iget-object v1, p0, Lcom/ximalaya/ting/android/player/ReadThread;->mFile:Lcom/ximalaya/ting/android/player/AudioFile;

    invoke-virtual {v1}, Lcom/ximalaya/ting/android/player/AudioFile;->getFileInfo()Lcom/ximalaya/ting/android/player/FileDesc;

    move-result-object v1

    iget v1, v1, Lcom/ximalaya/ting/android/player/FileDesc;->statusCode:I

    iput v1, v0, Lcom/ximalaya/ting/android/player/BufferItem;->errorCode:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 97
    :try_start_4
    iget-object v1, p0, Lcom/ximalaya/ting/android/player/ReadThread;->buffItemQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_1

    .line 98
    :catch_0
    move-exception v0

    .line 99
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_1

    .line 268
    :catch_1
    move-exception v0

    .line 270
    const-string v1, "dl_mp3"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ReadThread Exception:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 75
    :catchall_0
    move-exception v0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v0

    .line 105
    :cond_4
    iget v1, p0, Lcom/ximalaya/ting/android/player/ReadThread;->curIndex:I

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/player/FileDesc;->getComChunkNum()I

    move-result v2

    if-lt v1, v2, :cond_5

    .line 107
    new-instance v1, Lcom/ximalaya/ting/android/player/BufferItem;

    invoke-direct {v1}, Lcom/ximalaya/ting/android/player/BufferItem;-><init>()V

    .line 109
    const/high16 v2, 0x10000

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 110
    invoke-virtual {v1, v2}, Lcom/ximalaya/ting/android/player/BufferItem;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 111
    iget v2, p0, Lcom/ximalaya/ting/android/player/ReadThread;->curIndex:I

    invoke-virtual {v1, v2}, Lcom/ximalaya/ting/android/player/BufferItem;->setIndex(I)V

    .line 112
    invoke-virtual {v1}, Lcom/ximalaya/ting/android/player/BufferItem;->setLastChunk()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 115
    :try_start_8
    invoke-direct {p0, v1}, Lcom/ximalaya/ting/android/player/ReadThread;->putItem(Lcom/ximalaya/ting/android/player/BufferItem;)V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    .line 119
    :goto_2
    :try_start_9
    iget-boolean v1, p0, Lcom/ximalaya/ting/android/player/ReadThread;->isResetIndex:Z

    if-eqz v1, :cond_1

    .line 124
    :cond_5
    iget v1, p0, Lcom/ximalaya/ting/android/player/ReadThread;->mDownloadIndex:I

    iget v2, p0, Lcom/ximalaya/ting/android/player/ReadThread;->curIndex:I

    if-ge v1, v2, :cond_6

    .line 125
    iget v1, p0, Lcom/ximalaya/ting/android/player/ReadThread;->curIndex:I

    iput v1, p0, Lcom/ximalaya/ting/android/player/ReadThread;->mDownloadIndex:I

    .line 126
    :cond_6
    sget v1, Lcom/ximalaya/ting/android/player/XMediaPlayerConstants;->DOWNLOAD_QUEUE_SIZE:I

    add-int/lit8 v1, v1, -0x3

    .line 129
    :goto_3
    iget v2, p0, Lcom/ximalaya/ting/android/player/ReadThread;->mDownloadIndex:I

    iget v3, p0, Lcom/ximalaya/ting/android/player/ReadThread;->curIndex:I

    sub-int/2addr v2, v3

    if-ge v2, v1, :cond_7

    .line 130
    iget-object v2, p0, Lcom/ximalaya/ting/android/player/ReadThread;->buffItemQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v2

    const/4 v3, 0x3

    if-lt v2, v3, :cond_7

    .line 131
    iget-boolean v2, p0, Lcom/ximalaya/ting/android/player/ReadThread;->stopFlag:Z

    if-nez v2, :cond_7

    .line 132
    iget v2, p0, Lcom/ximalaya/ting/android/player/ReadThread;->mDownloadIndex:I

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/player/FileDesc;->getComChunkNum()I

    move-result v3

    if-ge v2, v3, :cond_7

    .line 133
    iget-boolean v2, p0, Lcom/ximalaya/ting/android/player/ReadThread;->isResetIndex:Z

    if-eqz v2, :cond_8

    .line 172
    :cond_7
    :goto_4
    iget-boolean v0, p0, Lcom/ximalaya/ting/android/player/ReadThread;->stopFlag:Z

    if-nez v0, :cond_1

    .line 175
    iget-boolean v0, p0, Lcom/ximalaya/ting/android/player/ReadThread;->isResetIndex:Z

    if-nez v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/ReadThread;->mXMediaplayerJNI:Lcom/ximalaya/ting/android/player/XMediaplayerJNI;

    invoke-virtual {p0}, Lcom/ximalaya/ting/android/player/ReadThread;->getCachePercent()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->onBufferingUpdateInner(I)V

    .line 184
    const-string v0, "dl_mp3"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u5f00\u59cb\u83b7\u53d6\u5206\u6bb5\u6570\u636e\uff1aurl:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ximalaya/ting/android/player/ReadThread;->mFile:Lcom/ximalaya/ting/android/player/AudioFile;

    invoke-virtual {v2}, Lcom/ximalaya/ting/android/player/AudioFile;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " curIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 185
    iget v2, p0, Lcom/ximalaya/ting/android/player/ReadThread;->curIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 184
    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 187
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/ReadThread;->mFile:Lcom/ximalaya/ting/android/player/AudioFile;

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/player/AudioFile;->getFileInfo()Lcom/ximalaya/ting/android/player/FileDesc;

    move-result-object v0

    iget v1, p0, Lcom/ximalaya/ting/android/player/ReadThread;->curIndex:I

    invoke-virtual {v0, v1}, Lcom/ximalaya/ting/android/player/FileDesc;->isChunkDownloaded(I)Z

    move-result v0

    .line 188
    if-nez v0, :cond_f

    .line 191
    const-string v0, "dl_mp3"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "url:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ximalaya/ting/android/player/ReadThread;->mFile:Lcom/ximalaya/ting/android/player/AudioFile;

    invoke-virtual {v2}, Lcom/ximalaya/ting/android/player/AudioFile;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " curIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 192
    iget v2, p0, Lcom/ximalaya/ting/android/player/ReadThread;->curIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u7f13\u5b58\u547d\u4e2d\u5931\u8d25"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 191
    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 193
    new-instance v0, Lcom/ximalaya/ting/android/player/DownloadThread;

    iget-object v1, p0, Lcom/ximalaya/ting/android/player/ReadThread;->mFile:Lcom/ximalaya/ting/android/player/AudioFile;

    iget v2, p0, Lcom/ximalaya/ting/android/player/ReadThread;->curIndex:I

    invoke-direct {v0, v1, v2}, Lcom/ximalaya/ting/android/player/DownloadThread;-><init>(Lcom/ximalaya/ting/android/player/AudioFile;I)V

    .line 194
    iput-object v0, p0, Lcom/ximalaya/ting/android/player/ReadThread;->currentDownload:Lcom/ximalaya/ting/android/player/DownloadThread;

    .line 196
    invoke-virtual {v0}, Lcom/ximalaya/ting/android/player/DownloadThread;->download()I

    move-result v0

    .line 198
    if-ne v0, v8, :cond_c

    .line 199
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 116
    :catch_2
    move-exception v1

    .line 117
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_2

    .line 135
    :cond_8
    iget-object v2, p0, Lcom/ximalaya/ting/android/player/ReadThread;->mFile:Lcom/ximalaya/ting/android/player/AudioFile;

    invoke-virtual {v2}, Lcom/ximalaya/ting/android/player/AudioFile;->getFileInfo()Lcom/ximalaya/ting/android/player/FileDesc;

    move-result-object v2

    .line 136
    iget v3, p0, Lcom/ximalaya/ting/android/player/ReadThread;->mDownloadIndex:I

    .line 135
    invoke-virtual {v2, v3}, Lcom/ximalaya/ting/android/player/FileDesc;->isChunkDownloaded(I)Z

    move-result v2

    .line 137
    iget-object v3, p0, Lcom/ximalaya/ting/android/player/ReadThread;->mXMediaplayerJNI:Lcom/ximalaya/ting/android/player/XMediaplayerJNI;

    invoke-virtual {p0}, Lcom/ximalaya/ting/android/player/ReadThread;->getCachePercent()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->onBufferingUpdateInner(I)V

    .line 138
    if-nez v2, :cond_a

    .line 139
    new-instance v2, Lcom/ximalaya/ting/android/player/DownloadThread;

    iget-object v3, p0, Lcom/ximalaya/ting/android/player/ReadThread;->mFile:Lcom/ximalaya/ting/android/player/AudioFile;

    .line 140
    iget v4, p0, Lcom/ximalaya/ting/android/player/ReadThread;->mDownloadIndex:I

    .line 139
    invoke-direct {v2, v3, v4}, Lcom/ximalaya/ting/android/player/DownloadThread;-><init>(Lcom/ximalaya/ting/android/player/AudioFile;I)V

    .line 141
    invoke-virtual {v2}, Lcom/ximalaya/ting/android/player/DownloadThread;->download()I

    move-result v2

    .line 142
    if-ne v2, v8, :cond_9

    .line 143
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 145
    :cond_9
    iget-object v2, p0, Lcom/ximalaya/ting/android/player/ReadThread;->mFile:Lcom/ximalaya/ting/android/player/AudioFile;

    invoke-virtual {v2}, Lcom/ximalaya/ting/android/player/AudioFile;->getbBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 146
    iget-object v2, p0, Lcom/ximalaya/ting/android/player/ReadThread;->mFile:Lcom/ximalaya/ting/android/player/AudioFile;

    iget v3, p0, Lcom/ximalaya/ting/android/player/ReadThread;->mDownloadIndex:I

    iget-object v4, p0, Lcom/ximalaya/ting/android/player/ReadThread;->mFile:Lcom/ximalaya/ting/android/player/AudioFile;

    .line 147
    invoke-virtual {v4}, Lcom/ximalaya/ting/android/player/AudioFile;->getbBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/ximalaya/ting/android/player/ReadThread;->mFile:Lcom/ximalaya/ting/android/player/AudioFile;

    .line 148
    invoke-virtual {v6}, Lcom/ximalaya/ting/android/player/AudioFile;->getbBuffer()Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    array-length v6, v6

    .line 146
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/ximalaya/ting/android/player/AudioFile;->writeChunkData(I[BII)V

    .line 149
    iget-object v2, p0, Lcom/ximalaya/ting/android/player/ReadThread;->mFile:Lcom/ximalaya/ting/android/player/AudioFile;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/ximalaya/ting/android/player/AudioFile;->setbBuffer(Ljava/nio/ByteBuffer;)V

    .line 153
    const-string v2, "dl_mp3"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "url:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/ximalaya/ting/android/player/ReadThread;->mFile:Lcom/ximalaya/ting/android/player/AudioFile;

    invoke-virtual {v4}, Lcom/ximalaya/ting/android/player/AudioFile;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 154
    const-string v4, " downloadIndex:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/ximalaya/ting/android/player/ReadThread;->mDownloadIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 155
    const-string v4, "\u4e0b\u8f7d\u5e76\u4e14\u7f13\u5b58\u6210\u529f"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 153
    invoke-static {v2, v3}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 167
    :cond_a
    iget v2, p0, Lcom/ximalaya/ting/android/player/ReadThread;->mDownloadIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/ximalaya/ting/android/player/ReadThread;->mDownloadIndex:I

    .line 170
    const-string v2, "dl_mp3"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getCachePercent percent mDownloadIndex0:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/ximalaya/ting/android/player/ReadThread;->mDownloadIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 161
    :cond_b
    const-string v0, "dl_mp3"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "url:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ximalaya/ting/android/player/ReadThread;->mFile:Lcom/ximalaya/ting/android/player/AudioFile;

    invoke-virtual {v2}, Lcom/ximalaya/ting/android/player/AudioFile;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 162
    const-string v2, " downloadIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ximalaya/ting/android/player/ReadThread;->mDownloadIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 163
    const-string v2, "\u4e0b\u8f7d\u5931\u8d25error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 161
    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 203
    :cond_c
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/ReadThread;->mFile:Lcom/ximalaya/ting/android/player/AudioFile;

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/player/AudioFile;->getbBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 204
    new-instance v0, Lcom/ximalaya/ting/android/player/BufferItem;

    invoke-direct {v0}, Lcom/ximalaya/ting/android/player/BufferItem;-><init>()V

    .line 205
    iget-object v1, p0, Lcom/ximalaya/ting/android/player/ReadThread;->mFile:Lcom/ximalaya/ting/android/player/AudioFile;

    invoke-virtual {v1}, Lcom/ximalaya/ting/android/player/AudioFile;->getbBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ximalaya/ting/android/player/BufferItem;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 206
    iget v1, p0, Lcom/ximalaya/ting/android/player/ReadThread;->curIndex:I

    invoke-virtual {v0, v1}, Lcom/ximalaya/ting/android/player/BufferItem;->setIndex(I)V

    .line 208
    invoke-direct {p0, v0}, Lcom/ximalaya/ting/android/player/ReadThread;->putItem(Lcom/ximalaya/ting/android/player/BufferItem;)V

    .line 210
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/ReadThread;->mFile:Lcom/ximalaya/ting/android/player/AudioFile;

    iget v1, p0, Lcom/ximalaya/ting/android/player/ReadThread;->curIndex:I

    iget-object v2, p0, Lcom/ximalaya/ting/android/player/ReadThread;->mFile:Lcom/ximalaya/ting/android/player/AudioFile;

    invoke-virtual {v2}, Lcom/ximalaya/ting/android/player/AudioFile;->getbBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 211
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/ximalaya/ting/android/player/ReadThread;->mFile:Lcom/ximalaya/ting/android/player/AudioFile;

    invoke-virtual {v4}, Lcom/ximalaya/ting/android/player/AudioFile;->getbBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    array-length v4, v4

    .line 210
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ximalaya/ting/android/player/AudioFile;->writeChunkData(I[BII)V

    .line 212
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/ReadThread;->mFile:Lcom/ximalaya/ting/android/player/AudioFile;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ximalaya/ting/android/player/AudioFile;->setbBuffer(Ljava/nio/ByteBuffer;)V

    .line 215
    const-string v0, "dl_mp3"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "url:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ximalaya/ting/android/player/ReadThread;->mFile:Lcom/ximalaya/ting/android/player/AudioFile;

    invoke-virtual {v2}, Lcom/ximalaya/ting/android/player/AudioFile;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " curIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 216
    iget v2, p0, Lcom/ximalaya/ting/android/player/ReadThread;->curIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u4e0b\u8f7d\u5e76\u4e14\u7f13\u5b58\u6210\u529f"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 215
    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 217
    iget v0, p0, Lcom/ximalaya/ting/android/player/ReadThread;->curIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ximalaya/ting/android/player/ReadThread;->curIndex:I

    .line 264
    :cond_d
    :goto_5
    const-string v0, "dl_mp3"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u7ed3\u675f\u83b7\u53d6\u5206\u6bb5\u6570\u636e\uff1aurl:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ximalaya/ting/android/player/ReadThread;->mFile:Lcom/ximalaya/ting/android/player/AudioFile;

    invoke-virtual {v2}, Lcom/ximalaya/ting/android/player/AudioFile;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " curIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 265
    iget v2, p0, Lcom/ximalaya/ting/android/player/ReadThread;->curIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 264
    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 221
    :cond_e
    const-string v0, "dl_mp3"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "url:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ximalaya/ting/android/player/ReadThread;->mFile:Lcom/ximalaya/ting/android/player/AudioFile;

    invoke-virtual {v2}, Lcom/ximalaya/ting/android/player/AudioFile;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " curIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 222
    iget v2, p0, Lcom/ximalaya/ting/android/player/ReadThread;->curIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u4e0b\u8f7d\u5931\u8d25error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 221
    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 229
    :cond_f
    const-string v0, "dl_mp3"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "url:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ximalaya/ting/android/player/ReadThread;->mFile:Lcom/ximalaya/ting/android/player/AudioFile;

    invoke-virtual {v2}, Lcom/ximalaya/ting/android/player/AudioFile;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " curIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 230
    iget v2, p0, Lcom/ximalaya/ting/android/player/ReadThread;->curIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u7f13\u5b58\u547d\u4e2d\u6210\u529f"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 229
    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 231
    iget v0, p0, Lcom/ximalaya/ting/android/player/ReadThread;->curIndex:I

    invoke-direct {p0, v0}, Lcom/ximalaya/ting/android/player/ReadThread;->readChunk(I)Lcom/ximalaya/ting/android/player/BufferItem;

    move-result-object v0

    .line 232
    if-eqz v0, :cond_10

    .line 235
    const-string v1, "dl_mp3"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "url:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ximalaya/ting/android/player/ReadThread;->mFile:Lcom/ximalaya/ting/android/player/AudioFile;

    invoke-virtual {v3}, Lcom/ximalaya/ting/android/player/AudioFile;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " curIndex:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 236
    iget v3, p0, Lcom/ximalaya/ting/android/player/ReadThread;->curIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u7f13\u5b58\u83b7\u53d6\u6210\u529f"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 235
    invoke-static {v1, v2}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 237
    invoke-direct {p0, v0}, Lcom/ximalaya/ting/android/player/ReadThread;->putItem(Lcom/ximalaya/ting/android/player/BufferItem;)V

    .line 238
    iget v0, p0, Lcom/ximalaya/ting/android/player/ReadThread;->curIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ximalaya/ting/android/player/ReadThread;->curIndex:I

    goto/16 :goto_5

    .line 242
    :cond_10
    const-string v0, "dl_mp3"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "url:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ximalaya/ting/android/player/ReadThread;->mFile:Lcom/ximalaya/ting/android/player/AudioFile;

    invoke-virtual {v2}, Lcom/ximalaya/ting/android/player/AudioFile;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " curIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 243
    iget v2, p0, Lcom/ximalaya/ting/android/player/ReadThread;->curIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u7f13\u5b58\u83b7\u53d6\u5931\u8d25error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 242
    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 244
    new-instance v0, Lcom/ximalaya/ting/android/player/DownloadThread;

    iget-object v1, p0, Lcom/ximalaya/ting/android/player/ReadThread;->mFile:Lcom/ximalaya/ting/android/player/AudioFile;

    .line 245
    iget v2, p0, Lcom/ximalaya/ting/android/player/ReadThread;->curIndex:I

    .line 244
    invoke-direct {v0, v1, v2}, Lcom/ximalaya/ting/android/player/DownloadThread;-><init>(Lcom/ximalaya/ting/android/player/AudioFile;I)V

    .line 246
    iput-object v0, p0, Lcom/ximalaya/ting/android/player/ReadThread;->currentDownload:Lcom/ximalaya/ting/android/player/DownloadThread;

    .line 247
    invoke-virtual {v0}, Lcom/ximalaya/ting/android/player/DownloadThread;->download()I

    .line 250
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/ReadThread;->mFile:Lcom/ximalaya/ting/android/player/AudioFile;

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/player/AudioFile;->getbBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 251
    new-instance v0, Lcom/ximalaya/ting/android/player/BufferItem;

    invoke-direct {v0}, Lcom/ximalaya/ting/android/player/BufferItem;-><init>()V

    .line 252
    iget-object v1, p0, Lcom/ximalaya/ting/android/player/ReadThread;->mFile:Lcom/ximalaya/ting/android/player/AudioFile;

    invoke-virtual {v1}, Lcom/ximalaya/ting/android/player/AudioFile;->getbBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ximalaya/ting/android/player/BufferItem;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 253
    iget v1, p0, Lcom/ximalaya/ting/android/player/ReadThread;->curIndex:I

    invoke-virtual {v0, v1}, Lcom/ximalaya/ting/android/player/BufferItem;->setIndex(I)V

    .line 254
    invoke-direct {p0, v0}, Lcom/ximalaya/ting/android/player/ReadThread;->putItem(Lcom/ximalaya/ting/android/player/BufferItem;)V

    .line 255
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/ReadThread;->mFile:Lcom/ximalaya/ting/android/player/AudioFile;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ximalaya/ting/android/player/AudioFile;->setbBuffer(Ljava/nio/ByteBuffer;)V

    .line 256
    iget v0, p0, Lcom/ximalaya/ting/android/player/ReadThread;->curIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ximalaya/ting/android/player/ReadThread;->curIndex:I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    goto/16 :goto_5
.end method
