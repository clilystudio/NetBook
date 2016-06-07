.class public Lcom/maxthon/utils/FileUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;)V
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 109
    .line 117
    :try_start_0
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    :try_start_1
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 121
    :try_start_2
    invoke-virtual {v8}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v1

    .line 123
    :try_start_3
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v6

    .line 125
    const-wide/16 v2, 0x0

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 131
    :try_start_4
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    .line 133
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 135
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    .line 137
    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 143
    :goto_0
    return-void

    .line 127
    :catch_0
    move-exception v0

    move-object v1, v6

    move-object v2, v6

    move-object v3, v6

    .line 128
    :goto_1
    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 131
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 133
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 135
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 137
    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    .line 139
    :catch_1
    move-exception v0

    .line 140
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 129
    :catchall_0
    move-exception v0

    move-object v1, v6

    move-object v7, v6

    move-object v8, v6

    .line 131
    :goto_2
    :try_start_7
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    .line 133
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 135
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    .line 137
    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 142
    :goto_3
    throw v0

    .line 139
    :catch_2
    move-exception v1

    .line 140
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 139
    :catch_3
    move-exception v0

    .line 140
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 129
    :catchall_1
    move-exception v0

    move-object v1, v6

    move-object v7, v6

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v1, v6

    goto :goto_2

    :catchall_3
    move-exception v0

    goto :goto_2

    :catchall_4
    move-exception v0

    move-object v7, v2

    move-object v8, v3

    goto :goto_2

    .line 127
    :catch_4
    move-exception v0

    move-object v1, v6

    move-object v2, v6

    move-object v3, v8

    goto :goto_1

    :catch_5
    move-exception v0

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    goto :goto_1

    :catch_6
    move-exception v0

    move-object v2, v7

    move-object v3, v8

    goto :goto_1
.end method

.method public static existAssetsFile(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 146
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 148
    :try_start_0
    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    move v1, v0

    .line 149
    :goto_0
    array-length v3, v2

    if-lt v1, v3, :cond_0

    .line 158
    :goto_1
    return v0

    .line 151
    :cond_0
    aget-object v3, v2, v1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_1

    .line 152
    const/4 v0, 0x1

    goto :goto_1

    .line 149
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 155
    :catch_0
    move-exception v1

    .line 156
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static writeToFile(Ljava/io/InputStream;Ljava/io/File;)V
    .locals 6

    .prologue
    const/16 v5, 0x400

    const/4 v4, 0x0

    .line 44
    const-string v0, "test_write"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "write to file : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    new-instance v0, Ljava/io/BufferedOutputStream;

    .line 47
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 46
    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 49
    new-array v1, v5, [B

    .line 50
    :goto_0
    invoke-virtual {p0, v1, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 53
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    .line 54
    return-void

    .line 51
    :cond_0
    invoke-virtual {v0, v1, v4, v2}, Ljava/io/BufferedOutputStream;->write([BII)V

    goto :goto_0
.end method

.method public static writeToFile([BLjava/io/File;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 80
    .line 84
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 85
    :try_start_1
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 86
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v0

    .line 87
    const-wide/16 v2, 0x0

    :try_start_3
    array-length v4, p0

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 90
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 92
    if-eqz v1, :cond_0

    .line 93
    invoke-interface {v1}, Ljava/nio/channels/ReadableByteChannel;->close()V

    .line 95
    :cond_0
    if-eqz v0, :cond_1

    .line 96
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 99
    :cond_1
    return-void

    .line 88
    :catchall_0
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    .line 89
    :goto_0
    if-eqz v3, :cond_2

    .line 90
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 92
    :cond_2
    if-eqz v2, :cond_3

    .line 93
    invoke-interface {v2}, Ljava/nio/channels/ReadableByteChannel;->close()V

    .line 95
    :cond_3
    if-eqz v1, :cond_4

    .line 96
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 98
    :cond_4
    throw v0

    .line 88
    :catchall_1
    move-exception v0

    move-object v3, v2

    move-object v7, v1

    move-object v1, v2

    move-object v2, v7

    goto :goto_0

    :catchall_2
    move-exception v0

    move-object v3, v6

    move-object v7, v1

    move-object v1, v2

    move-object v2, v7

    goto :goto_0

    :catchall_3
    move-exception v2

    move-object v3, v6

    move-object v7, v0

    move-object v0, v2

    move-object v2, v1

    move-object v1, v7

    goto :goto_0
.end method

.method public static writeToFile1(Ljava/io/InputStream;Ljava/io/File;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 57
    .line 61
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v4

    .line 62
    invoke-static {p0}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 63
    :try_start_1
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 64
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v0

    .line 65
    const-wide/16 v2, 0x0

    int-to-long v4, v4

    :try_start_3
    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 68
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 70
    if-eqz v1, :cond_0

    .line 71
    invoke-interface {v1}, Ljava/nio/channels/ReadableByteChannel;->close()V

    .line 73
    :cond_0
    if-eqz v0, :cond_1

    .line 74
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 77
    :cond_1
    return-void

    .line 66
    :catchall_0
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    .line 67
    :goto_0
    if-eqz v3, :cond_2

    .line 68
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 70
    :cond_2
    if-eqz v2, :cond_3

    .line 71
    invoke-interface {v2}, Ljava/nio/channels/ReadableByteChannel;->close()V

    .line 73
    :cond_3
    if-eqz v1, :cond_4

    .line 74
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 76
    :cond_4
    throw v0

    .line 66
    :catchall_1
    move-exception v0

    move-object v3, v2

    move-object v7, v1

    move-object v1, v2

    move-object v2, v7

    goto :goto_0

    :catchall_2
    move-exception v0

    move-object v3, v6

    move-object v7, v1

    move-object v1, v2

    move-object v2, v7

    goto :goto_0

    :catchall_3
    move-exception v2

    move-object v3, v6

    move-object v7, v0

    move-object v0, v2

    move-object v2, v1

    move-object v1, v7

    goto :goto_0
.end method
