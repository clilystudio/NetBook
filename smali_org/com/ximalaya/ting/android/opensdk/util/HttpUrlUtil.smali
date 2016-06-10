.class public Lcom/ximalaya/ting/android/opensdk/util/HttpUrlUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static downloadFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 8

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 91
    const/4 v2, 0x0

    .line 94
    :try_start_0
    invoke-static {p0}, Lcom/ximalaya/ting/android/opensdk/util/HttpUrlUtil;->getHttpURLConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v3

    .line 95
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->connect()V

    .line 96
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    .line 97
    const-string v5, "Content-Length"

    invoke-virtual {v3, v5}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 98
    const/16 v6, 0xc8

    if-ne v4, v6, :cond_0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 99
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gtz v4, :cond_1

    :cond_0
    move v0, v1

    .line 123
    :goto_0
    return v0

    .line 103
    :cond_1
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 104
    const/16 v3, 0x2000

    new-array v5, v3, [B

    .line 106
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2

    .line 109
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 111
    :cond_2
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v3, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 112
    new-instance v3, Ljava/io/FileOutputStream;

    const/4 v7, 0x0

    invoke-direct {v3, v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    :goto_1
    :try_start_1
    invoke-virtual {v4, v5}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-gtz v2, :cond_3

    .line 117
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 131
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 133
    :catch_0
    move-exception v1

    .line 135
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 115
    :cond_3
    const/4 v6, 0x0

    :try_start_3
    invoke-virtual {v3, v5, v6, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 120
    :catch_1
    move-exception v0

    move-object v2, v3

    .line 122
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 127
    if-eqz v2, :cond_4

    .line 131
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_4
    :goto_3
    move v0, v1

    .line 123
    goto :goto_0

    .line 133
    :catch_2
    move-exception v0

    .line 135
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 126
    :catchall_0
    move-exception v0

    .line 127
    :goto_4
    if-eqz v2, :cond_5

    .line 131
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 138
    :cond_5
    :goto_5
    throw v0

    .line 133
    :catch_3
    move-exception v1

    .line 135
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 126
    :catchall_1
    move-exception v0

    move-object v2, v3

    goto :goto_4

    .line 120
    :catch_4
    move-exception v0

    goto :goto_2
.end method

.method public static getHttpURLConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/ximalaya/ting/android/opensdk/util/HttpUrlUtil$Config;->DEFAULT:Lcom/ximalaya/ting/android/opensdk/util/HttpUrlUtil$Config;

    invoke-static {p0, v0}, Lcom/ximalaya/ting/android/opensdk/util/HttpUrlUtil;->getHttpURLConnection(Ljava/lang/String;Lcom/ximalaya/ting/android/opensdk/util/HttpUrlUtil$Config;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0
.end method

.method public static getHttpURLConnection(Ljava/lang/String;Lcom/ximalaya/ting/android/opensdk/util/HttpUrlUtil$Config;)Ljava/net/HttpURLConnection;
    .locals 6

    .prologue
    .line 46
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 48
    if-nez p1, :cond_0

    .line 50
    sget-object p1, Lcom/ximalaya/ting/android/opensdk/util/HttpUrlUtil$Config;->DEFAULT:Lcom/ximalaya/ting/android/opensdk/util/HttpUrlUtil$Config;

    .line 52
    :cond_0
    iget-boolean v1, p1, Lcom/ximalaya/ting/android/opensdk/util/HttpUrlUtil$Config;->useProxy:Z

    if-eqz v1, :cond_2

    .line 54
    new-instance v1, Ljava/net/Proxy;

    sget-object v2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v3, Ljava/net/InetSocketAddress;

    .line 55
    iget-object v4, p1, Lcom/ximalaya/ting/android/opensdk/util/HttpUrlUtil$Config;->proxyHost:Ljava/lang/String;

    iget v5, p1, Lcom/ximalaya/ting/android/opensdk/util/HttpUrlUtil$Config;->proxyPort:I

    invoke-direct {v3, v4, v5}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 54
    invoke-direct {v1, v2, v3}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 56
    invoke-virtual {v0, v1}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 57
    iget-object v1, p1, Lcom/ximalaya/ting/android/opensdk/util/HttpUrlUtil$Config;->authorization:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 59
    const-string v1, "Authorization"

    iget-object v2, p1, Lcom/ximalaya/ting/android/opensdk/util/HttpUrlUtil$Config;->authorization:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v0

    .line 66
    :goto_0
    iget v0, p1, Lcom/ximalaya/ting/android/opensdk/util/HttpUrlUtil$Config;->connectionTimeOut:I

    invoke-virtual {v2, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 67
    iget v0, p1, Lcom/ximalaya/ting/android/opensdk/util/HttpUrlUtil$Config;->readTimeOut:I

    invoke-virtual {v2, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 68
    iget-boolean v0, p1, Lcom/ximalaya/ting/android/opensdk/util/HttpUrlUtil$Config;->useCache:Z

    invoke-virtual {v2, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 69
    iget-object v0, p1, Lcom/ximalaya/ting/android/opensdk/util/HttpUrlUtil$Config;->method:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 70
    iget-object v0, p1, Lcom/ximalaya/ting/android/opensdk/util/HttpUrlUtil$Config;->property:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 72
    iget-object v0, p1, Lcom/ximalaya/ting/android/opensdk/util/HttpUrlUtil$Config;->property:Ljava/util/Map;

    .line 73
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 79
    :cond_1
    return-object v2

    .line 64
    :cond_2
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v2, v0

    goto :goto_0

    .line 75
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    .line 76
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move-object v2, v0

    goto :goto_0
.end method

.method public static upload(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6

    .prologue
    .line 145
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 146
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-nez v1, :cond_1

    .line 148
    :cond_0
    const/4 v0, -0x2

    .line 176
    :goto_0
    return v0

    .line 150
    :cond_1
    invoke-static {p0}, Lcom/ximalaya/ting/android/opensdk/util/HttpUrlUtil;->getHttpURLConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v1

    .line 151
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 152
    const-string v2, "POST"

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 153
    const/high16 v2, 0x8000000

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    .line 154
    const-string v2, "connection"

    const-string v3, "Keep-Alive"

    invoke-virtual {v1, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const-string v2, "Charset"

    const-string v3, "UTF-8"

    invoke-virtual {v1, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string v2, "Content-Type"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "multipart/form-data;file="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const-string v2, "filename"

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string v2, "Content-Length"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 161
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 162
    const/16 v0, 0x2000

    new-array v0, v0, [B

    .line 164
    :goto_1
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    if-gtz v3, :cond_2

    .line 168
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 169
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 170
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 176
    :goto_2
    const/4 v0, -0x1

    goto :goto_0

    .line 166
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 172
    :catch_0
    move-exception v0

    .line 174
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method
