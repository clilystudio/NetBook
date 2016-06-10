.class public Lcom/ximalaya/ting/android/player/AudioFileRequestHandler;
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

.field private mHandlerCnt:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mReadThread:Lcom/ximalaya/ting/android/player/ReadThread;

.field private mXMediaplayerJNI:Lcom/ximalaya/ting/android/player/XMediaplayerJNI;


# direct methods
.method public constructor <init>(Lcom/ximalaya/ting/android/player/XMediaplayerJNI;)V
    .locals 2

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/ximalaya/ting/android/player/AudioFileRequestHandler;->mHandlerCnt:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 22
    iput-object p1, p0, Lcom/ximalaya/ting/android/player/AudioFileRequestHandler;->mXMediaplayerJNI:Lcom/ximalaya/ting/android/player/XMediaplayerJNI;

    .line 23
    return-void
.end method

.method private declared-synchronized readDataFromSD(Ljava/lang/String;I[B)I
    .locals 4

    .prologue
    .line 118
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v0, "r"

    invoke-direct {v1, p1, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/AudioFileRequestHandler;->mXMediaplayerJNI:Lcom/ximalaya/ting/android/player/XMediaplayerJNI;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->setCurFileSize(J)V

    .line 120
    int-to-long v2, p2

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 121
    const/4 v0, 0x0

    .line 124
    :cond_0
    array-length v2, p3

    sub-int/2addr v2, v0

    .line 123
    invoke-virtual {v1, p3, v0, v2}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v2

    .line 125
    add-int/2addr v0, v2

    .line 122
    if-gtz v2, :cond_0

    .line 127
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    monitor-exit p0

    return v0

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private resetLoadDataPosition(ILcom/ximalaya/ting/android/player/model/JNIDataModel;)Z
    .locals 7

    .prologue
    const/high16 v6, 0x10000

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 39
    sget-object v2, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    .line 40
    const-string v3, "dataStreamInputFuncCallBackT resetLoadDataPosition"

    .line 39
    invoke-static {v2, v3}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 46
    new-instance v2, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 47
    const/4 v3, 0x3

    invoke-direct {v2, v3}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    .line 46
    iput-object v2, p0, Lcom/ximalaya/ting/android/player/AudioFileRequestHandler;->buffItemQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 48
    iget-object v2, p0, Lcom/ximalaya/ting/android/player/AudioFileRequestHandler;->mReadThread:Lcom/ximalaya/ting/android/player/ReadThread;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ximalaya/ting/android/player/AudioFileRequestHandler;->mReadThread:Lcom/ximalaya/ting/android/player/ReadThread;

    invoke-virtual {v2}, Lcom/ximalaya/ting/android/player/ReadThread;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 49
    :cond_0
    sget-object v2, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    .line 50
    const-string v3, "dataStreamInputFuncCallBackT resetLoadDataPosition0"

    .line 49
    invoke-static {v2, v3}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 55
    :try_start_0
    sget-object v2, Lcom/ximalaya/ting/android/player/XMediaPlayerConstants;->INCOM_AUDIO_FILE_DIRECTORY:Ljava/lang/String;

    .line 56
    iget-object v3, p0, Lcom/ximalaya/ting/android/player/AudioFileRequestHandler;->mXMediaplayerJNI:Lcom/ximalaya/ting/android/player/XMediaplayerJNI;

    invoke-virtual {v3}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->getPlayUrl()Ljava/lang/String;

    move-result-object v3

    .line 54
    invoke-static {v2, v3}, Lcom/ximalaya/ting/android/player/AudioFile;->getAudioFile(Ljava/lang/String;Ljava/lang/String;)Lcom/ximalaya/ting/android/player/AudioFile;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 67
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/ximalaya/ting/android/player/AudioFile;->getFileInfo()Lcom/ximalaya/ting/android/player/FileDesc;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ximalaya/ting/android/player/FileDesc;->isValid()Z

    move-result v3

    if-nez v3, :cond_2

    .line 68
    :cond_1
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    const-string v2, "mFile.getFileInfo().inValid()"

    invoke-static {v0, v2}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    move v0, v1

    .line 112
    :goto_0
    return v0

    .line 57
    :catch_0
    move-exception v0

    .line 59
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    move v0, v1

    .line 60
    goto :goto_0

    .line 61
    :catch_1
    move-exception v0

    .line 63
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v0, v1

    .line 64
    goto :goto_0

    .line 73
    :cond_2
    iget-object v3, p0, Lcom/ximalaya/ting/android/player/AudioFileRequestHandler;->mReadThread:Lcom/ximalaya/ting/android/player/ReadThread;

    if-eqz v3, :cond_3

    .line 74
    iget-object v3, p0, Lcom/ximalaya/ting/android/player/AudioFileRequestHandler;->mReadThread:Lcom/ximalaya/ting/android/player/ReadThread;

    invoke-virtual {v3}, Lcom/ximalaya/ting/android/player/ReadThread;->close()V

    .line 77
    :cond_3
    invoke-virtual {v2}, Lcom/ximalaya/ting/android/player/AudioFile;->getFileInfo()Lcom/ximalaya/ting/android/player/FileDesc;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ximalaya/ting/android/player/FileDesc;->isValid()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 78
    invoke-virtual {v2}, Lcom/ximalaya/ting/android/player/AudioFile;->getFileInfo()Lcom/ximalaya/ting/android/player/FileDesc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ximalaya/ting/android/player/FileDesc;->getComFileLen()I

    move-result v1

    .line 79
    int-to-long v4, v1

    iput-wide v4, p2, Lcom/ximalaya/ting/android/player/model/JNIDataModel;->fileSize:J

    .line 80
    iget-object v3, p0, Lcom/ximalaya/ting/android/player/AudioFileRequestHandler;->mXMediaplayerJNI:Lcom/ximalaya/ting/android/player/XMediaplayerJNI;

    int-to-long v4, v1

    invoke-virtual {v3, v4, v5}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->setCurFileSize(J)V

    .line 90
    div-int v1, p1, v6

    .line 91
    new-instance v3, Lcom/ximalaya/ting/android/player/ReadThread;

    iget-object v4, p0, Lcom/ximalaya/ting/android/player/AudioFileRequestHandler;->buffItemQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 92
    iget-object v5, p0, Lcom/ximalaya/ting/android/player/AudioFileRequestHandler;->mXMediaplayerJNI:Lcom/ximalaya/ting/android/player/XMediaplayerJNI;

    invoke-direct {v3, v2, v1, v4, v5}, Lcom/ximalaya/ting/android/player/ReadThread;-><init>(Lcom/ximalaya/ting/android/player/AudioFile;ILjava/util/concurrent/LinkedBlockingQueue;Lcom/ximalaya/ting/android/player/XMediaplayerJNI;)V

    .line 91
    iput-object v3, p0, Lcom/ximalaya/ting/android/player/AudioFileRequestHandler;->mReadThread:Lcom/ximalaya/ting/android/player/ReadThread;

    .line 93
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    iget-object v3, p0, Lcom/ximalaya/ting/android/player/AudioFileRequestHandler;->mHandlerCnt:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 93
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 95
    iget-object v3, p0, Lcom/ximalaya/ting/android/player/AudioFileRequestHandler;->mReadThread:Lcom/ximalaya/ting/android/player/ReadThread;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "t_Read_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/ximalaya/ting/android/player/ReadThread;->setName(Ljava/lang/String;)V

    .line 96
    sget-object v1, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    const-string v2, "ReadThread.start()"

    invoke-static {v1, v2}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 97
    iget-object v1, p0, Lcom/ximalaya/ting/android/player/AudioFileRequestHandler;->mReadThread:Lcom/ximalaya/ting/android/player/ReadThread;

    invoke-virtual {v1}, Lcom/ximalaya/ting/android/player/ReadThread;->start()V

    goto/16 :goto_0

    .line 101
    :cond_4
    sget-object v1, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    .line 102
    const-string v2, "dataStreamInputFuncCallBackT resetLoadDataPosition1"

    .line 101
    invoke-static {v1, v2}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 103
    iget-object v1, p0, Lcom/ximalaya/ting/android/player/AudioFileRequestHandler;->mReadThread:Lcom/ximalaya/ting/android/player/ReadThread;

    invoke-virtual {v1}, Lcom/ximalaya/ting/android/player/ReadThread;->getAudioFile()Lcom/ximalaya/ting/android/player/AudioFile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ximalaya/ting/android/player/AudioFile;->getFileInfo()Lcom/ximalaya/ting/android/player/FileDesc;

    move-result-object v1

    .line 104
    invoke-virtual {v1}, Lcom/ximalaya/ting/android/player/FileDesc;->getComFileLen()I

    move-result v1

    .line 105
    int-to-long v2, v1

    iput-wide v2, p2, Lcom/ximalaya/ting/android/player/model/JNIDataModel;->fileSize:J

    .line 106
    iget-object v2, p0, Lcom/ximalaya/ting/android/player/AudioFileRequestHandler;->mXMediaplayerJNI:Lcom/ximalaya/ting/android/player/XMediaplayerJNI;

    int-to-long v4, v1

    invoke-virtual {v2, v4, v5}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->setCurFileSize(J)V

    .line 107
    div-int v1, p1, v6

    .line 109
    iget-object v2, p0, Lcom/ximalaya/ting/android/player/AudioFileRequestHandler;->mReadThread:Lcom/ximalaya/ting/android/player/ReadThread;

    iget-object v3, p0, Lcom/ximalaya/ting/android/player/AudioFileRequestHandler;->buffItemQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2, v1, v3}, Lcom/ximalaya/ting/android/player/ReadThread;->resetIndex(ILjava/util/concurrent/LinkedBlockingQueue;)V

    goto/16 :goto_0

    :cond_5
    move v0, v1

    .line 112
    goto/16 :goto_0
.end method

.method private shallReloadData()Z
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/AudioFileRequestHandler;->buffItemQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    if-eqz v0, :cond_1

    .line 275
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/AudioFileRequestHandler;->mReadThread:Lcom/ximalaya/ting/android/player/ReadThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ximalaya/ting/android/player/AudioFileRequestHandler;->mReadThread:Lcom/ximalaya/ting/android/player/ReadThread;

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/player/ReadThread;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ximalaya/ting/android/player/AudioFileRequestHandler;->buffItemQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 276
    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 274
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getCachePercent()I
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/AudioFileRequestHandler;->mXMediaplayerJNI:Lcom/ximalaya/ting/android/player/XMediaplayerJNI;

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->getPlayUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ximalaya/ting/android/player/PlayerUtil;->isLocalFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    const/16 v0, 0x64

    .line 34
    :goto_0
    return v0

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/AudioFileRequestHandler;->mReadThread:Lcom/ximalaya/ting/android/player/ReadThread;

    if-nez v0, :cond_1

    .line 32
    const/4 v0, 0x0

    goto :goto_0

    .line 34
    :cond_1
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/AudioFileRequestHandler;->mReadThread:Lcom/ximalaya/ting/android/player/ReadThread;

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/player/ReadThread;->getCachePercent()I

    move-result v0

    goto :goto_0
.end method

.method public readData(Lcom/ximalaya/ting/android/player/model/JNIDataModel;ZI)I
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/high16 v0, 0x10000

    const/4 v1, -0x1

    .line 134
    iget-object v2, p1, Lcom/ximalaya/ting/android/player/model/JNIDataModel;->filePath:Ljava/lang/String;

    invoke-static {v2}, Lcom/ximalaya/ting/android/player/PlayerUtil;->isLocalFile(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 135
    iget v2, p1, Lcom/ximalaya/ting/android/player/model/JNIDataModel;->bufSize:I

    if-le v2, v0, :cond_0

    .line 138
    :goto_0
    new-array v0, v0, [B

    iput-object v0, p1, Lcom/ximalaya/ting/android/player/model/JNIDataModel;->buf:[B

    .line 140
    :try_start_0
    iget-object v0, p1, Lcom/ximalaya/ting/android/player/model/JNIDataModel;->filePath:Ljava/lang/String;

    .line 141
    iget-object v2, p1, Lcom/ximalaya/ting/android/player/model/JNIDataModel;->buf:[B

    .line 140
    invoke-direct {p0, v0, p3, v2}, Lcom/ximalaya/ting/android/player/AudioFileRequestHandler;->readDataFromSD(Ljava/lang/String;I[B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/AudioFileRequestHandler;->mXMediaplayerJNI:Lcom/ximalaya/ting/android/player/XMediaplayerJNI;

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->getCurFileSize()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/ximalaya/ting/android/player/model/JNIDataModel;->fileSize:J

    .line 146
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/AudioFileRequestHandler;->mXMediaplayerJNI:Lcom/ximalaya/ting/android/player/XMediaplayerJNI;

    invoke-virtual {p0}, Lcom/ximalaya/ting/android/player/AudioFileRequestHandler;->getCachePercent()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->onBufferingUpdateInner(I)V

    .line 147
    iget-object v0, p1, Lcom/ximalaya/ting/android/player/model/JNIDataModel;->buf:[B

    array-length v0, v0

    .line 266
    :goto_1
    return v0

    .line 136
    :cond_0
    iget v0, p1, Lcom/ximalaya/ting/android/player/model/JNIDataModel;->bufSize:I

    goto :goto_0

    .line 143
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_1

    .line 150
    :cond_1
    if-nez p2, :cond_2

    invoke-direct {p0}, Lcom/ximalaya/ting/android/player/AudioFileRequestHandler;->shallReloadData()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 151
    :cond_2
    invoke-direct {p0, p3, p1}, Lcom/ximalaya/ting/android/player/AudioFileRequestHandler;->resetLoadDataPosition(ILcom/ximalaya/ting/android/player/model/JNIDataModel;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    .line 152
    goto :goto_1

    .line 155
    :cond_3
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/AudioFileRequestHandler;->mXMediaplayerJNI:Lcom/ximalaya/ting/android/player/XMediaplayerJNI;

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->getCurFileSize()J

    move-result-wide v4

    .line 156
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    .line 157
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "dataStreamInputFuncCallBackT 0 tCurFileSize:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 156
    invoke-static {v0, v2}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 158
    cmp-long v0, v4, v8

    if-gtz v0, :cond_4

    move v0, v1

    .line 159
    goto :goto_1

    .line 161
    :cond_4
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    const-string v2, "dataStreamInputFuncCallBackT 1"

    invoke-static {v0, v2}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 164
    if-nez p2, :cond_5

    :try_start_1
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/AudioFileRequestHandler;->mXMediaplayerJNI:Lcom/ximalaya/ting/android/player/XMediaplayerJNI;

    iget-object v0, v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->tmepBuf:[B

    if-eqz v0, :cond_5

    .line 165
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/AudioFileRequestHandler;->mXMediaplayerJNI:Lcom/ximalaya/ting/android/player/XMediaplayerJNI;

    iget-object v0, v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->tmepBuf:[B

    iput-object v0, p1, Lcom/ximalaya/ting/android/player/model/JNIDataModel;->buf:[B

    .line 166
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/AudioFileRequestHandler;->mXMediaplayerJNI:Lcom/ximalaya/ting/android/player/XMediaplayerJNI;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->tmepBuf:[B

    .line 167
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    .line 168
    const-string v2, "dataStreamInputFuncCallBackT read temp buf"

    .line 167
    invoke-static {v0, v2}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 257
    :goto_2
    iput-wide v4, p1, Lcom/ximalaya/ting/android/player/model/JNIDataModel;->fileSize:J
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 262
    :goto_3
    iget-object v0, p1, Lcom/ximalaya/ting/android/player/model/JNIDataModel;->buf:[B

    if-nez v0, :cond_a

    move v0, v1

    .line 263
    goto :goto_1

    .line 170
    :cond_5
    :try_start_2
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    .line 171
    const-string v2, "dataStreamInputFuncCallBackT 2"

    .line 170
    invoke-static {v0, v2}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 172
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/AudioFileRequestHandler;->mXMediaplayerJNI:Lcom/ximalaya/ting/android/player/XMediaplayerJNI;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->tmepBuf:[B

    .line 173
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/AudioFileRequestHandler;->buffItemQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 174
    const-wide/16 v2, 0x7530

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 173
    invoke-virtual {v0, v2, v3, v6}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ximalaya/ting/android/player/BufferItem;

    .line 175
    sget-object v2, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    .line 176
    const-string v3, "dataStreamInputFuncCallBackT 3"

    .line 175
    invoke-static {v2, v3}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 177
    if-nez v0, :cond_6

    .line 178
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    .line 179
    const-string v2, "dataStreamInputFuncCallBackT timeout item null"

    .line 178
    invoke-static {v0, v2}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    move v0, v1

    .line 182
    goto/16 :goto_1

    .line 184
    :cond_6
    sget-object v2, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    .line 185
    const-string v3, "dataStreamInputFuncCallBackT 4"

    .line 184
    invoke-static {v2, v3}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 186
    invoke-virtual {v0}, Lcom/ximalaya/ting/android/player/BufferItem;->getIndex()I

    move-result v2

    .line 189
    sget-object v3, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    .line 190
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "dataStreamInputFuncCallBackT seekParaTimeStampMs index:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 191
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 190
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 189
    invoke-static {v3, v2}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 193
    if-eqz p2, :cond_8

    .line 195
    sget-object v2, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    .line 196
    const-string v3, "dataStreamInputFuncCallBackT seekParaTimeStampMs 1"

    .line 195
    invoke-static {v2, v3}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 198
    const/high16 v2, 0x10000

    .line 197
    rem-int v3, p3, v2

    .line 199
    sget-object v2, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    .line 200
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "dataStreamInputFuncCallBackT offset:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 199
    invoke-static {v2, v6}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 205
    invoke-virtual {v0}, Lcom/ximalaya/ting/android/player/BufferItem;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    array-length v2, v2

    .line 207
    cmp-long v6, v4, v8

    if-eqz v6, :cond_7

    .line 209
    const/high16 v6, 0x10000

    .line 208
    div-int v6, p3, v6

    int-to-long v6, v6

    .line 210
    const-wide/32 v8, 0x10000

    .line 209
    div-long v8, v4, v8

    .line 208
    cmp-long v6, v6, v8

    if-nez v6, :cond_7

    .line 211
    const-wide/32 v6, 0x10000

    rem-long v6, v4, v6

    long-to-int v2, v6

    .line 213
    sget-object v6, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    .line 214
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "dataStreamInputFuncCallBackT lastChunkLength:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 215
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 214
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 213
    invoke-static {v6, v7}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 216
    sget-object v6, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    .line 217
    const-string v7, "dataStreamInputFuncCallBackT seekParaTimeStampMs 2"

    .line 216
    invoke-static {v6, v7}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 219
    :cond_7
    sget-object v6, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    .line 220
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "dataStreamInputFuncCallBackT offset:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 221
    const-string v8, "length:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 220
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 219
    invoke-static {v6, v7}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 222
    invoke-virtual {v0}, Lcom/ximalaya/ting/android/player/BufferItem;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 223
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 224
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 225
    sget-object v2, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    .line 226
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "dataStreamInputFuncCallBackT slice remaining:"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 227
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 226
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 225
    invoke-static {v2, v3}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 228
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    new-array v2, v2, [B

    iput-object v2, p1, Lcom/ximalaya/ting/android/player/model/JNIDataModel;->buf:[B

    .line 229
    iget-object v2, p1, Lcom/ximalaya/ting/android/player/model/JNIDataModel;->buf:[B

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 230
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    .line 231
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "dataStreamInputFuncCallBackT slice buf size:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 232
    iget-object v3, p1, Lcom/ximalaya/ting/android/player/model/JNIDataModel;->buf:[B

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 231
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 230
    invoke-static {v0, v2}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2

    .line 258
    :catch_1
    move-exception v0

    .line 259
    sget-object v2, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "dataStreamInputFuncCallBackT 19"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 260
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 259
    invoke-static {v2, v0}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 234
    :cond_8
    :try_start_3
    sget-object v2, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    .line 235
    const-string v3, "dataStreamInputFuncCallBackT seekParaTimeStampMs 3"

    .line 234
    invoke-static {v2, v3}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 237
    cmp-long v2, v4, v8

    if-eqz v2, :cond_9

    .line 239
    const/high16 v2, 0x10000

    .line 238
    div-int v2, p3, v2

    int-to-long v2, v2

    .line 240
    const-wide/32 v6, 0x10000

    .line 239
    div-long v6, v4, v6

    .line 238
    cmp-long v2, v2, v6

    if-nez v2, :cond_9

    .line 241
    const-wide/32 v2, 0x10000

    rem-long v2, v4, v2

    long-to-int v2, v2

    .line 242
    invoke-virtual {v0}, Lcom/ximalaya/ting/android/player/BufferItem;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 243
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 244
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 245
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    new-array v2, v2, [B

    iput-object v2, p1, Lcom/ximalaya/ting/android/player/model/JNIDataModel;->buf:[B

    .line 246
    iget-object v2, p1, Lcom/ximalaya/ting/android/player/model/JNIDataModel;->buf:[B

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 247
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    .line 248
    const-string v2, "dataStreamInputFuncCallBackT seekParaTimeStampMs 4"

    .line 247
    invoke-static {v0, v2}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 250
    :cond_9
    invoke-virtual {v0}, Lcom/ximalaya/ting/android/player/BufferItem;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    iput-object v0, p1, Lcom/ximalaya/ting/android/player/model/JNIDataModel;->buf:[B

    .line 251
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    .line 252
    const-string v2, "dataStreamInputFuncCallBackT seekParaTimeStampMs 5"

    .line 251
    invoke-static {v0, v2}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_2

    .line 266
    :cond_a
    iget-object v0, p1, Lcom/ximalaya/ting/android/player/model/JNIDataModel;->buf:[B

    array-length v0, v0

    goto/16 :goto_1
.end method

.method public release()V
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/AudioFileRequestHandler;->mReadThread:Lcom/ximalaya/ting/android/player/ReadThread;

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/AudioFileRequestHandler;->mReadThread:Lcom/ximalaya/ting/android/player/ReadThread;

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/player/ReadThread;->close()V

    .line 282
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ximalaya/ting/android/player/AudioFileRequestHandler;->mReadThread:Lcom/ximalaya/ting/android/player/ReadThread;

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/AudioFileRequestHandler;->buffItemQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    if-eqz v0, :cond_1

    .line 285
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/AudioFileRequestHandler;->buffItemQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 287
    :cond_1
    return-void
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 270
    invoke-virtual {p0}, Lcom/ximalaya/ting/android/player/AudioFileRequestHandler;->release()V

    .line 271
    return-void
.end method
