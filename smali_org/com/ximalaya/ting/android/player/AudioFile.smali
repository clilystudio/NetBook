.class public Lcom/ximalaya/ting/android/player/AudioFile;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "dl_mp3"


# instance fields
.field private bBuffer:Ljava/nio/ByteBuffer;

.field private dirPath:Ljava/lang/String;

.field private fileInfo:Lcom/ximalaya/ting/android/player/FileDesc;

.field private fileName:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ximalaya/ting/android/player/AudioFile;->mUrl:Ljava/lang/String;

    .line 39
    const-string v0, "dl_mp3"

    const-string v1, "======================AudioFile Constructor()"

    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 40
    iput-object p1, p0, Lcom/ximalaya/ting/android/player/AudioFile;->dirPath:Ljava/lang/String;

    .line 41
    invoke-static {p2}, Lcom/ximalaya/ting/android/player/MD5;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ximalaya/ting/android/player/AudioFile;->fileName:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lcom/ximalaya/ting/android/player/AudioFile;->mUrl:Ljava/lang/String;

    .line 43
    new-instance v0, Lcom/ximalaya/ting/android/player/FileDesc;

    invoke-direct {v0, p1, p2}, Lcom/ximalaya/ting/android/player/FileDesc;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ximalaya/ting/android/player/AudioFile;->fileInfo:Lcom/ximalaya/ting/android/player/FileDesc;

    .line 44
    return-void
.end method

.method public static getAudioFile(Ljava/lang/String;Ljava/lang/String;)Lcom/ximalaya/ting/android/player/AudioFile;
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/ximalaya/ting/android/player/AudioFile;

    invoke-direct {v0, p0, p1}, Lcom/ximalaya/ting/android/player/AudioFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    return-object v0
.end method

.method private declared-synchronized readChunkData(I[BII)I
    .locals 6

    .prologue
    .line 64
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ximalaya/ting/android/player/AudioFile;->dirPath:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 65
    iget-object v2, p0, Lcom/ximalaya/ting/android/player/AudioFile;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".chunk"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "r"

    .line 64
    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string v1, "dl_mp3"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "======================readChunkData0("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 67
    invoke-static {v1, v2}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 69
    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 70
    invoke-virtual {v0, p2, p3, p4}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    .line 72
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    monitor-exit p0

    return v1

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized writeChunkData([BII)I
    .locals 4

    .prologue
    .line 101
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ximalaya/ting/android/player/AudioFile;->dirPath:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ximalaya/ting/android/player/AudioFile;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".chunk"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "rw"

    .line 101
    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object v1, p0, Lcom/ximalaya/ting/android/player/AudioFile;->fileInfo:Lcom/ximalaya/ting/android/player/FileDesc;

    invoke-virtual {v1}, Lcom/ximalaya/ting/android/player/FileDesc;->getDownloadedChunks()I

    move-result v1

    .line 104
    shl-int/lit8 v1, v1, 0x10

    int-to-long v2, v1

    .line 103
    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 105
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 107
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    :goto_0
    monitor-exit p0

    return p3

    :catch_0
    move-exception v0

    const/4 p3, -0x1

    goto :goto_0

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public getDirPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/AudioFile;->dirPath:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getFileInfo()Lcom/ximalaya/ting/android/player/FileDesc;
    .locals 1

    .prologue
    .line 142
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/AudioFile;->fileInfo:Lcom/ximalaya/ting/android/player/FileDesc;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/AudioFile;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ximalaya/ting/android/player/AudioFile;->dirPath:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/player/AudioFile;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/AudioFile;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getbBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/AudioFile;->bBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public final declared-synchronized isChunkExists(I)Z
    .locals 1

    .prologue
    .line 163
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/AudioFile;->fileInfo:Lcom/ximalaya/ting/android/player/FileDesc;

    invoke-virtual {v0, p1}, Lcom/ximalaya/ting/android/player/FileDesc;->isChunkDownloaded(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    const/4 v0, 0x1

    .line 168
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 163
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized readChunkData(II[BI)I
    .locals 4

    .prologue
    .line 80
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/AudioFile;->fileInfo:Lcom/ximalaya/ting/android/player/FileDesc;

    iget-object v0, v0, Lcom/ximalaya/ting/android/player/FileDesc;->chunkExist:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    const-string v0, "dl_mp3"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "fileInfo.chunkExist.get("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")false"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    const/4 v0, -0x1

    .line 94
    :goto_0
    monitor-exit p0

    return v0

    .line 87
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/AudioFile;->fileInfo:Lcom/ximalaya/ting/android/player/FileDesc;

    iget-object v0, v0, Lcom/ximalaya/ting/android/player/FileDesc;->chunkOffset:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/2addr v0, p2

    .line 89
    invoke-direct {p0, v0, p3, p4, p2}, Lcom/ximalaya/ting/android/player/AudioFile;->readChunkData(I[BII)I

    move-result v0

    .line 92
    const-string v1, "dl_mp3"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "======================readChunkData("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 93
    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 92
    invoke-static {v1, v2}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setbBuffer(Ljava/nio/ByteBuffer;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/ximalaya/ting/android/player/AudioFile;->bBuffer:Ljava/nio/ByteBuffer;

    .line 158
    return-void
.end method

.method public declared-synchronized writeChunkData(I[BII)V
    .locals 1

    .prologue
    .line 125
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/AudioFile;->fileInfo:Lcom/ximalaya/ting/android/player/FileDesc;

    invoke-virtual {v0, p1}, Lcom/ximalaya/ting/android/player/FileDesc;->isChunkDownloaded(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 131
    :cond_1
    :try_start_1
    invoke-direct {p0, p2, p3, p4}, Lcom/ximalaya/ting/android/player/AudioFile;->writeChunkData([BII)I

    move-result v0

    .line 134
    if-lez v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/AudioFile;->fileInfo:Lcom/ximalaya/ting/android/player/FileDesc;

    invoke-virtual {v0, p1}, Lcom/ximalaya/ting/android/player/FileDesc;->update(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized writeFails(I)V
    .locals 2

    .prologue
    .line 118
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/AudioFile;->fileInfo:Lcom/ximalaya/ting/android/player/FileDesc;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/ximalaya/ting/android/player/FileDesc;->valid:Z

    .line 119
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/AudioFile;->fileInfo:Lcom/ximalaya/ting/android/player/FileDesc;

    iput p1, v0, Lcom/ximalaya/ting/android/player/FileDesc;->statusCode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    monitor-exit p0

    return-void

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
