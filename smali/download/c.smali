.class final Lcom/ushaqi/zhuishushenqi/download/c;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/download/a;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/download/a;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/download/c;->a:Lcom/ushaqi/zhuishushenqi/download/a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 125
    .line 128
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/download/c;->a:Lcom/ushaqi/zhuishushenqi/download/a;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/download/a;->c(Lcom/ushaqi/zhuishushenqi/download/a;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 130
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 132
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/download/c;->a:Lcom/ushaqi/zhuishushenqi/download/a;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/download/a;->c(Lcom/ushaqi/zhuishushenqi/download/a;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/download/c;->a:Lcom/ushaqi/zhuishushenqi/download/a;

    invoke-static {v4}, Lcom/ushaqi/zhuishushenqi/download/a;->d(Lcom/ushaqi/zhuishushenqi/download/a;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    :try_start_1
    new-instance v0, Ljava/net/URL;

    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/download/c;->a:Lcom/ushaqi/zhuishushenqi/download/a;

    invoke-static {v4}, Lcom/ushaqi/zhuishushenqi/download/a;->e(Lcom/ushaqi/zhuishushenqi/download/a;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 135
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 136
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 137
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v4

    .line 139
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 140
    const/16 v0, 0x400

    new-array v5, v0, [B

    move v0, v3

    .line 142
    :cond_1
    invoke-virtual {v1, v5}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v6, -0x1

    if-eq v3, v6, :cond_2

    .line 143
    add-int/2addr v0, v3

    .line 144
    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6, v3}, Ljava/io/FileOutputStream;->write([BII)V

    .line 145
    if-ne v0, v4, :cond_1

    .line 146
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/download/c;->a:Lcom/ushaqi/zhuishushenqi/download/a;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/download/a;->f(Lcom/ushaqi/zhuishushenqi/download/a;)Landroid/os/Handler;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 155
    :cond_2
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 157
    if-eqz v1, :cond_3

    .line 158
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 163
    :cond_3
    :goto_0
    return-void

    .line 160
    :catch_0
    move-exception v0

    .line 161
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 150
    :catch_1
    move-exception v0

    move-object v2, v1

    .line 151
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 154
    if-eqz v2, :cond_4

    .line 155
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 157
    :cond_4
    if-eqz v1, :cond_3

    .line 158
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 160
    :catch_2
    move-exception v0

    .line 161
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 153
    :catchall_0
    move-exception v0

    move-object v2, v1

    .line 154
    :goto_2
    if-eqz v2, :cond_5

    .line 155
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 157
    :cond_5
    if-eqz v1, :cond_6

    .line 158
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 162
    :cond_6
    :goto_3
    throw v0

    .line 160
    :catch_3
    move-exception v1

    .line 161
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 153
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 150
    :catch_4
    move-exception v0

    goto :goto_1
.end method
