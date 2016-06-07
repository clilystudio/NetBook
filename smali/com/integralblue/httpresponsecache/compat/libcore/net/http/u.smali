.class final Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;

.field private final e:Ljava/lang/String;

.field private final f:[Ljava/security/cert/Certificate;

.field private final g:[Ljava/security/cert/Certificate;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 427
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 429
    :try_start_0
    invoke-static {p1}, Lcom/integralblue/httpresponsecache/compat/libcore/a/b;->c(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;->a:Ljava/lang/String;

    .line 430
    invoke-static {p1}, Lcom/integralblue/httpresponsecache/compat/libcore/a/b;->c(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;->c:Ljava/lang/String;

    .line 431
    new-instance v1, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;

    invoke-direct {v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;-><init>()V

    iput-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;->b:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;

    .line 432
    invoke-static {p1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;->a(Ljava/io/InputStream;)I

    move-result v2

    move v1, v0

    .line 433
    :goto_0
    if-ge v1, v2, :cond_0

    .line 434
    iget-object v3, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;->b:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;

    invoke-static {p1}, Lcom/integralblue/httpresponsecache/compat/libcore/a/b;->c(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;->b(Ljava/lang/String;)V

    .line 433
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 437
    :cond_0
    new-instance v1, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;

    invoke-direct {v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;-><init>()V

    iput-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;->d:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;

    .line 438
    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;->d:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;

    invoke-static {p1}, Lcom/integralblue/httpresponsecache/compat/libcore/a/b;->c(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;->a(Ljava/lang/String;)V

    .line 439
    invoke-static {p1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;->a(Ljava/io/InputStream;)I

    move-result v1

    .line 440
    :goto_1
    if-ge v0, v1, :cond_1

    .line 441
    iget-object v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;->d:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;

    invoke-static {p1}, Lcom/integralblue/httpresponsecache/compat/libcore/a/b;->c(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;->b(Ljava/lang/String;)V

    .line 440
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 444
    :cond_1
    invoke-direct {p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 445
    invoke-static {p1}, Lcom/integralblue/httpresponsecache/compat/libcore/a/b;->c(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 446
    invoke-static {v0}, Lcom/integralblue/httpresponsecache/compat/c;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 447
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "expected \"\" but was \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 458
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    throw v0

    .line 449
    :cond_2
    :try_start_1
    invoke-static {p1}, Lcom/integralblue/httpresponsecache/compat/libcore/a/b;->c(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;->e:Ljava/lang/String;

    .line 450
    invoke-direct {p0, p1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;->b(Ljava/io/InputStream;)[Ljava/security/cert/Certificate;

    move-result-object v0

    iput-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;->f:[Ljava/security/cert/Certificate;

    .line 451
    invoke-direct {p0, p1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;->b(Ljava/io/InputStream;)[Ljava/security/cert/Certificate;

    move-result-object v0

    iput-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;->g:[Ljava/security/cert/Certificate;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 458
    :goto_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 459
    return-void

    .line 453
    :cond_3
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;->e:Ljava/lang/String;

    .line 454
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;->f:[Ljava/security/cert/Certificate;

    .line 455
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;->g:[Ljava/security/cert/Certificate;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public constructor <init>(Ljava/net/URI;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;Ljava/net/HttpURLConnection;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 486
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 487
    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;->a:Ljava/lang/String;

    .line 488
    iput-object p2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;->b:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;

    .line 489
    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;->c:Ljava/lang/String;

    .line 490
    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;->a(Ljava/util/Map;)Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;

    move-result-object v1

    iput-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;->d:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;

    .line 492
    invoke-direct {p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 493
    check-cast p3, Ljavax/net/ssl/HttpsURLConnection;

    .line 494
    invoke-virtual {p3}, Ljavax/net/ssl/HttpsURLConnection;->getCipherSuite()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;->e:Ljava/lang/String;

    .line 497
    :try_start_0
    invoke-virtual {p3}, Ljavax/net/ssl/HttpsURLConnection;->getServerCertificates()[Ljava/security/cert/Certificate;
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 500
    :goto_0
    iput-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;->f:[Ljava/security/cert/Certificate;

    .line 501
    invoke-virtual {p3}, Ljavax/net/ssl/HttpsURLConnection;->getLocalCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    iput-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;->g:[Ljava/security/cert/Certificate;

    .line 507
    :goto_1
    return-void

    .line 503
    :cond_0
    iput-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;->e:Ljava/lang/String;

    .line 504
    iput-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;->f:[Ljava/security/cert/Certificate;

    .line 505
    iput-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;->g:[Ljava/security/cert/Certificate;

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>(Ljava/net/URI;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;Ljava/net/HttpURLConnection;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 462
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 463
    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;->a:Ljava/lang/String;

    .line 464
    iput-object p2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;->b:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;

    .line 465
    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;->c:Ljava/lang/String;

    .line 466
    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;->a(Ljava/util/Map;)Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;

    move-result-object v1

    iput-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;->d:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;

    .line 467
    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;->d:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;

    const-string v2, "Content-Encoding"

    invoke-virtual {v1, v2, p4}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    invoke-direct {p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 470
    check-cast p3, Ljavax/net/ssl/HttpsURLConnection;

    .line 471
    invoke-virtual {p3}, Ljavax/net/ssl/HttpsURLConnection;->getCipherSuite()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;->e:Ljava/lang/String;

    .line 474
    :try_start_0
    invoke-virtual {p3}, Ljavax/net/ssl/HttpsURLConnection;->getServerCertificates()[Ljava/security/cert/Certificate;
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 477
    :goto_0
    iput-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;->f:[Ljava/security/cert/Certificate;

    .line 478
    invoke-virtual {p3}, Ljavax/net/ssl/HttpsURLConnection;->getLocalCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    iput-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;->g:[Ljava/security/cert/Certificate;

    .line 484
    :goto_1
    return-void

    .line 480
    :cond_0
    iput-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;->e:Ljava/lang/String;

    .line 481
    iput-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;->f:[Ljava/security/cert/Certificate;

    .line 482
    iput-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;->g:[Ljava/security/cert/Certificate;

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static a(Ljava/io/InputStream;)I
    .locals 4

    .prologue
    .line 542
    invoke-static {p0}, Lcom/integralblue/httpresponsecache/compat/libcore/a/b;->c(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 544
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 546
    :catch_0
    move-exception v1

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "expected an int but was \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 600
    if-eqz p0, :cond_0

    const-string v0, "chapter2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "t="

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 601
    const-string v0, "(.+)(\\?.*t\\=.*)"

    const-string v1, "$1"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 604
    :cond_0
    return-object p0
.end method

.method private static a(Ljava/io/Writer;[Ljava/security/cert/Certificate;)V
    .locals 4

    .prologue
    .line 571
    if-nez p1, :cond_1

    .line 572
    const-string v0, "-1\n"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 584
    :cond_0
    return-void

    .line 576
    :cond_1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v1, p1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 577
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .line 578
    invoke-virtual {v2}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v2

    .line 579
    invoke-static {v2}, Lcom/integralblue/httpresponsecache/compat/libcore/a/a;->b([B)Ljava/lang/String;

    move-result-object v2

    .line 580
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 577
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 582
    :catch_0
    move-exception v0

    .line 583
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/security/cert/CertificateEncodingException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private a()Z
    .locals 2

    .prologue
    .line 538
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;->a:Ljava/lang/String;

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;)Z
    .locals 1

    .prologue
    .line 372
    invoke-direct {p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;->a()Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;)Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;->d:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;

    return-object v0
.end method

.method private b(Ljava/io/InputStream;)[Ljava/security/cert/Certificate;
    .locals 5

    .prologue
    .line 551
    invoke-static {p1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;->a(Ljava/io/InputStream;)I

    move-result v0

    .line 552
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 553
    const/4 v0, 0x0

    .line 564
    :cond_0
    return-object v0

    .line 556
    :cond_1
    :try_start_0
    const-string v1, "X.509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v2

    .line 557
    new-array v0, v0, [Ljava/security/cert/Certificate;

    .line 558
    const/4 v1, 0x0

    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 559
    invoke-static {p1}, Lcom/integralblue/httpresponsecache/compat/libcore/a/b;->c(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    .line 560
    sget-object v4, Lcom/integralblue/httpresponsecache/compat/a;->b:Ljava/nio/charset/Charset;

    invoke-static {v3, v4}, Lcom/integralblue/httpresponsecache/compat/c;->a(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-static {v3}, Lcom/integralblue/httpresponsecache/compat/libcore/a/a;->a([B)[B

    move-result-object v3

    .line 561
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v2, v4}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v3

    aput-object v3, v0, v1
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 558
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 565
    :catch_0
    move-exception v0

    .line 566
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/security/cert/CertificateException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic c(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;)[Ljava/security/cert/Certificate;
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;->f:[Ljava/security/cert/Certificate;

    return-object v0
.end method

.method static synthetic e(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;)[Ljava/security/cert/Certificate;
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;->g:[Ljava/security/cert/Certificate;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/b/a;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/16 v5, 0xa

    .line 510
    invoke-virtual {p1, v1}, Lcom/b/a;->a(I)Ljava/io/OutputStream;

    move-result-object v0

    .line 511
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    sget-object v4, Lcom/integralblue/httpresponsecache/compat/a;->a:Ljava/nio/charset/Charset;

    invoke-direct {v3, v0, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 513
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 514
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 515
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;->b:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;

    invoke-virtual {v3}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;->e()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    move v0, v1

    .line 516
    :goto_0
    iget-object v3, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;->b:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;

    invoke-virtual {v3}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;->e()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 517
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;->b:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;

    invoke-virtual {v4, v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;->b:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;

    .line 518
    invoke-virtual {v4, v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;->b(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 517
    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 516
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 521
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;->d:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;

    invoke-virtual {v3}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 522
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;->d:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;

    invoke-virtual {v3}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;->e()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 523
    :goto_1
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;->d:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;->e()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 524
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;->d:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;

    invoke-virtual {v3, v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;->d:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;

    .line 525
    invoke-virtual {v3, v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 524
    invoke-virtual {v2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 523
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 528
    :cond_1
    invoke-direct {p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 529
    invoke-virtual {v2, v5}, Ljava/io/Writer;->write(I)V

    .line 530
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 531
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;->f:[Ljava/security/cert/Certificate;

    invoke-static {v2, v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;->a(Ljava/io/Writer;[Ljava/security/cert/Certificate;)V

    .line 532
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;->g:[Ljava/security/cert/Certificate;

    invoke-static {v2, v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;->a(Ljava/io/Writer;[Ljava/security/cert/Certificate;)V

    .line 534
    :cond_2
    invoke-virtual {v2}, Ljava/io/Writer;->close()V

    .line 535
    return-void
.end method

.method public final a(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)Z"
        }
    .end annotation

    .prologue
    .line 590
    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 591
    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 593
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;->c:Ljava/lang/String;

    .line 594
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;

    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;->d:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;

    invoke-direct {v0, p1, v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;-><init>(Ljava/net/URI;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;)V

    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;->b:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;

    .line 596
    invoke-virtual {v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;->g()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;->a(Ljava/util/Map;Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
