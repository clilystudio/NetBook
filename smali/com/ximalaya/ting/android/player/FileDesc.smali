.class public Lcom/ximalaya/ting/android/player/FileDesc;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "dl_mp3"


# instance fields
.field public volatile chunkExist:Ljava/util/BitSet;

.field private chunkNum:I

.field public volatile chunkOffset:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private comChunkNum:I

.field private comFileLen:J

.field private dirPath:Ljava/lang/String;

.field public volatile downloadedChunks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private eTag:Ljava/lang/String;

.field public volatile statusCode:I

.field private url:Ljava/lang/String;

.field public volatile valid:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-boolean v3, p0, Lcom/ximalaya/ting/android/player/FileDesc;->valid:Z

    .line 57
    const-string v0, "dl_mp3"

    const-string v2, "======================FileDesc Constructor()"

    invoke-static {v0, v2}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 58
    iput-object p1, p0, Lcom/ximalaya/ting/android/player/FileDesc;->dirPath:Ljava/lang/String;

    .line 59
    iput-object p2, p0, Lcom/ximalaya/ting/android/player/FileDesc;->url:Ljava/lang/String;

    .line 64
    invoke-direct {p0}, Lcom/ximalaya/ting/android/player/FileDesc;->createCacheDir()Z

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/ximalaya/ting/android/player/MD5;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 70
    const-string v2, ".index"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 71
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/ximalaya/ting/android/player/MD5;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 74
    const-string v2, ".chunk"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 75
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v2

    if-eq v0, v2, :cond_0

    .line 78
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 79
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 102
    :cond_0
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 103
    invoke-virtual {p0, p1, p2}, Lcom/ximalaya/ting/android/player/FileDesc;->initFileDescFormNet(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    :cond_1
    :goto_0
    return-void

    .line 108
    :cond_2
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 109
    invoke-static {p2}, Lcom/ximalaya/ting/android/player/MD5;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ".index"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 108
    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    :try_start_1
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 111
    :try_start_2
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ximalaya/ting/android/player/FileDesc;->url:Ljava/lang/String;

    .line 112
    iget-object v1, p0, Lcom/ximalaya/ting/android/player/FileDesc;->url:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/ximalaya/ting/android/player/FileDesc;->url:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 117
    :cond_3
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 118
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 119
    invoke-virtual {p0, p1, p2}, Lcom/ximalaya/ting/android/player/FileDesc;->initFileDescFormNet(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 154
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 157
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    goto :goto_0

    .line 123
    :cond_4
    :try_start_3
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/ximalaya/ting/android/player/FileDesc;->comFileLen:J

    .line 124
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ximalaya/ting/android/player/FileDesc;->eTag:Ljava/lang/String;

    .line 126
    iget-wide v6, p0, Lcom/ximalaya/ting/android/player/FileDesc;->comFileLen:J

    long-to-float v1, v6

    .line 127
    const/high16 v6, 0x47800000    # 65536.0f

    .line 126
    div-float/2addr v1, v6

    float-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    .line 128
    const-string v1, "dl_mp3"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "calc002==comChunkNum==:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v8, p0, Lcom/ximalaya/ting/android/player/FileDesc;->comFileLen:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 129
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 128
    invoke-static {v1, v7}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 130
    iput v6, p0, Lcom/ximalaya/ting/android/player/FileDesc;->comChunkNum:I

    .line 132
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, p0, Lcom/ximalaya/ting/android/player/FileDesc;->chunkNum:I

    .line 133
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v1, v3

    .line 134
    :goto_1
    iget v3, p0, Lcom/ximalaya/ting/android/player/FileDesc;->chunkNum:I

    if-lt v1, v3, :cond_6

    .line 138
    iget v1, p0, Lcom/ximalaya/ting/android/player/FileDesc;->comChunkNum:I

    if-lez v1, :cond_5

    .line 139
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/ximalaya/ting/android/player/FileDesc;->valid:Z

    .line 140
    invoke-direct {p0, v7, v6}, Lcom/ximalaya/ting/android/player/FileDesc;->initFromArray(Ljava/util/ArrayList;I)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 154
    :cond_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 157
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    goto/16 :goto_0

    .line 135
    :cond_6
    :try_start_4
    new-instance v3, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    invoke-direct {v3, v8}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 134
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 147
    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_2
    :try_start_5
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 148
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 149
    invoke-virtual {p0, p1, p2}, Lcom/ximalaya/ting/android/player/FileDesc;->initFileDescFormNet(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 153
    if-eqz v1, :cond_7

    .line 154
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 156
    :cond_7
    if-eqz v0, :cond_1

    .line 157
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    goto/16 :goto_0

    .line 152
    :catchall_0
    move-exception v0

    move-object v2, v1

    .line 153
    :goto_3
    if-eqz v2, :cond_8

    .line 154
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 156
    :cond_8
    if-eqz v1, :cond_9

    .line 157
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    .line 159
    :cond_9
    throw v0

    .line 152
    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_3

    :catchall_3
    move-exception v2

    move-object v10, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_3

    .line 147
    :catch_1
    move-exception v0

    move-object v0, v1

    move-object v1, v2

    goto :goto_2

    :catch_2
    move-exception v1

    move-object v1, v2

    goto :goto_2
.end method

.method private createCacheDir()Z
    .locals 3

    .prologue
    .line 41
    new-instance v0, Ljava/io/File;

    .line 42
    sget-object v1, Lcom/ximalaya/ting/android/player/XMediaPlayerConstants;->INCOM_AUDIO_FILE_DIRECTORY:Ljava/lang/String;

    .line 41
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 43
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 44
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    .line 45
    const-string v0, "dl_mp3"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u76ee\u5f55\u4e0d\u5b58\u5728\uff0c\u521b\u5efa\u5931\u8d25\uff01"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    sget-object v2, Lcom/ximalaya/ting/android/player/XMediaPlayerConstants;->INCOM_AUDIO_FILE_DIRECTORY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 45
    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 49
    const/4 v0, 0x0

    .line 52
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private initFromArray(Ljava/util/ArrayList;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 279
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, p2}, Ljava/util/BitSet;-><init>(I)V

    iput-object v1, p0, Lcom/ximalaya/ting/android/player/FileDesc;->chunkExist:Ljava/util/BitSet;

    .line 281
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/ximalaya/ting/android/player/FileDesc;->chunkOffset:Ljava/util/ArrayList;

    move v1, v0

    .line 282
    :goto_0
    if-lt v1, p2, :cond_0

    .line 286
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/ximalaya/ting/android/player/FileDesc;->downloadedChunks:Ljava/util/ArrayList;

    .line 287
    iput-object p1, p0, Lcom/ximalaya/ting/android/player/FileDesc;->downloadedChunks:Ljava/util/ArrayList;

    move v1, v0

    .line 289
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    .line 293
    return-void

    .line 283
    :cond_0
    iget-object v2, p0, Lcom/ximalaya/ting/android/player/FileDesc;->chunkOffset:Ljava/util/ArrayList;

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 282
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 290
    :cond_1
    iget-object v2, p0, Lcom/ximalaya/ting/android/player/FileDesc;->chunkExist:Ljava/util/BitSet;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->set(I)V

    .line 291
    iget-object v2, p0, Lcom/ximalaya/ting/android/player/FileDesc;->chunkOffset:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 289
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 237
    if-ne p1, p0, :cond_1

    .line 238
    const/4 v0, 0x1

    .line 246
    :cond_0
    :goto_0
    return v0

    .line 241
    :cond_1
    instance-of v1, p1, Lcom/ximalaya/ting/android/player/FileDesc;

    if-eqz v1, :cond_0

    .line 242
    check-cast p1, Lcom/ximalaya/ting/android/player/FileDesc;

    .line 243
    invoke-virtual {p0}, Lcom/ximalaya/ting/android/player/FileDesc;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 244
    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/ximalaya/ting/android/player/FileDesc;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getComChunkNum()I
    .locals 1

    .prologue
    .line 250
    iget v0, p0, Lcom/ximalaya/ting/android/player/FileDesc;->comChunkNum:I

    return v0
.end method

.method public getComFileLen()I
    .locals 2

    .prologue
    .line 254
    iget-wide v0, p0, Lcom/ximalaya/ting/android/player/FileDesc;->comFileLen:J

    long-to-int v0, v0

    return v0
.end method

.method public declared-synchronized getDownloadedChunks()I
    .locals 1

    .prologue
    .line 408
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/FileDesc;->downloadedChunks:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/FileDesc;->downloadedChunks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 411
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 408
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getETag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/FileDesc;->eTag:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorCode()I
    .locals 1

    .prologue
    .line 258
    iget v0, p0, Lcom/ximalaya/ting/android/player/FileDesc;->statusCode:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/FileDesc;->url:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/FileDesc;->url:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 272
    const/4 v0, 0x0

    .line 275
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/FileDesc;->url:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public initFileDescFormNet(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v0, 0x0

    .line 165
    const/4 v1, 0x3

    .line 166
    :goto_0
    add-int/lit8 v2, v1, -0x1

    if-gtz v1, :cond_1

    .line 201
    :cond_0
    iget-boolean v1, p0, Lcom/ximalaya/ting/android/player/FileDesc;->valid:Z

    if-nez v1, :cond_4

    .line 202
    const-string v0, "dl_mp3"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "valid0:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/ximalaya/ting/android/player/FileDesc;->valid:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "comFileLen:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/ximalaya/ting/android/player/FileDesc;->comFileLen:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 203
    const-string v2, "statusCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ximalaya/ting/android/player/FileDesc;->statusCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 202
    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 233
    :goto_1
    return-void

    .line 169
    :cond_1
    :try_start_0
    invoke-static {p2}, Lcom/ximalaya/ting/android/player/PlayerUtil;->getHttpURLConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v1

    .line 170
    const-string v3, "HEAD"

    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 171
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 172
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    iput v3, p0, Lcom/ximalaya/ting/android/player/FileDesc;->statusCode:I

    .line 173
    iget v3, p0, Lcom/ximalaya/ting/android/player/FileDesc;->statusCode:I

    const/16 v4, 0x190

    if-lt v3, v4, :cond_3

    .line 174
    const-string v3, "dl_mp3"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error response code for get head for url: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 175
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",status code is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/ximalaya/ting/android/player/FileDesc;->statusCode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 176
    const-string v5, " in handler thread"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 174
    invoke-static {v3, v4}, Lcom/ximalaya/ting/android/player/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/ximalaya/ting/android/player/FileDesc;->valid:Z

    .line 183
    :goto_2
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v3

    int-to-long v4, v3

    iput-wide v4, p0, Lcom/ximalaya/ting/android/player/FileDesc;->comFileLen:J

    .line 184
    const-string v3, "dl_mp3"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "conn.getContentLength():"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, p0, Lcom/ximalaya/ting/android/player/FileDesc;->comFileLen:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 185
    iget-wide v4, p0, Lcom/ximalaya/ting/android/player/FileDesc;->comFileLen:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-gtz v3, :cond_2

    .line 186
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/ximalaya/ting/android/player/FileDesc;->valid:Z

    .line 188
    :cond_2
    const-string v3, "ETag"

    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/ximalaya/ting/android/player/FileDesc;->eTag:Ljava/lang/String;

    .line 189
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 190
    iget-boolean v1, p0, Lcom/ximalaya/ting/android/player/FileDesc;->valid:Z

    if-nez v1, :cond_0

    :goto_3
    move v1, v2

    goto/16 :goto_0

    .line 180
    :cond_3
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/ximalaya/ting/android/player/FileDesc;->valid:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 197
    :catch_0
    move-exception v1

    iput-boolean v0, p0, Lcom/ximalaya/ting/android/player/FileDesc;->valid:Z

    goto :goto_3

    .line 206
    :cond_4
    const-string v1, "dl_mp3"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "valid1:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/ximalaya/ting/android/player/FileDesc;->valid:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "comFileLen:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/ximalaya/ting/android/player/FileDesc;->comFileLen:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 207
    const-string v3, "statusCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/ximalaya/ting/android/player/FileDesc;->statusCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 206
    invoke-static {v1, v2}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 209
    iget-wide v2, p0, Lcom/ximalaya/ting/android/player/FileDesc;->comFileLen:J

    long-to-float v1, v2

    .line 210
    const/high16 v2, 0x47800000    # 65536.0f

    div-float/2addr v1, v2

    float-to-double v2, v1

    .line 209
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    iput v1, p0, Lcom/ximalaya/ting/android/player/FileDesc;->comChunkNum:I

    .line 211
    const-string v1, "dl_mp3"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "calc001==comFileLen==:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/ximalaya/ting/android/player/FileDesc;->comFileLen:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",comChunkNum:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 212
    iget v3, p0, Lcom/ximalaya/ting/android/player/FileDesc;->comChunkNum:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "statusCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/ximalaya/ting/android/player/FileDesc;->statusCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 211
    invoke-static {v1, v2}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 214
    iput v0, p0, Lcom/ximalaya/ting/android/player/FileDesc;->chunkNum:I

    .line 215
    new-instance v1, Ljava/util/BitSet;

    iget v2, p0, Lcom/ximalaya/ting/android/player/FileDesc;->comChunkNum:I

    invoke-direct {v1, v2}, Ljava/util/BitSet;-><init>(I)V

    iput-object v1, p0, Lcom/ximalaya/ting/android/player/FileDesc;->chunkExist:Ljava/util/BitSet;

    .line 217
    iget v1, p0, Lcom/ximalaya/ting/android/player/FileDesc;->comChunkNum:I

    if-lez v1, :cond_6

    .line 218
    new-instance v1, Ljava/util/ArrayList;

    iget v2, p0, Lcom/ximalaya/ting/android/player/FileDesc;->comChunkNum:I

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/ximalaya/ting/android/player/FileDesc;->chunkOffset:Ljava/util/ArrayList;

    .line 220
    :goto_4
    iget v1, p0, Lcom/ximalaya/ting/android/player/FileDesc;->comChunkNum:I

    if-lt v0, v1, :cond_5

    .line 224
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ximalaya/ting/android/player/FileDesc;->downloadedChunks:Ljava/util/ArrayList;

    .line 227
    invoke-static {p2}, Lcom/ximalaya/ting/android/player/MD5;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/ximalaya/ting/android/player/FileDesc;->saveDescHeadToDisk(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    iput-boolean v8, p0, Lcom/ximalaya/ting/android/player/FileDesc;->valid:Z

    goto/16 :goto_1

    .line 221
    :cond_5
    iget-object v1, p0, Lcom/ximalaya/ting/android/player/FileDesc;->chunkOffset:Ljava/util/ArrayList;

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 220
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 230
    :cond_6
    iput-boolean v0, p0, Lcom/ximalaya/ting/android/player/FileDesc;->valid:Z

    .line 231
    const/16 v0, 0x198

    iput v0, p0, Lcom/ximalaya/ting/android/player/FileDesc;->statusCode:I

    goto/16 :goto_1
.end method

.method public declared-synchronized isChunkDownloaded(I)Z
    .locals 2

    .prologue
    .line 296
    monitor-enter p0

    const/4 v0, 0x0

    .line 297
    :try_start_0
    iget-object v1, p0, Lcom/ximalaya/ting/android/player/FileDesc;->chunkExist:Ljava/util/BitSet;

    if-eqz v1, :cond_0

    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/ximalaya/ting/android/player/FileDesc;->chunkExist:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->length()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 298
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/FileDesc;->chunkExist:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->get(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 301
    :cond_0
    monitor-exit p0

    return v0

    .line 296
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isIndexAvaliable(I)Z
    .locals 2

    .prologue
    .line 305
    const/4 v0, 0x0

    .line 307
    iget-object v1, p0, Lcom/ximalaya/ting/android/player/FileDesc;->chunkExist:Ljava/util/BitSet;

    if-eqz v1, :cond_0

    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/ximalaya/ting/android/player/FileDesc;->chunkExist:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->length()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 308
    const/4 v0, 0x1

    .line 311
    :cond_0
    return v0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 315
    iget-boolean v0, p0, Lcom/ximalaya/ting/android/player/FileDesc;->valid:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/ximalaya/ting/android/player/FileDesc;->comChunkNum:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized saveDescHeadToDisk(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 320
    monitor-enter p0

    :try_start_0
    const-string v0, "dl_mp3"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "saveDescHeadToDisk("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 321
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/ximalaya/ting/android/player/FileDesc;->comFileLen:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 320
    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 323
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 324
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".index"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    .line 323
    invoke-direct {v1, v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    .line 326
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 328
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/FileDesc;->url:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 329
    iget-wide v4, p0, Lcom/ximalaya/ting/android/player/FileDesc;->comFileLen:J

    invoke-virtual {v2, v4, v5}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 332
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/FileDesc;->eTag:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 333
    const-string v0, ""

    .line 338
    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 339
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 341
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 342
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 343
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 349
    :goto_1
    monitor-exit p0

    return-void

    .line 335
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/FileDesc;->eTag:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 344
    :catch_0
    move-exception v0

    .line 345
    :try_start_3
    const-string v1, "dl_mp3"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "exception: saveDescHeadToDisk"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 320
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized saveDescToDisk(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 353
    monitor-enter p0

    :try_start_0
    const-string v0, "dl_mp3"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "======================saveDescToDisk("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 354
    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 353
    invoke-static {v0, v2}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 356
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 357
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ".index"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    .line 356
    invoke-direct {v2, v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    .line 359
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 361
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/FileDesc;->url:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 362
    iget-wide v4, p0, Lcom/ximalaya/ting/android/player/FileDesc;->comFileLen:J

    invoke-virtual {v3, v4, v5}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 365
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/FileDesc;->eTag:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 366
    const-string v0, "\"\""

    .line 371
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 372
    iget v0, p0, Lcom/ximalaya/ting/android/player/FileDesc;->chunkNum:I

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 374
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/FileDesc;->downloadedChunks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 375
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 380
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    .line 381
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    .line 382
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 383
    const/4 v0, 0x1

    .line 385
    :goto_2
    monitor-exit p0

    return v0

    .line 368
    :cond_0
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "\""

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/ximalaya/ting/android/player/FileDesc;->eTag:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 376
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 377
    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 385
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_2

    .line 353
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized update(I)V
    .locals 2

    .prologue
    .line 392
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/FileDesc;->chunkExist:Ljava/util/BitSet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 405
    :goto_0
    monitor-exit p0

    return-void

    .line 395
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/FileDesc;->downloadedChunks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 397
    iget-object v1, p0, Lcom/ximalaya/ting/android/player/FileDesc;->chunkExist:Ljava/util/BitSet;

    invoke-virtual {v1, p1}, Ljava/util/BitSet;->set(I)V

    .line 398
    iget-object v1, p0, Lcom/ximalaya/ting/android/player/FileDesc;->chunkOffset:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 399
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/FileDesc;->downloadedChunks:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 401
    iget v0, p0, Lcom/ximalaya/ting/android/player/FileDesc;->chunkNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ximalaya/ting/android/player/FileDesc;->chunkNum:I

    .line 404
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/FileDesc;->dirPath:Ljava/lang/String;

    iget-object v1, p0, Lcom/ximalaya/ting/android/player/FileDesc;->url:Ljava/lang/String;

    invoke-static {v1}, Lcom/ximalaya/ting/android/player/MD5;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/ximalaya/ting/android/player/FileDesc;->saveDescToDisk(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 392
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
