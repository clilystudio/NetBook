.class final Lcom/ushaqi/zhuishushenqi/util/B;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/util/A;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/util/A;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/util/B;->a:Lcom/ushaqi/zhuishushenqi/util/A;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    .prologue
    const/4 v1, 0x0

    const/high16 v14, 0x44800000

    .line 79
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Manhuadao_"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ".apk"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 81
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Manhuadao_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 83
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    .line 84
    const-string v4, "mounted"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 85
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/Manhuadao"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 86
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 88
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 90
    :cond_0
    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/util/B;->a:Lcom/ushaqi/zhuishushenqi/util/A;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/ushaqi/zhuishushenqi/util/A;->a(Lcom/ushaqi/zhuishushenqi/util/A;Ljava/lang/String;)Ljava/lang/String;

    .line 91
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/B;->a:Lcom/ushaqi/zhuishushenqi/util/A;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ushaqi/zhuishushenqi/util/A;->b(Lcom/ushaqi/zhuishushenqi/util/A;Ljava/lang/String;)Ljava/lang/String;

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/B;->a:Lcom/ushaqi/zhuishushenqi/util/A;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/util/A;->a(Lcom/ushaqi/zhuishushenqi/util/A;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/B;->a:Lcom/ushaqi/zhuishushenqi/util/A;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/util/A;->a(Lcom/ushaqi/zhuishushenqi/util/A;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 95
    :cond_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/B;->a:Lcom/ushaqi/zhuishushenqi/util/A;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/util/A;->b(Lcom/ushaqi/zhuishushenqi/util/A;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 144
    :goto_0
    return-void

    .line 98
    :cond_3
    new-instance v2, Ljava/io/File;

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/B;->a:Lcom/ushaqi/zhuishushenqi/util/A;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/util/A;->a(Lcom/ushaqi/zhuishushenqi/util/A;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 101
    new-instance v3, Ljava/io/File;

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/B;->a:Lcom/ushaqi/zhuishushenqi/util/A;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/util/A;->c(Lcom/ushaqi/zhuishushenqi/util/A;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 102
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 104
    const-string v0, "http://a.manhuadao.cn/ComicsIsland_zssq002.apk"

    .line 105
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 107
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 108
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v5

    .line 109
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    .line 112
    new-instance v7, Ljava/text/DecimalFormat;

    const-string v0, "0.00"

    invoke-direct {v7, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/B;->a:Lcom/ushaqi/zhuishushenqi/util/A;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    int-to-float v9, v5

    div-float/2addr v9, v14

    div-float/2addr v9, v14

    float-to-double v10, v9

    invoke-virtual {v7, v10, v11}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "MB"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/ushaqi/zhuishushenqi/util/A;->c(Lcom/ushaqi/zhuishushenqi/util/A;Ljava/lang/String;)Ljava/lang/String;

    .line 117
    const/16 v0, 0x400

    new-array v8, v0, [B

    move v0, v1

    .line 120
    :goto_1
    invoke-virtual {v6, v8}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 121
    add-int/2addr v0, v1

    .line 123
    iget-object v9, p0, Lcom/ushaqi/zhuishushenqi/util/B;->a:Lcom/ushaqi/zhuishushenqi/util/A;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    int-to-float v11, v0

    div-float/2addr v11, v14

    div-float/2addr v11, v14

    float-to-double v12, v11

    invoke-virtual {v7, v12, v13}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "MB"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/ushaqi/zhuishushenqi/util/A;->d(Lcom/ushaqi/zhuishushenqi/util/A;Ljava/lang/String;)Ljava/lang/String;

    .line 125
    iget-object v9, p0, Lcom/ushaqi/zhuishushenqi/util/B;->a:Lcom/ushaqi/zhuishushenqi/util/A;

    int-to-float v10, v0

    int-to-float v11, v5

    div-float/2addr v10, v11

    const/high16 v11, 0x42c80000

    mul-float/2addr v10, v11

    float-to-int v10, v10

    invoke-static {v9, v10}, Lcom/ushaqi/zhuishushenqi/util/A;->a(Lcom/ushaqi/zhuishushenqi/util/A;I)I

    .line 127
    iget-object v9, p0, Lcom/ushaqi/zhuishushenqi/util/B;->a:Lcom/ushaqi/zhuishushenqi/util/A;

    invoke-static {v9}, Lcom/ushaqi/zhuishushenqi/util/A;->b(Lcom/ushaqi/zhuishushenqi/util/A;)Landroid/os/Handler;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 129
    if-gtz v1, :cond_5

    .line 130
    invoke-virtual {v3, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 131
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/B;->a:Lcom/ushaqi/zhuishushenqi/util/A;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/util/A;->b(Lcom/ushaqi/zhuishushenqi/util/A;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 137
    :cond_4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 138
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 139
    :catch_0
    move-exception v0

    .line 140
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto/16 :goto_0

    .line 135
    :cond_5
    const/4 v9, 0x0

    :try_start_1
    invoke-virtual {v4, v8, v9, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 141
    :catch_1
    move-exception v0

    .line 142
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method
