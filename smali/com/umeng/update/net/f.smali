.class final Lcom/umeng/update/net/f;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Z

.field private c:Ljava/io/File;

.field private d:I

.field private e:J

.field private f:J

.field private g:I

.field private h:I

.field private i:Lcom/umeng/update/net/e;

.field private j:Lcom/umeng/update/net/k;

.field private synthetic k:Lcom/umeng/update/net/DownloadingService;


# direct methods
.method public constructor <init>(Lcom/umeng/update/net/DownloadingService;Landroid/content/Context;Lcom/umeng/update/net/k;IILcom/umeng/update/net/e;)V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 642
    iput-object p1, p0, Lcom/umeng/update/net/f;->k:Lcom/umeng/update/net/DownloadingService;

    .line 640
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 630
    iput v0, p0, Lcom/umeng/update/net/f;->d:I

    .line 631
    iput-wide v4, p0, Lcom/umeng/update/net/f;->e:J

    .line 632
    iput-wide v4, p0, Lcom/umeng/update/net/f;->f:J

    .line 633
    const/4 v0, -0x1

    iput v0, p0, Lcom/umeng/update/net/f;->g:I

    .line 644
    :try_start_0
    iput-object p2, p0, Lcom/umeng/update/net/f;->a:Landroid/content/Context;

    .line 645
    iput-object p3, p0, Lcom/umeng/update/net/f;->j:Lcom/umeng/update/net/k;

    .line 646
    iput p5, p0, Lcom/umeng/update/net/f;->d:I

    .line 648
    invoke-static {}, Lcom/umeng/update/net/DownloadingService;->b()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 649
    invoke-static {}, Lcom/umeng/update/net/DownloadingService;->b()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/update/net/s;

    .line 650
    iget-object v0, v0, Lcom/umeng/update/net/s;->e:[J

    .line 651
    if-eqz v0, :cond_0

    array-length v1, v0

    if-le v1, v2, :cond_0

    .line 652
    const/4 v1, 0x0

    aget-wide v2, v0, v1

    iput-wide v2, p0, Lcom/umeng/update/net/f;->e:J

    .line 653
    const/4 v1, 0x1

    aget-wide v0, v0, v1

    iput-wide v0, p0, Lcom/umeng/update/net/f;->f:J

    .line 657
    :cond_0
    iput-object p6, p0, Lcom/umeng/update/net/f;->i:Lcom/umeng/update/net/e;

    .line 658
    iput p4, p0, Lcom/umeng/update/net/f;->h:I

    .line 660
    const/4 v0, 0x1

    new-array v0, v0, [Z

    .line 661
    const-string v1, "/apk"

    invoke-static {v1, p2, v0}, Lcom/umeng/update/net/w;->a(Ljava/lang/String;Landroid/content/Context;[Z)Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lcom/umeng/update/net/f;->c:Ljava/io/File;

    .line 662
    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    iput-boolean v0, p0, Lcom/umeng/update/net/f;->b:Z

    .line 663
    iget-boolean v0, p0, Lcom/umeng/update/net/f;->b:Z

    if-eqz v0, :cond_2

    const-wide/32 v0, 0x6400000

    .line 665
    :goto_0
    iget-object v2, p0, Lcom/umeng/update/net/f;->c:Ljava/io/File;

    const-wide/32 v4, 0xf731400

    invoke-static {v2, v0, v1, v4, v5}, Lcom/umeng/update/net/w;->a(Ljava/io/File;JJ)V

    .line 1955
    iget-object v0, p0, Lcom/umeng/update/net/f;->j:Lcom/umeng/update/net/k;

    iget-object v0, v0, Lcom/umeng/update/net/k;->e:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 1956
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/umeng/update/net/f;->j:Lcom/umeng/update/net/k;

    iget-object v1, v1, Lcom/umeng/update/net/k;->e:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".apk.tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1960
    :goto_1
    iget-object v1, p0, Lcom/umeng/update/net/f;->j:Lcom/umeng/update/net/k;

    iget-object v1, v1, Lcom/umeng/update/net/k;->a:Ljava/lang/String;

    const-string v2, "delta_update"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1961
    const-string v1, ".apk"

    const-string v2, ".patch"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 667
    :cond_1
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/umeng/update/net/f;->c:Ljava/io/File;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/umeng/update/net/f;->c:Ljava/io/File;

    .line 674
    :goto_2
    return-void

    .line 664
    :cond_2
    const-wide/32 v0, 0xa00000

    goto :goto_0

    .line 1958
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/umeng/update/net/f;->j:Lcom/umeng/update/net/k;

    iget-object v1, v1, Lcom/umeng/update/net/k;->c:Ljava/lang/String;

    invoke-static {v1}, Lu/a/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".apk.tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    .line 670
    :catch_0
    move-exception v0

    .line 671
    invoke-static {}, Lcom/umeng/update/net/DownloadingService;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lu/a/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 672
    iget-object v0, p0, Lcom/umeng/update/net/f;->i:Lcom/umeng/update/net/e;

    iget v1, p0, Lcom/umeng/update/net/f;->h:I

    invoke-interface {v0, v1}, Lcom/umeng/update/net/e;->b(I)V

    goto :goto_2
.end method

.method static synthetic a(Lcom/umeng/update/net/f;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 627
    iget-object v0, p0, Lcom/umeng/update/net/f;->a:Landroid/content/Context;

    return-object v0
.end method

.method private a(Ljava/lang/Exception;)V
    .locals 8

    .prologue
    .line 1042
    invoke-static {}, Lcom/umeng/update/net/DownloadingService;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "can not install. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lu/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1043
    iget-object v0, p0, Lcom/umeng/update/net/f;->i:Lcom/umeng/update/net/e;

    if-eqz v0, :cond_0

    .line 1044
    iget-object v0, p0, Lcom/umeng/update/net/f;->i:Lcom/umeng/update/net/e;

    iget v1, p0, Lcom/umeng/update/net/f;->h:I

    invoke-interface {v0, v1}, Lcom/umeng/update/net/e;->b(I)V

    .line 1047
    :cond_0
    iget-object v0, p0, Lcom/umeng/update/net/f;->k:Lcom/umeng/update/net/DownloadingService;

    invoke-static {v0}, Lcom/umeng/update/net/DownloadingService;->a(Lcom/umeng/update/net/DownloadingService;)Lcom/umeng/update/net/p;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/update/net/f;->j:Lcom/umeng/update/net/k;

    iget-wide v2, p0, Lcom/umeng/update/net/f;->e:J

    iget-wide v4, p0, Lcom/umeng/update/net/f;->f:J

    .line 1048
    iget v6, p0, Lcom/umeng/update/net/f;->d:I

    int-to-long v6, v6

    .line 1047
    invoke-virtual/range {v0 .. v7}, Lcom/umeng/update/net/p;->a(Lcom/umeng/update/net/k;JJJ)V

    .line 1049
    return-void
.end method

.method private a(Z)V
    .locals 12

    .prologue
    .line 708
    iget-object v0, p0, Lcom/umeng/update/net/f;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 709
    const/4 v3, 0x0

    .line 710
    const/4 v2, 0x0

    .line 712
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lcom/umeng/update/net/f;->c:Ljava/io/File;

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_22
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1e
    .catchall {:try_start_0 .. :try_end_0} :catchall_9

    .line 713
    :try_start_1
    iget-boolean v2, p0, Lcom/umeng/update/net/f;->b:Z

    if-nez v2, :cond_24

    .line 715
    iget-object v2, p0, Lcom/umeng/update/net/f;->c:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x3

    .line 714
    invoke-static {v2, v4}, Lcom/umeng/update/net/w;->b(Ljava/lang/String;I)Z

    move-result v2

    .line 716
    if-nez v2, :cond_24

    .line 717
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 718
    iget-object v2, p0, Lcom/umeng/update/net/f;->a:Landroid/content/Context;

    .line 719
    const v4, 0x8003

    .line 718
    invoke-virtual {v2, v0, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_23
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1f
    .catchall {:try_start_1 .. :try_end_1} :catchall_a

    move-result-object v1

    .line 722
    :try_start_2
    iget-object v2, p0, Lcom/umeng/update/net/f;->a:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/update/net/f;->c:Ljava/io/File;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_24
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_20
    .catchall {:try_start_2 .. :try_end_2} :catchall_b

    move-object v8, v1

    .line 725
    :goto_0
    :try_start_3
    invoke-static {}, Lcom/umeng/update/net/DownloadingService;->a()Ljava/lang/String;

    move-result-object v0

    .line 726
    const-string v1, "saveAPK: url = %1$15s\t|\tfilename = %2$15s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 727
    iget-object v5, p0, Lcom/umeng/update/net/f;->j:Lcom/umeng/update/net/k;

    iget-object v5, v5, Lcom/umeng/update/net/k;->c:Ljava/lang/String;

    aput-object v5, v2, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/umeng/update/net/f;->c:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    .line 725
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lu/a/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/umeng/update/net/f;->j:Lcom/umeng/update/net/k;

    iget-object v1, v1, Lcom/umeng/update/net/k;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 730
    iget-object v1, p0, Lcom/umeng/update/net/f;->c:Ljava/io/File;

    .line 2936
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 2937
    const-string v2, "GET"

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 2938
    const-string v2, "Accept-Encoding"

    const-string v4, "identity"

    invoke-virtual {v0, v2, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2939
    const-string v2, "Connection"

    const-string v4, "keep-alive"

    invoke-virtual {v0, v2, v4}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2940
    const/16 v2, 0x1388

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 2941
    const/16 v2, 0x2710

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 2942
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-lez v2, :cond_0

    .line 2944
    invoke-static {}, Lcom/umeng/update/net/DownloadingService;->a()Ljava/lang/String;

    move-result-object v2

    .line 2945
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/umeng/update/net/f;->j:Lcom/umeng/update/net/k;

    iget-object v5, v5, Lcom/umeng/update/net/k;->b:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2946
    const-string v5, " getFileLength: %1$15s"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2945
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 2946
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    .line 2945
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 2944
    invoke-static {v2, v4}, Lu/a/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2947
    const-string v2, "Range"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "bytes="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "-"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    :cond_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 732
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_25
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_21
    .catchall {:try_start_3 .. :try_end_3} :catchall_c

    move-result-object v9

    .line 734
    if-nez p1, :cond_2

    .line 735
    const-wide/16 v2, 0x0

    .line 736
    :try_start_4
    iget-object v1, p0, Lcom/umeng/update/net/f;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/umeng/update/net/f;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_1

    .line 737
    const-wide/16 v2, 0x0

    iget-object v1, p0, Lcom/umeng/update/net/f;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 739
    :cond_1
    iput-wide v2, p0, Lcom/umeng/update/net/f;->e:J

    .line 740
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v1

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/umeng/update/net/f;->f:J

    .line 741
    invoke-static {}, Lcom/umeng/update/net/DownloadingService;->a()Ljava/lang/String;

    move-result-object v1

    .line 742
    const-string v2, "getFileLength: %1$15s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-wide v6, p0, Lcom/umeng/update/net/f;->e:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 741
    invoke-static {v1, v2}, Lu/a/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    invoke-static {}, Lcom/umeng/update/net/DownloadingService;->a()Ljava/lang/String;

    move-result-object v1

    .line 744
    const-string v2, "getConnectionLength: %1$15s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 745
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    .line 744
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 743
    invoke-static {v1, v0}, Lu/a/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    invoke-static {}, Lcom/umeng/update/net/DownloadingService;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getContentLength: %1$15s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 747
    iget-wide v4, p0, Lcom/umeng/update/net/f;->f:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    .line 746
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lu/a/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    :cond_2
    const/16 v0, 0x1000

    new-array v4, v0, [B

    .line 751
    const/4 v0, 0x0

    .line 753
    const/4 v1, 0x1

    .line 755
    invoke-static {}, Lcom/umeng/update/net/DownloadingService;->a()Ljava/lang/String;

    move-result-object v2

    .line 756
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/umeng/update/net/f;->j:Lcom/umeng/update/net/k;

    iget-object v5, v5, Lcom/umeng/update/net/k;->b:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "saveAPK getContentLength "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 757
    iget-wide v6, p0, Lcom/umeng/update/net/f;->f:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 756
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 755
    invoke-static {v2, v3}, Lu/a/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    iget-object v2, p0, Lcom/umeng/update/net/f;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/update/net/m;->a(Landroid/content/Context;)Lcom/umeng/update/net/m;

    move-result-object v2

    .line 760
    iget-object v3, p0, Lcom/umeng/update/net/f;->j:Lcom/umeng/update/net/k;

    iget-object v3, v3, Lcom/umeng/update/net/k;->a:Ljava/lang/String;

    iget-object v5, p0, Lcom/umeng/update/net/f;->j:Lcom/umeng/update/net/k;

    iget-object v5, v5, Lcom/umeng/update/net/k;->c:Ljava/lang/String;

    .line 759
    invoke-virtual {v2, v3, v5}, Lcom/umeng/update/net/m;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 762
    :goto_1
    iget v2, p0, Lcom/umeng/update/net/f;->g:I

    if-gez v2, :cond_3

    invoke-virtual {v9, v4}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-gtz v2, :cond_6

    :cond_3
    move v0, v1

    .line 791
    :goto_2
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 792
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 794
    iget v1, p0, Lcom/umeng/update/net/f;->g:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_f

    .line 796
    invoke-static {}, Lcom/umeng/update/net/DownloadingService;->b()Landroid/util/SparseArray;

    move-result-object v0

    iget v1, p0, Lcom/umeng/update/net/f;->h:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/update/net/s;

    .line 797
    iget-object v1, v0, Lcom/umeng/update/net/s;->e:[J

    const/4 v2, 0x0

    iget-wide v4, p0, Lcom/umeng/update/net/f;->e:J

    aput-wide v4, v1, v2

    .line 798
    iget-object v1, v0, Lcom/umeng/update/net/s;->e:[J

    const/4 v2, 0x1

    iget-wide v4, p0, Lcom/umeng/update/net/f;->f:J

    aput-wide v4, v1, v2

    .line 799
    iget-object v0, v0, Lcom/umeng/update/net/s;->e:[J

    const/4 v1, 0x2

    iget v2, p0, Lcom/umeng/update/net/f;->d:I

    int-to-long v2, v2

    aput-wide v2, v0, v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 864
    if-eqz v9, :cond_4

    .line 865
    :try_start_5
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 870
    :cond_4
    if-eqz v8, :cond_5

    .line 871
    :try_start_6
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8

    .line 877
    :cond_5
    :goto_3
    return-void

    .line 763
    :cond_6
    const/4 v3, 0x0

    :try_start_7
    invoke-virtual {v8, v4, v3, v2}, Ljava/io/FileOutputStream;->write([BII)V

    .line 764
    iget-wide v6, p0, Lcom/umeng/update/net/f;->e:J

    int-to-long v2, v2

    add-long/2addr v2, v6

    iput-wide v2, p0, Lcom/umeng/update/net/f;->e:J

    .line 765
    add-int/lit8 v3, v0, 0x1

    rem-int/lit8 v0, v0, 0x32

    if-nez v0, :cond_c

    .line 766
    iget-object v0, p0, Lcom/umeng/update/net/f;->a:Landroid/content/Context;

    invoke-static {v0}, Lu/a/a;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 767
    const/4 v0, 0x0

    .line 768
    goto :goto_2

    .line 771
    :cond_7
    iget-object v0, p0, Lcom/umeng/update/net/f;->a:Landroid/content/Context;

    invoke-static {v0}, Lu/a/a;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 772
    iget-object v0, p0, Lcom/umeng/update/net/f;->j:Lcom/umeng/update/net/k;

    iget-boolean v0, v0, Lcom/umeng/update/net/k;->i:Z

    if-eqz v0, :cond_9

    .line 773
    invoke-static {}, Lcom/umeng/update/net/DownloadingService;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "no wifi"

    invoke-static {v0, v1}, Lu/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    new-instance v0, Ljava/io/IOException;

    const-string v1, "no wifi"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 830
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v2, v8

    move-object v3, v9

    .line 831
    :goto_4
    :try_start_8
    invoke-static {}, Lcom/umeng/update/net/DownloadingService;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v1}, Lu/a/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 832
    iget v0, p0, Lcom/umeng/update/net/f;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/umeng/update/net/f;->d:I

    const/4 v4, 0x3

    if-le v0, v4, :cond_1c

    .line 833
    iget-object v0, p0, Lcom/umeng/update/net/f;->j:Lcom/umeng/update/net/k;

    iget-boolean v0, v0, Lcom/umeng/update/net/k;->g:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    if-nez v0, :cond_1c

    .line 835
    :try_start_9
    invoke-static {}, Lcom/umeng/update/net/DownloadingService;->a()Ljava/lang/String;

    move-result-object v0

    const-string v4, "Download Fail out of max repeat count"

    invoke-static {v0, v4}, Lu/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    invoke-static {}, Lcom/umeng/update/net/DownloadingService;->c()Ljava/util/Map;

    move-result-object v0

    iget-object v4, p0, Lcom/umeng/update/net/f;->j:Lcom/umeng/update/net/k;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Messenger;

    .line 837
    const/4 v4, 0x0

    const/4 v5, 0x5

    .line 838
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 837
    invoke-static {v4, v5, v6, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v4

    .line 836
    invoke-virtual {v0, v4}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_f
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 842
    :try_start_a
    iget-object v0, p0, Lcom/umeng/update/net/f;->k:Lcom/umeng/update/net/DownloadingService;

    invoke-static {v0}, Lcom/umeng/update/net/DownloadingService;->a(Lcom/umeng/update/net/DownloadingService;)Lcom/umeng/update/net/p;

    move-result-object v0

    iget-object v4, p0, Lcom/umeng/update/net/f;->a:Landroid/content/Context;

    iget v5, p0, Lcom/umeng/update/net/f;->h:I

    invoke-virtual {v0, v4, v5}, Lcom/umeng/update/net/p;->a(Landroid/content/Context;I)V

    .line 843
    invoke-direct {p0, v1}, Lcom/umeng/update/net/f;->a(Ljava/lang/Exception;)V

    .line 844
    iget-object v0, p0, Lcom/umeng/update/net/f;->k:Lcom/umeng/update/net/DownloadingService;

    invoke-static {v0}, Lcom/umeng/update/net/DownloadingService;->d(Lcom/umeng/update/net/DownloadingService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/umeng/update/net/g;

    invoke-direct {v1, p0}, Lcom/umeng/update/net/g;-><init>(Lcom/umeng/update/net/f;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 864
    :goto_5
    if-eqz v3, :cond_8

    .line 865
    :try_start_b
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_11
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 870
    :cond_8
    if-eqz v2, :cond_5

    .line 871
    :try_start_c
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1

    goto/16 :goto_3

    .line 872
    :catch_1
    move-exception v0

    .line 873
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 777
    :cond_9
    :try_start_d
    iget-wide v6, p0, Lcom/umeng/update/net/f;->e:J

    long-to-float v0, v6

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v0, v2

    iget-wide v6, p0, Lcom/umeng/update/net/f;->f:J

    long-to-float v2, v6

    div-float/2addr v0, v2

    float-to-int v0, v0

    .line 778
    const/16 v2, 0x64

    if-le v0, v2, :cond_23

    .line 779
    const/16 v0, 0x63

    move v2, v0

    .line 781
    :goto_6
    iget-object v0, p0, Lcom/umeng/update/net/f;->i:Lcom/umeng/update/net/e;

    if-eqz v0, :cond_a

    .line 782
    iget-object v0, p0, Lcom/umeng/update/net/f;->i:Lcom/umeng/update/net/e;

    iget v5, p0, Lcom/umeng/update/net/f;->h:I

    invoke-interface {v0, v5, v2}, Lcom/umeng/update/net/e;->a(II)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 3921
    :cond_a
    :try_start_e
    invoke-static {}, Lcom/umeng/update/net/DownloadingService;->c()Ljava/util/Map;

    move-result-object v0

    iget-object v5, p0, Lcom/umeng/update/net/f;->j:Lcom/umeng/update/net/k;

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 3922
    invoke-static {}, Lcom/umeng/update/net/DownloadingService;->c()Ljava/util/Map;

    move-result-object v0

    iget-object v5, p0, Lcom/umeng/update/net/f;->j:Lcom/umeng/update/net/k;

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Messenger;

    .line 3923
    const/4 v5, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static {v5, v6, v2, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v5

    .line 3922
    invoke-virtual {v0, v5}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_e
    .catch Landroid/os/DeadObjectException; {:try_start_e .. :try_end_e} :catch_2
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 786
    :cond_b
    :goto_7
    :try_start_f
    iget-object v0, p0, Lcom/umeng/update/net/f;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/update/net/m;->a(Landroid/content/Context;)Lcom/umeng/update/net/m;

    move-result-object v0

    .line 787
    iget-object v5, p0, Lcom/umeng/update/net/f;->j:Lcom/umeng/update/net/k;

    iget-object v5, v5, Lcom/umeng/update/net/k;->a:Ljava/lang/String;

    .line 788
    iget-object v6, p0, Lcom/umeng/update/net/f;->j:Lcom/umeng/update/net/k;

    iget-object v6, v6, Lcom/umeng/update/net/k;->c:Ljava/lang/String;

    .line 786
    invoke-virtual {v0, v5, v6, v2}, Lcom/umeng/update/net/m;->a(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_c
    move v0, v3

    goto/16 :goto_1

    .line 3926
    :catch_2
    move-exception v0

    invoke-static {}, Lcom/umeng/update/net/DownloadingService;->a()Ljava/lang/String;

    move-result-object v0

    .line 3928
    const-string v5, "Service Client for downloading %1$15s is dead. Removing messenger from the service"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 3929
    iget-object v10, p0, Lcom/umeng/update/net/f;->j:Lcom/umeng/update/net/k;

    iget-object v10, v10, Lcom/umeng/update/net/k;->b:Ljava/lang/String;

    aput-object v10, v6, v7

    .line 3927
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 3926
    invoke-static {v0, v5}, Lu/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3930
    invoke-static {}, Lcom/umeng/update/net/DownloadingService;->c()Ljava/util/Map;

    move-result-object v0

    iget-object v5, p0, Lcom/umeng/update/net/f;->j:Lcom/umeng/update/net/k;

    const/4 v6, 0x0

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_3
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    goto :goto_7

    .line 859
    :catch_3
    move-exception v0

    .line 860
    :goto_8
    :try_start_10
    iget-object v1, p0, Lcom/umeng/update/net/f;->k:Lcom/umeng/update/net/DownloadingService;

    invoke-static {v1}, Lcom/umeng/update/net/DownloadingService;->a(Lcom/umeng/update/net/DownloadingService;)Lcom/umeng/update/net/p;

    move-result-object v1

    iget-object v2, p0, Lcom/umeng/update/net/f;->a:Landroid/content/Context;

    iget v3, p0, Lcom/umeng/update/net/f;->h:I

    invoke-virtual {v1, v2, v3}, Lcom/umeng/update/net/p;->a(Landroid/content/Context;I)V

    .line 861
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 864
    if-eqz v9, :cond_d

    .line 865
    :try_start_11
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_14
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    .line 870
    :cond_d
    if-eqz v8, :cond_5

    .line 871
    :try_start_12
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_4

    goto/16 :goto_3

    .line 872
    :catch_4
    move-exception v0

    .line 873
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 866
    :catch_5
    move-exception v0

    .line 867
    :try_start_13
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 870
    if-eqz v8, :cond_5

    .line 871
    :try_start_14
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_6

    goto/16 :goto_3

    .line 872
    :catch_6
    move-exception v0

    .line 873
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 868
    :catchall_0
    move-exception v0

    .line 870
    if-eqz v8, :cond_e

    .line 871
    :try_start_15
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_7

    .line 875
    :cond_e
    :goto_9
    throw v0

    .line 872
    :catch_7
    move-exception v1

    .line 873
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 872
    :catch_8
    move-exception v0

    .line 873
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 801
    :cond_f
    :try_start_16
    iget v1, p0, Lcom/umeng/update/net/f;->g:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_12

    .line 803
    iget-object v0, p0, Lcom/umeng/update/net/f;->k:Lcom/umeng/update/net/DownloadingService;

    invoke-static {v0}, Lcom/umeng/update/net/DownloadingService;->a(Lcom/umeng/update/net/DownloadingService;)Lcom/umeng/update/net/p;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/update/net/f;->j:Lcom/umeng/update/net/k;

    iget-wide v2, p0, Lcom/umeng/update/net/f;->e:J

    .line 804
    iget-wide v4, p0, Lcom/umeng/update/net/f;->f:J

    iget v6, p0, Lcom/umeng/update/net/f;->d:I

    int-to-long v6, v6

    .line 803
    invoke-virtual/range {v0 .. v7}, Lcom/umeng/update/net/p;->a(Lcom/umeng/update/net/k;JJJ)V

    .line 805
    iget-object v0, p0, Lcom/umeng/update/net/f;->k:Lcom/umeng/update/net/DownloadingService;

    invoke-static {v0}, Lcom/umeng/update/net/DownloadingService;->c(Lcom/umeng/update/net/DownloadingService;)Landroid/app/NotificationManager;

    move-result-object v0

    iget v1, p0, Lcom/umeng/update/net/f;->h:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_16} :catch_3
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    .line 864
    if-eqz v9, :cond_10

    .line 865
    :try_start_17
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_a
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    .line 870
    :cond_10
    if-eqz v8, :cond_5

    .line 871
    :try_start_18
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_9

    goto/16 :goto_3

    .line 872
    :catch_9
    move-exception v0

    .line 873
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 866
    :catch_a
    move-exception v0

    .line 867
    :try_start_19
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_1

    .line 870
    if-eqz v8, :cond_5

    .line 871
    :try_start_1a
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_b

    goto/16 :goto_3

    .line 872
    :catch_b
    move-exception v0

    .line 873
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 868
    :catchall_1
    move-exception v0

    .line 870
    if-eqz v8, :cond_11

    .line 871
    :try_start_1b
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_c

    .line 875
    :cond_11
    :goto_a
    throw v0

    .line 872
    :catch_c
    move-exception v1

    .line 873
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 809
    :cond_12
    if-nez v0, :cond_15

    .line 810
    :try_start_1c
    invoke-static {}, Lcom/umeng/update/net/DownloadingService;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Download Fail repeat count="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/umeng/update/net/f;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lu/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    invoke-static {}, Lcom/umeng/update/net/DownloadingService;->c()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/update/net/f;->j:Lcom/umeng/update/net/k;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Messenger;

    .line 812
    const/4 v1, 0x0

    const/4 v2, 0x5

    .line 813
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 812
    invoke-static {v1, v2, v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    .line 811
    invoke-virtual {v0, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 814
    iget-object v0, p0, Lcom/umeng/update/net/f;->k:Lcom/umeng/update/net/DownloadingService;

    invoke-static {v0}, Lcom/umeng/update/net/DownloadingService;->a(Lcom/umeng/update/net/DownloadingService;)Lcom/umeng/update/net/p;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/update/net/f;->a:Landroid/content/Context;

    iget v2, p0, Lcom/umeng/update/net/f;->h:I

    invoke-virtual {v0, v1, v2}, Lcom/umeng/update/net/p;->a(Landroid/content/Context;I)V

    .line 815
    iget-object v0, p0, Lcom/umeng/update/net/f;->i:Lcom/umeng/update/net/e;

    if-eqz v0, :cond_13

    .line 816
    iget-object v0, p0, Lcom/umeng/update/net/f;->i:Lcom/umeng/update/net/e;

    iget v1, p0, Lcom/umeng/update/net/f;->h:I

    invoke-interface {v0, v1}, Lcom/umeng/update/net/e;->b(I)V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_1c} :catch_3
    .catchall {:try_start_1c .. :try_end_1c} :catchall_2

    .line 864
    :cond_13
    :goto_b
    if-eqz v9, :cond_14

    .line 865
    :try_start_1d
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_1b
    .catchall {:try_start_1d .. :try_end_1d} :catchall_8

    .line 870
    :cond_14
    if-eqz v8, :cond_5

    .line 871
    :try_start_1e
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_d

    goto/16 :goto_3

    .line 872
    :catch_d
    move-exception v0

    .line 873
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 3968
    :cond_15
    :try_start_1f
    iget-object v0, p0, Lcom/umeng/update/net/f;->j:Lcom/umeng/update/net/k;

    iget-object v0, v0, Lcom/umeng/update/net/k;->f:[Ljava/lang/String;

    if-eqz v0, :cond_16

    .line 3969
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3970
    const-string v1, "dsize"

    iget-wide v2, p0, Lcom/umeng/update/net/f;->f:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3972
    invoke-static {}, Lu/a/g;->a()Ljava/lang/String;

    move-result-object v1

    .line 3974
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    .line 3975
    const-string v2, "dtime"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3977
    const-string v1, "ptimes"

    iget v2, p0, Lcom/umeng/update/net/f;->d:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3979
    iget-object v1, p0, Lcom/umeng/update/net/f;->k:Lcom/umeng/update/net/DownloadingService;

    invoke-static {v1}, Lcom/umeng/update/net/DownloadingService;->a(Lcom/umeng/update/net/DownloadingService;)Lcom/umeng/update/net/p;

    move-result-object v1

    const/4 v2, 0x1

    .line 3980
    iget-object v3, p0, Lcom/umeng/update/net/f;->j:Lcom/umeng/update/net/k;

    iget-object v3, v3, Lcom/umeng/update/net/k;->f:[Ljava/lang/String;

    .line 3979
    invoke-virtual {v1, v0, v2, v3}, Lcom/umeng/update/net/p;->a(Ljava/util/Map;Z[Ljava/lang/String;)V

    .line 821
    :cond_16
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/umeng/update/net/f;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/umeng/update/net/f;->c:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 822
    const-string v3, ".tmp"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 821
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    iget-object v1, p0, Lcom/umeng/update/net/f;->c:Ljava/io/File;

    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 824
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 3987
    invoke-static {}, Lcom/umeng/update/net/DownloadingService;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "itemMd5 "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/umeng/update/net/f;->j:Lcom/umeng/update/net/k;

    iget-object v4, v4, Lcom/umeng/update/net/k;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lu/a/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 3988
    invoke-static {}, Lcom/umeng/update/net/DownloadingService;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "fileMd5 "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lu/a/g;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lu/a/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 3989
    iget-object v2, p0, Lcom/umeng/update/net/f;->j:Lcom/umeng/update/net/k;

    iget-object v2, v2, Lcom/umeng/update/net/k;->d:Ljava/lang/String;

    if-eqz v2, :cond_18

    .line 3990
    iget-object v2, p0, Lcom/umeng/update/net/f;->j:Lcom/umeng/update/net/k;

    iget-object v2, v2, Lcom/umeng/update/net/k;->d:Ljava/lang/String;

    .line 3991
    invoke-static {v0}, Lu/a/g;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 3990
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 3991
    if-nez v0, :cond_18

    .line 3992
    iget-object v0, p0, Lcom/umeng/update/net/f;->j:Lcom/umeng/update/net/k;

    iget-object v0, v0, Lcom/umeng/update/net/k;->a:Ljava/lang/String;

    .line 3993
    const-string v2, "delta_update"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 3994
    iget-object v0, p0, Lcom/umeng/update/net/f;->k:Lcom/umeng/update/net/DownloadingService;

    invoke-static {v0}, Lcom/umeng/update/net/DownloadingService;->c(Lcom/umeng/update/net/DownloadingService;)Landroid/app/NotificationManager;

    move-result-object v0

    iget v2, p0, Lcom/umeng/update/net/f;->h:I

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 3995
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3996
    const-string v2, "filename"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3998
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 3999
    const/4 v3, 0x5

    iput v3, v2, Landroid/os/Message;->what:I

    .line 4000
    const/4 v3, 0x3

    iput v3, v2, Landroid/os/Message;->arg1:I

    .line 4001
    iget v3, p0, Lcom/umeng/update/net/f;->h:I

    iput v3, v2, Landroid/os/Message;->arg2:I

    .line 4002
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_1f} :catch_3
    .catchall {:try_start_1f .. :try_end_1f} :catchall_2

    .line 4005
    :try_start_20
    invoke-static {}, Lcom/umeng/update/net/DownloadingService;->c()Ljava/util/Map;

    move-result-object v0

    iget-object v3, p0, Lcom/umeng/update/net/f;->j:Lcom/umeng/update/net/k;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 4006
    invoke-static {}, Lcom/umeng/update/net/DownloadingService;->c()Ljava/util/Map;

    move-result-object v0

    iget-object v3, p0, Lcom/umeng/update/net/f;->j:Lcom/umeng/update/net/k;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Messenger;

    invoke-virtual {v0, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 4008
    :cond_17
    iget-object v0, p0, Lcom/umeng/update/net/f;->k:Lcom/umeng/update/net/DownloadingService;

    invoke-static {v0}, Lcom/umeng/update/net/DownloadingService;->a(Lcom/umeng/update/net/DownloadingService;)Lcom/umeng/update/net/p;

    move-result-object v0

    iget-object v2, p0, Lcom/umeng/update/net/f;->a:Landroid/content/Context;

    iget v3, p0, Lcom/umeng/update/net/f;->h:I

    invoke-virtual {v0, v2, v3}, Lcom/umeng/update/net/p;->a(Landroid/content/Context;I)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_20} :catch_e
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_0
    .catchall {:try_start_20 .. :try_end_20} :catchall_2

    .line 827
    :cond_18
    :goto_c
    :try_start_21
    iget-object v0, p0, Lcom/umeng/update/net/f;->i:Lcom/umeng/update/net/e;

    if-eqz v0, :cond_13

    .line 828
    iget-object v0, p0, Lcom/umeng/update/net/f;->i:Lcom/umeng/update/net/e;

    iget v2, p0, Lcom/umeng/update/net/f;->h:I

    invoke-interface {v0, v2, v1}, Lcom/umeng/update/net/e;->a(ILjava/lang/String;)V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_21} :catch_3
    .catchall {:try_start_21 .. :try_end_21} :catchall_2

    goto/16 :goto_b

    .line 862
    :catchall_2
    move-exception v0

    .line 864
    :goto_d
    if-eqz v9, :cond_19

    .line 865
    :try_start_22
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_17
    .catchall {:try_start_22 .. :try_end_22} :catchall_7

    .line 870
    :cond_19
    if-eqz v8, :cond_1a

    .line 871
    :try_start_23
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_23} :catch_1a

    .line 876
    :cond_1a
    :goto_e
    throw v0

    .line 4010
    :catch_e
    move-exception v0

    :try_start_24
    iget-object v0, p0, Lcom/umeng/update/net/f;->k:Lcom/umeng/update/net/DownloadingService;

    invoke-static {v0}, Lcom/umeng/update/net/DownloadingService;->a(Lcom/umeng/update/net/DownloadingService;)Lcom/umeng/update/net/p;

    move-result-object v0

    iget-object v2, p0, Lcom/umeng/update/net/f;->a:Landroid/content/Context;

    iget v3, p0, Lcom/umeng/update/net/f;->h:I

    invoke-virtual {v0, v2, v3}, Lcom/umeng/update/net/p;->a(Landroid/content/Context;I)V

    goto :goto_c

    .line 4014
    :cond_1b
    invoke-static {}, Lcom/umeng/update/net/DownloadingService;->c()Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/umeng/update/net/f;->j:Lcom/umeng/update/net/k;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Messenger;

    .line 4015
    const/4 v2, 0x0

    const/4 v3, 0x5

    .line 4016
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 4015
    invoke-static {v2, v3, v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v2

    .line 4014
    invoke-virtual {v0, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 4017
    iget-object v0, p0, Lcom/umeng/update/net/f;->j:Lcom/umeng/update/net/k;

    iget-boolean v0, v0, Lcom/umeng/update/net/k;->h:Z

    if-nez v0, :cond_18

    .line 4018
    iget-object v0, p0, Lcom/umeng/update/net/f;->k:Lcom/umeng/update/net/DownloadingService;

    invoke-static {v0}, Lcom/umeng/update/net/DownloadingService;->a(Lcom/umeng/update/net/DownloadingService;)Lcom/umeng/update/net/p;

    move-result-object v0

    iget-object v2, p0, Lcom/umeng/update/net/f;->a:Landroid/content/Context;

    iget v3, p0, Lcom/umeng/update/net/f;->h:I

    invoke-virtual {v0, v2, v3}, Lcom/umeng/update/net/p;->a(Landroid/content/Context;I)V

    .line 4019
    new-instance v0, Landroid/app/Notification;

    .line 4020
    const v2, 0x1080082

    .line 4021
    iget-object v3, p0, Lcom/umeng/update/net/f;->a:Landroid/content/Context;

    .line 4022
    iget-object v4, p0, Lcom/umeng/update/net/f;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/alipay/sdk/b/b;->h(Landroid/content/Context;)I

    move-result v4

    .line 4021
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 4023
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 4019
    invoke-direct {v0, v2, v3, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 4026
    iget-object v2, p0, Lcom/umeng/update/net/f;->a:Landroid/content/Context;

    const/4 v3, 0x0

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const/4 v5, 0x0

    .line 4025
    invoke-static {v2, v3, v4, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 4029
    iget-object v3, p0, Lcom/umeng/update/net/f;->a:Landroid/content/Context;

    .line 4030
    iget-object v4, p0, Lcom/umeng/update/net/f;->a:Landroid/content/Context;

    invoke-static {v4}, Lu/a/a;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 4031
    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/umeng/update/net/f;->j:Lcom/umeng/update/net/k;

    iget-object v6, v6, Lcom/umeng/update/net/k;->b:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4032
    iget-object v6, p0, Lcom/umeng/update/net/f;->a:Landroid/content/Context;

    .line 4033
    iget-object v7, p0, Lcom/umeng/update/net/f;->a:Landroid/content/Context;

    invoke-static {v7}, Lcom/alipay/sdk/b/b;->h(Landroid/content/Context;)I

    move-result v7

    .line 4032
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4031
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4028
    invoke-virtual {v0, v3, v4, v5, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 4035
    iget v2, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v0, Landroid/app/Notification;->flags:I

    .line 4036
    iget-object v2, p0, Lcom/umeng/update/net/f;->k:Lcom/umeng/update/net/DownloadingService;

    invoke-static {v2}, Lcom/umeng/update/net/DownloadingService;->c(Lcom/umeng/update/net/DownloadingService;)Landroid/app/NotificationManager;

    move-result-object v2

    iget v3, p0, Lcom/umeng/update/net/f;->h:I

    invoke-virtual {v2, v3, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_24} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_24} :catch_3
    .catchall {:try_start_24 .. :try_end_24} :catchall_2

    goto/16 :goto_c

    .line 839
    :catch_f
    move-exception v0

    .line 840
    :try_start_25
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_4

    .line 842
    :try_start_26
    iget-object v0, p0, Lcom/umeng/update/net/f;->k:Lcom/umeng/update/net/DownloadingService;

    invoke-static {v0}, Lcom/umeng/update/net/DownloadingService;->a(Lcom/umeng/update/net/DownloadingService;)Lcom/umeng/update/net/p;

    move-result-object v0

    iget-object v4, p0, Lcom/umeng/update/net/f;->a:Landroid/content/Context;

    iget v5, p0, Lcom/umeng/update/net/f;->h:I

    invoke-virtual {v0, v4, v5}, Lcom/umeng/update/net/p;->a(Landroid/content/Context;I)V

    .line 843
    invoke-direct {p0, v1}, Lcom/umeng/update/net/f;->a(Ljava/lang/Exception;)V

    .line 844
    iget-object v0, p0, Lcom/umeng/update/net/f;->k:Lcom/umeng/update/net/DownloadingService;

    invoke-static {v0}, Lcom/umeng/update/net/DownloadingService;->d(Lcom/umeng/update/net/DownloadingService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/umeng/update/net/g;

    invoke-direct {v1, p0}, Lcom/umeng/update/net/g;-><init>(Lcom/umeng/update/net/f;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_5

    .line 862
    :catchall_3
    move-exception v0

    move-object v8, v2

    move-object v9, v3

    goto/16 :goto_d

    .line 841
    :catchall_4
    move-exception v0

    .line 842
    iget-object v4, p0, Lcom/umeng/update/net/f;->k:Lcom/umeng/update/net/DownloadingService;

    invoke-static {v4}, Lcom/umeng/update/net/DownloadingService;->a(Lcom/umeng/update/net/DownloadingService;)Lcom/umeng/update/net/p;

    move-result-object v4

    iget-object v5, p0, Lcom/umeng/update/net/f;->a:Landroid/content/Context;

    iget v6, p0, Lcom/umeng/update/net/f;->h:I

    invoke-virtual {v4, v5, v6}, Lcom/umeng/update/net/p;->a(Landroid/content/Context;I)V

    .line 843
    invoke-direct {p0, v1}, Lcom/umeng/update/net/f;->a(Ljava/lang/Exception;)V

    .line 844
    iget-object v1, p0, Lcom/umeng/update/net/f;->k:Lcom/umeng/update/net/DownloadingService;

    invoke-static {v1}, Lcom/umeng/update/net/DownloadingService;->d(Lcom/umeng/update/net/DownloadingService;)Landroid/os/Handler;

    move-result-object v1

    new-instance v4, Lcom/umeng/update/net/g;

    invoke-direct {v4, p0}, Lcom/umeng/update/net/g;-><init>(Lcom/umeng/update/net/f;)V

    invoke-virtual {v1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 854
    throw v0

    .line 4881
    :cond_1c
    invoke-static {}, Lcom/umeng/update/net/DownloadingService;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "wait for repeating Test network repeat count="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4882
    iget v4, p0, Lcom/umeng/update/net/f;->d:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4881
    invoke-static {v0, v1}, Lu/a/b;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_3

    .line 4884
    :try_start_27
    iget-object v0, p0, Lcom/umeng/update/net/f;->j:Lcom/umeng/update/net/k;

    iget-boolean v0, v0, Lcom/umeng/update/net/k;->g:Z

    if-nez v0, :cond_1e

    .line 4885
    const-wide/16 v0, 0x1f40

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 4886
    iget-wide v0, p0, Lcom/umeng/update/net/f;->f:J

    const-wide/16 v4, 0x1

    cmp-long v0, v0, v4

    if-gez v0, :cond_1d

    .line 4887
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/umeng/update/net/f;->a(Z)V
    :try_end_27
    .catch Ljava/lang/InterruptedException; {:try_start_27 .. :try_end_27} :catch_10
    .catchall {:try_start_27 .. :try_end_27} :catchall_3

    goto/16 :goto_5

    .line 4911
    :catch_10
    move-exception v0

    .line 4912
    :try_start_28
    invoke-direct {p0, v0}, Lcom/umeng/update/net/f;->a(Ljava/lang/Exception;)V

    .line 4913
    iget-object v0, p0, Lcom/umeng/update/net/f;->k:Lcom/umeng/update/net/DownloadingService;

    invoke-static {v0}, Lcom/umeng/update/net/DownloadingService;->a(Lcom/umeng/update/net/DownloadingService;)Lcom/umeng/update/net/p;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/update/net/f;->a:Landroid/content/Context;

    iget v4, p0, Lcom/umeng/update/net/f;->h:I

    invoke-virtual {v0, v1, v4}, Lcom/umeng/update/net/p;->a(Landroid/content/Context;I)V
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_3

    goto/16 :goto_5

    .line 4889
    :cond_1d
    const/4 v0, 0x1

    :try_start_29
    invoke-direct {p0, v0}, Lcom/umeng/update/net/f;->a(Z)V

    goto/16 :goto_5

    .line 4892
    :cond_1e
    invoke-static {}, Lcom/umeng/update/net/DownloadingService;->b()Landroid/util/SparseArray;

    move-result-object v0

    iget v1, p0, Lcom/umeng/update/net/f;->h:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/update/net/s;

    .line 4893
    iget-object v1, v0, Lcom/umeng/update/net/s;->e:[J

    const/4 v4, 0x0

    iget-wide v6, p0, Lcom/umeng/update/net/f;->e:J

    aput-wide v6, v1, v4

    .line 4894
    iget-object v1, v0, Lcom/umeng/update/net/s;->e:[J

    const/4 v4, 0x1

    iget-wide v6, p0, Lcom/umeng/update/net/f;->f:J

    aput-wide v6, v1, v4

    .line 4895
    iget-object v0, v0, Lcom/umeng/update/net/s;->e:[J

    const/4 v1, 0x2

    iget v4, p0, Lcom/umeng/update/net/f;->d:I

    int-to-long v4, v4

    aput-wide v4, v0, v1

    .line 4899
    iget v0, p0, Lcom/umeng/update/net/f;->h:I

    const-string v1, "continue"

    .line 4898
    invoke-static {v0, v1}, Lcom/umeng/update/net/b;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4900
    new-instance v1, Landroid/content/Intent;

    iget-object v4, p0, Lcom/umeng/update/net/f;->a:Landroid/content/Context;

    .line 4901
    const-class v5, Lcom/umeng/update/net/DownloadingService;

    .line 4900
    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4902
    const-string v4, "com.umeng.broadcast.download.msg"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4903
    iget-object v0, p0, Lcom/umeng/update/net/f;->k:Lcom/umeng/update/net/DownloadingService;

    invoke-static {v0}, Lcom/umeng/update/net/DownloadingService;->a(Lcom/umeng/update/net/DownloadingService;)Lcom/umeng/update/net/p;

    move-result-object v0

    iget-object v4, p0, Lcom/umeng/update/net/f;->k:Lcom/umeng/update/net/DownloadingService;

    invoke-virtual {v0, v4, v1}, Lcom/umeng/update/net/p;->a(Lcom/umeng/update/net/DownloadingService;Landroid/content/Intent;)Z

    .line 4906
    iget-object v0, p0, Lcom/umeng/update/net/f;->k:Lcom/umeng/update/net/DownloadingService;

    iget-object v1, p0, Lcom/umeng/update/net/f;->a:Landroid/content/Context;

    .line 4907
    iget-object v4, p0, Lcom/umeng/update/net/f;->a:Landroid/content/Context;

    .line 5017
    invoke-static {v4}, Lu/a/c;->a(Landroid/content/Context;)Lu/a/c;

    move-result-object v4

    const-string v5, "umeng_common_info_interrupt"

    invoke-virtual {v4, v5}, Lu/a/c;->d(Ljava/lang/String;)I

    move-result v4

    .line 4906
    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/update/net/DownloadingService;->a(Lcom/umeng/update/net/DownloadingService;Ljava/lang/String;)V

    .line 4908
    invoke-static {}, Lcom/umeng/update/net/DownloadingService;->a()Ljava/lang/String;

    move-result-object v0

    .line 4909
    const-string v1, "changed play state button on op-notification."

    .line 4908
    invoke-static {v0, v1}, Lu/a/b;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_29
    .catch Ljava/lang/InterruptedException; {:try_start_29 .. :try_end_29} :catch_10
    .catchall {:try_start_29 .. :try_end_29} :catchall_3

    goto/16 :goto_5

    .line 866
    :catch_11
    move-exception v0

    .line 867
    :try_start_2a
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_5

    .line 870
    if-eqz v2, :cond_5

    .line 871
    :try_start_2b
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2b} :catch_12

    goto/16 :goto_3

    .line 872
    :catch_12
    move-exception v0

    .line 873
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 868
    :catchall_5
    move-exception v0

    .line 870
    if-eqz v2, :cond_1f

    .line 871
    :try_start_2c
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2c} :catch_13

    .line 875
    :cond_1f
    :goto_f
    throw v0

    .line 872
    :catch_13
    move-exception v1

    .line 873
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_f

    .line 866
    :catch_14
    move-exception v0

    .line 867
    :try_start_2d
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_6

    .line 870
    if-eqz v8, :cond_5

    .line 871
    :try_start_2e
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_2e} :catch_15

    goto/16 :goto_3

    .line 872
    :catch_15
    move-exception v0

    .line 873
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 868
    :catchall_6
    move-exception v0

    .line 870
    if-eqz v8, :cond_20

    .line 871
    :try_start_2f
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_2f} :catch_16

    .line 875
    :cond_20
    :goto_10
    throw v0

    .line 872
    :catch_16
    move-exception v1

    .line 873
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_10

    .line 866
    :catch_17
    move-exception v1

    .line 867
    :try_start_30
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_7

    .line 870
    if-eqz v8, :cond_1a

    .line 871
    :try_start_31
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_31} :catch_18

    goto/16 :goto_e

    .line 872
    :catch_18
    move-exception v1

    .line 873
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_e

    .line 868
    :catchall_7
    move-exception v0

    .line 870
    if-eqz v8, :cond_21

    .line 871
    :try_start_32
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_32} :catch_19

    .line 875
    :cond_21
    :goto_11
    throw v0

    .line 872
    :catch_19
    move-exception v1

    .line 873
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_11

    .line 872
    :catch_1a
    move-exception v1

    .line 873
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_e

    .line 866
    :catch_1b
    move-exception v0

    .line 867
    :try_start_33
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_8

    .line 870
    if-eqz v8, :cond_5

    .line 871
    :try_start_34
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_34} :catch_1c

    goto/16 :goto_3

    .line 872
    :catch_1c
    move-exception v0

    .line 873
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 868
    :catchall_8
    move-exception v0

    .line 870
    if-eqz v8, :cond_22

    .line 871
    :try_start_35
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_35} :catch_1d

    .line 875
    :cond_22
    :goto_12
    throw v0

    .line 872
    :catch_1d
    move-exception v1

    .line 873
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_12

    .line 862
    :catchall_9
    move-exception v0

    move-object v8, v2

    move-object v9, v3

    goto/16 :goto_d

    :catchall_a
    move-exception v0

    move-object v8, v1

    move-object v9, v3

    goto/16 :goto_d

    :catchall_b
    move-exception v0

    move-object v8, v1

    move-object v9, v3

    goto/16 :goto_d

    :catchall_c
    move-exception v0

    move-object v9, v3

    goto/16 :goto_d

    .line 859
    :catch_1e
    move-exception v0

    move-object v8, v2

    move-object v9, v3

    goto/16 :goto_8

    :catch_1f
    move-exception v0

    move-object v8, v1

    move-object v9, v3

    goto/16 :goto_8

    :catch_20
    move-exception v0

    move-object v8, v1

    move-object v9, v3

    goto/16 :goto_8

    :catch_21
    move-exception v0

    move-object v9, v3

    goto/16 :goto_8

    .line 830
    :catch_22
    move-exception v0

    move-object v1, v0

    goto/16 :goto_4

    :catch_23
    move-exception v0

    move-object v2, v1

    move-object v1, v0

    goto/16 :goto_4

    :catch_24
    move-exception v0

    move-object v2, v1

    move-object v1, v0

    goto/16 :goto_4

    :catch_25
    move-exception v0

    move-object v1, v0

    move-object v2, v8

    goto/16 :goto_4

    :cond_23
    move v2, v0

    goto/16 :goto_6

    :cond_24
    move-object v8, v1

    goto/16 :goto_0
.end method

.method static synthetic b(Lcom/umeng/update/net/f;)Lcom/umeng/update/net/DownloadingService;
    .locals 1

    .prologue
    .line 626
    iget-object v0, p0, Lcom/umeng/update/net/f;->k:Lcom/umeng/update/net/DownloadingService;

    return-object v0
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    .prologue
    .line 702
    iput p1, p0, Lcom/umeng/update/net/f;->g:I

    .line 703
    return-void
.end method

.method public final run()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 677
    iput v0, p0, Lcom/umeng/update/net/f;->d:I

    .line 681
    :try_start_0
    iget-object v1, p0, Lcom/umeng/update/net/f;->i:Lcom/umeng/update/net/e;

    if-eqz v1, :cond_0

    .line 682
    iget-object v1, p0, Lcom/umeng/update/net/f;->i:Lcom/umeng/update/net/e;

    iget v2, p0, Lcom/umeng/update/net/f;->h:I

    invoke-interface {v1, v2}, Lcom/umeng/update/net/e;->a(I)V

    .line 683
    :cond_0
    iget-wide v2, p0, Lcom/umeng/update/net/f;->e:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-direct {p0, v0}, Lcom/umeng/update/net/f;->a(Z)V

    .line 686
    invoke-static {}, Lcom/umeng/update/net/DownloadingService;->c()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_2

    .line 687
    iget-object v0, p0, Lcom/umeng/update/net/f;->k:Lcom/umeng/update/net/DownloadingService;

    invoke-virtual {v0}, Lcom/umeng/update/net/DownloadingService;->stopSelf()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 694
    :cond_2
    :goto_0
    return-void

    .line 689
    :catch_0
    move-exception v0

    .line 690
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
