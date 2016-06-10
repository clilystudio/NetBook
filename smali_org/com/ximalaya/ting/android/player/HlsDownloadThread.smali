.class public Lcom/ximalaya/ting/android/player/HlsDownloadThread;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mBufferItem:Lcom/ximalaya/ting/android/player/BufferItem;

.field private mCurrentDownloadUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/ximalaya/ting/android/player/BufferItem;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/ximalaya/ting/android/player/HlsDownloadThread;->mCurrentDownloadUrl:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/ximalaya/ting/android/player/HlsDownloadThread;->mBufferItem:Lcom/ximalaya/ting/android/player/BufferItem;

    .line 23
    return-void
.end method


# virtual methods
.method public download()I
    .locals 14

    .prologue
    const/4 v1, -0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 27
    const/4 v0, 0x3

    .line 28
    :goto_0
    add-int/lit8 v8, v0, -0x1

    if-gtz v0, :cond_0

    move v0, v1

    .line 156
    :goto_1
    return v0

    .line 30
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 31
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    .line 32
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "DownloadThread hls readData start:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 31
    invoke-static {v0, v2}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 33
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    .line 34
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "DownloadThread hls readData mCurrentDownloadUrl:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    iget-object v4, p0, Lcom/ximalaya/ting/android/player/HlsDownloadThread;->mCurrentDownloadUrl:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 34
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 33
    invoke-static {v0, v2}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 40
    :try_start_0
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "HlsDownloadThread mPlayUrl:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    iget-object v4, p0, Lcom/ximalaya/ting/android/player/HlsDownloadThread;->mCurrentDownloadUrl:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 40
    invoke-static {v0, v2}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 45
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/HlsDownloadThread;->mCurrentDownloadUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/ximalaya/ting/android/player/PlayerUtil;->getHttpURLConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_10
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 52
    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 53
    const-string v0, "GET"

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 56
    const-string v0, "Accept-Encoding"

    .line 57
    const-string v2, "identity"

    .line 56
    invoke-virtual {v5, v0, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 63
    const/16 v2, 0xc8

    if-eq v0, v2, :cond_1

    .line 64
    const/16 v2, 0xce

    if-ne v0, v2, :cond_1a

    .line 66
    :cond_1
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    .line 67
    if-lez v0, :cond_2

    .line 68
    const/high16 v2, 0x40000

    if-le v0, v2, :cond_4

    .line 69
    :cond_2
    sget-object v2, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    .line 70
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "HlsDownloadThread fail contentLength:"

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 70
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 69
    invoke-static {v2, v0}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_11
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_d
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 135
    if-eqz v5, :cond_3

    .line 136
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 150
    :cond_3
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    .line 151
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "DownloadThread hls readData end:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 152
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v10

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 151
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 149
    invoke-static {v0, v2}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    move v0, v8

    .line 72
    goto/16 :goto_0

    .line 74
    :cond_4
    :try_start_2
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_11
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_d
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v4

    .line 88
    :try_start_3
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/HlsDownloadThread;->mCurrentDownloadUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/ximalaya/ting/android/player/PlayerUtil;->getHlsFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 89
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "filePath:"

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 90
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 92
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_12
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_e
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 95
    :cond_5
    :try_start_4
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_12
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_e
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object v7, v0

    .line 99
    :goto_2
    :try_start_5
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    const-string v2, "HlsDownloadThread 0"

    invoke-static {v0, v2}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 100
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/HlsDownloadThread;->mBufferItem:Lcom/ximalaya/ting/android/player/BufferItem;

    if-eqz v0, :cond_1c

    .line 101
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_5
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_12
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_e
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 102
    :goto_3
    const/16 v0, 0x400

    :try_start_6
    new-array v9, v0, [B

    move v0, v6

    .line 105
    :cond_6
    :goto_4
    invoke-virtual {v4, v9}, Ljava/io/InputStream;->read([B)I

    move-result v12

    if-ne v12, v1, :cond_b

    .line 115
    if-eqz v7, :cond_7

    .line 116
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    .line 119
    :cond_7
    if-eqz v2, :cond_10

    iget-object v7, p0, Lcom/ximalaya/ting/android/player/HlsDownloadThread;->mBufferItem:Lcom/ximalaya/ting/android/player/BufferItem;

    if-eqz v7, :cond_10

    .line 120
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/HlsDownloadThread;->mBufferItem:Lcom/ximalaya/ting/android/player/BufferItem;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/ximalaya/ting/android/player/BufferItem;->setBuffer([B)V

    .line 121
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/HlsDownloadThread;->mBufferItem:Lcom/ximalaya/ting/android/player/BufferItem;

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/player/BufferItem;->getDataSize()I
    :try_end_6
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_f
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-result v0

    .line 135
    if-eqz v5, :cond_8

    .line 136
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 137
    :cond_8
    if-eqz v4, :cond_9

    .line 139
    :try_start_7
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 143
    :cond_9
    :goto_5
    if-eqz v2, :cond_a

    .line 145
    :try_start_8
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 150
    :cond_a
    :goto_6
    sget-object v1, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    .line 151
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DownloadThread hls readData end:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 152
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v10

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 151
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 149
    invoke-static {v1, v2}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 97
    :catch_0
    move-exception v0

    move-object v7, v3

    goto :goto_2

    .line 106
    :cond_b
    add-int/2addr v0, v12

    .line 107
    if-eqz v2, :cond_c

    .line 108
    const/4 v13, 0x0

    :try_start_9
    invoke-virtual {v2, v9, v13, v12}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 110
    :cond_c
    if-eqz v7, :cond_6

    .line 111
    const/4 v13, 0x0

    invoke-virtual {v7, v9, v13, v12}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_9
    .catch Ljava/net/MalformedURLException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_f
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_4

    .line 126
    :catch_1
    move-exception v0

    .line 128
    :goto_7
    :try_start_a
    sget-object v7, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    .line 129
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v12, "HlsDownloadThread MalformedURLException:"

    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 130
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 129
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 127
    invoke-static {v7, v0}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 135
    if-eqz v5, :cond_d

    .line 136
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 137
    :cond_d
    if-eqz v4, :cond_e

    .line 139
    :try_start_b
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    .line 143
    :cond_e
    :goto_8
    if-eqz v2, :cond_f

    .line 145
    :try_start_c
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    .line 150
    :cond_f
    :goto_9
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    .line 151
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "DownloadThread hls readData end:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 152
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v10

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 151
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 149
    invoke-static {v0, v2}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    move v0, v8

    goto/16 :goto_0

    .line 135
    :cond_10
    if-eqz v5, :cond_11

    .line 136
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 137
    :cond_11
    if-eqz v4, :cond_12

    .line 139
    :try_start_d
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5

    .line 143
    :cond_12
    :goto_a
    if-eqz v2, :cond_13

    .line 145
    :try_start_e
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_6

    .line 150
    :cond_13
    :goto_b
    sget-object v1, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    .line 151
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DownloadThread hls readData end:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 152
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v10

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 151
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 149
    invoke-static {v1, v2}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 131
    :catch_2
    move-exception v0

    move-object v2, v3

    move-object v4, v3

    move-object v5, v3

    .line 132
    :goto_c
    :try_start_f
    sget-object v7, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    .line 133
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v12, "HlsDownloadThread IOException:"

    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 132
    invoke-static {v7, v0}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 135
    if-eqz v5, :cond_14

    .line 136
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 137
    :cond_14
    if-eqz v4, :cond_15

    .line 139
    :try_start_10
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_9

    .line 143
    :cond_15
    :goto_d
    if-eqz v2, :cond_16

    .line 145
    :try_start_11
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_a

    .line 150
    :cond_16
    :goto_e
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    .line 151
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "DownloadThread hls readData end:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 152
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v10

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 151
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 149
    invoke-static {v0, v2}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    move v0, v8

    goto/16 :goto_0

    .line 134
    :catchall_0
    move-exception v0

    move-object v4, v3

    move-object v5, v3

    .line 135
    :goto_f
    if-eqz v5, :cond_17

    .line 136
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 137
    :cond_17
    if-eqz v4, :cond_18

    .line 139
    :try_start_12
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_b

    .line 143
    :cond_18
    :goto_10
    if-eqz v3, :cond_19

    .line 145
    :try_start_13
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_c

    .line 150
    :cond_19
    :goto_11
    sget-object v1, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    .line 151
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DownloadThread hls readData end:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 152
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v10

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 151
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 149
    invoke-static {v1, v2}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 153
    throw v0

    .line 135
    :cond_1a
    if-eqz v5, :cond_1b

    .line 136
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 150
    :cond_1b
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    .line 151
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "DownloadThread hls readData end:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 152
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v10

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 151
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 149
    invoke-static {v0, v2}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    move v0, v8

    goto/16 :goto_0

    :catch_3
    move-exception v1

    goto/16 :goto_5

    :catch_4
    move-exception v1

    goto/16 :goto_6

    :catch_5
    move-exception v1

    goto/16 :goto_a

    :catch_6
    move-exception v1

    goto/16 :goto_b

    :catch_7
    move-exception v0

    goto/16 :goto_8

    :catch_8
    move-exception v0

    goto/16 :goto_9

    :catch_9
    move-exception v0

    goto/16 :goto_d

    :catch_a
    move-exception v0

    goto :goto_e

    :catch_b
    move-exception v1

    goto :goto_10

    :catch_c
    move-exception v1

    goto :goto_11

    .line 134
    :catchall_1
    move-exception v0

    move-object v4, v3

    goto :goto_f

    :catchall_2
    move-exception v0

    goto :goto_f

    :catchall_3
    move-exception v0

    move-object v3, v2

    goto :goto_f

    .line 131
    :catch_d
    move-exception v0

    move-object v2, v3

    move-object v4, v3

    goto/16 :goto_c

    :catch_e
    move-exception v0

    move-object v2, v3

    goto/16 :goto_c

    :catch_f
    move-exception v0

    goto/16 :goto_c

    .line 126
    :catch_10
    move-exception v0

    move-object v2, v3

    move-object v4, v3

    move-object v5, v3

    goto/16 :goto_7

    :catch_11
    move-exception v0

    move-object v2, v3

    move-object v4, v3

    goto/16 :goto_7

    :catch_12
    move-exception v0

    move-object v2, v3

    goto/16 :goto_7

    :cond_1c
    move-object v2, v3

    goto/16 :goto_3
.end method
