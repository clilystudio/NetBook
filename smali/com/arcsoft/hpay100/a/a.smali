.class public Lcom/arcsoft/hpay100/a/a;
.super Ljava/lang/Object;


# static fields
.field public static a:I

.field private static c:F

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;

.field private static f:Ljava/lang/String;


# instance fields
.field private final b:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>(Landroid/support/v4/view/ViewPager;)V
    .locals 0

    .prologue
    .line 3578
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3579
    iput-object p1, p0, Lcom/arcsoft/hpay100/a/a;->b:Landroid/support/v4/view/ViewPager;

    .line 3580
    return-void
.end method

.method public static A(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v1, 0x0

    const-wide/16 v6, 0x1c20

    .line 50590
    sget-object v0, Lcom/arcsoft/hpay100/a/a;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/arcsoft/hpay100/a/a;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/arcsoft/hpay100/a/a;->f:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 50573
    :goto_0
    if-eqz v0, :cond_2

    .line 50574
    const/4 v0, 0x0

    .line 50589
    :goto_1
    return-object v0

    :cond_1
    move v0, v1

    .line 50590
    goto :goto_0

    .line 50577
    :cond_2
    sget-object v0, Lcom/arcsoft/hpay100/a/a;->e:Ljava/lang/String;

    sget-object v2, Lcom/arcsoft/hpay100/a/a;->d:Ljava/lang/String;

    sget-object v3, Lcom/arcsoft/hpay100/a/a;->f:Ljava/lang/String;

    .line 50578
    invoke-static {v2, v3}, Lcom/ushaqi/zhuishushenqi/util/CipherUtil;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 50577
    invoke-static {v0, v2}, Lcom/ushaqi/zhuishushenqi/util/CipherUtil;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50580
    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 50581
    sget-boolean v0, Lcom/ushaqi/zhuishushenqi/util/I;->h:Z

    if-eqz v0, :cond_6

    .line 50582
    sput-boolean v1, Lcom/ushaqi/zhuishushenqi/util/I;->h:Z

    .line 50591
    const-string v0, "http://www.taobao.com"

    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->Y(Ljava/lang/String;)J

    move-result-wide v0

    .line 50592
    cmp-long v3, v0, v6

    if-gtz v3, :cond_3

    .line 50593
    const-string v0, "http://www.163.com"

    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->Y(Ljava/lang/String;)J

    move-result-wide v0

    .line 50595
    :cond_3
    cmp-long v3, v0, v6

    if-gtz v3, :cond_4

    .line 50596
    const-string v0, "http://www.baidu.com/"

    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->Y(Ljava/lang/String;)J

    move-result-wide v0

    .line 50584
    :cond_4
    cmp-long v3, v0, v6

    if-gtz v3, :cond_5

    .line 50585
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v4, 0x3e8

    div-long/2addr v0, v4

    add-long/2addr v0, v6

    .line 50587
    :cond_5
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a()Lcom/ushaqi/zhuishushenqi/MyApplication;

    move-result-object v3

    invoke-static {v2, v0, v1, p0, v3}, Lcom/ushaqi/zhuishushenqi/util/CipherUtil;->getNewAdvertWork(Ljava/lang/String;JLjava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 50589
    :cond_6
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a()Lcom/ushaqi/zhuishushenqi/MyApplication;

    move-result-object v0

    invoke-static {v2, p0, v0}, Lcom/ushaqi/zhuishushenqi/util/CipherUtil;->getNewAdvert(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static A(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 51403
    const-string v0, "shelf_ad_third_enable"

    invoke-static {p0, v0}, Lcom/umeng/a/b;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51404
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static B(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 51409
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 51410
    const-string v2, "start_night_theme"

    invoke-static {p0, v2, v0, v1}, Lcom/arcsoft/hpay100/a/a;->b(Landroid/content/Context;Ljava/lang/String;J)V

    .line 51411
    return-void
.end method

.method public static B(Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 50693
    const-string v0, "/"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50694
    sget-object v1, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->a:Ljava/lang/String;

    const-string v2, "/"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 50695
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static C(Landroid/content/Context;)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 51412
    const-string v0, "start_night_theme"

    invoke-static {p0, v0, v6, v7}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    .line 51413
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 51414
    cmp-long v4, v0, v6

    if-lez v4, :cond_0

    cmp-long v4, v2, v0

    if-lez v4, :cond_0

    .line 51415
    sub-long v0, v2, v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x3c

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 51416
    const-string v1, "night_theme_period"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v0}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;I)V

    .line 51418
    :cond_0
    const-string v0, "start_night_theme"

    invoke-static {p0, v0, v6, v7}, Lcom/arcsoft/hpay100/a/a;->b(Landroid/content/Context;Ljava/lang/String;J)V

    .line 51419
    return-void
.end method

.method public static C(Ljava/lang/String;)[B
    .locals 7

    .prologue
    .line 50696
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 50701
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    array-length v0, v1

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 50702
    array-length v3, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-byte v4, v1, v0

    .line 50703
    and-int/lit16 v5, v4, 0xff

    const/16 v6, 0x10

    if-ge v5, v6, :cond_0

    const-string v5, "0"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50704
    :cond_0
    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50702
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 50697
    :catch_0
    move-exception v0

    .line 50698
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Huh, MD5 should be supported?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 50708
    :catch_1
    move-exception v0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Md5 parse failded"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 50709
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    :goto_1
    return-object v0

    .line 50706
    :cond_1
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    goto :goto_1
.end method

.method public static D(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50738
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/ZhuiShuShenQi/Chapter"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 50739
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/ushaqi/zhuishushenqi/c;->a:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 50740
    invoke-static {v1}, Lcom/arcsoft/hpay100/a/a;->c(Ljava/io/File;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static D(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 51420
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 51421
    const-string v2, "start_auto_read_time"

    invoke-static {p0, v2, v0, v1}, Lcom/arcsoft/hpay100/a/a;->b(Landroid/content/Context;Ljava/lang/String;J)V

    .line 51422
    return-void
.end method

.method public static E(Landroid/content/Context;)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 51423
    const-string v0, "start_auto_read_time"

    invoke-static {p0, v0, v6, v7}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    .line 51424
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 51425
    cmp-long v4, v0, v6

    if-lez v4, :cond_0

    cmp-long v4, v2, v0

    if-lez v4, :cond_0

    .line 51426
    sub-long v0, v2, v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x3c

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 51427
    const-string v1, "auto_read_period"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v0}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;I)V

    .line 51429
    :cond_0
    const-string v0, "start_auto_read_time"

    invoke-static {p0, v0, v6, v7}, Lcom/arcsoft/hpay100/a/a;->b(Landroid/content/Context;Ljava/lang/String;J)V

    .line 51430
    return-void
.end method

.method public static E(Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 50795
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 50796
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 50798
    :cond_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 50799
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    move v0, v1

    .line 50827
    :goto_0
    return v0

    .line 50802
    :cond_2
    const/4 v0, 0x1

    .line 50803
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 50804
    if-nez v4, :cond_3

    move v0, v1

    .line 50805
    goto :goto_0

    .line 50807
    :cond_3
    array-length v5, v4

    move v2, v1

    :goto_1
    if-ge v2, v5, :cond_4

    aget-object v0, v4, v2

    .line 50809
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 50810
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->F(Ljava/lang/String;)Z

    move-result v0

    .line 50811
    if-nez v0, :cond_6

    .line 50823
    :cond_4
    if-nez v0, :cond_7

    move v0, v1

    .line 50824
    goto :goto_0

    .line 50817
    :cond_5
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->E(Ljava/lang/String;)Z

    move-result v0

    .line 50818
    if-eqz v0, :cond_4

    .line 50807
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 50827
    :cond_7
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v0

    goto :goto_0
.end method

.method public static F(Landroid/content/Context;)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 51431
    const-string v2, "show_new_ads"

    invoke-static {p0, v2}, Lcom/arcsoft/hpay100/a/a;->r(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 51432
    invoke-static {p0}, Landroid/support/design/widget/am;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 51433
    const-string v2, "show_new_ads_disabled_channel"

    invoke-static {p0, v2}, Lcom/umeng/a/b;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 51434
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 51435
    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 51436
    array-length v5, v4

    move v2, v1

    :goto_0
    if-ge v2, v5, :cond_1

    aget-object v6, v4, v2

    .line 51438
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v2, v1

    .line 51431
    :goto_1
    if-eqz v2, :cond_2

    :goto_2
    return v0

    .line 51436
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v0

    .line 51443
    goto :goto_1

    :cond_2
    move v0, v1

    .line 51431
    goto :goto_2
.end method

.method public static F(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 50828
    const/4 v0, 0x0

    .line 50829
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 50831
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 50832
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    .line 50834
    :cond_0
    return v0
.end method

.method public static G(Ljava/lang/String;)Ljava/io/BufferedReader;
    .locals 4

    .prologue
    .line 50873
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 50874
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {p0}, Lcom/arcsoft/hpay100/a/a;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    return-object v1
.end method

.method public static G(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 51446
    const-string v0, "HOT_KEY_WORD_CHANGE_CLICK"

    const-string v1, "CHANGE"

    invoke-static {p0, v0, v1}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 51447
    return-void
.end method

.method public static H(Landroid/content/Context;)F
    .locals 1

    .prologue
    .line 51448
    const-string v0, "rate_bfd_recommend"

    invoke-static {p0, v0}, Lcom/umeng/a/b;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51450
    :try_start_0
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 51452
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static H(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 50875
    const/16 v0, 0x1000

    new-array v0, v0, [B

    .line 50876
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 50877
    new-instance v2, Lorg/mozilla/universalchardet/UniversalDetector;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lorg/mozilla/universalchardet/UniversalDetector;-><init>(Landroid/support/design/widget/K;)V

    .line 50880
    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {v2}, Lorg/mozilla/universalchardet/UniversalDetector;->a()Z

    move-result v4

    if-nez v4, :cond_0

    .line 50881
    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v3}, Lorg/mozilla/universalchardet/UniversalDetector;->a([BII)V

    goto :goto_0

    .line 50883
    :cond_0
    invoke-virtual {v2}, Lorg/mozilla/universalchardet/UniversalDetector;->c()V

    .line 50885
    invoke-virtual {v2}, Lorg/mozilla/universalchardet/UniversalDetector;->b()Ljava/lang/String;

    move-result-object v0

    .line 50887
    invoke-virtual {v2}, Lorg/mozilla/universalchardet/UniversalDetector;->d()V

    .line 50888
    if-nez v0, :cond_1

    .line 50889
    const-string v0, "utf-8"

    .line 50891
    :cond_1
    return-object v0
.end method

.method public static I(Landroid/content/Context;)Lcom/ushaqi/zhuishushenqi/download/a;
    .locals 6

    .prologue
    .line 51458
    const-string v0, "app_name"

    invoke-static {p0, v0}, Lcom/umeng/a/b;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 51459
    const-string v0, "app_apk_url"

    invoke-static {p0, v0}, Lcom/umeng/a/b;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 51460
    const-string v0, "app_icon_url"

    invoke-static {p0, v0}, Lcom/umeng/a/b;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 51461
    const-string v0, "app_package_name"

    invoke-static {p0, v0}, Lcom/umeng/a/b;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 51462
    invoke-static {v2}, Lcom/arcsoft/hpay100/a/a;->Z(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v3}, Lcom/arcsoft/hpay100/a/a;->Z(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v4}, Lcom/arcsoft/hpay100/a/a;->Z(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v5}, Lcom/arcsoft/hpay100/a/a;->Z(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 51463
    new-instance v0, Lcom/ushaqi/zhuishushenqi/download/a;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/ushaqi/zhuishushenqi/download/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 51465
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static I(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .prologue
    .line 50892
    sget-object v0, Lcom/ushaqi/zhuishushenqi/c;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->J(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 50893
    if-nez v1, :cond_0

    .line 50894
    const/4 v0, 0x0

    .line 50896
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static J(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .prologue
    .line 50897
    invoke-static {}, Lcom/arcsoft/hpay100/a/a;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 50898
    const/4 v0, 0x0

    .line 50904
    :cond_0
    :goto_0
    return-object v0

    .line 50900
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 50901
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 50902
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    goto :goto_0
.end method

.method public static J(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 51475
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 51476
    const-string v2, "tts_start_time"

    invoke-static {p0, v2, v0, v1}, Lcom/arcsoft/hpay100/a/a;->b(Landroid/content/Context;Ljava/lang/String;J)V

    .line 51477
    return-void
.end method

.method public static K(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 50948
    invoke-static {p0}, Lcom/arcsoft/hpay100/a/a;->Q(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50949
    const-string v0, ""

    .line 50951
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static K(Landroid/content/Context;)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 51478
    const-string v0, "tts_start_time"

    invoke-static {p0, v0, v6, v7}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    .line 51479
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 51480
    cmp-long v4, v0, v6

    if-lez v4, :cond_0

    cmp-long v4, v2, v0

    if-lez v4, :cond_0

    .line 51481
    sub-long v0, v2, v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x3c

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 51482
    const-string v1, "tts_speaking_period"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v0}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;I)V

    .line 51484
    :cond_0
    const-string v0, "tts_start_time"

    invoke-static {p0, v0, v6, v7}, Lcom/arcsoft/hpay100/a/a;->b(Landroid/content/Context;Ljava/lang/String;J)V

    .line 51485
    return-void
.end method

.method public static L(Landroid/content/Context;)I
    .locals 2

    .prologue
    .line 51554
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 51555
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 51556
    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    return v0
.end method

.method public static L(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 50952
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 50953
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 50954
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 50955
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 50956
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 50957
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 50961
    :goto_0
    return-object v0

    .line 50958
    :catch_0
    move-exception v0

    .line 50959
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 50961
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static M(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    .prologue
    .line 51813
    const-string v0, "umeng_general_config"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static M(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51007
    sget-object v0, Lcom/ushaqi/zhuishushenqi/c;->c:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/arcsoft/hpay100/a/a;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    return-object v0
.end method

.method public static N(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 51050
    if-nez p0, :cond_0

    .line 51051
    const-string v0, ""

    .line 51054
    :goto_0
    return-object v0

    .line 51053
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/arcsoft/hpay100/a/a;->C(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/integralblue/httpresponsecache/compat/libcore/a/a;->b([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static N(Landroid/content/Context;)Lu/aly/be;
    .locals 14

    .prologue
    const-wide/16 v12, 0x0

    const/4 v2, 0x0

    .line 51814
    :try_start_0
    new-instance v1, Lu/aly/be;

    invoke-direct {v1}, Lu/aly/be;-><init>()V

    .line 51842
    const-string v0, "android.net.TrafficStats"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 51843
    const-string v3, "getUidRxBytes"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 51844
    const-string v3, "getUidTxBytes"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 51846
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v6, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 51848
    const/4 v0, -0x1

    if-ne v6, v0, :cond_1

    move-object v0, v2

    .line 51817
    :goto_0
    const/4 v3, 0x0

    aget-wide v4, v0, v3

    cmp-long v3, v4, v12

    if-lez v3, :cond_0

    const/4 v3, 0x1

    aget-wide v4, v0, v3

    cmp-long v3, v4, v12

    if-gtz v3, :cond_2

    :cond_0
    move-object v0, v2

    .line 51841
    :goto_1
    return-object v0

    .line 51850
    :cond_1
    const/4 v0, 0x2

    new-array v3, v0, [J

    .line 51851
    const/4 v7, 0x0

    const/4 v0, 0x0

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v4, v0, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    aput-wide v8, v3, v7

    .line 51852
    const/4 v4, 0x1

    const/4 v0, 0x0

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v7, v8

    invoke-virtual {v5, v0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    aput-wide v6, v3, v4

    move-object v0, v3

    .line 51854
    goto :goto_0

    .line 51819
    :cond_2
    invoke-static {p0}, Lcom/arcsoft/hpay100/a/a;->M(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 51821
    const-string v4, "uptr"

    const-wide/16 v6, -0x1

    invoke-interface {v3, v4, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 51822
    const-string v6, "dntr"

    const-wide/16 v8, -0x1

    invoke-interface {v3, v6, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 51823
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v8, "uptr"

    const/4 v9, 0x1

    aget-wide v10, v0, v9

    invoke-interface {v3, v8, v10, v11}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 51824
    const-string v8, "dntr"

    const/4 v9, 0x0

    aget-wide v10, v0, v9

    invoke-interface {v3, v8, v10, v11}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 51825
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 51827
    cmp-long v3, v4, v12

    if-lez v3, :cond_3

    cmp-long v3, v6, v12

    if-gtz v3, :cond_4

    :cond_3
    move-object v0, v2

    goto :goto_1

    .line 51829
    :cond_4
    const/4 v3, 0x0

    aget-wide v8, v0, v3

    sub-long v6, v8, v6

    aput-wide v6, v0, v3

    .line 51830
    const/4 v3, 0x1

    aget-wide v6, v0, v3

    sub-long v4, v6, v4

    aput-wide v4, v0, v3

    .line 51832
    const/4 v3, 0x0

    aget-wide v4, v0, v3

    cmp-long v3, v4, v12

    if-lez v3, :cond_5

    const/4 v3, 0x1

    aget-wide v4, v0, v3

    cmp-long v3, v4, v12

    if-gtz v3, :cond_6

    :cond_5
    move-object v0, v2

    goto/16 :goto_1

    .line 51834
    :cond_6
    const/4 v3, 0x0

    aget-wide v4, v0, v3

    long-to-int v3, v4

    invoke-virtual {v1, v3}, Lu/aly/be;->c(I)Lu/aly/be;

    .line 51835
    const/4 v3, 0x1

    aget-wide v4, v0, v3

    long-to-int v0, v4

    invoke-virtual {v1, v0}, Lu/aly/be;->a(I)Lu/aly/be;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 51837
    goto/16 :goto_1

    .line 51839
    :catch_0
    move-exception v0

    const-string v0, "MobclickAgent"

    const-string v1, "sdk less than 2.2 has get no traffic"

    invoke-static {v0, v1}, Lu/aly/bt;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    .line 51841
    goto/16 :goto_1
.end method

.method private static O(Landroid/content/Context;)Ljava/io/File;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 50246
    new-instance v1, Ljava/io/File;

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "Android"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v2, "data"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 50247
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v1, "cache"

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 50248
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 50249
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_1

    .line 50250
    const-string v0, "Unable to create external cache directory"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nostra13/universalimageloader/b/d;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50251
    const/4 v0, 0x0

    .line 50259
    :cond_0
    :goto_0
    return-object v0

    .line 50254
    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, ".nomedia"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 50256
    :catch_0
    move-exception v1

    const-string v1, "Can\'t create \".nomedia\" file in application external cache directory"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nostra13/universalimageloader/b/d;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static O(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 51235
    if-nez p0, :cond_1

    .line 51242
    :cond_0
    :goto_0
    return-object v0

    .line 51238
    :cond_1
    const-string v1, ":"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 51239
    array-length v2, v1

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    move-object v0, v1

    .line 51242
    goto :goto_0
.end method

.method private static P(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    .line 51086
    .line 51088
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 51087
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method public static P(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 51259
    const/4 v0, 0x0

    .line 51260
    const-string v1, "soso"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 51261
    const-string v0, "http://book.soso.com/ajax?m=show_bookdetail&resourceid=..."

    .line 51269
    :cond_0
    :goto_0
    return-object v0

    .line 51262
    :cond_1
    const-string v1, "sogou"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 51263
    const-string v0, "http://novel.mse.sogou.com/content.php/&page=1&md=..."

    goto :goto_0

    .line 51264
    :cond_2
    const-string v1, "leidian"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 51265
    const-string v0, "http://m.leidian.com/index.php?c=ebook&a=chapterData&bid=..."

    goto :goto_0

    .line 51266
    :cond_3
    const-string v1, "easou"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51267
    const-string v0, "http://book.easou.com/ta/show.m?&gst=0&gid=11955147&nid=..."

    goto :goto_0
.end method

.method public static Q(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 51270
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    move v1, v2

    .line 51279
    :cond_1
    :goto_0
    return v1

    :cond_2
    move v0, v1

    .line 51273
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 51274
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 51275
    const/16 v4, 0x20

    if-eq v3, v4, :cond_3

    const/16 v4, 0x9

    if-eq v3, v4, :cond_3

    const/16 v4, 0xd

    if-eq v3, v4, :cond_3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_1

    .line 51273
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move v1, v2

    .line 51279
    goto :goto_0
.end method

.method public static R(Ljava/lang/String;)J
    .locals 2

    .prologue
    .line 51285
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 51289
    :goto_0
    return-wide v0

    .line 51286
    :catch_0
    move-exception v0

    .line 51287
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 51289
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static S(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 51577
    if-eqz p0, :cond_2

    .line 51578
    invoke-static {}, Lorg/litepal/c/a;->a()Lorg/litepal/c/a;

    move-result-object v0

    .line 51579
    invoke-virtual {v0}, Lorg/litepal/c/a;->e()Ljava/lang/String;

    move-result-object v0

    .line 51580
    const-string v1, "keep"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51587
    :goto_0
    return-object p0

    .line 51582
    :cond_0
    const-string v1, "upper"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51583
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 51585
    :cond_1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 51587
    :cond_2
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public static T(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 51602
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 51603
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 51605
    :goto_0
    return-object v0

    :cond_0
    if-nez p0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public static U(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 51628
    const-string v1, "boolean"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "java.lang.Boolean"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 51652
    :cond_0
    :goto_0
    return v0

    .line 51631
    :cond_1
    const-string v1, "float"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "java.lang.Float"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 51634
    const-string v1, "double"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "java.lang.Double"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 51637
    const-string v1, "int"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "java.lang.Integer"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 51640
    const-string v1, "long"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "java.lang.Long"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 51643
    const-string v1, "short"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "java.lang.Short"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 51646
    const-string v1, "char"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "java.lang.Character"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 51649
    const-string v1, "java.lang.String"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "java.util.Date"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 51652
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static V(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 51653
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 51654
    const/16 v0, 0x2e

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v0, v2, :cond_0

    move-object v0, v1

    .line 51673
    :goto_0
    return-object v0

    .line 51658
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 51659
    const-class v2, Lorg/litepal/a/a;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/litepal/a/a;

    .line 51660
    if-eqz v0, :cond_1

    .line 51661
    invoke-interface {v0}, Lorg/litepal/a/a;->a()Ljava/lang/String;

    move-result-object v0

    .line 51662
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 51663
    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->S(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 51666
    :cond_1
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 51667
    :catch_0
    move-exception v0

    .line 51668
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    move-object v0, v1

    .line 51669
    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 51673
    goto :goto_0
.end method

.method private static W(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 50155
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x8

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Ljava/io/FileInputStream;->read([B)I

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    invoke-static {v1}, Lcom/arcsoft/hpay100/a/a;->g([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/mob/tools/e;->a()Lcom/mob/tools/log/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/d;->w(Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static X(Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 3

    .prologue
    .line 50187
    new-instance v0, Ljava/lang/Throwable;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid int: \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static Y(Ljava/lang/String;)J
    .locals 4

    .prologue
    const-wide/16 v0, 0x0

    .line 50601
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 50602
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    .line 50603
    invoke-virtual {v2}, Ljava/net/URLConnection;->connect()V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50609
    invoke-virtual {v2}, Ljava/net/URLConnection;->getDate()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x1c20

    add-long/2addr v0, v2

    :goto_0
    return-wide v0

    .line 50607
    :catch_0
    move-exception v2

    goto :goto_0

    .line 50605
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method private static Z(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 51466
    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51467
    :cond_0
    const/4 v0, 0x1

    .line 51469
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(BIZ)B
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 51807
    .line 51808
    if-eqz p2, :cond_0

    .line 51809
    shl-int/2addr v0, p1

    or-int/2addr v0, p0

    .line 51807
    :goto_0
    int-to-byte v0, v0

    return v0

    .line 51812
    :cond_0
    shl-int/2addr v0, p1

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, p0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;F)F
    .locals 2

    .prologue
    const/high16 v0, 0x40000000    # 2.0f

    .line 51110
    if-nez p0, :cond_0

    .line 51113
    :goto_0
    return v0

    .line 51114
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 51113
    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    goto :goto_0
.end method

.method private static a(II)I
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 50186
    const/4 v0, 0x2

    if-lt p1, v0, :cond_0

    const/16 v0, 0x24

    if-le p1, v0, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/16 v0, 0x30

    if-gt v0, p0, :cond_3

    const/16 v0, 0x39

    if-gt p0, v0, :cond_3

    add-int/lit8 v0, p0, -0x30

    :goto_1
    if-lt v0, p1, :cond_1

    move v0, v1

    goto :goto_0

    :cond_3
    const/16 v0, 0x61

    if-gt v0, p0, :cond_4

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_4

    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    goto :goto_1

    :cond_4
    const/16 v0, 0x41

    if-gt v0, p0, :cond_5

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_5

    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;F)I
    .locals 2

    .prologue
    .line 50615
    if-nez p0, :cond_0

    .line 50616
    const/4 v0, 0x0

    .line 50619
    :goto_0
    return v0

    .line 50618
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 50619
    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;I)I
    .locals 2

    .prologue
    .line 50169
    sget v0, Lcom/arcsoft/hpay100/a/a;->c:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/arcsoft/hpay100/a/a;->c:F

    :cond_0
    int-to-float v0, p1

    sget v1, Lcom/arcsoft/hpay100/a/a;->c:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 1

    .prologue
    .line 51100
    if-nez p0, :cond_0

    .line 51103
    :goto_0
    return p2

    .line 51104
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 51103
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 44000
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, p1, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/String;I)I
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 49017
    if-eq p1, v0, :cond_0

    .line 49026
    :goto_0
    return p1

    .line 49021
    :cond_0
    const-string v1, "http"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 49022
    const/16 p1, 0x50

    goto :goto_0

    .line 49023
    :cond_1
    const-string v1, "https"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 49024
    const/16 p1, 0x1bb

    goto :goto_0

    :cond_2
    move p1, v0

    .line 49026
    goto :goto_0
.end method

.method public static a(Ljava/net/URI;)I
    .locals 2

    .prologue
    .line 49007
    invoke-virtual {p0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/net/URI;->getPort()I

    move-result v1

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/a/a;->a(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static a(Ljava/net/URL;)I
    .locals 2

    .prologue
    .line 50009
    invoke-virtual {p0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/net/URL;->getPort()I

    move-result v1

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/a/a;->a(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;JLjava/lang/String;ILjava/lang/String;)J
    .locals 5

    .prologue
    .line 50141
    const-class v2, Lcom/arcsoft/hpay100/a/a;

    monitor-enter v2

    :try_start_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x1

    :goto_0
    monitor-exit v2

    return-wide v0

    :cond_0
    :try_start_1
    invoke-static {p0}, Lcom/mob/a/a/c;->a(Landroid/content/Context;)Lcom/mob/a/a/c;

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "exception_time"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "exception_msg"

    invoke-virtual {p3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "exception_level"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "exception_md5"

    invoke-virtual {v1, v3, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "table_exception"

    invoke-virtual {v0, v3, v1}, Lcom/mob/a/a/c;->a(Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;J)J
    .locals 3

    .prologue
    const-wide/16 v0, 0x0

    .line 51105
    if-nez p0, :cond_0

    .line 51108
    :goto_0
    return-wide v0

    .line 51109
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 51108
    invoke-interface {v2, p1, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/util/ArrayList;)J
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)J"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 50142
    const-class v2, Lcom/arcsoft/hpay100/a/a;

    monitor-enter v2

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    monitor-exit v2

    return-wide v0

    :cond_0
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move v1, v0

    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    const-string v0, "\'"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/mob/a/a/c;->a(Landroid/content/Context;)Lcom/mob/a/a/c;

    move-result-object v1

    const-string v3, "table_exception"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "exception_md5 in ( "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " )"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v0, v4}, Lcom/mob/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    invoke-static {}, Lcom/mob/tools/e;->a()Lcom/mob/tools/log/d;

    move-result-object v1

    const-string v3, "delete COUNT == %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Lcom/mob/tools/log/d;->i(Ljava/lang/Object;[Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v0, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method private static a(Ljava/lang/String;IIZ)J
    .locals 12

    .prologue
    .line 50190
    const-wide/high16 v0, -0x8000000000000000L

    int-to-long v2, p2

    div-long v6, v0, v2

    const-wide/16 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    int-to-long v8, v2

    :goto_0
    int-to-long v2, p1

    cmp-long v2, v2, v8

    if-gez v2, :cond_3

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2, p2}, Lcom/arcsoft/hpay100/a/a;->a(II)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    new-instance v0, Ljava/lang/Throwable;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid long: \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    cmp-long v3, v6, v0

    if-lez v3, :cond_1

    new-instance v0, Ljava/lang/Throwable;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid long: \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    int-to-long v10, p2

    mul-long/2addr v10, v0

    int-to-long v2, v2

    sub-long v2, v10, v2

    cmp-long v0, v2, v0

    if-lez v0, :cond_2

    new-instance v0, Ljava/lang/Throwable;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid long: \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move-wide v0, v2

    move p1, v4

    goto :goto_0

    :cond_3
    if-nez p3, :cond_4

    neg-long v0, v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_4

    new-instance v0, Ljava/lang/Throwable;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid long: \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    return-wide v0
.end method

.method public static a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 51540
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 51541
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 51544
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 51545
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 51547
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 51548
    invoke-virtual {v1, v6, v6, v6, v6}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 51549
    const v4, -0xbdbdbe

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 51550
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-virtual {v1, v4, v5, v6, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 51551
    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 51552
    invoke-virtual {v1, p0, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 51553
    return-object v0
.end method

.method public static a(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    const/high16 v5, 0x41000000    # 8.0f

    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v3, 0x3e000000    # 0.125f

    const/4 v4, 0x0

    .line 50151
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v0, v0

    div-float/2addr v0, v5

    add-float/2addr v0, v2

    float-to-int v0, v0

    int-to-float v1, v1

    div-float/2addr v1, v5

    add-float/2addr v1, v2

    float-to-int v1, v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v3, v3}, Landroid/graphics/Canvas;->scale(FF)V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setFlags(I)V

    invoke-virtual {v1, p0, v4, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private static a(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 33

    .prologue
    .line 50152
    if-gtz p1, :cond_0

    const/16 p0, 0x0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    mul-int v2, v5, v9

    new-array v3, v2, [I

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    add-int/lit8 v20, v5, -0x1

    add-int/lit8 v21, v9, -0x1

    mul-int v2, v5, v9

    add-int v4, p1, p1

    add-int/lit8 v22, v4, 0x1

    new-array v0, v2, [I

    move-object/from16 v23, v0

    new-array v0, v2, [I

    move-object/from16 v24, v0

    new-array v0, v2, [I

    move-object/from16 v25, v0

    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    move-result v2

    new-array v0, v2, [I

    move-object/from16 v26, v0

    add-int/lit8 v2, v22, 0x1

    shr-int/lit8 v2, v2, 0x1

    mul-int v4, v2, v2

    mul-int/lit16 v2, v4, 0x100

    new-array v0, v2, [I

    move-object/from16 v27, v0

    const/4 v2, 0x0

    :goto_1
    mul-int/lit16 v6, v4, 0x100

    if-ge v2, v6, :cond_1

    div-int v6, v2, v4

    aput v6, v27, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    const/4 v2, 0x3

    move/from16 v0, v22

    filled-new-array {v0, v2}, [I

    move-result-object v2

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[I

    add-int/lit8 v28, p1, 0x1

    const/4 v6, 0x0

    move/from16 v18, v4

    move v12, v4

    move/from16 v19, v6

    :goto_2
    move/from16 v0, v19

    if-ge v0, v9, :cond_6

    const/4 v4, 0x0

    move/from16 v0, p1

    neg-int v6, v0

    move v7, v4

    move v8, v4

    move v10, v4

    move v11, v4

    move v13, v6

    move v14, v4

    move v15, v4

    move/from16 v16, v4

    move v6, v4

    :goto_3
    move/from16 v0, p1

    if-gt v13, v0, :cond_3

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v17

    move/from16 v0, v20

    move/from16 v1, v17

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v17

    add-int v17, v17, v12

    aget v17, v3, v17

    add-int v29, v13, p1

    aget-object v29, v2, v29

    const/16 v30, 0x0

    shr-int/lit8 v31, v17, 0x10

    move/from16 v0, v31

    and-int/lit16 v0, v0, 0xff

    move/from16 v31, v0

    aput v31, v29, v30

    const/16 v30, 0x1

    shr-int/lit8 v31, v17, 0x8

    move/from16 v0, v31

    and-int/lit16 v0, v0, 0xff

    move/from16 v31, v0

    aput v31, v29, v30

    const/16 v30, 0x2

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    aput v17, v29, v30

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v17

    sub-int v17, v28, v17

    const/16 v30, 0x0

    aget v30, v29, v30

    mul-int v30, v30, v17

    add-int v16, v16, v30

    const/16 v30, 0x1

    aget v30, v29, v30

    mul-int v30, v30, v17

    add-int v15, v15, v30

    const/16 v30, 0x2

    aget v30, v29, v30

    mul-int v17, v17, v30

    add-int v14, v14, v17

    if-lez v13, :cond_2

    const/16 v17, 0x0

    aget v17, v29, v17

    add-int v7, v7, v17

    const/16 v17, 0x1

    aget v17, v29, v17

    add-int v6, v6, v17

    const/16 v17, 0x2

    aget v17, v29, v17

    add-int v4, v4, v17

    :goto_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_2
    const/16 v17, 0x0

    aget v17, v29, v17

    add-int v11, v11, v17

    const/16 v17, 0x1

    aget v17, v29, v17

    add-int v10, v10, v17

    const/16 v17, 0x2

    aget v17, v29, v17

    add-int v8, v8, v17

    goto :goto_4

    :cond_3
    const/4 v13, 0x0

    move/from16 v17, v16

    move/from16 v16, v15

    move v15, v14

    move v14, v13

    move/from16 v13, p1

    :goto_5
    if-ge v14, v5, :cond_5

    aget v29, v27, v17

    aput v29, v23, v12

    aget v29, v27, v16

    aput v29, v24, v12

    aget v29, v27, v15

    aput v29, v25, v12

    sub-int v17, v17, v11

    sub-int v16, v16, v10

    sub-int/2addr v15, v8

    sub-int v29, v13, p1

    add-int v29, v29, v22

    rem-int v29, v29, v22

    aget-object v29, v2, v29

    const/16 v30, 0x0

    aget v30, v29, v30

    sub-int v11, v11, v30

    const/16 v30, 0x1

    aget v30, v29, v30

    sub-int v10, v10, v30

    const/16 v30, 0x2

    aget v30, v29, v30

    sub-int v8, v8, v30

    if-nez v19, :cond_4

    add-int v30, v14, p1

    add-int/lit8 v30, v30, 0x1

    move/from16 v0, v30

    move/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v30

    aput v30, v26, v14

    :cond_4
    aget v30, v26, v14

    add-int v30, v30, v18

    aget v30, v3, v30

    const/16 v31, 0x0

    shr-int/lit8 v32, v30, 0x10

    move/from16 v0, v32

    and-int/lit16 v0, v0, 0xff

    move/from16 v32, v0

    aput v32, v29, v31

    const/16 v31, 0x1

    shr-int/lit8 v32, v30, 0x8

    move/from16 v0, v32

    and-int/lit16 v0, v0, 0xff

    move/from16 v32, v0

    aput v32, v29, v31

    const/16 v31, 0x2

    move/from16 v0, v30

    and-int/lit16 v0, v0, 0xff

    move/from16 v30, v0

    aput v30, v29, v31

    const/16 v30, 0x0

    aget v30, v29, v30

    add-int v7, v7, v30

    const/16 v30, 0x1

    aget v30, v29, v30

    add-int v6, v6, v30

    const/16 v30, 0x2

    aget v29, v29, v30

    add-int v4, v4, v29

    add-int v17, v17, v7

    add-int v16, v16, v6

    add-int/2addr v15, v4

    add-int/lit8 v13, v13, 0x1

    rem-int v13, v13, v22

    rem-int v29, v13, v22

    aget-object v29, v2, v29

    const/16 v30, 0x0

    aget v30, v29, v30

    add-int v11, v11, v30

    const/16 v30, 0x1

    aget v30, v29, v30

    add-int v10, v10, v30

    const/16 v30, 0x2

    aget v30, v29, v30

    add-int v8, v8, v30

    const/16 v30, 0x0

    aget v30, v29, v30

    sub-int v7, v7, v30

    const/16 v30, 0x1

    aget v30, v29, v30

    sub-int v6, v6, v30

    const/16 v30, 0x2

    aget v29, v29, v30

    sub-int v4, v4, v29

    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_5

    :cond_5
    add-int v4, v18, v5

    add-int/lit8 v6, v19, 0x1

    move/from16 v18, v4

    move/from16 v19, v6

    goto/16 :goto_2

    :cond_6
    const/4 v13, 0x0

    :goto_6
    if-ge v13, v5, :cond_c

    const/4 v6, 0x0

    move/from16 v0, p1

    neg-int v4, v0

    mul-int v7, v4, v5

    move/from16 v0, p1

    neg-int v4, v0

    move v8, v6

    move v10, v6

    move v11, v6

    move v12, v6

    move/from16 v17, v4

    move v14, v6

    move v15, v6

    move/from16 v16, v6

    move v4, v7

    move v7, v6

    :goto_7
    move/from16 v0, v17

    move/from16 v1, p1

    if-gt v0, v1, :cond_9

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v18

    add-int v19, v18, v13

    add-int v18, v17, p1

    aget-object v20, v2, v18

    const/16 v18, 0x0

    aget v29, v23, v19

    aput v29, v20, v18

    const/16 v18, 0x1

    aget v29, v24, v19

    aput v29, v20, v18

    const/16 v18, 0x2

    aget v29, v25, v19

    aput v29, v20, v18

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(I)I

    move-result v18

    sub-int v29, v28, v18

    aget v18, v23, v19

    mul-int v18, v18, v29

    add-int v18, v18, v16

    aget v16, v24, v19

    mul-int v16, v16, v29

    add-int v16, v16, v15

    aget v15, v25, v19

    mul-int v15, v15, v29

    add-int/2addr v15, v14

    if-lez v17, :cond_8

    const/4 v14, 0x0

    aget v14, v20, v14

    add-int/2addr v8, v14

    const/4 v14, 0x1

    aget v14, v20, v14

    add-int/2addr v7, v14

    const/4 v14, 0x2

    aget v14, v20, v14

    add-int/2addr v6, v14

    :goto_8
    move/from16 v0, v17

    move/from16 v1, v21

    if-ge v0, v1, :cond_7

    add-int/2addr v4, v5

    :cond_7
    add-int/lit8 v14, v17, 0x1

    move/from16 v17, v14

    move v14, v15

    move/from16 v15, v16

    move/from16 v16, v18

    goto :goto_7

    :cond_8
    const/4 v14, 0x0

    aget v14, v20, v14

    add-int/2addr v12, v14

    const/4 v14, 0x1

    aget v14, v20, v14

    add-int/2addr v11, v14

    const/4 v14, 0x2

    aget v14, v20, v14

    add-int/2addr v10, v14

    goto :goto_8

    :cond_9
    const/4 v4, 0x0

    move/from16 v17, v15

    move/from16 v18, v16

    move v15, v4

    move/from16 v16, v14

    move/from16 v14, p1

    move v4, v6

    move v6, v7

    move v7, v8

    move v8, v10

    move v10, v11

    move v11, v12

    move v12, v13

    :goto_9
    if-ge v15, v9, :cond_b

    const/high16 v19, -0x1000000

    aget v20, v3, v12

    and-int v19, v19, v20

    aget v20, v27, v18

    shl-int/lit8 v20, v20, 0x10

    or-int v19, v19, v20

    aget v20, v27, v17

    shl-int/lit8 v20, v20, 0x8

    or-int v19, v19, v20

    aget v20, v27, v16

    or-int v19, v19, v20

    aput v19, v3, v12

    sub-int v18, v18, v11

    sub-int v17, v17, v10

    sub-int v16, v16, v8

    sub-int v19, v14, p1

    add-int v19, v19, v22

    rem-int v19, v19, v22

    aget-object v19, v2, v19

    const/16 v20, 0x0

    aget v20, v19, v20

    sub-int v11, v11, v20

    const/16 v20, 0x1

    aget v20, v19, v20

    sub-int v10, v10, v20

    const/16 v20, 0x2

    aget v20, v19, v20

    sub-int v8, v8, v20

    if-nez v13, :cond_a

    add-int v20, v15, v28

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->min(II)I

    move-result v20

    mul-int v20, v20, v5

    aput v20, v26, v15

    :cond_a
    aget v20, v26, v15

    add-int v20, v20, v13

    const/16 v29, 0x0

    aget v30, v23, v20

    aput v30, v19, v29

    const/16 v29, 0x1

    aget v30, v24, v20

    aput v30, v19, v29

    const/16 v29, 0x2

    aget v20, v25, v20

    aput v20, v19, v29

    const/16 v20, 0x0

    aget v20, v19, v20

    add-int v7, v7, v20

    const/16 v20, 0x1

    aget v20, v19, v20

    add-int v6, v6, v20

    const/16 v20, 0x2

    aget v19, v19, v20

    add-int v4, v4, v19

    add-int v18, v18, v7

    add-int v17, v17, v6

    add-int v16, v16, v4

    add-int/lit8 v14, v14, 0x1

    rem-int v14, v14, v22

    aget-object v19, v2, v14

    const/16 v20, 0x0

    aget v20, v19, v20

    add-int v11, v11, v20

    const/16 v20, 0x1

    aget v20, v19, v20

    add-int v10, v10, v20

    const/16 v20, 0x2

    aget v20, v19, v20

    add-int v8, v8, v20

    const/16 v20, 0x0

    aget v20, v19, v20

    sub-int v7, v7, v20

    const/16 v20, 0x1

    aget v20, v19, v20

    sub-int v6, v6, v20

    const/16 v20, 0x2

    aget v19, v19, v20

    sub-int v4, v4, v19

    add-int/2addr v12, v5

    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_9

    :cond_b
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_6

    :cond_c
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    goto/16 :goto_0
.end method

.method public static a(Landroid/view/View;II)Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 50150
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method public static a(Ljava/io/InputStream;I)Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 50145
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    iput p1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/e/a/a/e/g;)Landroid/os/Bundle;
    .locals 5

    .prologue
    .line 50285
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "_wxobject_sdkVer"

    iget v2, p0, Lcom/e/a/a/e/g;->a:I

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "_wxobject_title"

    iget-object v2, p0, Lcom/e/a/a/e/g;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_wxobject_description"

    iget-object v2, p0, Lcom/e/a/a/e/g;->c:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_wxobject_thumbdata"

    iget-object v2, p0, Lcom/e/a/a/e/g;->d:[B

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    iget-object v0, p0, Lcom/e/a/a/e/g;->e:Landroid/support/design/widget/K;

    if-eqz v0, :cond_1

    const-string v2, "_wxobject_identifier_"

    iget-object v0, p0, Lcom/e/a/a/e/g;->e:Landroid/support/design/widget/K;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 50286
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    const-string v3, "MicroMsg.SDK.WXMediaMessage"

    const-string v4, "pathNewToOld fail, newPath is null"

    invoke-static {v3, v4}, Lcom/e/a/a/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 50285
    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v0, "_wxobject_mediatagname"

    iget-object v2, p0, Lcom/e/a/a/e/g;->f:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 50286
    :cond_2
    const-string v3, "com.tencent.mm.sdk.modelmsg"

    const-string v4, "com.tencent.mm.sdk.openapi"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Landroid/support/v4/app/NotificationCompatBase$Action;)Landroid/widget/RemoteViews;
    .locals 4

    .prologue
    .line 5144
    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompatBase$Action;->getActionIntent()Landroid/app/PendingIntent;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 5145
    :goto_0
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    sget v3, Landroid/support/v7/appcompat/R$layout;->notification_media_action:I

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 5147
    sget v2, Landroid/support/v7/appcompat/R$id;->action0:I

    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompatBase$Action;->getIcon()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 5148
    if-nez v0, :cond_0

    .line 5149
    sget v0, Landroid/support/v7/appcompat/R$id;->action0:I

    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompatBase$Action;->getActionIntent()Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 5151
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xf

    if-lt v0, v2, :cond_1

    .line 5152
    sget v0, Landroid/support/v7/appcompat/R$id;->action0:I

    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompatBase$Action;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 5154
    :cond_1
    return-object v1

    .line 5144
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/graphics/Bitmap;Ljava/lang/CharSequence;ZJIZ)Landroid/widget/RemoteViews;
    .locals 12

    .prologue
    .line 5169
    new-instance v2, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move/from16 v0, p10

    invoke-direct {v2, v3, v0}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 5170
    const/4 v4, 0x0

    .line 5171
    const/4 v3, 0x0

    .line 5175
    if-eqz p5, :cond_6

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x10

    if-lt v5, v6, :cond_6

    .line 5176
    sget v5, Landroid/support/v7/appcompat/R$id;->icon:I

    move-object/from16 v0, p5

    invoke-virtual {v2, v5, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 5180
    :goto_0
    if-eqz p1, :cond_0

    .line 5181
    sget v5, Landroid/support/v7/appcompat/R$id;->title:I

    invoke-virtual {v2, v5, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 5183
    :cond_0
    if-eqz p2, :cond_1

    .line 5184
    sget v4, Landroid/support/v7/appcompat/R$id;->text:I

    invoke-virtual {v2, v4, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 5185
    const/4 v4, 0x1

    .line 5187
    :cond_1
    if-eqz p3, :cond_7

    .line 5188
    sget v4, Landroid/support/v7/appcompat/R$id;->info:I

    invoke-virtual {v2, v4, p3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 5189
    sget v4, Landroid/support/v7/appcompat/R$id;->info:I

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 5190
    const/4 v4, 0x1

    move v8, v4

    .line 5208
    :goto_1
    if-eqz p6, :cond_2

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x10

    if-lt v4, v5, :cond_2

    .line 5209
    sget v4, Landroid/support/v7/appcompat/R$id;->text:I

    move-object/from16 v0, p6

    invoke-virtual {v2, v4, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 5210
    if-eqz p2, :cond_a

    .line 5211
    sget v3, Landroid/support/v7/appcompat/R$id;->text2:I

    invoke-virtual {v2, v3, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 5212
    sget v3, Landroid/support/v7/appcompat/R$id;->text2:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 5213
    const/4 v3, 0x1

    .line 5220
    :cond_2
    :goto_2
    if-eqz v3, :cond_4

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_4

    .line 5221
    if-eqz p11, :cond_3

    .line 5223
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 5224
    sget v4, Landroid/support/v7/appcompat/R$dimen;->notification_subtext_size:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    .line 5226
    sget v4, Landroid/support/v7/appcompat/R$id;->text:I

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5, v3}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    .line 5229
    :cond_3
    sget v3, Landroid/support/v7/appcompat/R$id;->line1:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    .line 5232
    :cond_4
    const-wide/16 v4, 0x0

    cmp-long v3, p8, v4

    if-eqz v3, :cond_5

    .line 5233
    if-eqz p7, :cond_b

    .line 5234
    sget v3, Landroid/support/v7/appcompat/R$id;->chronometer:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 5235
    sget v3, Landroid/support/v7/appcompat/R$id;->chronometer:I

    const-string v4, "setBase"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v6, v10

    add-long v6, v6, p8

    invoke-virtual {v2, v3, v4, v6, v7}, Landroid/widget/RemoteViews;->setLong(ILjava/lang/String;J)V

    .line 5237
    sget v3, Landroid/support/v7/appcompat/R$id;->chronometer:I

    const-string v4, "setStarted"

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 5243
    :cond_5
    :goto_3
    sget v4, Landroid/support/v7/appcompat/R$id;->line3:I

    if-eqz v8, :cond_c

    const/4 v3, 0x0

    :goto_4
    invoke-virtual {v2, v4, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 5244
    return-object v2

    .line 5178
    :cond_6
    sget v5, Landroid/support/v7/appcompat/R$id;->icon:I

    const/16 v6, 0x8

    invoke-virtual {v2, v5, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_0

    .line 5191
    :cond_7
    if-lez p4, :cond_9

    .line 5192
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Landroid/support/v7/appcompat/R$integer;->status_bar_notification_info_maxnum:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 5194
    move/from16 v0, p4

    if-le v0, v4, :cond_8

    .line 5195
    sget v4, Landroid/support/v7/appcompat/R$id;->info:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Landroid/support/v7/appcompat/R$string;->status_bar_notification_info_overflow:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 5201
    :goto_5
    sget v4, Landroid/support/v7/appcompat/R$id;->info:I

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 5202
    const/4 v4, 0x1

    move v8, v4

    .line 5203
    goto/16 :goto_1

    .line 5198
    :cond_8
    invoke-static {}, Ljava/text/NumberFormat;->getIntegerInstance()Ljava/text/NumberFormat;

    move-result-object v4

    .line 5199
    sget v5, Landroid/support/v7/appcompat/R$id;->info:I

    move/from16 v0, p4

    int-to-long v6, v0

    invoke-virtual {v4, v6, v7}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_5

    .line 5204
    :cond_9
    sget v5, Landroid/support/v7/appcompat/R$id;->info:I

    const/16 v6, 0x8

    invoke-virtual {v2, v5, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    move v8, v4

    goto/16 :goto_1

    .line 5215
    :cond_a
    sget v4, Landroid/support/v7/appcompat/R$id;->text2:I

    const/16 v5, 0x8

    invoke-virtual {v2, v4, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_2

    .line 5239
    :cond_b
    sget v3, Landroid/support/v7/appcompat/R$id;->time:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 5240
    sget v3, Landroid/support/v7/appcompat/R$id;->time:I

    const-string v4, "setTime"

    move-wide/from16 v0, p8

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/widget/RemoteViews;->setLong(ILjava/lang/String;J)V

    goto :goto_3

    .line 5243
    :cond_c
    const/16 v3, 0x8

    goto :goto_4
.end method

.method public static a(Landroid/os/Bundle;)Lcom/e/a/a/e/g;
    .locals 6

    .prologue
    .line 50287
    new-instance v1, Lcom/e/a/a/e/g;

    invoke-direct {v1}, Lcom/e/a/a/e/g;-><init>()V

    const-string v0, "_wxobject_sdkVer"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/e/a/a/e/g;->a:I

    const-string v0, "_wxobject_title"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/e/a/a/e/g;->b:Ljava/lang/String;

    const-string v0, "_wxobject_description"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/e/a/a/e/g;->c:Ljava/lang/String;

    const-string v0, "_wxobject_thumbdata"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, v1, Lcom/e/a/a/e/g;->d:[B

    const-string v0, "_wxobject_mediatagname"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/e/a/a/e/g;->f:Ljava/lang/String;

    const-string v0, "_wxobject_identifier_"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50288
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    const-string v2, "MicroMsg.SDK.WXMediaMessage"

    const-string v3, "pathOldToNew fail, oldPath is null"

    invoke-static {v2, v3}, Lcom/e/a/a/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v0

    .line 50287
    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_3

    :cond_1
    move-object v0, v1

    :goto_1
    return-object v0

    .line 50288
    :cond_2
    const-string v2, "com.tencent.mm.sdk.openapi"

    const-string v3, "com.tencent.mm.sdk.modelmsg"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_0

    .line 50287
    :cond_3
    :try_start_0
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/K;

    iput-object v0, v1, Lcom/e/a/a/e/g;->e:Landroid/support/design/widget/K;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v3, "MicroMsg.SDK.WXMediaMessage"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "get media object from bundle failed: unknown ident "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", ex = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/e/a/a/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;[Lcom/ushaqi/zhuishushenqi/model/ChapterLink;I)Lcom/ushaqi/zhuishushenqi/model/ChapterRoot;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 50369
    aget-object v5, p1, p2

    .line 50370
    new-instance v0, Lcom/ushaqi/zhuishushenqi/model/ChapterRoot;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/model/ChapterRoot;-><init>()V

    .line 50371
    new-instance v6, Lcom/ushaqi/zhuishushenqi/model/Chapter;

    invoke-direct {v6}, Lcom/ushaqi/zhuishushenqi/model/Chapter;-><init>()V

    .line 50374
    :try_start_0
    invoke-static {p0}, Lcom/arcsoft/hpay100/a/a;->G(Ljava/lang/String;)Ljava/io/BufferedReader;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 50376
    const/4 v3, 0x0

    :goto_0
    :try_start_1
    invoke-virtual {v5}, Lcom/ushaqi/zhuishushenqi/model/ChapterLink;->getTxtLineOffset()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 50377
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 50376
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 50380
    :cond_0
    const-string v4, ""

    .line 50381
    const/4 v3, -0x1

    .line 50382
    array-length v7, p1

    add-int/lit8 v7, v7, -0x1

    if-ge p2, v7, :cond_1

    .line 50383
    add-int/lit8 v3, p2, 0x1

    aget-object v3, p1, v3

    .line 50384
    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/model/ChapterLink;->getTxtLineOffset()I

    move-result v3

    invoke-virtual {v5}, Lcom/ushaqi/zhuishushenqi/model/ChapterLink;->getTxtLineOffset()I

    move-result v5

    sub-int/2addr v3, v5

    .line 50388
    :cond_1
    :goto_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    if-eqz v3, :cond_2

    .line 50389
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "\n"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 50390
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 50393
    :cond_2
    invoke-static {v4}, Lcom/arcsoft/hpay100/a/a;->z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 50394
    invoke-virtual {v6, v3}, Lcom/ushaqi/zhuishushenqi/model/Chapter;->setBody(Ljava/lang/String;)V

    .line 50395
    invoke-virtual {v0, v6}, Lcom/ushaqi/zhuishushenqi/model/ChapterRoot;->setChapter(Lcom/ushaqi/zhuishushenqi/model/Chapter;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 50404
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 50410
    :goto_2
    return-object v0

    .line 50406
    :catch_0
    move-exception v1

    .line 50407
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 50397
    :catch_1
    move-exception v0

    move-object v2, v1

    .line 50398
    :goto_3
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 50403
    if-eqz v2, :cond_3

    .line 50404
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :cond_3
    :goto_4
    move-object v0, v1

    .line 50410
    goto :goto_2

    .line 50406
    :catch_2
    move-exception v0

    .line 50407
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 50399
    :catch_3
    move-exception v0

    move-object v2, v1

    .line 50400
    :goto_5
    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 50403
    if-eqz v2, :cond_3

    .line 50404
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_4

    .line 50406
    :catch_4
    move-exception v0

    .line 50407
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 50402
    :catchall_0
    move-exception v0

    move-object v2, v1

    .line 50403
    :goto_6
    if-eqz v2, :cond_4

    .line 50404
    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 50408
    :cond_4
    :goto_7
    throw v0

    .line 50406
    :catch_5
    move-exception v1

    .line 50407
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    .line 50402
    :catchall_1
    move-exception v0

    goto :goto_6

    .line 50399
    :catch_6
    move-exception v0

    goto :goto_5

    .line 50397
    :catch_7
    move-exception v0

    goto :goto_3
.end method

.method public static a(Landroid/content/Context;Z)Ljava/io/File;
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 50221
    const/4 v0, 0x0

    .line 50222
    if-eqz p1, :cond_0

    const-string v1, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50235
    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    .line 50236
    if-nez v1, :cond_3

    move v1, v2

    .line 50222
    :goto_0
    if-eqz v1, :cond_0

    .line 50224
    invoke-static {p0}, Lcom/arcsoft/hpay100/a/a;->O(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 50226
    :cond_0
    if-nez v0, :cond_1

    .line 50227
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 50229
    :cond_1
    if-nez v0, :cond_2

    .line 50230
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/data/data/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/cache/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 50231
    const-string v0, "Can\'t define system cache directory! \'%s\' will be used."

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Lcom/nostra13/universalimageloader/b/d;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50232
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 50234
    :cond_2
    return-object v0

    :cond_3
    move v1, v3

    .line 50236
    goto :goto_0
.end method

.method public static a(Ljava/lang/reflect/Type;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 7000
    move-object v0, p0

    :goto_0
    instance-of v1, v0, Ljava/lang/Class;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Class;

    return-object v0

    :cond_0
    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "TODO"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(ILjava/lang/String;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 50284
    packed-switch p0, :pswitch_data_0

    :try_start_0
    const-string v0, "MicroMsg.SDK.PluginProvider.Resolver"

    const-string v1, "unknown type"

    invoke-static {v0, v1}, Lcom/e/a/a/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x0

    :goto_1
    :pswitch_0
    return-object p1

    :pswitch_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1

    :pswitch_2
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    goto :goto_1

    :pswitch_3
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_1

    :pswitch_4
    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    goto :goto_1

    :pswitch_5
    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static declared-synchronized a()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 11000
    const-class v1, Lcom/arcsoft/hpay100/a/a;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/arcsoft/hpay100/a/a;->m()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/support/design/widget/am;->a(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    monitor-exit v1

    return-object v0

    :cond_1
    :try_start_1
    const-string v3, "`"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    array-length v3, v2

    const/4 v4, 0x2

    if-lt v3, v4, :cond_0

    const/4 v0, 0x0

    aget-object v0, v2, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 25000
    :try_start_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const-string v2, "DES"

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string v1, "DES"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    if-ne p0, v3, :cond_0

    invoke-static {p1}, Lcom/alipay/sdk/c/a;->a(Ljava/lang/String;)[B

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    if-ne p0, v3, :cond_1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    :goto_1
    return-object v0

    :cond_0
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lcom/alipay/sdk/c/a;->a([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static a(JZ)Ljava/lang/String;
    .locals 12

    .prologue
    const-wide v10, 0x408f400000000000L    # 1000.0

    .line 50918
    const-wide/16 v0, 0x3e8

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " B"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 50921
    :goto_0
    return-object v0

    .line 50919
    :cond_0
    long-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    invoke-static {v10, v11}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-int v0, v0

    .line 50920
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "kMGTPE"

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 50921
    const-string v2, "%.1f %sB"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    long-to-double v6, p0

    int-to-double v8, v0

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 9000
    const-class v1, Lcom/arcsoft/hpay100/a/a;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/arcsoft/hpay100/a/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/support/design/widget/am;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0}, Lcom/arcsoft/hpay100/a/a;->b(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :cond_0
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 35000
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;ZIIZ)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 40000
    const-string v0, "dalongTest"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http get request url:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/arcsoft/hpay100/a/a;->j(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "dalongTest"

    const-string v1, "net error"

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v7

    :goto_0
    return-object v0

    :cond_0
    const/16 v0, 0x7530

    const v1, 0x9c40

    const/4 v2, 0x1

    :try_start_0
    invoke-static {p0, v0, v1, v2}, Lcom/arcsoft/hpay100/b/c;->a(Landroid/content/Context;IIZ)Lcom/arcsoft/hpay100/b/c;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_1
    const-string v5, "utf-8"

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v6}, Lcom/arcsoft/hpay100/b/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Z)Lcom/arcsoft/hpay100/b/d;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 41000
    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Lcom/arcsoft/hpay100/b/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 40000
    :goto_1
    const-string v2, "dalongTest"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "http request result:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/arcsoft/hpay100/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {v0}, Lcom/arcsoft/hpay100/b/c;->a()V

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v7

    :goto_2
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/arcsoft/hpay100/b/c;->a()V

    :cond_1
    move-object v0, v7

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v7

    :goto_3
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/arcsoft/hpay100/b/c;->a()V

    :cond_2
    throw v0

    :catchall_1
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_2

    :cond_3
    move-object v1, v7

    goto :goto_1
.end method

.method private static a(Lcom/ushaqi/zhuishushenqi/model/BookInfo;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 50455
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 50457
    :try_start_0
    const-string v0, "bk_name"

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/model/BookInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 50458
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/model/BookInfo;->getTags()[Ljava/lang/String;

    move-result-object v3

    .line 50460
    if-eqz v3, :cond_2

    .line 50461
    const-string v1, ""

    .line 50462
    const/4 v0, 0x0

    move v5, v0

    move-object v0, v1

    move v1, v5

    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_1

    .line 50463
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v4, v3, v1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 50464
    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    if-eq v1, v4, :cond_0

    .line 50465
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "|"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 50462
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 50468
    :cond_1
    const-string v1, "bk_tag"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 50470
    :cond_2
    const-string v0, "bk_author"

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/model/BookInfo;->getAuthor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 50471
    const-string v0, "bk_updateTime"

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/model/BookInfo;->getUpdated()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 50472
    const-string v1, "bk_process"

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/model/BookInfo;->getIsSerial()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "serialize"

    :goto_1
    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50477
    :goto_2
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 50472
    :cond_3
    :try_start_1
    const-string v0, "end"
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 50473
    :catch_0
    move-exception v0

    .line 50474
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2
.end method

.method public static a(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 51500
    if-nez p0, :cond_1

    .line 51508
    :cond_0
    :goto_0
    return-object v0

    .line 51500
    :cond_1
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 51501
    if-eqz v1, :cond_0

    .line 51503
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 51504
    const-string v0, ""

    goto :goto_0

    .line 51506
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 51507
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_4

    .line 51526
    if-nez v0, :cond_3

    const-string v0, ""

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 51510
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x100

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 51511
    if-eqz v0, :cond_5

    .line 51512
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51515
    :cond_5
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 51516
    if-eqz p1, :cond_6

    .line 51517
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51520
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 51521
    if-eqz v0, :cond_5

    .line 51522
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 51525
    :cond_7
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 51243
    const/4 v0, 0x0

    .line 51244
    const/4 v1, 0x5

    if-ne p1, v1, :cond_1

    .line 51245
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MIX_TOC_ID"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 51258
    :cond_0
    :goto_0
    return-object p3

    .line 51246
    :cond_1
    if-eqz p1, :cond_0

    .line 51248
    invoke-static {p1}, Lcom/arcsoft/hpay100/a/a;->h(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 51250
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 51251
    invoke-static {p2}, Lcom/arcsoft/hpay100/a/a;->O(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 51252
    if-eqz v0, :cond_2

    .line 51253
    const/4 v1, 0x0

    aget-object p2, v0, v1

    .line 51256
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_3
    move-object p3, v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 28000
    :try_start_0
    const-string v0, "RSA"

    invoke-static {p1}, Lcom/alipay/sdk/c/a;->a(Ljava/lang/String;)[B

    move-result-object v2

    new-instance v3, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v3, v2}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    const-string v2, "RSA/ECB/PKCS1Padding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v5

    const/4 v2, 0x1

    invoke-virtual {v5, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v5}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v3

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    move v4, v0

    :goto_0
    :try_start_1
    array-length v0, v6

    if-ge v4, v0, :cond_1

    array-length v0, v6

    sub-int/2addr v0, v4

    if-ge v0, v3, :cond_0

    array-length v0, v6

    sub-int/2addr v0, v4

    :goto_1
    invoke-virtual {v5, v6, v4, v0}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    add-int v0, v4, v3

    move v4, v0

    goto :goto_0

    :cond_0
    move v0, v3

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/sdk/c/a;->a([B)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_3
    if-eqz v0, :cond_3

    :try_start_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-object v0, v1

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_2

    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v1, :cond_2

    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_2
    :goto_5
    throw v0

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_4

    :catch_4
    move-exception v0

    move-object v0, v2

    goto :goto_3

    :cond_3
    move-object v0, v1

    goto :goto_2
.end method

.method public static a(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/a/i",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 50180
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mob/tools/a/i;

    if-lez v1, :cond_1

    const/16 v4, 0x26

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v4, v0, Lcom/mob/tools/a/i;->a:Ljava/lang/String;

    iget-object v0, v0, Lcom/mob/tools/a/i;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    if-eqz v4, :cond_0

    if-nez v0, :cond_2

    const-string v0, ""

    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Lcom/arcsoft/hpay100/a/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 22000
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_3

    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    array-length v1, v4

    if-gtz v1, :cond_5

    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    if-eqz p0, :cond_6

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    if-gtz v1, :cond_7

    :cond_6
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_7
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v1

    if-gtz v1, :cond_9

    :cond_8
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_9
    :try_start_0
    array-length v1, v4

    div-int/lit8 v1, v1, 0x8

    add-int/lit8 v1, v1, 0x1

    new-array v6, v1, [B

    move v1, v0

    :goto_1
    array-length v2, v6

    if-ge v1, v2, :cond_a

    const/4 v2, 0x0

    aput-byte v2, v6, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_a
    array-length v7, v4

    move v1, v0

    move v2, v0

    :goto_2
    if-ge v1, v7, :cond_c

    aget-object v8, v4, v1

    div-int/lit8 v0, v2, 0x8

    aget-byte v0, v6, v0

    invoke-interface {v5, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    const/16 v8, 0x80

    rem-int/lit8 v9, v2, 0x8

    shr-int/2addr v8, v9

    or-int/2addr v0, v8

    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v8, v2}, Ljava/io/PrintStream;->println(I)V

    :cond_b
    div-int/lit8 v8, v2, 0x8

    int-to-byte v0, v0

    aput-byte v0, v6, v8

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_c
    invoke-static {v6}, Lcom/alipay/security/mobile/module/a/a/a;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto :goto_3
.end method

.method public static a([B)Ljava/lang/String;
    .locals 5

    .prologue
    .line 26000
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 27000
    new-instance v2, Ljava/lang/StringBuffer;

    array-length v0, v1

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    aget-byte v3, v1, v0

    and-int/lit16 v3, v3, 0xf0

    shr-int/lit8 v3, v3, 0x4

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Character;->forDigit(II)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    aget-byte v3, v1, v0

    and-int/lit8 v3, v3, 0xf

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Character;->forDigit(II)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 26000
    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_1
.end method

.method private static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/a/a/f;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50143
    const-class v2, Lcom/arcsoft/hpay100/a/a;

    monitor-enter v2

    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/mob/a/a/f;

    invoke-direct {v0}, Lcom/mob/a/a/f;-><init>()V

    invoke-static {p0}, Lcom/mob/a/a/c;->a(Landroid/content/Context;)Lcom/mob/a/a/c;

    move-result-object v4

    const-string v1, " select exception_md5, exception_level, exception_time, exception_msg, sum(exception_counts) from table_exception group by exception_md5 having max(_id)"

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    if-eqz p2, :cond_0

    array-length v5, p2

    if-lez v5, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, " select exception_md5, exception_level, exception_time, exception_msg, sum(exception_counts) from table_exception where "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " group by exception_md5 having max(_id)"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-virtual {v4, v1, p2}, Lcom/mob/a/a/c;->a(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/mob/a/a/f;->b:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v5, "type"

    const/4 v6, 0x1

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "errat"

    const/4 v6, 0x2

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "msg"

    const/4 v6, 0x3

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "times"

    const/4 v6, 0x4

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v0, Lcom/mob/a/a/f;->a:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, v0, Lcom/mob/a/a/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v5, 0x32

    if-ne v4, v5, :cond_1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/mob/a/a/f;

    invoke-direct {v0}, Lcom/mob/a/a/f;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_2
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    iget-object v1, v0, Lcom/mob/a/a/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    monitor-exit v2

    return-object v3
.end method

.method public static declared-synchronized a(Landroid/content/Context;[Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/a/a/f;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 50144
    const-class v2, Lcom/arcsoft/hpay100/a/a;

    monitor-enter v2

    :try_start_0
    const-string v0, "exception_level = ?"

    if-eqz p1, :cond_0

    array-length v3, p1

    if-gtz v3, :cond_1

    :cond_0
    move-object v0, v1

    move-object p1, v1

    :cond_1
    invoke-static {p0}, Lcom/mob/a/a/c;->a(Landroid/content/Context;)Lcom/mob/a/a/c;

    move-result-object v1

    const-string v3, "table_exception"

    invoke-virtual {v1, v3}, Lcom/mob/a/a/c;->a(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_2

    invoke-static {p0, v0, p1}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :goto_0
    monitor-exit v2

    return-object v0

    :cond_2
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51732
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 51733
    const/4 v1, 0x0

    .line 51735
    :try_start_0
    const-string v2, "select * from sqlite_master where type = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "table"

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 51736
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 51738
    :cond_0
    const-string v2, "tbl_name"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 51739
    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 51740
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51742
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 51748
    :cond_2
    if-eqz v1, :cond_3

    .line 51749
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 51752
    :cond_3
    return-object v0

    .line 51744
    :catch_0
    move-exception v0

    .line 51745
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 51746
    new-instance v2, Lorg/litepal/exceptions/DatabaseGenerateException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/litepal/exceptions/DatabaseGenerateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51747
    :catchall_0
    move-exception v0

    .line 51748
    if-eqz v1, :cond_4

    .line 51749
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 51751
    :cond_4
    throw v0
.end method

.method public static a(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/integralblue/httpresponsecache/compat/libcore/net/http/c;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 50067
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 50068
    :goto_0
    invoke-virtual {p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;->e()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 50069
    invoke-virtual {p0, v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 50072
    invoke-virtual {p0, v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;->b(I)Ljava/lang/String;

    move-result-object v4

    move v2, v1

    .line 50074
    :cond_0
    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 50076
    const-string v5, " "

    invoke-static {v4, v2, v5}, Lcom/arcsoft/hpay100/a/a;->b(Ljava/lang/String;ILjava/lang/String;)I

    move-result v5

    .line 50078
    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 50079
    invoke-static {v4, v5}, Lcom/arcsoft/hpay100/a/a;->c(Ljava/lang/String;I)I

    move-result v2

    .line 50085
    const-string v5, "realm=\""

    const/4 v7, 0x7

    invoke-virtual {v4, v2, v5, v1, v7}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 50089
    add-int/lit8 v2, v2, 0x7

    .line 50091
    const-string v5, "\""

    invoke-static {v4, v2, v5}, Lcom/arcsoft/hpay100/a/a;->b(Ljava/lang/String;ILjava/lang/String;)I

    move-result v5

    .line 50092
    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 50093
    add-int/lit8 v2, v5, 0x1

    .line 50094
    const-string v5, ","

    invoke-static {v4, v2, v5}, Lcom/arcsoft/hpay100/a/a;->b(Ljava/lang/String;ILjava/lang/String;)I

    move-result v2

    .line 50095
    add-int/lit8 v2, v2, 0x1

    .line 50096
    invoke-static {v4, v2}, Lcom/arcsoft/hpay100/a/a;->c(Ljava/lang/String;I)I

    move-result v2

    .line 50097
    new-instance v5, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/c;

    invoke-direct {v5, v6, v7}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 50068
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 50100
    :cond_2
    return-object v3
.end method

.method public static a(Landroid/content/Context;ILjava/lang/String;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50449
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 50450
    const-string v1, "uid"

    invoke-static {p0}, Lcom/ushaqi/zhuishushenqi/util/e;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50451
    const-string v1, "iid"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50452
    const-string v1, "iids"

    invoke-static {}, Lcom/arcsoft/hpay100/a/a;->n()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50453
    const-string v1, "num"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "20"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50454
    return-object v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/util/Map;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 20000
    const-class v1, Lcom/arcsoft/hpay100/a/a;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v2, "tid"

    const-string v3, ""

    invoke-static {p1, v2, v3}, Landroid/support/design/widget/am;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "utdid"

    const-string v4, ""

    invoke-static {p1, v3, v4}, Landroid/support/design/widget/am;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0}, Landroid/support/design/widget/am;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "userId"

    const-string v6, ""

    invoke-static {p1, v5, v6}, Landroid/support/design/widget/am;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "AC1"

    invoke-interface {v0, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "AC2"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "AC3"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "AC4"

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "AC5"

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v0, 0x0

    .line 30000
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const/4 v1, 0x2

    :try_start_0
    new-array v3, v1, [Lorg/json/JSONObject;

    const/4 v1, 0x0

    aput-object p0, v3, v1

    const/4 v1, 0x1

    aput-object p1, v3, v1

    move v1, v0

    :goto_0
    if-ge v1, v7, :cond_0

    aget-object v4, v3, v1

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :cond_0
    return-object v2

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public static a([BILjava/nio/ByteOrder;)S
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 50125
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p2, v0, :cond_0

    .line 50126
    aget-byte v0, p0, v1

    shl-int/lit8 v0, v0, 0x8

    aget-byte v1, p0, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    .line 50128
    :goto_0
    return v0

    :cond_0
    aget-byte v0, p0, v2

    shl-int/lit8 v0, v0, 0x8

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    goto :goto_0
.end method

.method public static a(III)V
    .locals 1

    .prologue
    .line 50011
    or-int v0, p1, p2

    if-ltz v0, :cond_0

    if-gt p1, p0, :cond_0

    sub-int v0, p0, p1

    if-ge v0, p2, :cond_1

    .line 50012
    :cond_0
    new-instance v0, Lcom/integralblue/httpresponsecache/compat/java/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p0, p1, p2}, Lcom/integralblue/httpresponsecache/compat/java/lang/ArrayIndexOutOfBoundsException;-><init>(III)V

    throw v0

    .line 50015
    :cond_1
    return-void
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 7

    .prologue
    const/4 v6, 0x5

    const/4 v1, 0x0

    .line 50321
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/d;->b(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 50324
    new-array v2, v1, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 50356
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 50357
    if-eqz v0, :cond_1

    .line 50358
    array-length v4, v0

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v1, v0, v2

    .line 50363
    if-eqz v1, :cond_0

    .line 50364
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v6, :cond_0

    .line 50365
    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 50359
    :goto_1
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50358
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 50368
    :cond_0
    const-string v1, ""

    goto :goto_1

    .line 50329
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 50331
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 50333
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->getAll()Ljava/util/List;

    move-result-object v0

    .line 50334
    if-eqz v0, :cond_6

    .line 50337
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;

    .line 50338
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->getBookId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 50341
    :cond_2
    invoke-interface {v2, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 50342
    invoke-interface {v2, v1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 50344
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 50345
    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 50346
    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->t(Ljava/lang/String;)V

    goto :goto_3

    .line 50350
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 50351
    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 50352
    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->r(Ljava/lang/String;)V

    goto :goto_4

    .line 50327
    :cond_6
    return-void
.end method

.method public static a(Landroid/app/Activity;Lcom/arcsoft/hpay100/config/HPaySMS;Lcom/arcsoft/hpay100/y;)V
    .locals 6

    const-string v0, "dalongTest"

    const-string v1, "startMgdmPay"

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p1, Lcom/arcsoft/hpay100/config/HPaySMS;->mOrderidHR:Ljava/lang/String;

    iget-object v1, p1, Lcom/arcsoft/hpay100/config/HPaySMS;->mCorpFeeCode:Ljava/lang/String;

    const-string v0, "dalongTest"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "oderid:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/arcsoft/hpay100/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "dalongTest"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "itemId:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/arcsoft/hpay100/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcom/arcsoft/hpay100/a/b;

    invoke-direct {v5, p1, p2, p0, v1}, Lcom/arcsoft/hpay100/a/b;-><init>(Lcom/arcsoft/hpay100/config/HPaySMS;Lcom/arcsoft/hpay100/y;Landroid/app/Activity;Ljava/lang/String;)V

    const-string v2, "assets/billing.xml"

    const-string v3, ""

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/migu/sdk/api/MiguSdk;->pay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/migu/sdk/api/MiguSdk$IPayCallback;)V

    return-void
.end method

.method public static a(Landroid/app/Notification;Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/graphics/Bitmap;Ljava/lang/CharSequence;ZJLjava/util/List;ZLandroid/app/PendingIntent;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/support/v4/app/NotificationCompatBase$Action;",
            ">(",
            "Landroid/app/Notification;",
            "Landroid/content/Context;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "I",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/CharSequence;",
            "ZJ",
            "Ljava/util/List",
            "<TT;>;Z",
            "Landroid/app/PendingIntent;",
            ")V"
        }
    .end annotation

    .prologue
    .line 4106
    .line 4119
    invoke-interface/range {p11 .. p11}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x5

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 4158
    const/4 v2, 0x3

    if-gt v14, v2, :cond_0

    .line 4159
    sget v12, Landroid/support/v7/appcompat/R$layout;->notification_template_big_media_narrow:I

    .line 4120
    :goto_0
    const/4 v13, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move-wide/from16 v10, p9

    invoke-static/range {v2 .. v13}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/graphics/Bitmap;Ljava/lang/CharSequence;ZJIZ)Landroid/widget/RemoteViews;

    move-result-object v4

    .line 4124
    sget v2, Landroid/support/v7/appcompat/R$id;->media_actions:I

    invoke-virtual {v4, v2}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    .line 4125
    if-lez v14, :cond_1

    .line 4126
    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, v14, :cond_1

    .line 4127
    move-object/from16 v0, p11

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/NotificationCompatBase$Action;

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Landroid/support/v4/app/NotificationCompatBase$Action;)Landroid/widget/RemoteViews;

    move-result-object v2

    .line 4128
    sget v5, Landroid/support/v7/appcompat/R$id;->media_actions:I

    invoke-virtual {v4, v5, v2}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    .line 4126
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    .line 4161
    :cond_0
    sget v12, Landroid/support/v7/appcompat/R$layout;->notification_template_big_media:I

    goto :goto_0

    .line 4131
    :cond_1
    if-eqz p12, :cond_3

    .line 4132
    sget v2, Landroid/support/v7/appcompat/R$id;->cancel_action:I

    const/4 v3, 0x0

    invoke-virtual {v4, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4133
    sget v2, Landroid/support/v7/appcompat/R$id;->cancel_action:I

    const-string v3, "setAlpha"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Landroid/support/v7/appcompat/R$integer;->cancel_button_image_alpha:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    invoke-virtual {v4, v2, v3, v5}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 4135
    sget v2, Landroid/support/v7/appcompat/R$id;->cancel_action:I

    move-object/from16 v0, p13

    invoke-virtual {v4, v2, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 4106
    :goto_2
    iput-object v4, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 4109
    if-eqz p12, :cond_2

    .line 4110
    iget v2, p0, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Landroid/app/Notification;->flags:I

    .line 4112
    :cond_2
    return-void

    .line 4137
    :cond_3
    sget v2, Landroid/support/v7/appcompat/R$id;->cancel_action:I

    const/16 v3, 0x8

    invoke-virtual {v4, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_2
.end method

.method public static a(Landroid/content/Context;II)V
    .locals 2

    .prologue
    .line 51346
    invoke-static {p1}, Lcom/ushaqi/zhuishushenqi/util/T;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 51347
    if-eqz v0, :cond_0

    .line 51348
    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    .line 51349
    const-string v1, "share_book_info_platform"

    invoke-static {p0, v1, v0}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 51356
    :cond_0
    :goto_0
    return-void

    .line 51350
    :cond_1
    const/4 v1, 0x2

    if-ne p2, v1, :cond_2

    .line 51351
    const-string v1, "share_post_detail_platform"

    invoke-static {p0, v1, v0}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 51352
    :cond_2
    const/4 v1, 0x3

    if-ne p2, v1, :cond_0

    .line 51353
    const-string v1, "share_book_list_platform"

    invoke-static {p0, v1, v0}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Landroid/widget/ListView;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 51527
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060116

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 51528
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 51529
    new-instance v2, Landroid/widget/AbsListView$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v0}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 51531
    const-string v0, "customer_night_theme"

    invoke-static {p0, v0, v4}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51532
    const v0, 0x7f020086

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 51537
    :goto_0
    invoke-virtual {v1, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 51538
    invoke-virtual {p1, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 51539
    return-void

    .line 51534
    :cond_0
    const v0, 0x7f0200a9

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/ushaqi/zhuishushenqi/model/Advert;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 51314
    if-nez p1, :cond_1

    .line 51315
    const-string v0, "ad_shelf_show"

    invoke-static {p0, v0, v2}, Lcom/arcsoft/hpay100/a/a;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 51325
    :cond_0
    :goto_0
    return-void

    .line 51318
    :cond_1
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Advert;->get_id()Ljava/lang/String;

    move-result-object v0

    .line 51319
    const-string v1, "ad_shelf_show"

    invoke-static {p0, v1, v2}, Lcom/arcsoft/hpay100/a/a;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 51320
    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 51321
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "zssq_ad_show_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Advert;->getPosition()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Advert;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 51322
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 51323
    const-string v1, "ad_shelf_show"

    invoke-static {p0, v1, v0}, Lcom/arcsoft/hpay100/a/a;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/ushaqi/zhuishushenqi/model/BookInfo;)V
    .locals 3

    .prologue
    .line 50412
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 50413
    const-string v0, "iid"

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/BookInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50414
    const-string v0, "title"

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/BookInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50415
    const-string v0, "cat"

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/BookInfo;->getCat()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50416
    const-string v0, "author"

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/BookInfo;->getAuthor()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50417
    const-string v2, "tag"

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/BookInfo;->getIsSerial()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "serialize"

    :goto_0
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50419
    const-string v0, "attr"

    invoke-static {p1}, Lcom/arcsoft/hpay100/a/a;->a(Lcom/ushaqi/zhuishushenqi/model/BookInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50421
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/BookInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Lcom/a/a/a;->d(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 50422
    return-void

    .line 50417
    :cond_0
    const-string v0, "end"

    goto :goto_0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 17000
    const-class v1, Lcom/arcsoft/hpay100/a/a;

    monitor-enter v1

    :try_start_0
    const-string v0, "vkeyid_settings"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/security/mobile/module/a/a/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/alipay/security/mobile/module/a/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "vkey_applist"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34000
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_0
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    return-void
.end method

.method public static a(Landroid/support/v4/app/FragmentActivity;)V
    .locals 3

    .prologue
    .line 50620
    if-nez p0, :cond_0

    .line 50632
    :goto_0
    return-void

    .line 50623
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 50624
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 50625
    const-string v2, "dialog_gender_intro"

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 50626
    if-eqz v0, :cond_1

    .line 50627
    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 50629
    :cond_1
    new-instance v0, Lcom/ushaqi/zhuishushenqi/util/DialogUtil$GenderIntroDialog;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/util/DialogUtil$GenderIntroDialog;-><init>()V

    .line 50630
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/util/DialogUtil$GenderIntroDialog;->setCancelable(Z)V

    .line 50631
    const-string v2, "dialog_gender_intro"

    invoke-virtual {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/util/DialogUtil$GenderIntroDialog;->show(Landroid/support/v4/app/FragmentTransaction;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static a(Landroid/support/v4/app/FragmentActivity;Lcom/ushaqi/zhuishushenqi/reader/ReaderTocDialog;)V
    .locals 3

    .prologue
    .line 50633
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 50634
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 50635
    const-string v2, "ReaderTocDialog"

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 50636
    if-eqz v0, :cond_0

    .line 50637
    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 50640
    :cond_0
    :try_start_0
    const-string v0, "ReaderTocDialog"

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 50641
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50645
    :goto_0
    return-void

    .line 50642
    :catch_0
    move-exception v0

    .line 50643
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/graphics/Bitmap;Ljava/lang/CharSequence;ZJLjava/util/List;[IZLandroid/app/PendingIntent;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/support/v4/app/NotificationCompatBase$Action;",
            ">(",
            "Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;",
            "Landroid/content/Context;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "I",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/CharSequence;",
            "ZJ",
            "Ljava/util/List",
            "<TT;>;[IZ",
            "Landroid/app/PendingIntent;",
            ")V"
        }
    .end annotation

    .prologue
    .line 4052
    .line 4066
    sget v12, Landroid/support/v7/appcompat/R$layout;->notification_template_media:I

    const/4 v13, 0x1

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move-wide/from16 v10, p9

    invoke-static/range {v2 .. v13}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/graphics/Bitmap;Ljava/lang/CharSequence;ZJIZ)Landroid/widget/RemoteViews;

    move-result-object v5

    .line 4070
    invoke-interface/range {p11 .. p11}, Ljava/util/List;->size()I

    move-result v6

    .line 4071
    if-nez p12, :cond_0

    const/4 v2, 0x0

    move v3, v2

    .line 4074
    :goto_0
    sget v2, Landroid/support/v7/appcompat/R$id;->media_actions:I

    invoke-virtual {v5, v2}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    .line 4075
    if-lez v3, :cond_2

    .line 4076
    const/4 v2, 0x0

    move v4, v2

    :goto_1
    if-ge v4, v3, :cond_2

    .line 4077
    if-lt v4, v6, :cond_1

    .line 4078
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "setShowActionsInCompactView: action %d out of bounds (max %d)"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v7

    const/4 v4, 0x1

    add-int/lit8 v6, v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4071
    :cond_0
    move-object/from16 v0, p12

    array-length v2, v0

    const/4 v3, 0x3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    move v3, v2

    goto :goto_0

    .line 4083
    :cond_1
    aget v2, p12, v4

    move-object/from16 v0, p11

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/NotificationCompatBase$Action;

    .line 4084
    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Landroid/support/v4/app/NotificationCompatBase$Action;)Landroid/widget/RemoteViews;

    move-result-object v2

    .line 4085
    sget v7, Landroid/support/v7/appcompat/R$id;->media_actions:I

    invoke-virtual {v5, v7, v2}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    .line 4076
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_1

    .line 4088
    :cond_2
    if-eqz p13, :cond_4

    .line 4089
    sget v2, Landroid/support/v7/appcompat/R$id;->end_padder:I

    const/16 v3, 0x8

    invoke-virtual {v5, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4090
    sget v2, Landroid/support/v7/appcompat/R$id;->cancel_action:I

    const/4 v3, 0x0

    invoke-virtual {v5, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4091
    sget v2, Landroid/support/v7/appcompat/R$id;->cancel_action:I

    move-object/from16 v0, p14

    invoke-virtual {v5, v2, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 4092
    sget v2, Landroid/support/v7/appcompat/R$id;->cancel_action:I

    const-string v3, "setAlpha"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v6, Landroid/support/v7/appcompat/R$integer;->cancel_button_image_alpha:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-virtual {v5, v2, v3, v4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 4055
    :goto_2
    invoke-interface {p0}, Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;->getBuilder()Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 4056
    if-eqz p13, :cond_3

    .line 4057
    invoke-interface {p0}, Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;->getBuilder()Landroid/app/Notification$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 4059
    :cond_3
    return-void

    .line 4095
    :cond_4
    sget v2, Landroid/support/v7/appcompat/R$id;->end_padder:I

    const/4 v3, 0x0

    invoke-virtual {v5, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4096
    sget v2, Landroid/support/v7/appcompat/R$id;->cancel_action:I

    const/16 v3, 0x8

    invoke-virtual {v5, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_2
.end method

.method public static a(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 51168
    if-eqz p0, :cond_0

    invoke-static {}, Lcom/arcsoft/hpay100/a/a;->k()Z

    move-result v0

    if-nez v0, :cond_1

    .line 51187
    :cond_0
    :goto_0
    return-void

    .line 51173
    :cond_1
    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    .line 51174
    const/4 v1, 0x0

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    .line 51175
    const-class v1, Landroid/view/View;

    const-string v2, "setSystemUiVisibility"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 51176
    const-class v1, Landroid/view/View;

    const-string v2, "SYSTEM_UI_FLAG_HIDE_NAVIGATION"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 51177
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51179
    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v2, v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 51183
    :goto_1
    :try_start_2
    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 51184
    :catch_0
    move-exception v0

    .line 51185
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public static a(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 51855
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 51861
    invoke-virtual {p0, p1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 51860
    :goto_0
    return-void

    .line 51858
    :cond_0
    const-wide/16 v0, 0x10

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public static declared-synchronized a(Lcom/alipay/b/a/d;)V
    .locals 4

    .prologue
    .line 12000
    const-class v1, Lcom/arcsoft/hpay100/a/a;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/b/a/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/support/design/widget/am;->a(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/alipay/b/a/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/arcsoft/hpay100/a/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/alipay/b/a/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "`"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/b/a/d;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_2
    invoke-static {}, Lcom/alipay/security/mobile/module/a/a/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/alipay/security/mobile/module/a/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "device"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "deviceid_v2"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/support/design/widget/am;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Lcom/ushaqi/zhuishushenqi/model/TocSource;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 51189
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/model/TocSource;->getSource()Ljava/lang/String;

    move-result-object v0

    .line 51190
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/model/TocSource;->getSourceId()Ljava/lang/String;

    move-result-object v1

    .line 51191
    invoke-static {p1, v0}, Lcom/ushaqi/zhuishushenqi/db/SourceRecord;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/db/SourceRecord;

    move-result-object v2

    .line 51192
    if-nez v2, :cond_1

    .line 51193
    invoke-static {p1, v0, v1}, Lcom/ushaqi/zhuishushenqi/db/SourceRecord;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 51198
    :cond_0
    :goto_0
    return-void

    .line 51194
    :cond_1
    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/db/SourceRecord;->getSourceId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 51195
    invoke-virtual {v2, v1}, Lcom/ushaqi/zhuishushenqi/db/SourceRecord;->setSourceId(Ljava/lang/String;)V

    .line 51196
    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/db/SourceRecord;->save()Ljava/lang/Long;

    goto :goto_0
.end method

.method public static a(Ljava/io/Closeable;)V
    .locals 1

    .prologue
    .line 8000
    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Ljava/io/File;)V
    .locals 5

    .prologue
    .line 50178
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    array-length v0, v1

    if-gtz v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_0

    :cond_3
    array-length v2, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_5

    aget-object v3, v1, v0

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {v4}, Lcom/arcsoft/hpay100/a/a;->a(Ljava/io/File;)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method public static a(Ljava/io/FileInputStream;Ljava/io/FileOutputStream;)V
    .locals 3

    .prologue
    .line 50192
    const/high16 v0, 0x10000

    new-array v1, v0, [B

    invoke-virtual {p0, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v0

    :goto_0
    if-lez v0, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Ljava/io/FileOutputStream;->write([BII)V

    invoke-virtual {p0, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    return-void
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 50979
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Lcom/arcsoft/hpay100/a/a;->J(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 50980
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 50981
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 50983
    :cond_0
    new-instance v1, Ljava/io/ObjectOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 50984
    invoke-virtual {v1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 50985
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->flush()V

    .line 50986
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50990
    :goto_0
    return-void

    .line 50987
    :catch_0
    move-exception v0

    .line 50988
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 50646
    new-instance v1, Landroid/app/DownloadManager$Query;

    invoke-direct {v1}, Landroid/app/DownloadManager$Query;-><init>()V

    .line 50647
    const-string v0, "download"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    .line 50648
    invoke-virtual {v0, v1}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v3

    .line 50649
    const/4 v2, 0x0

    .line 50650
    const/4 v1, 0x0

    .line 50651
    if-eqz v3, :cond_4

    .line 50652
    :cond_0
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 50653
    const-string v4, "uri"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 50654
    invoke-static {v4}, Lcom/arcsoft/hpay100/a/a;->B(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 50655
    const-string v1, "status"

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 50656
    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    .line 50657
    const/4 v2, 0x1

    .line 50658
    const-string v1, "local_uri"

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 50660
    :cond_1
    const-string v0, "\u6b63\u5728\u4e0b\u8f7d,\u8bf7\u7a0d\u540e"

    invoke-static {p1, v0}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 50675
    :cond_2
    :goto_1
    return-void

    .line 50665
    :cond_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 50667
    :cond_4
    if-eqz v2, :cond_5

    if-eqz v1, :cond_5

    .line 50668
    new-instance v2, Ljava/io/File;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v2}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Ljava/io/File;)Z

    move-result v1

    .line 50669
    if-nez v1, :cond_2

    .line 50670
    invoke-static {p0, p2, v0}, Lcom/arcsoft/hpay100/a/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/app/DownloadManager;)V

    goto :goto_1

    .line 50673
    :cond_5
    invoke-static {p0, p2, v0}, Lcom/arcsoft/hpay100/a/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/app/DownloadManager;)V

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;Lcom/koushikdutta/async/http/b/b;)V
    .locals 5

    .prologue
    .line 50032
    const/4 v0, 0x0

    .line 50033
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 50035
    const-string v1, "=,"

    invoke-static {p0, v0, v1}, Lcom/arcsoft/hpay100/a/a;->b(Ljava/lang/String;ILjava/lang/String;)I

    move-result v1

    .line 50036
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 50038
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x2c

    if-ne v0, v3, :cond_1

    .line 50039
    :cond_0
    add-int/lit8 v0, v1, 0x1

    .line 50040
    const/4 v1, 0x0

    invoke-interface {p1, v2, v1}, Lcom/koushikdutta/async/http/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 50044
    :cond_1
    add-int/lit8 v0, v1, 0x1

    .line 50045
    invoke-static {p0, v0}, Lcom/arcsoft/hpay100/a/a;->c(Ljava/lang/String;I)I

    move-result v0

    .line 50050
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x22

    if-ne v1, v3, :cond_2

    .line 50051
    add-int/lit8 v0, v0, 0x1

    .line 50053
    const-string v1, "\""

    invoke-static {p0, v0, v1}, Lcom/arcsoft/hpay100/a/a;->b(Ljava/lang/String;ILjava/lang/String;)I

    move-result v1

    .line 50054
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 50055
    add-int/lit8 v1, v1, 0x1

    move-object v4, v0

    move v0, v1

    move-object v1, v4

    .line 50064
    :goto_1
    invoke-interface {p1, v2, v1}, Lcom/koushikdutta/async/http/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 50060
    :cond_2
    const-string v1, ","

    invoke-static {p0, v0, v1}, Lcom/arcsoft/hpay100/a/a;->b(Ljava/lang/String;ILjava/lang/String;)I

    move-result v1

    .line 50061
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    move v0, v1

    move-object v1, v4

    goto :goto_1

    .line 50066
    :cond_3
    return-void
.end method

.method private static a(Ljava/lang/String;Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord$BookModifyType;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 50494
    invoke-static {}, Lcom/arcsoft/hpay100/a/a;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord;->getTypeId(Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord$BookModifyType;)I

    move-result v1

    invoke-static {v0, p0, v1}, Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord;->updateOrCreate(Ljava/lang/String;Ljava/lang/String;I)V

    .line 50495
    invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Account;->getUser()Lcom/ushaqi/zhuishushenqi/model/User;

    move-result-object v0

    if-nez v0, :cond_1

    .line 50509
    :cond_0
    :goto_0
    return-void

    .line 50498
    :cond_1
    invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Account;->getToken()Ljava/lang/String;

    move-result-object v3

    .line 50499
    invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Account;->getUser()Lcom/ushaqi/zhuishushenqi/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/User;->getId()Ljava/lang/String;

    move-result-object v4

    .line 50500
    invoke-static {p1}, Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord;->getTypeId(Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord$BookModifyType;)I

    move-result v0

    invoke-static {v4, v0}, Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord;->find(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v5

    .line 50501
    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 50504
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    new-array v6, v0, [Ljava/lang/String;

    move v1, v2

    .line 50505
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 50506
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord;->getBookId()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v1

    .line 50505
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 50508
    :cond_2
    new-instance v0, Lcom/ushaqi/zhuishushenqi/util/X;

    invoke-direct {v0, v4, v3, p1, v6}, Lcom/ushaqi/zhuishushenqi/util/X;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord$BookModifyType;[Ljava/lang/String;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/X;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Landroid/app/DownloadManager;)V
    .locals 3

    .prologue
    .line 50676
    .line 50677
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 50678
    new-instance v1, Landroid/app/DownloadManager$Request;

    invoke-direct {v1, v0}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    .line 50679
    invoke-virtual {v1, p1}, Landroid/app/DownloadManager$Request;->setTitle(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    .line 50680
    invoke-static {p0}, Lcom/arcsoft/hpay100/a/a;->N(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50681
    invoke-static {}, Lcom/arcsoft/hpay100/a/a;->g()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 50682
    invoke-virtual {v1}, Landroid/app/DownloadManager$Request;->allowScanningByMediaScanner()V

    .line 50683
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    .line 50685
    :cond_0
    sget-object v2, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/app/DownloadManager$Request;->setDestinationInExternalPublicDir(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 50688
    :try_start_0
    invoke-virtual {p2, v1}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50692
    :goto_0
    return-void

    .line 50689
    :catch_0
    move-exception v0

    .line 50690
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51005
    sget-object v0, Lcom/ushaqi/zhuishushenqi/c;->c:Ljava/lang/String;

    invoke-static {p1, v0, p0}, Lcom/arcsoft/hpay100/a/a;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 51006
    return-void
.end method

.method public static a(Ljava/net/Socket;)V
    .locals 1

    .prologue
    .line 50025
    if-eqz p0, :cond_0

    .line 50027
    :try_start_0
    invoke-virtual {p0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50031
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Lorg/apache/thrift/b;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/thrift/b",
            "<TT;*>;>(TT;[B)V"
        }
    .end annotation

    .prologue
    .line 51576
    if-nez p1, :cond_0

    new-instance v0, Lorg/apache/thrift/e;

    const-string v1, "the message byte is empty."

    invoke-direct {v0, v1}, Lorg/apache/thrift/e;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lorg/apache/thrift/d;

    invoke-direct {v0}, Lorg/apache/thrift/d;-><init>()V

    invoke-virtual {v0, p0, p1}, Lorg/apache/thrift/d;->a(Lorg/apache/thrift/b;[B)V

    return-void
.end method

.method public static varargs a([Ljava/io/Closeable;)V
    .locals 3

    .prologue
    .line 50131
    array-length v1, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p0, v0

    .line 50132
    if-eqz v2, :cond_0

    .line 50134
    :try_start_0
    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50131
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1

    .line 50140
    :cond_1
    return-void
.end method

.method public static a([Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 50480
    sget-object v0, Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord$BookModifyType;->SHELF_ADD:Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord$BookModifyType;

    invoke-static {p0, v0}, Lcom/arcsoft/hpay100/a/a;->a([Ljava/lang/String;Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord$BookModifyType;)V

    .line 50481
    return-void
.end method

.method private static a([Ljava/lang/String;Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord$BookModifyType;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 50510
    array-length v1, p0

    move v0, v2

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v3, p0, v0

    .line 50511
    invoke-static {}, Lcom/arcsoft/hpay100/a/a;->o()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1}, Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord;->getTypeId(Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord$BookModifyType;)I

    move-result v5

    invoke-static {v4, v3, v5}, Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord;->updateOrCreate(Ljava/lang/String;Ljava/lang/String;I)V

    .line 50510
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 50513
    :cond_0
    invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Account;->getUser()Lcom/ushaqi/zhuishushenqi/model/User;

    move-result-object v0

    if-nez v0, :cond_2

    .line 50527
    :cond_1
    :goto_1
    return-void

    .line 50516
    :cond_2
    invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Account;->getToken()Ljava/lang/String;

    move-result-object v3

    .line 50517
    invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Account;->getUser()Lcom/ushaqi/zhuishushenqi/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/User;->getId()Ljava/lang/String;

    move-result-object v4

    .line 50518
    invoke-static {p1}, Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord;->getTypeId(Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord$BookModifyType;)I

    move-result v0

    invoke-static {v4, v0}, Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord;->find(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v5

    .line 50519
    if-eqz v5, :cond_1

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 50522
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    new-array v6, v0, [Ljava/lang/String;

    move v1, v2

    .line 50523
    :goto_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 50524
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord;->getBookId()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v1

    .line 50523
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 50526
    :cond_3
    new-instance v0, Lcom/ushaqi/zhuishushenqi/util/X;

    invoke-direct {v0, v4, v3, p1, v6}, Lcom/ushaqi/zhuishushenqi/util/X;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord$BookModifyType;[Ljava/lang/String;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/X;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1
.end method

.method public static a(BI)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 51803
    .line 51804
    shl-int v1, v0, p1

    and-int/2addr v1, p0

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 51803
    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/e/a/a/a/a/a;)Z
    .locals 6

    .prologue
    const v5, 0x22000001

    const/4 v0, 0x0

    .line 50282
    if-nez p0, :cond_0

    const-string v1, "MicroMsg.SDK.MMessage"

    const-string v2, "send fail, invalid argument"

    invoke-static {v1, v2}, Lcom/e/a/a/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    iget-object v1, p1, Lcom/e/a/a/a/a/a;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/e/a/a/b/c;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "MicroMsg.SDK.MMessage"

    const-string v2, "send fail, action is null"

    invoke-static {v1, v2}, Lcom/e/a/a/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iget-object v1, p1, Lcom/e/a/a/a/a/a;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/e/a/a/b/c;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/e/a/a/a/a/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".permission.MM_MESSAGE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p1, Lcom/e/a/a/a/a/a;->b:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "_mmessage_sdkVersion"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "_mmessage_appPackage"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "_mmessage_content"

    iget-object v4, p1, Lcom/e/a/a/a/a/a;->c:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "_mmessage_checksum"

    iget-object v4, p1, Lcom/e/a/a/a/a/a;->c:Ljava/lang/String;

    invoke-static {v4, v5, v2}, Lcom/arcsoft/hpay100/a/a;->a(Ljava/lang/String;ILjava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    const-string v2, "MicroMsg.SDK.MMessage"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "send mm message, intent="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", perm="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/e/a/a/b/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/e/a/a/a/a;)Z
    .locals 7

    .prologue
    const v6, 0x22000001

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 50281
    if-nez p0, :cond_0

    const-string v1, "MicroMsg.SDK.MMessageAct"

    const-string v2, "send fail, invalid argument"

    invoke-static {v1, v2}, Lcom/e/a/a/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    iget-object v2, p1, Lcom/e/a/a/a/a;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/e/a/a/b/c;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "MicroMsg.SDK.MMessageAct"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "send fail, invalid targetPkgName, targetPkgName = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/e/a/a/a/a;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/e/a/a/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v2, p1, Lcom/e/a/a/a/a;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/e/a/a/b/c;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/e/a/a/a/a;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".wxapi.WXEntryActivity"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/e/a/a/a/a;->b:Ljava/lang/String;

    :cond_2
    const-string v2, "MicroMsg.SDK.MMessageAct"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "send, targetPkgName = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p1, Lcom/e/a/a/a/a;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", targetClassName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/e/a/a/a/a;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/e/a/a/b/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    iget-object v3, p1, Lcom/e/a/a/a/a;->a:Ljava/lang/String;

    iget-object v4, p1, Lcom/e/a/a/a/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p1, Lcom/e/a/a/a/a;->e:Landroid/os/Bundle;

    if-eqz v3, :cond_3

    iget-object v3, p1, Lcom/e/a/a/a/a;->e:Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "_mmessage_sdkVersion"

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "_mmessage_appPackage"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "_mmessage_content"

    iget-object v5, p1, Lcom/e/a/a/a/a;->c:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "_mmessage_checksum"

    iget-object v5, p1, Lcom/e/a/a/a/a;->c:Ljava/lang/String;

    invoke-static {v5, v6, v3}, Lcom/arcsoft/hpay100/a/a;->a(Ljava/lang/String;ILjava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    iget v3, p1, Lcom/e/a/a/a/a;->d:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_4

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v3

    const/high16 v4, 0x8000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :goto_1
    :try_start_0
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "MicroMsg.SDK.MMessageAct"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "send mm message, intent="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/e/a/a/b/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_0

    :cond_4
    iget v3, p1, Lcom/e/a/a/a/a;->d:I

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "MicroMsg.SDK.MMessageAct"

    const-string v4, "send fail, ex = %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-static {v3, v4, v1}, Lcom/e/a/a/b/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/io/File;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 50922
    if-nez p0, :cond_1

    .line 50937
    :cond_0
    :goto_0
    return v0

    .line 50925
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50928
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 50929
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "file://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "application/vnd.android.package-archive"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 50930
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 50932
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50933
    const/4 v0, 0x1

    goto :goto_0

    .line 50934
    :catch_0
    move-exception v1

    .line 50935
    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 1

    .prologue
    .line 51090
    if-nez p0, :cond_0

    .line 51093
    :goto_0
    return p2

    .line 51094
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 51093
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    goto :goto_0
.end method

.method public static a(Landroid/content/Intent;)Z
    .locals 1

    .prologue
    .line 50311
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Lcom/nostra13/universalimageloader/b/c;II)Z
    .locals 2

    .prologue
    .line 50206
    if-eqz p0, :cond_0

    .line 50207
    invoke-interface {p0, p1, p2}, Lcom/nostra13/universalimageloader/b/c;->a(II)Z

    move-result v0

    .line 50208
    if-nez v0, :cond_0

    .line 50209
    mul-int/lit8 v0, p1, 0x64

    div-int/2addr v0, p2

    const/16 v1, 0x4b

    if-ge v0, v1, :cond_0

    .line 50210
    const/4 v0, 0x1

    .line 50214
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/nostra13/universalimageloader/b/c;I)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 50193
    .line 50194
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v2

    .line 50196
    new-array v3, p3, [B

    .line 50198
    invoke-static {p2, v1, v2}, Lcom/arcsoft/hpay100/a/a;->a(Lcom/nostra13/universalimageloader/b/c;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50205
    :goto_0
    return v1

    :cond_0
    move v0, v1

    .line 50199
    :cond_1
    invoke-virtual {p0, v3, v1, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 50200
    invoke-virtual {p1, v3, v1, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 50201
    add-int/2addr v0, v4

    .line 50202
    invoke-static {p2, v0, v2}, Lcom/arcsoft/hpay100/a/a;->a(Lcom/nostra13/universalimageloader/b/c;II)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 50204
    :cond_2
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 50205
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static a(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 6000
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-class v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Ljava/lang/Integer;

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Ljava/lang/Long;

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Ljava/lang/Double;

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Ljava/lang/Float;

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Ljava/lang/Short;

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Ljava/lang/Character;

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Ljava/lang/Byte;

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Ljava/lang/Void;

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 50124
    if-eq p0, p1, :cond_0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 10

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 51684
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 51685
    const-string v0, "[0-9a-zA-Z]+_[0-9a-zA-Z]+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 51688
    :try_start_0
    const-string v1, "table_schema"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 51689
    const/4 v7, 0x0

    move-object v0, p1

    .line 51688
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 51690
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 51693
    :cond_0
    const-string v0, "name"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 51692
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 51694
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 51696
    const-string v0, "type"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 51695
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    .line 51697
    if-ne v0, v8, :cond_3

    .line 51707
    if-eqz v1, :cond_1

    .line 51708
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    move v0, v8

    .line 51713
    :goto_0
    return v0

    .line 51702
    :cond_2
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v0

    if-nez v0, :cond_0

    .line 51707
    :cond_3
    if-eqz v1, :cond_4

    .line 51708
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 51713
    :cond_4
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 51704
    :catch_0
    move-exception v0

    move-object v1, v9

    .line 51705
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 51707
    if-eqz v1, :cond_4

    .line 51708
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 51706
    :catchall_0
    move-exception v0

    move-object v1, v9

    .line 51707
    :goto_3
    if-eqz v1, :cond_5

    .line 51708
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 51710
    :cond_5
    throw v0

    .line 51706
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 51704
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 51720
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 51731
    :cond_0
    :goto_0
    return v0

    .line 51725
    :cond_1
    :try_start_0
    invoke-static {p1, p2}, Lcom/arcsoft/hpay100/a/a;->c(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Lorg/litepal/d/a/b;

    move-result-object v1

    .line 51726
    invoke-virtual {v1}, Lorg/litepal/d/a/b;->b()Ljava/util/Set;

    move-result-object v1

    .line 51725
    invoke-static {v1, p0}, Lcom/arcsoft/hpay100/a/a;->a(Ljava/util/Collection;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 51727
    :catch_0
    move-exception v1

    .line 51728
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 50300
    :try_start_0
    const-string v0, "RSA"

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 50301
    invoke-static {p2}, Lcom/ushaqi/zhuishushenqi/pay/a/f;->a(Ljava/lang/String;)[B

    move-result-object v1

    .line 50302
    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v2, v1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v0, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    .line 50303
    const-string v1, "SHA1WithRSA"

    invoke-static {v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    .line 50304
    invoke-virtual {v1, v0}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 50305
    const-string v0, "utf-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/security/Signature;->update([B)V

    .line 50306
    invoke-static {p1}, Lcom/ushaqi/zhuishushenqi/pay/a/f;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/security/Signature;->verify([B)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 50310
    :goto_0
    return v0

    .line 50307
    :catch_0
    move-exception v0

    .line 50308
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 50310
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ushaqi/zhuishushenqi/model/Chapter;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 50774
    if-nez p2, :cond_0

    .line 50794
    :goto_0
    return v0

    .line 50779
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/ZhuiShuShenQi/Chapter"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 50780
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/ushaqi/zhuishushenqi/c;->a:Ljava/lang/String;

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 50782
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 50783
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 50785
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 50786
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 50787
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 50788
    invoke-virtual {v1, p3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 50789
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50790
    const/4 v0, 0x1

    goto :goto_0

    .line 50791
    :catch_0
    move-exception v1

    .line 50792
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ushaqi/zhuishushenqi/model/Toc;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 50753
    invoke-static {}, Lcom/arcsoft/hpay100/a/a;->d()Z

    move-result v1

    if-nez v1, :cond_0

    .line 50773
    :goto_0
    return v0

    .line 50758
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/ZhuiShuShenQi/Chapter"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 50759
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/ushaqi/zhuishushenqi/c;->a:Ljava/lang/String;

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 50761
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 50762
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 50764
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 50765
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 50766
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 50767
    invoke-virtual {v1, p3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 50768
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50769
    const/4 v0, 0x1

    goto :goto_0

    .line 50770
    :catch_0
    move-exception v1

    .line 50771
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Ljava/util/Collection;Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 51588
    if-nez p0, :cond_0

    .line 51601
    :goto_0
    return v1

    .line 51591
    :cond_0
    if-nez p1, :cond_1

    .line 51592
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 51595
    :cond_1
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    move v1, v0

    .line 51601
    goto :goto_0

    .line 51595
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 51596
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 51597
    const/4 v0, 0x1

    .line 51598
    goto :goto_1
.end method

.method private static a([B[B)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 50157
    if-ne p0, p1, :cond_1

    move v1, v2

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p0

    array-length v3, p1

    if-lt v0, v3, :cond_0

    move v0, v1

    :goto_1
    array-length v3, p1

    if-ge v0, v3, :cond_2

    aget-byte v3, p0, v0

    aget-byte v4, p1, v0

    if-ne v3, v4, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method public static a(I)[B
    .locals 4

    .prologue
    .line 50271
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 50272
    const/4 v1, 0x3

    rem-int/lit16 v2, p0, 0x100

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 50274
    shr-int/lit8 v1, p0, 0x8

    .line 50275
    const/4 v2, 0x2

    rem-int/lit16 v3, v1, 0x100

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 50276
    shr-int/lit8 v1, v1, 0x8

    .line 50277
    const/4 v2, 0x1

    rem-int/lit16 v3, v1, 0x100

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 50278
    shr-int/lit8 v1, v1, 0x8

    .line 50279
    const/4 v2, 0x0

    rem-int/lit16 v1, v1, 0x100

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    .line 50280
    return-object v0
.end method

.method public static a(Ljava/io/InputStream;)[B
    .locals 4

    .prologue
    .line 50165
    const/16 v0, 0x400

    :try_start_0
    new-array v1, v0, [B

    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    :goto_0
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v0}, Ljava/security/MessageDigest;->update([BII)V

    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/mob/tools/e;->a()Lcom/mob/tools/log/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/d;->w(Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;ILjava/lang/String;)[B
    .locals 3

    .prologue
    .line 50283
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz p0, :cond_0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "mMcShCsTr"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Landroid/support/design/widget/am;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public static a(Lorg/apache/thrift/b;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/thrift/b",
            "<TT;*>;>(TT;)[B"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 51575
    if-nez p0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, Lorg/apache/thrift/g;

    new-instance v2, Lorg/apache/thrift/protocol/a$a;

    invoke-direct {v2}, Lorg/apache/thrift/protocol/a$a;-><init>()V

    invoke-direct {v1, v2}, Lorg/apache/thrift/g;-><init>(Lorg/apache/thrift/protocol/h;)V

    invoke-virtual {v1, p0}, Lorg/apache/thrift/g;->a(Lorg/apache/thrift/b;)[B
    :try_end_0
    .catch Lorg/apache/thrift/e; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "convertThriftObjectToBytes catch TException."

    invoke-static {v2, v1}, Lcom/xiaomi/a/a/a/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static a([BII)[B
    .locals 3

    .prologue
    .line 51494
    array-length v0, p0

    .line 51495
    sub-int v1, p2, p1

    .line 51496
    sub-int/2addr v0, p1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 51497
    new-array v1, v1, [B

    .line 51498
    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 51499
    return-object v1
.end method

.method public static a(Ljava/util/List;Ljava/lang/Class;)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TT;>;)[TT;"
        }
    .end annotation

    .prologue
    .line 50610
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 50611
    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 50612
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    .line 50611
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 50614
    :cond_0
    return-object v0
.end method

.method public static a(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5

    .prologue
    .line 29000
    const/16 v0, 0x28

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x29

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-eqz v0, :cond_0

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_3

    aget-object v2, v1, v0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    aget-object v2, v1, v0

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    aget-object v2, v1, v0

    const-string v3, "\'"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\""

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method public static b(BI)B
    .locals 1

    .prologue
    .line 51805
    .line 51806
    const/4 v0, 0x1

    shl-int/2addr v0, p1

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, p0

    .line 51805
    int-to-byte v0, v0

    return v0
.end method

.method public static b(Landroid/content/Context;II)I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 51557
    const/4 v0, 0x1

    new-array v0, v0, [I

    aput p1, v0, v1

    invoke-virtual {p0, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 51558
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 51559
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 51560
    return v1
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 50171
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2, p1, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p1, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :cond_2
    if-gtz v0, :cond_0

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "failed to parse "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " resource \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static b(Ljava/io/File;)I
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 50725
    .line 50726
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 50728
    if-eqz v2, :cond_1

    .line 50729
    array-length v1, v2

    .line 50730
    array-length v3, v2

    move v6, v0

    move v0, v1

    move v1, v6

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    .line 50731
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 50732
    invoke-static {v4}, Lcom/arcsoft/hpay100/a/a;->b(Ljava/io/File;)I

    move-result v4

    add-int/2addr v0, v4

    .line 50733
    add-int/lit8 v0, v0, -0x1

    .line 50730
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 50737
    :cond_1
    return v0
.end method

.method public static b(Ljava/lang/String;I)I
    .locals 1

    .prologue
    .line 51280
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 51284
    :goto_0
    return v0

    .line 51281
    :catch_0
    move-exception v0

    .line 51282
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 51284
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;ILjava/lang/String;)I
    .locals 2

    .prologue
    .line 50101
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 50102
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 50101
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 50106
    :cond_0
    return p1
.end method

.method public static b([B)Landroid/graphics/Bitmap$CompressFormat;
    .locals 3

    .prologue
    .line 50153
    invoke-static {p0}, Lcom/arcsoft/hpay100/a/a;->g([B)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    if-eqz v1, :cond_1

    const-string v2, "png"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "gif"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    :cond_1
    return-object v0
.end method

.method public static b(I)Lcom/ushaqi/zhuishushenqi/ui/game/N;
    .locals 3

    .prologue
    .line 50411
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/game/N;

    rem-int/lit8 v1, p0, 0x10

    div-int/lit8 v2, p0, 0x10

    invoke-direct {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/ui/game/N;-><init>(II)V

    return-object v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/Serializable;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 50835
    if-eqz p2, :cond_0

    invoke-static {}, Lcom/arcsoft/hpay100/a/a;->d()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 50872
    :goto_0
    return-object v0

    .line 50840
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "/ZhuiShuShenQi/Chapter"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 50841
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/ushaqi/zhuishushenqi/c;->a:Ljava/lang/String;

    invoke-direct {v2, v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 50843
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    move-object v0, v1

    .line 50870
    goto :goto_0

    .line 50846
    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 50848
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    move-object v0, v1

    .line 50870
    goto :goto_0

    .line 50851
    :cond_3
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50852
    :try_start_1
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 50853
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Serializable;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 50859
    :try_start_3
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 50866
    :goto_1
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 50868
    :catch_0
    move-exception v1

    .line 50869
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 50861
    :catch_1
    move-exception v1

    .line 50862
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 50854
    :catch_2
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    .line 50855
    :goto_2
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 50858
    if-eqz v2, :cond_4

    .line 50859
    :try_start_6
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 50865
    :cond_4
    :goto_3
    if-eqz v3, :cond_5

    .line 50866
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    :cond_5
    :goto_4
    move-object v0, v1

    .line 50872
    goto :goto_0

    .line 50861
    :catch_3
    move-exception v0

    .line 50862
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 50868
    :catch_4
    move-exception v0

    .line 50869
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 50857
    :catchall_0
    move-exception v0

    move-object v3, v1

    .line 50858
    :goto_5
    if-eqz v1, :cond_6

    .line 50859
    :try_start_8
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 50865
    :cond_6
    :goto_6
    if-eqz v3, :cond_7

    .line 50866
    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    .line 50870
    :cond_7
    :goto_7
    throw v0

    .line 50861
    :catch_5
    move-exception v1

    .line 50862
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 50868
    :catch_6
    move-exception v1

    .line 50869
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    .line 50857
    :catchall_1
    move-exception v0

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v1, v2

    goto :goto_5

    .line 50854
    :catch_7
    move-exception v0

    move-object v2, v1

    goto :goto_2

    :catch_8
    move-exception v0

    goto :goto_2
.end method

.method public static b()Ljava/lang/String;
    .locals 4

    .prologue
    .line 42000
    sget-object v0, Lcom/arcsoft/hpay100/config/l;->d:Ljava/lang/String;

    const-string v1, "dalongTest"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "kfPhone:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/arcsoft/hpay100/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static declared-synchronized b(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 10000
    const-class v3, Lcom/arcsoft/hpay100/a/a;

    monitor-enter v3

    :try_start_0
    const-string v1, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v2, "profiles"

    const-string v4, "deviceid"

    const-string v5, ""

    invoke-static {p0, v2, v4, v5}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/support/design/widget/am;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v2, v0

    :goto_0
    invoke-static {v2}, Landroid/support/design/widget/am;->a(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    :goto_1
    monitor-exit v3

    return-object v0

    :cond_0
    :try_start_2
    invoke-static {}, Lcom/alipay/security/mobile/module/a/a/b;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/alipay/security/mobile/module/a/a/b;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/alipay/b/a/a/a;

    invoke-direct {v0}, Lcom/alipay/b/a/a/a;-><init>()V

    invoke-static {v2}, Lcom/alipay/b/a/a/a;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v2, "deviceId"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :cond_2
    move-object v0, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 37000
    const-string v1, "dalongTest"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "http post2 request url:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/arcsoft/hpay100/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/arcsoft/hpay100/a/a;->j(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "dalongTest"

    const-string v2, "net error"

    invoke-static {v1, v2}, Lcom/arcsoft/hpay100/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    invoke-static {p0}, Lcom/arcsoft/hpay100/b/c;->a(Landroid/content/Context;)Lcom/arcsoft/hpay100/b/c;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 38000
    const/4 v1, 0x0

    :try_start_1
    invoke-static {p1, v1, p2}, Lcom/arcsoft/hpay100/b/c;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/arcsoft/hpay100/b/d;

    move-result-object v1

    .line 37000
    if-eqz v1, :cond_3

    .line 39000
    const-string v3, "UTF-8"

    invoke-virtual {v1, v3}, Lcom/arcsoft/hpay100/b/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 37000
    :goto_1
    const-string v3, "dalongTest"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "http request2 result:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/arcsoft/hpay100/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {v2}, Lcom/arcsoft/hpay100/b/c;->a()V

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v2, v0

    :goto_2
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/arcsoft/hpay100/b/c;->a()V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_3
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/arcsoft/hpay100/b/c;->a()V

    :cond_2
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :cond_3
    move-object v1, v0

    goto :goto_1
.end method

.method public static declared-synchronized b(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 23000
    const-class v1, Lcom/arcsoft/hpay100/a/a;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/alipay/b/a/a;

    invoke-direct {v0, p0}, Lcom/alipay/b/a/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/alipay/b/a/a;->a(Ljava/util/Map;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 31000
    :try_start_0
    invoke-static {p0}, Landroid/support/design/widget/am;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const-string v2, "SHA-1"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    array-length v4, v2

    if-ge v1, v4, :cond_1

    const-string v4, "%02x"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aget-byte v7, v2, v1

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static b(Ljava/net/URL;)Ljava/net/URI;
    .locals 1

    .prologue
    .line 50010
    invoke-virtual {p0}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 51561
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 51563
    const/16 v1, 0x23ca

    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51567
    :goto_0
    return-void

    .line 51565
    :catch_0
    move-exception v0

    const-string v0, "crop pick error"

    invoke-static {p0, v0}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Lcom/ushaqi/zhuishushenqi/model/Advert;)V
    .locals 2

    .prologue
    .line 51326
    if-nez p1, :cond_0

    .line 51330
    :goto_0
    return-void

    .line 51329
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "zssq_ad_click_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Advert;->getPosition()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Advert;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static declared-synchronized b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 19000
    const-class v1, Lcom/arcsoft/hpay100/a/a;

    monitor-enter v1

    :try_start_0
    const-string v0, "vkeyid_settings"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/security/mobile/module/a/a/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/alipay/security/mobile/module/a/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "vkey_applist_version"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;F)V
    .locals 1

    .prologue
    .line 51143
    if-nez p0, :cond_0

    .line 51149
    :goto_0
    return-void

    .line 51146
    :cond_0
    invoke-static {p0}, Lcom/arcsoft/hpay100/a/a;->P(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 51147
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 51148
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 51136
    if-nez p0, :cond_0

    .line 51142
    :goto_0
    return-void

    .line 51139
    :cond_0
    invoke-static {p0}, Lcom/arcsoft/hpay100/a/a;->P(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 51140
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 51141
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 51122
    if-nez p0, :cond_0

    .line 51128
    :goto_0
    return-void

    .line 51125
    :cond_0
    invoke-static {p0}, Lcom/arcsoft/hpay100/a/a;->P(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 51126
    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 51127
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 50564
    sput-object p1, Lcom/arcsoft/hpay100/a/a;->d:Ljava/lang/String;

    .line 50565
    sput-object p2, Lcom/arcsoft/hpay100/a/a;->e:Ljava/lang/String;

    .line 50566
    sput-object p3, Lcom/arcsoft/hpay100/a/a;->f:Ljava/lang/String;

    .line 50569
    const-string v0, "CIPHER_BOOK_ID"

    invoke-static {p0, v0, p1}, Lcom/arcsoft/hpay100/a/a;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 50570
    const-string v0, "CIPHER_TOC_ID"

    invoke-static {p0, v0, p2}, Lcom/arcsoft/hpay100/a/a;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 50571
    const-string v0, "CIPHER_CHECKSUM"

    invoke-static {p0, v0, p3}, Lcom/arcsoft/hpay100/a/a;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 50572
    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 51115
    if-nez p0, :cond_0

    .line 51121
    :goto_0
    return-void

    .line 51118
    :cond_0
    invoke-static {p0}, Lcom/arcsoft/hpay100/a/a;->P(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 51119
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 51120
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method public static b(Ljava/io/Closeable;)V
    .locals 1

    .prologue
    .line 50016
    if-eqz p0, :cond_0

    .line 50018
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 50024
    :cond_0
    :goto_0
    return-void

    .line 50019
    :catch_0
    move-exception v0

    .line 50020
    throw v0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 45000
    sget-boolean v0, Lcom/arcsoft/hpay100/config/w;->b:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static b([Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 50486
    sget-object v0, Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord$BookModifyType;->FEED_ADD:Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord$BookModifyType;

    invoke-static {p0, v0}, Lcom/arcsoft/hpay100/a/a;->a([Ljava/lang/String;Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord$BookModifyType;)V

    .line 50487
    return-void
.end method

.method public static b(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 1

    .prologue
    .line 51714
    :try_start_0
    invoke-static {p1}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/arcsoft/hpay100/a/a;->a(Ljava/util/Collection;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 51719
    :goto_0
    return v0

    .line 51715
    :catch_0
    move-exception v0

    .line 51716
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 51717
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 2

    .prologue
    .line 51568
    const-string v0, "mistat"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static c(Ljava/lang/String;I)I
    .locals 2

    .prologue
    .line 50107
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 50108
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 50109
    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    .line 50107
    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 50113
    :cond_1
    return p1
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;J)J
    .locals 2

    .prologue
    .line 51150
    if-nez p0, :cond_0

    .line 51153
    :goto_0
    return-wide p2

    .line 51154
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 51153
    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p2

    goto :goto_0
.end method

.method public static c()Ljava/lang/String;
    .locals 4

    .prologue
    .line 43000
    sget-object v0, Lcom/arcsoft/hpay100/config/l;->e:Ljava/lang/String;

    const-string v1, "dalongTest"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "appname:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/arcsoft/hpay100/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static c(I)Ljava/lang/String;
    .locals 6

    .prologue
    .line 50938
    int-to-double v0, p0

    const-wide/high16 v2, 0x4090000000000000L    # 1024.0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    .line 50939
    new-instance v2, Ljava/text/DecimalFormat;

    const-string v3, "0.0"

    invoke-direct {v2, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 50940
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "MB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 50149
    new-instance v0, Lcom/mob/tools/a/l;

    invoke-direct {v0}, Lcom/mob/tools/a/l;-><init>()V

    const-string v3, "images"

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/mob/tools/a/l;->downloadCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/mob/tools/a/p;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized c(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 24000
    const-class v1, Lcom/arcsoft/hpay100/a/a;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/alipay/b/a/g;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/support/design/widget/am;->a(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    monitor-exit v1

    return-object v0

    :cond_1
    :try_start_1
    invoke-static {p0}, Landroid/support/design/widget/am;->a(Landroid/content/Context;)Lcom/alipay/b/a/d;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/alipay/b/a/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/support/design/widget/am;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lcom/alipay/b/a/d;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/support/design/widget/am;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v2, "utdid"

    const-string v3, "utdid"

    const-string v4, ""

    invoke-static {p1, v3, v4}, Landroid/support/design/widget/am;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "tid"

    const-string v3, "tid"

    const-string v4, ""

    invoke-static {p1, v3, v4}, Landroid/support/design/widget/am;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "userId"

    const-string v3, "userId"

    const-string v4, ""

    invoke-static {p1, v3, v4}, Landroid/support/design/widget/am;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Lcom/alipay/b/e/a;->a(Landroid/content/Context;)Lcom/alipay/b/e/a;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4}, Lcom/alipay/b/e/a;->a(ILjava/util/Map;Landroid/support/design/widget/K;)V

    invoke-static {p0}, Landroid/support/design/widget/am;->d(Landroid/content/Context;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static c([B)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 50159
    array-length v2, p0

    .line 50160
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz p0, :cond_0

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_0

    const-string v4, "%02x"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aget-byte v6, p0, v0

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 50159
    return-object v0
.end method

.method public static c(Ljava/io/File;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50741
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 50742
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 50744
    if-eqz v2, :cond_0

    .line 50745
    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 50746
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50745
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 50749
    :cond_0
    return-object v1
.end method

.method public static c(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Lorg/litepal/d/a/b;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 51753
    invoke-static {p0, p1}, Lcom/arcsoft/hpay100/a/a;->b(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 51754
    new-instance v0, Lorg/litepal/d/a/b;

    invoke-direct {v0}, Lorg/litepal/d/a/b;-><init>()V

    .line 51755
    invoke-virtual {v0, p0}, Lorg/litepal/d/a/b;->a(Ljava/lang/String;)V

    .line 51756
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "pragma table_info("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 51759
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 51760
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 51762
    :cond_0
    const-string v2, "name"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 51763
    const-string v3, "type"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 51764
    invoke-virtual {v0, v2, v3}, Lorg/litepal/d/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 51765
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 51771
    :cond_1
    if-eqz v1, :cond_2

    .line 51772
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 51775
    :cond_2
    return-object v0

    .line 51767
    :catch_0
    move-exception v0

    .line 51768
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 51769
    new-instance v2, Lorg/litepal/exceptions/DatabaseGenerateException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/litepal/exceptions/DatabaseGenerateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51770
    :catchall_0
    move-exception v0

    .line 51771
    if-eqz v1, :cond_3

    .line 51772
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 51774
    :cond_3
    throw v0

    .line 51777
    :cond_4
    new-instance v0, Lorg/litepal/exceptions/DatabaseGenerateException;

    .line 51778
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Table doesn\'t exist when executing "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 51777
    invoke-direct {v0, v1}, Lorg/litepal/exceptions/DatabaseGenerateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 50427
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 50428
    const-string v1, "uid"

    invoke-static {p0}, Lcom/ushaqi/zhuishushenqi/util/e;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50429
    invoke-static {p0, p2, p1, v0}, Lcom/a/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 50430
    return-void
.end method

.method public static c(Ljava/io/Closeable;)V
    .locals 1

    .prologue
    .line 50215
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50219
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 48010
    const-string v0, "PullToRefresh"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "You\'re using the deprecated "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " attr, please switch over to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 48011
    return-void
.end method

.method public static varargs c([Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 51606
    if-eqz p0, :cond_2

    .line 51607
    array-length v4, p0

    .line 51608
    if-lez v4, :cond_2

    .line 51609
    aget-object v2, p0, v0

    .line 51610
    const-string v5, "?"

    .line 51617
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 51619
    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    move-object v3, v2

    .line 51620
    :goto_0
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 51611
    :cond_0
    add-int/lit8 v0, v0, 0x1

    if-eq v4, v0, :cond_2

    .line 51612
    new-instance v0, Lorg/litepal/exceptions/DataSupportException;

    const-string v1, "The parameters in conditions are incorrect."

    invoke-direct {v0, v1}, Lorg/litepal/exceptions/DataSupportException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51621
    :cond_1
    add-int/lit8 v2, v0, 0x1

    .line 51622
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 51623
    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    move-object v3, v1

    move v1, v0

    move v0, v2

    goto :goto_0

    .line 51616
    :cond_2
    return-void
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 14000
    :try_start_0
    const-string v1, "vkeyid_settings"

    const-string v2, "log_switch"

    const-string v3, ""

    invoke-static {p0, v1, v2, v3}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/support/design/widget/am;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/alipay/security/mobile/module/a/a/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/alipay/security/mobile/module/a/a/b;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/support/design/widget/am;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 32000
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    move v2, v0

    :goto_1
    if-ge v2, v3, :cond_3

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public static d(I)I
    .locals 1

    .prologue
    const/4 v0, 0x2

    .line 51008
    sparse-switch p0, :sswitch_data_0

    .line 51028
    :goto_0
    :sswitch_0
    return v0

    .line 51010
    :sswitch_1
    const/4 v0, 0x0

    .line 51011
    goto :goto_0

    .line 51013
    :sswitch_2
    const/4 v0, 0x1

    .line 51014
    goto :goto_0

    .line 51019
    :sswitch_3
    const/4 v0, 0x3

    .line 51020
    goto :goto_0

    .line 51022
    :sswitch_4
    const/4 v0, 0x4

    .line 51023
    goto :goto_0

    .line 51008
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_1
        0x14 -> :sswitch_2
        0x32 -> :sswitch_0
        0x64 -> :sswitch_3
        0xc8 -> :sswitch_4
    .end sparse-switch
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 50172
    const-string v0, "drawable"

    invoke-static {p0, v0, p1}, Lcom/arcsoft/hpay100/a/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static d(Landroid/content/Context;)J
    .locals 5

    .prologue
    const-wide/16 v0, 0x0

    .line 15000
    :try_start_0
    const-string v2, "vkeyid_settings"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "vkey_valid"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/support/design/widget/am;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    invoke-static {}, Lcom/alipay/security/mobile/module/a/a/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/alipay/security/mobile/module/a/a/b;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/support/design/widget/am;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 51095
    if-nez p0, :cond_0

    .line 51098
    :goto_0
    return-object p2

    .line 51099
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 51098
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 33000
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const-string v5, "UTF-8"

    invoke-direct {v3, v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_2
    if-eqz v0, :cond_1

    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :cond_1
    :goto_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_3

    :catchall_0
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_4
    if-eqz v1, :cond_3

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    :cond_3
    :goto_5
    throw v0

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_4
    move-exception v1

    goto :goto_2
.end method

.method public static d([B)Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 50162
    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/arcsoft/hpay100/a/a;->e([B)[B

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/mob/tools/b/d;->a([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 51571
    const-string v0, "mistat"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 51155
    if-nez p0, :cond_0

    .line 51161
    :goto_0
    return-void

    .line 51158
    :cond_0
    invoke-static {p0}, Lcom/arcsoft/hpay100/a/a;->P(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 51159
    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 51160
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method public static d()Z
    .locals 2

    .prologue
    .line 50710
    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 6

    .prologue
    const/16 v4, 0x10

    const/4 v2, 0x0

    .line 50158
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v4, 0x0

    :goto_0
    return-object v4

    :cond_1
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    new-array v3, v4, [B

    array-length v1, v0

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    const-string v0, "AES"

    invoke-direct {v4, v3, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string v0, "AES/ECB/PKCS7Padding"

    const-string v3, "BC"

    invoke-static {v0, v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    array-length v3, v1

    invoke-virtual {v0, v3}, Ljavax/crypto/Cipher;->getOutputSize(I)I

    move-result v3

    new-array v4, v3, [B

    array-length v3, v1

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Ljavax/crypto/Cipher;->update([BII[BI)I

    move-result v1

    invoke-virtual {v0, v4, v1}, Ljavax/crypto/Cipher;->doFinal([BI)I

    goto :goto_0
.end method

.method public static e(I)I
    .locals 1

    .prologue
    const/16 v0, 0x32

    .line 51029
    packed-switch p0, :pswitch_data_0

    .line 51049
    :goto_0
    :pswitch_0
    return v0

    .line 51031
    :pswitch_1
    const/16 v0, 0xa

    .line 51032
    goto :goto_0

    .line 51034
    :pswitch_2
    const/16 v0, 0x14

    .line 51035
    goto :goto_0

    .line 51040
    :pswitch_3
    const/16 v0, 0x64

    .line 51041
    goto :goto_0

    .line 51043
    :pswitch_4
    const/16 v0, 0xc8

    .line 51044
    goto :goto_0

    .line 51029
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static e(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 50173
    const-string v0, "string"

    invoke-static {p0, v0, p1}, Lcom/arcsoft/hpay100/a/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static e(Ljava/lang/String;)I
    .locals 4

    .prologue
    .line 50114
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 50115
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 50116
    const v0, 0x7fffffff

    .line 50123
    :goto_0
    return v0

    .line 50117
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 50118
    const/4 v0, 0x0

    goto :goto_0

    .line 50120
    :cond_1
    long-to-int v0, v0

    goto :goto_0

    .line 50123
    :catch_0
    move-exception v0

    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static e()J
    .locals 6

    .prologue
    .line 50711
    invoke-static {}, Lcom/arcsoft/hpay100/a/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50712
    const-wide/16 v0, 0x0

    .line 50714
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    .line 50715
    new-instance v3, Landroid/os/StatFs;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 50716
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v2

    int-to-long v4, v2

    .line 50717
    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v2

    int-to-long v2, v2

    .line 50718
    mul-long/2addr v2, v4

    const-wide/16 v4, 0x400

    div-long v0, v2, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50724
    :goto_0
    return-wide v0

    .line 50719
    :catch_0
    move-exception v2

    .line 50720
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 50724
    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public static e(Landroid/content/Context;Ljava/lang/String;J)J
    .locals 2

    .prologue
    .line 51569
    const-string v0, "mistat"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static declared-synchronized e(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 16000
    const-class v1, Lcom/arcsoft/hpay100/a/a;

    monitor-enter v1

    :try_start_0
    const-string v0, "vkeyid_settings"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "vkey_applist"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/support/design/widget/am;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, ""
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v1

    return-object v0

    :cond_1
    :try_start_1
    invoke-static {}, Lcom/alipay/security/mobile/module/a/a/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/alipay/security/mobile/module/a/a/b;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/support/design/widget/am;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, ""
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v0, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 50166
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    invoke-static {p1, p0}, Lcom/arcsoft/hpay100/a/a;->d(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "\n"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {}, Lcom/mob/tools/e;->a()Lcom/mob/tools/log/d;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/d;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 51129
    if-nez p0, :cond_0

    .line 51135
    :goto_0
    return-void

    .line 51132
    :cond_0
    invoke-static {p0}, Lcom/arcsoft/hpay100/a/a;->P(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 51133
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 51134
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method public static e([B)[B
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 50164
    if-nez p0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v2}, Lcom/arcsoft/hpay100/a/a;->a(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/mob/tools/e;->a()Lcom/mob/tools/log/d;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/tools/log/d;->w(Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_1
.end method

.method public static f(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 50174
    const-string v0, "layout"

    invoke-static {p0, v0, p1}, Lcom/arcsoft/hpay100/a/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static f(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 50146
    .line 50147
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 50148
    :cond_0
    :goto_0
    return-object v0

    .line 50147
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 50148
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v3, v2}, Lcom/arcsoft/hpay100/a/a;->a(Ljava/io/InputStream;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    goto :goto_0
.end method

.method public static declared-synchronized f(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 18000
    const-class v1, Lcom/arcsoft/hpay100/a/a;

    monitor-enter v1

    :try_start_0
    const-string v0, "vkeyid_settings"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "vkey_applist_version"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/support/design/widget/am;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, ""
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v1

    return-object v0

    :cond_1
    :try_start_1
    invoke-static {}, Lcom/alipay/security/mobile/module/a/a/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/alipay/security/mobile/module/a/a/b;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/support/design/widget/am;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, ""
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v0, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 51570
    const-string v0, "mistat"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 50167
    invoke-static {p0, p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "+"

    const-string v2, "%20"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static f()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/db/BookFile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50905
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 50906
    sget-object v0, Lcom/ushaqi/zhuishushenqi/c;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->J(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 50907
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 50908
    if-eqz v2, :cond_0

    .line 50909
    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 50910
    new-instance v5, Lcom/ushaqi/zhuishushenqi/db/BookFile;

    invoke-direct {v5}, Lcom/ushaqi/zhuishushenqi/db/BookFile;-><init>()V

    .line 50911
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v6

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Lcom/arcsoft/hpay100/a/a;->a(JZ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/ushaqi/zhuishushenqi/db/BookFile;->setSize(Ljava/lang/String;)V

    .line 50912
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/ushaqi/zhuishushenqi/db/BookFile;->setName(Ljava/lang/String;)V

    .line 50913
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50909
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 50916
    :cond_0
    return-object v1
.end method

.method public static f(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 51572
    const-string v0, "mistat"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static f(I)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 51188
    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static f([B)[B
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 51779
    if-eqz p0, :cond_0

    array-length v1, p0

    if-gtz v1, :cond_1

    .line 51802
    :cond_0
    :goto_0
    return-object v0

    .line 51783
    :cond_1
    new-instance v2, Ljava/util/zip/Deflater;

    invoke-direct {v2}, Ljava/util/zip/Deflater;-><init>()V

    .line 51784
    invoke-virtual {v2, p0}, Ljava/util/zip/Deflater;->setInput([B)V

    .line 51785
    invoke-virtual {v2}, Ljava/util/zip/Deflater;->finish()V

    .line 51787
    const/16 v1, 0x2000

    new-array v3, v1, [B

    .line 51788
    sput v4, Lcom/arcsoft/hpay100/a/a;->a:I

    .line 51791
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 51792
    :goto_1
    :try_start_1
    invoke-virtual {v2}, Ljava/util/zip/Deflater;->finished()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 51797
    invoke-virtual {v2}, Ljava/util/zip/Deflater;->end()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51799
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 51801
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_0

    .line 51793
    :cond_2
    :try_start_2
    invoke-virtual {v2, v3}, Ljava/util/zip/Deflater;->deflate([B)I

    move-result v0

    .line 51794
    sget v4, Lcom/arcsoft/hpay100/a/a;->a:I

    add-int/2addr v4, v0

    sput v4, Lcom/arcsoft/hpay100/a/a;->a:I

    .line 51795
    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 51798
    :catchall_0
    move-exception v0

    .line 51799
    :goto_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 51800
    :cond_3
    throw v0

    .line 51798
    :catchall_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_2
.end method

.method public static g(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 50175
    const-string v0, "id"

    invoke-static {p0, v0, p1}, Lcom/arcsoft/hpay100/a/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static g(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;
    .locals 2

    .prologue
    .line 50154
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "png"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "gif"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    :goto_0
    return-object v0

    :cond_1
    const-string v1, "jpg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "jpeg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "bmp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "tif"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_0

    :cond_3
    invoke-static {p0}, Lcom/arcsoft/hpay100/a/a;->W(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "png"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "gif"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_0

    :cond_5
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_0
.end method

.method public static g(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 51199
    packed-switch p0, :pswitch_data_0

    .line 51231
    const-string v0, "mix"

    .line 51233
    :goto_0
    return-object v0

    .line 51201
    :pswitch_0
    const-string v0, "mix"

    goto :goto_0

    .line 51204
    :pswitch_1
    const-string v0, "zhineng"

    goto :goto_0

    .line 51207
    :pswitch_2
    const-string v0, "shenma"

    goto :goto_0

    .line 51210
    :pswitch_3
    const-string v0, "baidu"

    goto :goto_0

    .line 51213
    :pswitch_4
    const-string v0, "tieba"

    goto :goto_0

    .line 51216
    :pswitch_5
    const-string v0, "soso"

    goto :goto_0

    .line 51219
    :pswitch_6
    const-string v0, "sogou"

    goto :goto_0

    .line 51222
    :pswitch_7
    const-string v0, "leidian"

    goto :goto_0

    .line 51225
    :pswitch_8
    const-string v0, "easou"

    goto :goto_0

    .line 51228
    :pswitch_9
    const-string v0, "zhuishuvip"

    goto :goto_0

    .line 51199
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_8
        :pswitch_2
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_9
    .end packed-switch
.end method

.method private static g([B)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x4

    .line 50156
    new-array v0, v2, [B

    fill-array-data v0, :array_0

    new-array v1, v2, [B

    fill-array-data v1, :array_1

    invoke-static {p0, v0}, Lcom/arcsoft/hpay100/a/a;->a([B[B)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, v1}, Lcom/arcsoft/hpay100/a/a;->a([B[B)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "jpg"

    :goto_0
    return-object v0

    :cond_1
    new-array v0, v2, [B

    fill-array-data v0, :array_2

    invoke-static {p0, v0}, Lcom/arcsoft/hpay100/a/a;->a([B[B)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "png"

    goto :goto_0

    :cond_2
    const-string v0, "GIF"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {p0, v0}, Lcom/arcsoft/hpay100/a/a;->a([B[B)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "gif"

    goto :goto_0

    :cond_3
    const-string v0, "BM"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {p0, v0}, Lcom/arcsoft/hpay100/a/a;->a([B[B)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "bmp"

    goto :goto_0

    :cond_4
    new-array v0, v3, [B

    fill-array-data v0, :array_3

    new-array v1, v3, [B

    fill-array-data v1, :array_4

    invoke-static {p0, v0}, Lcom/arcsoft/hpay100/a/a;->a([B[B)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {p0, v1}, Lcom/arcsoft/hpay100/a/a;->a([B[B)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    const-string v0, "tif"

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    goto :goto_0

    :array_0
    .array-data 1
        -0x1t
        -0x28t
        -0x1t
        -0x20t
    .end array-data

    :array_1
    .array-data 1
        -0x1t
        -0x28t
        -0x1t
        -0x1ft
    .end array-data

    :array_2
    .array-data 1
        -0x77t
        0x50t
        0x4et
        0x47t
    .end array-data

    :array_3
    .array-data 1
        0x49t
        0x49t
        0x2at
    .end array-data

    :array_4
    .array-data 1
        0x4dt
        0x4dt
        0x2at
    .end array-data
.end method

.method public static declared-synchronized g(Landroid/content/Context;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 21000
    const-class v1, Lcom/arcsoft/hpay100/a/a;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/alipay/security/mobile/module/b/d;->a()Lcom/alipay/security/mobile/module/b/d;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v0, "AE1"

    invoke-static {}, Lcom/alipay/security/mobile/module/b/d;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "AE2"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/alipay/security/mobile/module/b/d;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "AE3"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/alipay/security/mobile/module/b/d;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "1"

    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AE4"

    invoke-static {}, Lcom/alipay/security/mobile/module/b/d;->d()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AE5"

    invoke-static {}, Lcom/alipay/security/mobile/module/b/d;->e()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AE6"

    invoke-static {}, Lcom/alipay/security/mobile/module/b/d;->f()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AE7"

    invoke-static {}, Lcom/alipay/security/mobile/module/b/d;->g()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AE8"

    invoke-static {}, Lcom/alipay/security/mobile/module/b/d;->h()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AE9"

    invoke-static {}, Lcom/alipay/security/mobile/module/b/d;->i()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AE10"

    invoke-static {}, Lcom/alipay/security/mobile/module/b/d;->j()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AE11"

    invoke-static {}, Lcom/alipay/security/mobile/module/b/d;->k()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AE12"

    invoke-static {}, Lcom/alipay/security/mobile/module/b/d;->l()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AE13"

    invoke-static {}, Lcom/alipay/security/mobile/module/b/d;->m()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AE14"

    invoke-static {}, Lcom/alipay/security/mobile/module/b/d;->n()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AE15"

    invoke-static {}, Lcom/alipay/security/mobile/module/b/d;->o()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v2

    :cond_0
    :try_start_1
    const-string v0, "0"

    goto/16 :goto_0

    :cond_1
    const-string v0, "0"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 51573
    const-string v0, "mistat"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static g()Z
    .locals 2

    .prologue
    .line 51082
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static g(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 50191
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/arcsoft/hpay100/a/a;->a(Ljava/io/FileInputStream;Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static h(Landroid/content/Context;)Lcom/alipay/security/mobile/module/http/a;
    .locals 1

    .prologue
    .line 36000
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/alipay/security/mobile/module/http/b;->a(Landroid/content/Context;)Lcom/alipay/security/mobile/module/http/b;

    move-result-object v0

    goto :goto_0
.end method

.method public static h(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 50176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Mob/cache/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/mob/tools/b/a;->a(Landroid/content/Context;)Lcom/mob/tools/b/a;

    move-result-object v1

    invoke-static {}, Lcom/mob/tools/b/a;->p()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 50177
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 50176
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/Mob/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/mob/tools/b/a;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/cache/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_2
    return-object v0
.end method

.method public static h(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 50161
    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/arcsoft/hpay100/a/a;->i(Ljava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/mob/tools/b/d;->a([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 50260
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 50261
    const-string v1, "ISO-8859-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 50262
    invoke-static {v0}, Lokio/ByteString;->of([B)Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->base64()Ljava/lang/String;

    move-result-object v0

    .line 50263
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Basic "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 50265
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static h()Z
    .locals 2

    .prologue
    .line 51083
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static h(I)Z
    .locals 1

    .prologue
    .line 51234
    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    const/4 v0, 0x7

    if-eq p0, v0, :cond_0

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static i(Landroid/content/Context;)I
    .locals 11

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x1

    .line 46000
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    :try_start_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    if-nez v6, :cond_0

    move v0, v1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v7

    sget-object v8, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v7, v8, :cond_d

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v0, v2, :cond_1

    const/4 v0, 0x6

    goto :goto_0

    :cond_1
    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cmwap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v0, v3

    goto :goto_0

    :cond_3
    const-string v1, "cmnet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v0, v2

    goto :goto_0

    :cond_4
    const-string v1, "3gwap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x7

    goto :goto_0

    :cond_5
    const-string v1, "3gnet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v0, 0x8

    goto :goto_0

    :cond_6
    const-string v1, "uniwap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    move v0, v4

    goto :goto_0

    :cond_7
    const-string v1, "uninet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    move v0, v5

    goto :goto_0

    :cond_8
    const-string v1, "ctwap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v0, 0x4

    goto :goto_0

    :cond_9
    const-string v1, "ctnet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "#777"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    const/4 v0, 0x5

    goto/16 :goto_0

    :cond_b
    move v0, v2

    goto/16 :goto_0

    :cond_c
    move v0, v2

    goto/16 :goto_0

    :cond_d
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v7

    if-nez v7, :cond_e

    move v0, v1

    goto/16 :goto_0

    :cond_e
    array-length v8, v7

    move v0, v3

    :goto_1
    if-lt v0, v8, :cond_f

    move v0, v1

    goto/16 :goto_0

    :cond_f
    aget-object v9, v7, v0

    invoke-virtual {v9}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v9

    sget-object v10, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v9, v10, :cond_1a

    aget-object v9, v7, v0

    invoke-virtual {v9}, Landroid/net/NetworkInfo;->getType()I

    move-result v9

    if-nez v9, :cond_1a

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    move v0, v2

    goto/16 :goto_0

    :cond_10
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cmwap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    move v0, v3

    goto/16 :goto_0

    :cond_11
    const-string v1, "cmnet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    move v0, v2

    goto/16 :goto_0

    :cond_12
    const-string v1, "3gwap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 v0, 0x7

    goto/16 :goto_0

    :cond_13
    const-string v1, "3gnet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    const/16 v0, 0x8

    goto/16 :goto_0

    :cond_14
    const-string v1, "uniwap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    move v0, v4

    goto/16 :goto_0

    :cond_15
    const-string v1, "uninet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    move v0, v5

    goto/16 :goto_0

    :cond_16
    const-string v1, "ctwap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    const/4 v0, 0x4

    goto/16 :goto_0

    :cond_17
    const-string v1, "ctnet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    const-string v1, "#777"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    :cond_18
    const/4 v0, 0x5

    goto/16 :goto_0

    :cond_19
    move v0, v2

    goto/16 :goto_0

    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1
.end method

.method public static i(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 51290
    div-int/lit16 v0, p0, 0x2710

    if-lez v0, :cond_0

    .line 51291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit16 v1, p0, 0x2710

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u4e07"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 51297
    :goto_0
    return-object v0

    .line 51292
    :cond_0
    div-int/lit16 v0, p0, 0x3e8

    if-lez v0, :cond_1

    .line 51293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit16 v1, p0, 0x3e8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u5343"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 51294
    :cond_1
    div-int/lit8 v0, p0, 0x64

    if-lez v0, :cond_2

    .line 51295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit8 v1, p0, 0x64

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u767e"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 51297
    :cond_2
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 50289
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 50291
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 50292
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 50293
    aget-object v3, v2, v0

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 50294
    const/4 v4, 0x0

    aget-object v4, v3, v4

    aget-object v5, v2, v0

    const/4 v6, 0x0

    aget-object v3, v3, v6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v5, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50292
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 50296
    :catch_0
    move-exception v0

    .line 50297
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 50299
    :cond_0
    return-object v1
.end method

.method public static i(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 50423
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 50424
    const-string v1, "uid"

    invoke-static {p0}, Lcom/ushaqi/zhuishushenqi/util/e;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50425
    invoke-static {p0, p1, v0}, Lcom/a/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 50426
    return-void
.end method

.method public static i()Z
    .locals 2

    .prologue
    .line 51084
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static i(Ljava/lang/String;)[B
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 50163
    if-nez p0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    const-string v1, "utf-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/arcsoft/hpay100/a/a;->e([B)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {}, Lcom/mob/tools/e;->a()Lcom/mob/tools/log/d;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/d;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static j(I)I
    .locals 2

    .prologue
    .line 51863
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 51867
    shr-int/lit8 v0, p0, 0x8

    and-int/lit16 v0, v0, 0xff

    .line 51866
    :goto_0
    return v0

    .line 51868
    :cond_0
    shr-int/lit8 v0, p0, 0x8

    and-int/lit16 v0, v0, 0xff

    .line 51866
    goto :goto_0
.end method

.method public static j(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 50168
    :try_start_0
    const-string v0, "utf-8"

    invoke-static {p0, v0}, Lcom/arcsoft/hpay100/a/a;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/mob/tools/e;->a()Lcom/mob/tools/log/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/d;->w(Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static j(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50750
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/ZhuiShuShenQi/Chapter"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 50751
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/ushaqi/zhuishushenqi/c;->a:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 50752
    invoke-static {v1}, Lcom/arcsoft/hpay100/a/a;->c(Ljava/io/File;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static j()Z
    .locals 2

    .prologue
    .line 51085
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static j(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 47000
    invoke-static {p0}, Lcom/arcsoft/hpay100/a/a;->i(Landroid/content/Context;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static j(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 50941
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 50943
    const/16 v1, 0x80

    :try_start_0
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50947
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 50945
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static k(Ljava/lang/String;)J
    .locals 2

    .prologue
    .line 50179
    :try_start_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0}, Ljava/util/Date;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/mob/tools/e;->a()Lcom/mob/tools/log/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/d;->w(Ljava/lang/Throwable;)I

    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static k(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 50962
    .line 50965
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 50966
    :try_start_1
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 50971
    if-eqz v2, :cond_0

    .line 50972
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 50978
    :cond_0
    :goto_0
    return-object v0

    .line 50974
    :catch_0
    move-exception v1

    .line 50975
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 50967
    :catch_1
    move-exception v1

    move-object v2, v0

    .line 50968
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 50971
    if-eqz v2, :cond_0

    .line 50972
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 50974
    :catch_2
    move-exception v1

    .line 50975
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 50970
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    .line 50971
    :goto_2
    if-eqz v2, :cond_1

    .line 50972
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 50976
    :cond_1
    :goto_3
    throw v0

    .line 50974
    :catch_3
    move-exception v1

    .line 50975
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 50970
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 50967
    :catch_4
    move-exception v1

    goto :goto_1

    :catch_5
    move-exception v1

    move-object v2, v0

    goto :goto_1

    :catch_6
    move-exception v1

    goto :goto_1
.end method

.method public static k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 50991
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-static {p0}, Lcom/arcsoft/hpay100/a/a;->J(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 50992
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 51004
    :goto_0
    return-object v0

    .line 50995
    :cond_0
    new-instance v2, Ljava/io/ObjectInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 50997
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    .line 50999
    :catch_0
    move-exception v1

    .line 51000
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 51001
    :catch_1
    move-exception v1

    .line 51002
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static k()Z
    .locals 3

    .prologue
    .line 51162
    :try_start_0
    const-string v0, "android.os.Build"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "hasSmartBar"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 51163
    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 51167
    :goto_0
    return v0

    :catch_0
    move-exception v0

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "mx2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static k(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 48000
    invoke-static {p0}, Lcom/arcsoft/hpay100/a/a;->i(Landroid/content/Context;)I

    move-result v2

    const/4 v0, 0x0

    if-eqz v2, :cond_0

    if-eq v2, v1, :cond_0

    const/4 v3, 0x7

    if-eq v2, v3, :cond_0

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    const/16 v3, 0x9

    if-eq v2, v3, :cond_0

    const/16 v3, 0xa

    if-ne v2, v3, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0
.end method

.method public static l(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 50181
    const-string v0, "://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->m(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v1}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/arcsoft/hpay100/a/a;->m(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/mob/tools/e;->a()Lcom/mob/tools/log/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/d;->w(Ljava/lang/Throwable;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_1
.end method

.method public static l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 51674
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 51676
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_0

    .line 51677
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 51683
    :goto_0
    return-object v0

    .line 51679
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 51683
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static l()Z
    .locals 2

    .prologue
    .line 51407
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a()Lcom/ushaqi/zhuishushenqi/MyApplication;

    move-result-object v0

    const-string v1, "force_encrypt_chapter"

    invoke-static {v0, v1}, Lcom/umeng/a/b;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51408
    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static l(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 51089
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static l(Landroid/content/Context;)[I
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 50170
    :try_start_0
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-nez v0, :cond_0

    new-array v0, v7, [I

    fill-array-data v0, :array_0

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/mob/tools/e;->a()Lcom/mob/tools/log/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/d;->w(Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xd

    if-ge v1, v2, :cond_1

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    new-array v0, v7, [I

    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    aput v2, v0, v4

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    aput v1, v0, v3

    goto :goto_1

    :cond_1
    :try_start_1
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getRealSize"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/graphics/Point;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v2, 0x0

    iget v3, v1, Landroid/graphics/Point;->x:I

    aput v3, v0, v2

    const/4 v2, 0x1

    iget v1, v1, Landroid/graphics/Point;->y:I

    aput v1, v0, v2
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-static {}, Lcom/mob/tools/e;->a()Lcom/mob/tools/log/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/d;->w(Ljava/lang/Throwable;)I

    new-array v0, v7, [I

    fill-array-data v0, :array_1

    goto :goto_1

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public static m(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 50182
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    if-eqz p0, :cond_2

    const-string v0, "&"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_2

    aget-object v5, v3, v0

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x2

    if-lt v6, v7, :cond_0

    aget-object v6, v5, v8

    if-nez v6, :cond_1

    :cond_0
    aget-object v5, v5, v1

    invoke-static {v5}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    aget-object v6, v5, v1

    invoke-static {v6}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aget-object v5, v5, v8

    invoke-static {v5}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    return-object v2
.end method

.method public static m(Landroid/content/Context;)Ljava/io/File;
    .locals 1

    .prologue
    .line 50220
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Z)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private static m()Ljava/lang/String;
    .locals 2

    .prologue
    .line 13000
    const-string v0, "deviceid_v2"

    invoke-static {v0}, Landroid/support/design/widget/am;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "device"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/alipay/security/mobile/module/a/a/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/alipay/security/mobile/module/a/a/b;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static m(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 51331
    if-nez p1, :cond_1

    .line 51332
    const-string v0, "ad_splash_show"

    invoke-static {p0, v0, v1}, Lcom/arcsoft/hpay100/a/a;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 51341
    :cond_0
    :goto_0
    return-void

    .line 51335
    :cond_1
    const-string v0, "ad_splash_show"

    invoke-static {p0, v0, v1}, Lcom/arcsoft/hpay100/a/a;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51336
    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 51337
    :cond_2
    const-string v1, "ad_splash_show"

    invoke-static {p0, v1, p1}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 51338
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 51339
    const-string v1, "ad_splash_show"

    invoke-static {p0, v1, v0}, Lcom/arcsoft/hpay100/a/a;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static n(Ljava/lang/String;)I
    .locals 9

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 50183
    .line 50184
    if-nez p0, :cond_0

    invoke-static {p0}, Lcom/arcsoft/hpay100/a/a;->X(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object v0

    throw v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p0}, Lcom/arcsoft/hpay100/a/a;->X(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object v0

    throw v0

    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2d

    if-ne v3, v4, :cond_2

    move v3, v0

    :goto_0
    if-eqz v3, :cond_3

    if-ne v0, v2, :cond_4

    invoke-static {p0}, Lcom/arcsoft/hpay100/a/a;->X(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object v0

    throw v0

    :cond_2
    move v3, v1

    goto :goto_0

    :cond_3
    move v0, v1

    :cond_4
    const/16 v4, 0xa

    .line 50185
    const v5, -0xccccccc

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    move v8, v1

    move v1, v0

    move v0, v8

    :goto_1
    if-ge v1, v6, :cond_8

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1, v4}, Lcom/arcsoft/hpay100/a/a;->a(II)I

    move-result v1

    const/4 v7, -0x1

    if-ne v1, v7, :cond_5

    invoke-static {p0}, Lcom/arcsoft/hpay100/a/a;->X(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object v0

    throw v0

    :cond_5
    if-le v5, v0, :cond_6

    invoke-static {p0}, Lcom/arcsoft/hpay100/a/a;->X(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object v0

    throw v0

    :cond_6
    mul-int v7, v0, v4

    sub-int v1, v7, v1

    if-le v1, v0, :cond_7

    invoke-static {p0}, Lcom/arcsoft/hpay100/a/a;->X(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object v0

    throw v0

    :cond_7
    move v0, v1

    move v1, v2

    goto :goto_1

    :cond_8
    if-nez v3, :cond_9

    neg-int v0, v0

    if-gez v0, :cond_9

    invoke-static {p0}, Lcom/arcsoft/hpay100/a/a;->X(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object v0

    throw v0

    .line 50183
    :cond_9
    return v0
.end method

.method public static n(Landroid/content/Context;)Ljava/io/File;
    .locals 3

    .prologue
    .line 50237
    .line 50245
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Z)Ljava/io/File;

    move-result-object v0

    .line 50238
    new-instance v1, Ljava/io/File;

    const-string v2, "uil-images"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 50239
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 50240
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v2

    if-nez v2, :cond_0

    .line 50244
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method private static n()Ljava/lang/String;
    .locals 3

    .prologue
    .line 50437
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->getAll()Ljava/util/List;

    move-result-object v0

    .line 50438
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 50439
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 50441
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;

    .line 50442
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->getBookId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50443
    const-string v0, "|"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 50446
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 50448
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static n(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 51342
    const-string v0, "home_ab_menu_click"

    invoke-static {p0, v0, p1}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 51343
    return-void
.end method

.method public static o(Ljava/lang/String;)J
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 50188
    .line 50189
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/Throwable;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid long: \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    new-instance v0, Ljava/lang/Throwable;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid long: \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x2d

    if-ne v2, v4, :cond_2

    move v2, v0

    :goto_0
    if-eqz v2, :cond_3

    if-ne v0, v3, :cond_4

    new-instance v0, Ljava/lang/Throwable;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid long: \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move v2, v1

    goto :goto_0

    :cond_3
    move v0, v1

    :cond_4
    const/16 v1, 0xa

    invoke-static {p0, v0, v1, v2}, Lcom/arcsoft/hpay100/a/a;->a(Ljava/lang/String;IIZ)J

    move-result-wide v0

    .line 50188
    return-wide v0
.end method

.method private static o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50490
    invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Account;->getUser()Lcom/ushaqi/zhuishushenqi/model/User;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 50491
    invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Account;->getUser()Lcom/ushaqi/zhuishushenqi/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/User;->getId()Ljava/lang/String;

    move-result-object v0

    .line 50493
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static o(Landroid/content/Context;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50431
    invoke-static {p0}, Lcom/arcsoft/hpay100/a/a;->p(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    .line 50432
    const-string v1, "iid"

    invoke-static {}, Lcom/arcsoft/hpay100/a/a;->n()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50433
    return-object v0
.end method

.method public static o(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 51344
    const-string v0, "splash_ad_click"

    invoke-static {p0, v0, p1}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 51345
    return-void
.end method

.method public static p(Landroid/content/Context;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50434
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 50435
    const-string v1, "uid"

    invoke-static {p0}, Lcom/ushaqi/zhuishushenqi/util/e;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50436
    return-object v0
.end method

.method public static p(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 51357
    const-string v0, "book_category_major_click"

    invoke-static {p0, v0, p1}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 51358
    return-void
.end method

.method public static p(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 50266
    const-string v0, "POST"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "PUT"

    .line 50267
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "PATCH"

    .line 50268
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static q(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 50560
    const-string v0, "CIPHER_BOOK_ID"

    invoke-static {p0, v0, v1}, Lcom/arcsoft/hpay100/a/a;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/arcsoft/hpay100/a/a;->d:Ljava/lang/String;

    .line 50561
    const-string v0, "CIPHER_TOC_ID"

    invoke-static {p0, v0, v1}, Lcom/arcsoft/hpay100/a/a;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/arcsoft/hpay100/a/a;->e:Ljava/lang/String;

    .line 50562
    const-string v0, "CIPHER_CHECKSUM"

    invoke-static {p0, v0, v1}, Lcom/arcsoft/hpay100/a/a;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/arcsoft/hpay100/a/a;->f:Ljava/lang/String;

    .line 50563
    return-void
.end method

.method public static q(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 51359
    const-string v0, "reader_menu_event"

    invoke-static {p0, v0, p1}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 51360
    return-void
.end method

.method public static q(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 50269
    invoke-static {p0}, Lcom/arcsoft/hpay100/a/a;->p(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "DELETE"

    .line 50270
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static r(Landroid/content/Context;)I
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 51055
    .line 51056
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 51057
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 51058
    if-nez v0, :cond_0

    .line 51074
    :goto_0
    return v1

    .line 51061
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    .line 51062
    if-nez v3, :cond_2

    .line 51063
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    .line 51064
    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->Q(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 51065
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cmnet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51066
    const/4 v0, 0x3

    :goto_1
    move v1, v0

    .line 51074
    goto :goto_0

    .line 51068
    :cond_1
    const/4 v0, 0x2

    goto :goto_1

    .line 51071
    :cond_2
    if-ne v3, v2, :cond_3

    move v0, v2

    .line 51072
    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public static r(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 50312
    invoke-static {p0}, Lcom/arcsoft/hpay100/a/a;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50313
    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/push/BookSubRecord;->create(Ljava/lang/String;)V

    .line 50314
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a()Lcom/ushaqi/zhuishushenqi/MyApplication;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaomi/mipush/sdk/d;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 50315
    return-void
.end method

.method public static r(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 51401
    invoke-static {p0, p1}, Lcom/umeng/a/b;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51402
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static s(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 50316
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "book:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static s(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 51405
    const-string v0, "post_official_open"

    invoke-static {p0, v0, p1}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 51406
    return-void
.end method

.method public static s(Landroid/content/Context;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 51075
    invoke-static {p0}, Lcom/arcsoft/hpay100/a/a;->r(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static t(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 51444
    const-string v0, "HOT_KEY_WORD_CLICK"

    invoke-static {p0, v0, p1}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 51445
    return-void
.end method

.method public static t(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 50317
    invoke-static {p0}, Lcom/arcsoft/hpay100/a/a;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50318
    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/push/BookUnSubRecord;->create(Ljava/lang/String;)V

    .line 50319
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a()Lcom/ushaqi/zhuishushenqi/MyApplication;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaomi/mipush/sdk/d;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 50320
    return-void
.end method

.method public static t(Landroid/content/Context;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 51076
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 51077
    if-nez v0, :cond_0

    move v0, v1

    .line 51081
    :goto_0
    return v0

    .line 51080
    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 51081
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static u(Landroid/content/Context;Ljava/lang/String;)F
    .locals 1

    .prologue
    .line 51453
    invoke-static {p0, p1}, Lcom/umeng/a/b;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51455
    :try_start_0
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 51457
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static u(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 51298
    const-string v0, "key_all_post_open_by_day"

    .line 51299
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/util/t;->a()I

    move-result v1

    .line 51300
    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    .line 51301
    if-eq v1, v2, :cond_0

    .line 51302
    const-string v2, "all_post_open_by_day"

    invoke-static {p0, v2}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 51303
    invoke-static {p0, v0, v1}, Lcom/arcsoft/hpay100/a/a;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 51305
    :cond_0
    return-void
.end method

.method public static u(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 50478
    sget-object v0, Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord$BookModifyType;->SHELF_ADD:Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord$BookModifyType;

    invoke-static {p0, v0}, Lcom/arcsoft/hpay100/a/a;->a(Ljava/lang/String;Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord$BookModifyType;)V

    .line 50479
    return-void
.end method

.method public static v(Landroid/content/Context;Ljava/lang/String;)F
    .locals 1

    .prologue
    .line 51470
    invoke-static {p0, p1}, Lcom/umeng/a/b;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51472
    :try_start_0
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 51474
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method public static v(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 51306
    const-string v0, "key_audiobook_listen_count"

    .line 51307
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/util/t;->a()I

    move-result v1

    .line 51308
    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    .line 51309
    if-eq v1, v2, :cond_0

    .line 51310
    const-string v2, "audiobook_listen_count"

    invoke-static {p0, v2}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 51311
    invoke-static {p0, v0, v1}, Lcom/arcsoft/hpay100/a/a;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 51313
    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 50482
    sget-object v0, Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord$BookModifyType;->SHELF_REMOVE:Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord$BookModifyType;

    invoke-static {p0, v0}, Lcom/arcsoft/hpay100/a/a;->a(Ljava/lang/String;Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord$BookModifyType;)V

    .line 50483
    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 50484
    sget-object v0, Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord$BookModifyType;->FEED_ADD:Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord$BookModifyType;

    invoke-static {p0, v0}, Lcom/arcsoft/hpay100/a/a;->a(Ljava/lang/String;Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord$BookModifyType;)V

    .line 50485
    return-void
.end method

.method public static w(Landroid/content/Context;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 51361
    const-string v0, "com.ushaqi.zhuishushenqitest"

    const-string v3, "com.ushaqi.zhuishushenqi"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51374
    :cond_0
    :goto_0
    return v1

    .line 51364
    :cond_1
    invoke-static {p0}, Landroid/support/design/widget/am;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 51365
    const-string v0, "home_game_center_toggle"

    invoke-static {p0, v0}, Lcom/umeng/a/b;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51366
    invoke-static {v0, v2}, Lcom/arcsoft/hpay100/a/a;->b(Ljava/lang/String;I)I

    move-result v0

    .line 51367
    invoke-static {p0}, Landroid/support/design/widget/am;->f(Landroid/content/Context;)I

    move-result v4

    .line 51368
    if-ge v4, v0, :cond_4

    move v0, v1

    .line 51369
    :goto_1
    const-string v4, "Anzhi"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "Taobao"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "Uc"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "Zhihuiyun"

    .line 51370
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "Tencent"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 51371
    :cond_2
    if-eqz v0, :cond_3

    invoke-static {p0}, Landroid/support/design/widget/am;->o(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    move v0, v2

    .line 51368
    goto :goto_1

    :cond_5
    move v1, v0

    .line 51374
    goto :goto_0
.end method

.method public static w(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 51486
    invoke-static {p0, p1}, Lcom/umeng/a/b;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 51489
    :try_start_0
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 51493
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    float-to-double v4, v1

    cmpg-double v1, v2, v4

    if-gez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 51491
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static x(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 50488
    sget-object v0, Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord$BookModifyType;->FEED_REMOVE:Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord$BookModifyType;

    invoke-static {p0, v0}, Lcom/arcsoft/hpay100/a/a;->a(Ljava/lang/String;Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord$BookModifyType;)V

    .line 50489
    return-void
.end method

.method public static x(Landroid/content/Context;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 51375
    invoke-static {p0}, Landroid/support/design/widget/am;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 51376
    const-string v1, "game_center_disabled_at_channel"

    invoke-static {p0, v1}, Lcom/umeng/a/b;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 51377
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 51378
    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 51379
    array-length v4, v3

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v5, v3, v1

    .line 51381
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 51386
    :goto_1
    return v0

    .line 51379
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 51386
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public static x(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 51574
    const-string v0, "mistat"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static y(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0xa

    const/4 v0, 0x0

    .line 50528
    .line 50533
    if-eqz p0, :cond_2

    .line 50534
    const-string v1, "(?m)^[ \u3000\t]+"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 50537
    :goto_0
    if-eqz v1, :cond_3

    .line 50538
    const-string v2, "(?m)^"

    const-string v3, "\u3000\u3000"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 50541
    :goto_1
    if-eqz v1, :cond_5

    .line 50542
    const-string v2, "&nbsp"

    const-string v3, "\u3000"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 50543
    const-string v2, "&quot"

    const-string v3, "\""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 50547
    if-eqz v1, :cond_0

    .line 50548
    const-string v0, "^\u3000{3,}"

    const-string v2, "\u3000\u3000"

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50549
    const-string v1, "\n\u3000{3,}"

    const-string v2, "\n\u3000\u3000"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50552
    :cond_0
    :goto_2
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v4, :cond_4

    .line 50532
    :cond_1
    :goto_3
    return-object v0

    :cond_2
    move-object v1, v0

    .line 50536
    goto :goto_0

    :cond_3
    move-object v1, v0

    .line 50540
    goto :goto_1

    .line 50555
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_5
    move-object v0, v1

    goto :goto_2
.end method

.method public static y(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 51387
    const-string v0, "show_remove_ad"

    invoke-static {p0, v0}, Lcom/umeng/a/b;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51388
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static z(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 50556
    if-eqz p0, :cond_0

    .line 50557
    const-string v0, "\\n[\\s]+"

    const-string v1, "\n"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 50559
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static z(Landroid/content/Context;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 51389
    invoke-static {p0}, Landroid/support/design/widget/am;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 51390
    const-string v1, "one_yuan_disabled_channel"

    invoke-static {p0, v1}, Lcom/umeng/a/b;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 51391
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 51392
    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 51393
    array-length v4, v3

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v5, v3, v1

    .line 51395
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 51400
    :goto_1
    return v0

    .line 51393
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 51400
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public a(Landroid/support/design/widget/am;)V
    .locals 2

    .prologue
    .line 2584
    iget-object v0, p0, Lcom/arcsoft/hpay100/a/a;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1}, Landroid/support/design/widget/am;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 2585
    return-void
.end method
