.class final Lcom/ushaqi/zhuishushenqi/download/d;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/download/a;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/download/a;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/download/d;->a:Lcom/ushaqi/zhuishushenqi/download/a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 170
    .line 173
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    sget-object v0, Lcom/ushaqi/zhuishushenqi/download/e;->b:Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    :try_start_1
    new-instance v0, Ljava/net/URL;

    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/download/d;->a:Lcom/ushaqi/zhuishushenqi/download/a;

    invoke-static {v4}, Lcom/ushaqi/zhuishushenqi/download/a;->g(Lcom/ushaqi/zhuishushenqi/download/a;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 175
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 176
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 177
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v4

    .line 179
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 180
    const/16 v0, 0x400

    new-array v5, v0, [B

    move v0, v3

    .line 182
    :cond_0
    invoke-virtual {v1, v5}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v6, -0x1

    if-eq v3, v6, :cond_1

    .line 183
    add-int/2addr v0, v3

    .line 184
    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6, v3}, Ljava/io/FileOutputStream;->write([BII)V

    .line 185
    if-ne v0, v4, :cond_0

    .line 186
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/download/d;->a:Lcom/ushaqi/zhuishushenqi/download/a;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/download/a;->f(Lcom/ushaqi/zhuishushenqi/download/a;)Landroid/os/Handler;

    move-result-object v0

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 195
    :cond_1
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 197
    if-eqz v1, :cond_2

    .line 198
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 203
    :cond_2
    :goto_0
    return-void

    .line 200
    :catch_0
    move-exception v0

    .line 201
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 190
    :catch_1
    move-exception v0

    move-object v2, v1

    .line 191
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 194
    if-eqz v2, :cond_3

    .line 195
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 197
    :cond_3
    if-eqz v1, :cond_2

    .line 198
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 200
    :catch_2
    move-exception v0

    .line 201
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 193
    :catchall_0
    move-exception v0

    move-object v2, v1

    .line 194
    :goto_2
    if-eqz v2, :cond_4

    .line 195
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 197
    :cond_4
    if-eqz v1, :cond_5

    .line 198
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 202
    :cond_5
    :goto_3
    throw v0

    .line 200
    :catch_3
    move-exception v1

    .line 201
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 193
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 190
    :catch_4
    move-exception v0

    goto :goto_1
.end method
