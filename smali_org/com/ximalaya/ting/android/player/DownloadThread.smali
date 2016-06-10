.class public Lcom/ximalaya/ting/android/player/DownloadThread;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "dl_mp3"


# instance fields
.field private bBuffer:Ljava/nio/ByteBuffer;

.field private mFile:Lcom/ximalaya/ting/android/player/AudioFile;

.field private mIndex:I

.field private stopFlag:Z


# direct methods
.method public constructor <init>(Lcom/ximalaya/ting/android/player/AudioFile;I)V
    .locals 3

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, "dl_mp3"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "======================DownloadThread Constructor("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 21
    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 23
    iput-object p1, p0, Lcom/ximalaya/ting/android/player/DownloadThread;->mFile:Lcom/ximalaya/ting/android/player/AudioFile;

    .line 24
    iput p2, p0, Lcom/ximalaya/ting/android/player/DownloadThread;->mIndex:I

    .line 26
    const/high16 v0, 0x10000

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 25
    iput-object v0, p0, Lcom/ximalaya/ting/android/player/DownloadThread;->bBuffer:Ljava/nio/ByteBuffer;

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ximalaya/ting/android/player/DownloadThread;->stopFlag:Z

    .line 28
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 229
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ximalaya/ting/android/player/DownloadThread;->stopFlag:Z

    .line 230
    return-void
.end method

.method public download()I
    .locals 10

    .prologue
    const/high16 v9, 0x10000

    const/4 v3, 0x0

    const/4 v1, -0x1

    .line 31
    iget-boolean v0, p0, Lcom/ximalaya/ting/android/player/DownloadThread;->stopFlag:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ximalaya/ting/android/player/DownloadThread;->mFile:Lcom/ximalaya/ting/android/player/AudioFile;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/ximalaya/ting/android/player/DownloadThread;->mIndex:I

    if-ltz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/DownloadThread;->mFile:Lcom/ximalaya/ting/android/player/AudioFile;

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/player/AudioFile;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    .line 110
    :goto_0
    return v0

    .line 36
    :cond_1
    const/4 v0, 0x3

    .line 37
    :goto_1
    add-int/lit8 v4, v0, -0x1

    if-gtz v0, :cond_2

    move v0, v1

    .line 110
    goto :goto_0

    .line 39
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/DownloadThread;->mFile:Lcom/ximalaya/ting/android/player/AudioFile;

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/player/AudioFile;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ximalaya/ting/android/player/PlayerUtil;->getHttpURLConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v5

    .line 40
    const-string v0, "GET"

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 43
    const-string v0, "Accept-Encoding"

    .line 44
    const-string v2, "identity"

    .line 43
    invoke-virtual {v5, v0, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iget v0, p0, Lcom/ximalaya/ting/android/player/DownloadThread;->mIndex:I

    iget-object v2, p0, Lcom/ximalaya/ting/android/player/DownloadThread;->mFile:Lcom/ximalaya/ting/android/player/AudioFile;

    invoke-virtual {v2}, Lcom/ximalaya/ting/android/player/AudioFile;->getFileInfo()Lcom/ximalaya/ting/android/player/FileDesc;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ximalaya/ting/android/player/FileDesc;->getComChunkNum()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v0, v2, :cond_3

    .line 49
    iget v0, p0, Lcom/ximalaya/ting/android/player/DownloadThread;->mIndex:I

    shl-int/lit8 v2, v0, 0x10

    .line 50
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/DownloadThread;->mFile:Lcom/ximalaya/ting/android/player/AudioFile;

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/player/AudioFile;->getFileInfo()Lcom/ximalaya/ting/android/player/FileDesc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/player/FileDesc;->getComFileLen()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 57
    :goto_2
    const-string v6, "bytes=%d-%d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v8

    const/4 v2, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v2

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 58
    const-string v2, "Range"

    invoke-virtual {v5, v2, v0}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 61
    const/16 v2, 0xce

    if-eq v0, v2, :cond_4

    .line 62
    sget-object v2, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    .line 63
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "DownloadThread fail responseCode:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 62
    invoke-static {v2, v0}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    move v0, v4

    .line 64
    goto :goto_1

    .line 52
    :cond_3
    iget v0, p0, Lcom/ximalaya/ting/android/player/DownloadThread;->mIndex:I

    shl-int/lit8 v2, v0, 0x10

    .line 53
    iget v0, p0, Lcom/ximalaya/ting/android/player/DownloadThread;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    shl-int/lit8 v0, v0, 0x10

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 66
    :cond_4
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v2

    .line 67
    if-gtz v2, :cond_5

    .line 68
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    .line 69
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "DownloadThread fail contentLength0:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 69
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 68
    invoke-static {v0, v2}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    move v0, v4

    .line 71
    goto/16 :goto_1

    .line 73
    :cond_5
    if-eq v2, v9, :cond_6

    .line 74
    iget v6, p0, Lcom/ximalaya/ting/android/player/DownloadThread;->mIndex:I

    iget-object v7, p0, Lcom/ximalaya/ting/android/player/DownloadThread;->mFile:Lcom/ximalaya/ting/android/player/AudioFile;

    invoke-virtual {v7}, Lcom/ximalaya/ting/android/player/AudioFile;->getFileInfo()Lcom/ximalaya/ting/android/player/FileDesc;

    move-result-object v7

    invoke-virtual {v7}, Lcom/ximalaya/ting/android/player/FileDesc;->getComChunkNum()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-eq v6, v7, :cond_6

    .line 75
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    .line 76
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "DownloadThread fail contentLength1:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 76
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 75
    invoke-static {v0, v2}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    move v0, v4

    .line 78
    goto/16 :goto_1

    .line 81
    :cond_6
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    move v2, v3

    .line 84
    :cond_7
    iget-object v6, p0, Lcom/ximalaya/ting/android/player/DownloadThread;->bBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    .line 85
    sub-int v7, v9, v2

    .line 84
    invoke-virtual {v5, v6, v2, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    .line 86
    add-int/2addr v2, v6

    .line 83
    if-gtz v6, :cond_7

    .line 89
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 99
    iget-object v2, p0, Lcom/ximalaya/ting/android/player/DownloadThread;->mFile:Lcom/ximalaya/ting/android/player/AudioFile;

    iget-object v5, p0, Lcom/ximalaya/ting/android/player/DownloadThread;->bBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v5}, Lcom/ximalaya/ting/android/player/AudioFile;->setbBuffer(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 101
    :catch_0
    move-exception v0

    .line 102
    sget-object v2, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    .line 103
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "DownloadThread MalformedURLException:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 102
    invoke-static {v2, v0}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    move v0, v4

    goto/16 :goto_1

    .line 104
    :catch_1
    move-exception v0

    .line 105
    sget-object v2, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "DownloadThread IOException:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 105
    invoke-static {v2, v0}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    move v0, v4

    goto/16 :goto_1
.end method
