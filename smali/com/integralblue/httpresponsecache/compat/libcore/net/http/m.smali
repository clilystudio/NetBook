.class public Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final c:Ljava/net/CacheResponse;


# instance fields
.field protected final a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;

.field protected b:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/h;

.field private d:Ljava/lang/String;

.field private e:Lcom/integralblue/httpresponsecache/compat/java/net/ResponseSource;

.field private f:Ljava/io/InputStream;

.field private g:Ljava/io/OutputStream;

.field private h:Ljava/io/OutputStream;

.field private i:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/b;

.field private j:Ljava/io/InputStream;

.field private final k:Ljava/net/ResponseCache;

.field private l:Ljava/net/CacheResponse;

.field private m:Ljava/net/CacheRequest;

.field private n:J

.field private o:Z

.field private p:Z

.field private q:I

.field private final r:Ljava/net/URI;

.field private final s:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;

.field private t:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;

.field private u:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;

.field private v:Ljava/io/InputStream;

.field private w:Z

.field private x:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    new-instance v0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/n;

    invoke-direct {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/n;-><init>()V

    sput-object v0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->c:Ljava/net/CacheResponse;

    return-void
.end method

.method public constructor <init>(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;Ljava/lang/String;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/h;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/I;)V
    .locals 3

    .prologue
    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    invoke-static {}, Ljava/net/ResponseCache;->getDefault()Ljava/net/ResponseCache;

    move-result-object v0

    iput-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->k:Ljava/net/ResponseCache;

    .line 140
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->n:J

    .line 156
    const/4 v0, 0x1

    iput v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->q:I

    .line 193
    iput-object p1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;

    .line 194
    iput-object p2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->d:Ljava/lang/String;

    .line 195
    iput-object p4, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->b:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/h;

    .line 196
    iput-object p5, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->i:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/b;

    .line 199
    :try_start_0
    invoke-virtual {p1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->b(Ljava/net/URL;)Ljava/net/URI;

    move-result-object v0

    iput-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->r:Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    new-instance v0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;

    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->r:Ljava/net/URI;

    new-instance v2, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;

    invoke-direct {v2, p3}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;-><init>(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;)V

    invoke-direct {v0, v1, v2}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;-><init>(Ljava/net/URI;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;)V

    iput-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->s:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;

    .line 205
    return-void

    .line 200
    :catch_0
    move-exception v0

    .line 201
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private a(I)V
    .locals 4

    .prologue
    .line 641
    iget-wide v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->n:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 642
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 645
    :cond_0
    invoke-virtual {p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->r()Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;

    move-result-object v0

    .line 646
    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;->f()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/integralblue/httpresponsecache/compat/a;->c:Ljava/nio/charset/Charset;

    invoke-static {v0, v1}, Lcom/integralblue/httpresponsecache/compat/c;->a(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 648
    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    array-length v1, v0

    add-int/2addr v1, p1

    const v2, 0x8000

    if-gt v1, v2, :cond_1

    .line 649
    new-instance v1, Ljava/io/BufferedOutputStream;

    iget-object v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->g:Ljava/io/OutputStream;

    array-length v3, v0

    add-int/2addr v3, p1

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->h:Ljava/io/OutputStream;

    .line 652
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->n:J

    .line 653
    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->h:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 654
    return-void
.end method

.method private a(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;)V
    .locals 3

    .prologue
    .line 615
    :goto_0
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->f:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/a/b;->c(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/integralblue/httpresponsecache/compat/c;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 616
    invoke-virtual {p1, v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 619
    :cond_0
    invoke-static {}, Ljava/net/CookieHandler;->getDefault()Ljava/net/CookieHandler;

    move-result-object v0

    .line 620
    if-eqz v0, :cond_1

    .line 621
    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->r:Ljava/net/URI;

    invoke-virtual {p1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;->g()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/CookieHandler;->put(Ljava/net/URI;Ljava/util/Map;)V

    .line 623
    :cond_1
    return-void
.end method

.method private a(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;Ljava/io/InputStream;)V
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->j:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 370
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 372
    :cond_0
    iput-object p1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->t:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;

    .line 373
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->t:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;->e()Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;->b()I

    move-result v0

    iput v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->q:I

    .line 374
    if-eqz p2, :cond_1

    .line 375
    invoke-direct {p0, p2}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->a(Ljava/io/InputStream;)V

    .line 377
    :cond_1
    return-void
.end method

.method private a(Ljava/io/InputStream;)V
    .locals 2

    .prologue
    .line 527
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->t:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;->e()Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;

    move-result-object v0

    const-string v1, "Content-Encoding"

    invoke-virtual {v0, v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 529
    iget-boolean v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->o:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->t:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 534
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->t:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;->b()V

    .line 535
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, p1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->j:Ljava/io/InputStream;

    .line 539
    :goto_0
    return-void

    .line 537
    :cond_0
    iput-object p1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->j:Ljava/io/InputStream;

    goto :goto_0
.end method

.method protected static u()Ljava/lang/String;
    .locals 2

    .prologue
    .line 765
    const-string v0, "http.agent"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 766
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Java"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "java.version"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private x()Z
    .locals 2

    .prologue
    .line 380
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->d:Ljava/lang/String;

    const-string v1, "POST"

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->d:Ljava/lang/String;

    const-string v1, "PUT"

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private y()V
    .locals 3

    .prologue
    .line 566
    :cond_0
    new-instance v0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;

    invoke-direct {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;-><init>()V

    .line 567
    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->f:Ljava/io/InputStream;

    invoke-static {v1}, Lcom/integralblue/httpresponsecache/compat/libcore/a/b;->c(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;->a(Ljava/lang/String;)V

    .line 568
    invoke-direct {p0, v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->a(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;)V

    .line 569
    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;->c()I

    move-result v1

    const/16 v2, 0x64

    if-eq v1, v2, :cond_0

    .line 570
    new-instance v1, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;

    iget-object v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->r:Ljava/net/URI;

    invoke-direct {v1, v2, v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;-><init>(Ljava/net/URI;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;)V

    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->a(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;Ljava/io/InputStream;)V

    .line 571
    return-void
.end method

.method private z()Ljava/lang/String;
    .locals 5

    .prologue
    .line 725
    iget v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->q:I

    if-nez v0, :cond_1

    const-string v0, "HTTP/1.0"

    .line 726
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3730
    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;

    invoke-virtual {v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->getURL()Ljava/net/URL;

    move-result-object v1

    .line 3731
    invoke-virtual {p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->s()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3732
    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    .line 726
    :cond_0
    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 725
    :cond_1
    const-string v0, "HTTP/1.1"

    goto :goto_0

    .line 3734
    :cond_2
    invoke-virtual {v1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v1

    .line 3735
    if-nez v1, :cond_3

    .line 3736
    const-string v1, "/"

    goto :goto_1

    .line 3737
    :cond_3
    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3738
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method


# virtual methods
.method protected final a(Ljava/net/URL;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 775
    invoke-virtual {p1}, Ljava/net/URL;->getPort()I

    move-result v1

    .line 776
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 777
    if-lez v1, :cond_0

    iget-object v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;

    invoke-virtual {v2}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->b()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 778
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 780
    :cond_0
    return-object v0
.end method

.method public final a()Ljava/net/URI;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->r:Ljava/net/URI;

    return-object v0
.end method

.method public final a(Z)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 486
    iget-object v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->j:Ljava/io/InputStream;

    iget-object v3, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->v:Ljava/io/InputStream;

    if-ne v2, v3, :cond_0

    .line 487
    iget-object v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->j:Ljava/io/InputStream;

    invoke-static {v2}, Lcom/arcsoft/hpay100/a/a;->b(Ljava/io/Closeable;)V

    .line 490
    :cond_0
    iget-boolean v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->x:Z

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->b:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/h;

    if-eqz v2, :cond_5

    .line 491
    iput-boolean v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->x:Z

    .line 494
    iget-object v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->i:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/b;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->i:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/b;

    iget-boolean v2, v2, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/b;->a:Z

    if-nez v2, :cond_1

    move p1, v0

    .line 2770
    :cond_1
    iget-object v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->t:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->t:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;

    invoke-virtual {v2}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;->d()Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->s:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;

    .line 2771
    invoke-virtual {v2}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;->b()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 499
    :cond_3
    :goto_0
    if-eqz v1, :cond_4

    move p1, v0

    .line 503
    :cond_4
    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->j:Ljava/io/InputStream;

    instance-of v1, v1, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/J;

    if-eqz v1, :cond_9

    move v1, v0

    .line 507
    :goto_1
    if-eqz v1, :cond_8

    iget-object v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->j:Ljava/io/InputStream;

    if-eqz v2, :cond_8

    .line 510
    :try_start_0
    iget-object v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->j:Ljava/io/InputStream;

    invoke-static {v2}, Lcom/integralblue/httpresponsecache/compat/libcore/a/b;->b(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 516
    :goto_2
    if-nez v0, :cond_7

    .line 517
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->b:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/h;

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/h;->a()V

    .line 518
    iput-object v4, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->b:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/h;

    .line 524
    :cond_5
    :goto_3
    return-void

    :cond_6
    move v1, v0

    .line 2771
    goto :goto_0

    .line 519
    :cond_7
    iget-boolean v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->w:Z

    if-eqz v0, :cond_5

    .line 520
    sget-object v0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/j;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/j;

    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->b:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/h;

    invoke-virtual {v0, v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/j;->a(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/h;)V

    .line 521
    iput-object v4, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->b:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/h;

    goto :goto_3

    .line 512
    :catch_0
    move-exception v1

    goto :goto_2

    :cond_8
    move v0, v1

    goto :goto_2

    :cond_9
    move v1, p1

    goto :goto_1
.end method

.method protected a(Ljava/net/CacheResponse;)Z
    .locals 1

    .prologue
    .line 440
    const/4 v0, 0x1

    return v0
.end method

.method public final b()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 217
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->e:Lcom/integralblue/httpresponsecache/compat/java/net/ResponseSource;

    if-eqz v0, :cond_1

    .line 249
    :cond_0
    :goto_0
    return-void

    .line 1688
    :cond_1
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->s:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;->c()Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;

    move-result-object v0

    invoke-direct {p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->z()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;->a(Ljava/lang/String;)V

    .line 1690
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->s:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;->k()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1691
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->s:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;

    invoke-static {}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->u()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;->a(Ljava/lang/String;)V

    .line 1694
    :cond_2
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->s:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;->l()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 1695
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->s:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;

    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;

    invoke-virtual {v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->getURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->a(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;->b(Ljava/lang/String;)V

    .line 1698
    :cond_3
    const-string v0, "http.keepAlive"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1699
    iget v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->q:I

    if-lez v1, :cond_5

    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->s:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;

    invoke-virtual {v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;->m()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    if-eqz v0, :cond_4

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1700
    :cond_4
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->s:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;

    const-string v1, "Keep-Alive"

    invoke-virtual {v0, v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;->c(Ljava/lang/String;)V

    .line 1703
    :cond_5
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->s:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;->n()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    .line 1704
    iput-boolean v6, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->o:Z

    .line 1705
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->s:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;

    const-string v1, "gzip"

    invoke-virtual {v0, v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;->d(Ljava/lang/String;)V

    .line 1708
    :cond_6
    invoke-direct {p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->x()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->s:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;->o()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    .line 1709
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->s:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;

    const-string v1, "application/x-www-form-urlencoded"

    invoke-virtual {v0, v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;->e(Ljava/lang/String;)V

    .line 1712
    :cond_7
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->getIfModifiedSince()J

    move-result-wide v0

    .line 1713
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_8

    .line 1714
    iget-object v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->s:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;->a(Ljava/util/Date;)V

    .line 1717
    :cond_8
    invoke-static {}, Ljava/net/CookieHandler;->getDefault()Ljava/net/CookieHandler;

    move-result-object v0

    .line 1718
    if-eqz v0, :cond_9

    .line 1719
    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->s:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;

    iget-object v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->r:Ljava/net/URI;

    iget-object v3, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->s:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;

    .line 1720
    invoke-virtual {v3}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;->c()Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;

    move-result-object v3

    invoke-virtual {v3}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;->g()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/net/CookieHandler;->get(Ljava/net/URI;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 1719
    invoke-virtual {v1, v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;->a(Ljava/util/Map;)V

    .line 2256
    :cond_9
    sget-object v0, Lcom/integralblue/httpresponsecache/compat/java/net/ResponseSource;->NETWORK:Lcom/integralblue/httpresponsecache/compat/java/net/ResponseSource;

    iput-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->e:Lcom/integralblue/httpresponsecache/compat/java/net/ResponseSource;

    .line 2257
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->getUseCaches()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->k:Ljava/net/ResponseCache;

    if-nez v0, :cond_10

    .line 223
    :cond_a
    :goto_1
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->k:Ljava/net/ResponseCache;

    instance-of v0, v0, Lcom/integralblue/httpresponsecache/compat/java/net/a;

    if-eqz v0, :cond_b

    .line 224
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->k:Ljava/net/ResponseCache;

    check-cast v0, Lcom/integralblue/httpresponsecache/compat/java/net/a;

    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->e:Lcom/integralblue/httpresponsecache/compat/java/net/ResponseSource;

    invoke-interface {v0, v1}, Lcom/integralblue/httpresponsecache/compat/java/net/a;->a(Lcom/integralblue/httpresponsecache/compat/java/net/ResponseSource;)V

    .line 233
    :cond_b
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->s:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;->h()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->e:Lcom/integralblue/httpresponsecache/compat/java/net/ResponseSource;

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/java/net/ResponseSource;->requiresConnection()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 234
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->e:Lcom/integralblue/httpresponsecache/compat/java/net/ResponseSource;

    sget-object v1, Lcom/integralblue/httpresponsecache/compat/java/net/ResponseSource;->CONDITIONAL_CACHE:Lcom/integralblue/httpresponsecache/compat/java/net/ResponseSource;

    if-ne v0, v1, :cond_c

    .line 235
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->v:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->b(Ljava/io/Closeable;)V

    .line 237
    :cond_c
    sget-object v0, Lcom/integralblue/httpresponsecache/compat/java/net/ResponseSource;->CACHE:Lcom/integralblue/httpresponsecache/compat/java/net/ResponseSource;

    iput-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->e:Lcom/integralblue/httpresponsecache/compat/java/net/ResponseSource;

    .line 238
    sget-object v0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->c:Ljava/net/CacheResponse;

    iput-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->l:Ljava/net/CacheResponse;

    .line 239
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->l:Ljava/net/CacheResponse;

    invoke-virtual {v0}, Ljava/net/CacheResponse;->getHeaders()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;->a(Ljava/util/Map;)Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;

    move-result-object v0

    .line 240
    new-instance v1, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;

    iget-object v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->r:Ljava/net/URI;

    invoke-direct {v1, v2, v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;-><init>(Ljava/net/URI;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;)V

    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->l:Ljava/net/CacheResponse;

    invoke-virtual {v0}, Ljava/net/CacheResponse;->getBody()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->a(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;Ljava/io/InputStream;)V

    .line 243
    :cond_d
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->e:Lcom/integralblue/httpresponsecache/compat/java/net/ResponseSource;

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/java/net/ResponseSource;->requiresConnection()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 2293
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->b:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/h;

    if-nez v0, :cond_e

    .line 2294
    invoke-virtual {p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->c()V

    .line 2297
    :cond_e
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->g:Ljava/io/OutputStream;

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->h:Ljava/io/OutputStream;

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->f:Ljava/io/InputStream;

    if-eqz v0, :cond_16

    .line 2298
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 2261
    :cond_10
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->k:Ljava/net/ResponseCache;

    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->r:Ljava/net/URI;

    iget-object v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->s:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;

    .line 2262
    invoke-virtual {v3}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;->c()Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;

    move-result-object v3

    invoke-virtual {v3}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;->g()Ljava/util/Map;

    move-result-object v3

    .line 2261
    invoke-virtual {v0, v1, v2, v3}, Ljava/net/ResponseCache;->get(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)Ljava/net/CacheResponse;

    move-result-object v0

    .line 2263
    if-eqz v0, :cond_a

    .line 2267
    invoke-virtual {v0}, Ljava/net/CacheResponse;->getHeaders()Ljava/util/Map;

    move-result-object v1

    .line 2268
    invoke-virtual {v0}, Ljava/net/CacheResponse;->getBody()Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->v:Ljava/io/InputStream;

    .line 2269
    invoke-virtual {p0, v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->a(Ljava/net/CacheResponse;)Z

    move-result v2

    if-eqz v2, :cond_11

    if-eqz v1, :cond_11

    iget-object v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->v:Ljava/io/InputStream;

    if-nez v2, :cond_12

    .line 2272
    :cond_11
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->v:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->b(Ljava/io/Closeable;)V

    goto/16 :goto_1

    .line 2276
    :cond_12
    invoke-static {v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;->a(Ljava/util/Map;)Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;

    move-result-object v1

    .line 2277
    new-instance v2, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;

    iget-object v3, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->r:Ljava/net/URI;

    invoke-direct {v2, v3, v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;-><init>(Ljava/net/URI;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;)V

    iput-object v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->u:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;

    .line 2278
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 2279
    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->u:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;

    iget-object v4, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->s:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;

    invoke-virtual {v1, v2, v3, v4}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;->a(JLcom/integralblue/httpresponsecache/compat/libcore/net/http/E;)Lcom/integralblue/httpresponsecache/compat/java/net/ResponseSource;

    move-result-object v1

    iput-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->e:Lcom/integralblue/httpresponsecache/compat/java/net/ResponseSource;

    .line 2280
    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->e:Lcom/integralblue/httpresponsecache/compat/java/net/ResponseSource;

    sget-object v2, Lcom/integralblue/httpresponsecache/compat/java/net/ResponseSource;->CACHE:Lcom/integralblue/httpresponsecache/compat/java/net/ResponseSource;

    if-ne v1, v2, :cond_13

    .line 2281
    iput-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->l:Ljava/net/CacheResponse;

    .line 2282
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->u:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;

    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->v:Ljava/io/InputStream;

    invoke-direct {p0, v0, v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->a(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;Ljava/io/InputStream;)V

    goto/16 :goto_1

    .line 2283
    :cond_13
    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->e:Lcom/integralblue/httpresponsecache/compat/java/net/ResponseSource;

    sget-object v2, Lcom/integralblue/httpresponsecache/compat/java/net/ResponseSource;->CONDITIONAL_CACHE:Lcom/integralblue/httpresponsecache/compat/java/net/ResponseSource;

    if-ne v1, v2, :cond_14

    .line 2284
    iput-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->l:Ljava/net/CacheResponse;

    goto/16 :goto_1

    .line 2285
    :cond_14
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->e:Lcom/integralblue/httpresponsecache/compat/java/net/ResponseSource;

    sget-object v1, Lcom/integralblue/httpresponsecache/compat/java/net/ResponseSource;->NETWORK:Lcom/integralblue/httpresponsecache/compat/java/net/ResponseSource;

    if-ne v0, v1, :cond_15

    .line 2286
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->v:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->b(Ljava/io/Closeable;)V

    goto/16 :goto_1

    .line 2288
    :cond_15
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2301
    :cond_16
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->b:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/h;

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/h;->b()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->g:Ljava/io/OutputStream;

    .line 2302
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->g:Ljava/io/OutputStream;

    iput-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->h:Ljava/io/OutputStream;

    .line 2303
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->b:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/h;

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/h;->c()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->f:Ljava/io/InputStream;

    .line 2305
    invoke-direct {p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2331
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->d()I

    move-result v0

    .line 2332
    if-gtz v0, :cond_17

    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->s:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;

    invoke-virtual {v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;->a()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 2333
    :cond_17
    iput-boolean v6, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->p:Z

    .line 2334
    if-ne v0, v5, :cond_18

    .line 2335
    const/16 v0, 0x400

    .line 2339
    :cond_18
    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->g:Ljava/io/OutputStream;

    if-nez v1, :cond_19

    .line 2340
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No socket to write to; was a POST cached?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2343
    :cond_19
    iget v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->q:I

    if-nez v1, :cond_1a

    .line 2344
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->p:Z

    .line 2347
    :cond_1a
    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;

    invoke-virtual {v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->c()I

    move-result v1

    .line 2348
    iget-object v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->i:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/b;

    if-nez v2, :cond_0

    .line 2350
    if-eq v1, v5, :cond_1b

    .line 2351
    invoke-direct {p0, v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->a(I)V

    .line 2352
    new-instance v0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/g;

    iget-object v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->h:Ljava/io/OutputStream;

    invoke-direct {v0, v2, v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/g;-><init>(Ljava/io/OutputStream;I)V

    iput-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->i:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/b;

    goto/16 :goto_0

    .line 2353
    :cond_1b
    iget-boolean v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->p:Z

    if-eqz v1, :cond_1c

    .line 2354
    invoke-direct {p0, v5}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->a(I)V

    .line 2355
    new-instance v1, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/e;

    iget-object v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->h:Ljava/io/OutputStream;

    invoke-direct {v1, v2, v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/e;-><init>(Ljava/io/OutputStream;I)V

    iput-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->i:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/b;

    goto/16 :goto_0

    .line 2356
    :cond_1c
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->s:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;->j()I

    move-result v0

    if-eq v0, v5, :cond_1d

    .line 2357
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->s:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;->j()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->a(I)V

    .line 2358
    new-instance v0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/I;

    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->s:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;

    invoke-virtual {v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;->j()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/I;-><init>(I)V

    iput-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->i:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/b;

    goto/16 :goto_0

    .line 2360
    :cond_1d
    new-instance v0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/I;

    invoke-direct {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/I;-><init>()V

    iput-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->i:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/b;

    goto/16 :goto_0

    .line 245
    :cond_1e
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->b:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/h;

    if-eqz v0, :cond_0

    .line 246
    sget-object v0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/j;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/j;

    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->b:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/h;

    invoke-virtual {v0, v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/j;->a(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/h;)V

    .line 247
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->b:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/h;

    goto/16 :goto_0
.end method

.method protected c()V
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->b:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/h;

    if-nez v0, :cond_0

    .line 315
    invoke-virtual {p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->d()Lcom/integralblue/httpresponsecache/compat/libcore/net/http/h;

    move-result-object v0

    iput-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->b:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/h;

    .line 317
    :cond_0
    return-void
.end method

.method protected final d()Lcom/integralblue/httpresponsecache/compat/libcore/net/http/h;
    .locals 5

    .prologue
    .line 320
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->r:Ljava/net/URI;

    invoke-virtual {p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->t()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;

    .line 321
    invoke-virtual {v2}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->e()Ljava/net/Proxy;

    move-result-object v2

    invoke-virtual {p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->v()Z

    move-result v3

    iget-object v4, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;

    invoke-virtual {v4}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->getConnectTimeout()I

    move-result v4

    .line 320
    invoke-static {v0, v1, v2, v3, v4}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/h;->a(Ljava/net/URI;Ljavax/net/ssl/SSLSocketFactory;Ljava/net/Proxy;ZI)Lcom/integralblue/httpresponsecache/compat/libcore/net/http/h;

    move-result-object v0

    .line 322
    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/h;->d()Lcom/integralblue/httpresponsecache/compat/libcore/net/http/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/i;->a()Ljava/net/Proxy;

    move-result-object v1

    .line 323
    if-eqz v1, :cond_0

    .line 324
    iget-object v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;

    invoke-virtual {v2, v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->a(Ljava/net/Proxy;)V

    .line 326
    :cond_0
    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;

    invoke-virtual {v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->getReadTimeout()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/h;->a(I)V

    .line 327
    return-object v0
.end method

.method public final e()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->e:Lcom/integralblue/httpresponsecache/compat/java/net/ResponseSource;

    if-nez v0, :cond_0

    .line 388
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 390
    :cond_0
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->i:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/b;

    return-object v0
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->t:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g()Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->s:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;

    return-object v0
.end method

.method public final h()Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->t:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;

    if-nez v0, :cond_0

    .line 403
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 405
    :cond_0
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->t:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;

    return-object v0
.end method

.method public final i()I
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->t:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;

    if-nez v0, :cond_0

    .line 410
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 412
    :cond_0
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->t:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;->e()Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;->c()I

    move-result v0

    return v0
.end method

.method public final j()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->t:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;

    if-nez v0, :cond_0

    .line 417
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 419
    :cond_0
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->j:Ljava/io/InputStream;

    return-object v0
.end method

.method public final k()Ljava/net/CacheResponse;
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->l:Ljava/net/CacheResponse;

    return-object v0
.end method

.method public final l()Lcom/integralblue/httpresponsecache/compat/libcore/net/http/h;
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->b:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/h;

    return-object v0
.end method

.method public final m()Z
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->b:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->b:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/h;

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/h;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected n()Ljava/net/HttpURLConnection;
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;

    return-object v0
.end method

.method public final o()V
    .locals 2

    .prologue
    .line 473
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->w:Z

    .line 474
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->b:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/h;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->x:Z

    if-eqz v0, :cond_0

    .line 475
    sget-object v0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/j;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/j;

    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->b:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/h;

    invoke-virtual {v0, v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/j;->a(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/h;)V

    .line 476
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->b:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/h;

    .line 478
    :cond_0
    return-void
.end method

.method public final p()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 578
    iget-object v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->t:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;

    invoke-virtual {v2}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;->e()Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;

    move-result-object v2

    invoke-virtual {v2}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;->c()I

    move-result v2

    .line 581
    iget-object v3, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->d:Ljava/lang/String;

    const-string v4, "HEAD"

    if-ne v3, v4, :cond_1

    .line 601
    :cond_0
    :goto_0
    return v0

    .line 585
    :cond_1
    iget-object v3, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->d:Ljava/lang/String;

    const-string v4, "CONNECT"

    if-eq v3, v4, :cond_3

    const/16 v3, 0x64

    if-lt v2, v3, :cond_2

    const/16 v3, 0xc8

    if-lt v2, v3, :cond_3

    :cond_2
    const/16 v3, 0xcc

    if-eq v2, v3, :cond_3

    const/16 v3, 0x130

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 589
    goto :goto_0

    .line 597
    :cond_3
    iget-object v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->t:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;

    invoke-virtual {v2}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;->g()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->t:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;

    invoke-virtual {v2}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_4
    move v0, v1

    .line 598
    goto :goto_0
.end method

.method final q()V
    .locals 1

    .prologue
    .line 609
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->t:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;->e()Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->a(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;)V

    .line 610
    return-void
.end method

.method protected r()Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;
    .locals 2

    .prologue
    .line 666
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->s:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;->c()Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;

    move-result-object v0

    invoke-direct {p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->z()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;->a(Ljava/lang/String;)V

    .line 668
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->c()I

    move-result v0

    .line 669
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 670
    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->s:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;

    invoke-virtual {v1, v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;->a(I)V

    .line 678
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->s:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;->c()Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;

    move-result-object v0

    return-object v0

    .line 671
    :cond_1
    iget-boolean v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->p:Z

    if-eqz v0, :cond_2

    .line 672
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->s:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;->q()V

    goto :goto_0

    .line 673
    :cond_2
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->i:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/b;

    instance-of v0, v0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/I;

    if-eqz v0, :cond_0

    .line 674
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->i:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/b;

    check-cast v0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/I;

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/I;->b()I

    move-result v0

    .line 675
    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->s:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;

    invoke-virtual {v1, v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;->a(I)V

    goto :goto_0
.end method

.method protected s()Z
    .locals 1

    .prologue
    .line 753
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->usingProxy()Z

    move-result v0

    return v0
.end method

.method protected t()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .prologue
    .line 761
    const/4 v0, 0x0

    return-object v0
.end method

.method protected v()Z
    .locals 1

    .prologue
    .line 784
    const/4 v0, 0x0

    return v0
.end method

.method public final w()V
    .locals 6

    .prologue
    const/4 v1, -0x1

    .line 792
    invoke-virtual {p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 845
    :cond_0
    :goto_0
    return-void

    .line 796
    :cond_1
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->e:Lcom/integralblue/httpresponsecache/compat/java/net/ResponseSource;

    if-nez v0, :cond_2

    .line 797
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "readResponse() without sendRequest()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 800
    :cond_2
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->e:Lcom/integralblue/httpresponsecache/compat/java/net/ResponseSource;

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/java/net/ResponseSource;->requiresConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 804
    iget-wide v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->n:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_3

    .line 805
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->i:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/b;

    instance-of v0, v0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/I;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->i:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/b;

    check-cast v0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/I;

    .line 806
    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/I;->b()I

    move-result v0

    .line 808
    :goto_1
    invoke-direct {p0, v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->a(I)V

    .line 811
    :cond_3
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->i:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/b;

    if-eqz v0, :cond_4

    .line 812
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->i:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/b;

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/b;->close()V

    .line 813
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->i:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/b;

    instance-of v0, v0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/I;

    if-eqz v0, :cond_4

    .line 814
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->i:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/b;

    check-cast v0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/I;

    iget-object v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->h:Ljava/io/OutputStream;

    invoke-virtual {v0, v2}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/I;->a(Ljava/io/OutputStream;)V

    .line 818
    :cond_4
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->h:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 819
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->g:Ljava/io/OutputStream;

    iput-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->h:Ljava/io/OutputStream;

    .line 821
    invoke-direct {p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->y()V

    .line 822
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->t:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;

    iget-wide v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->n:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;->a(JJ)V

    .line 824
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->e:Lcom/integralblue/httpresponsecache/compat/java/net/ResponseSource;

    sget-object v2, Lcom/integralblue/httpresponsecache/compat/java/net/ResponseSource;->CONDITIONAL_CACHE:Lcom/integralblue/httpresponsecache/compat/java/net/ResponseSource;

    if-ne v0, v2, :cond_7

    .line 825
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->u:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;

    iget-object v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->t:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;

    invoke-virtual {v0, v2}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;->a(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 826
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->a(Z)V

    .line 827
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->u:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;

    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->t:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;

    invoke-virtual {v0, v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;->b(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;)Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;

    move-result-object v0

    .line 828
    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->v:Ljava/io/InputStream;

    invoke-direct {p0, v0, v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->a(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;Ljava/io/InputStream;)V

    .line 829
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->k:Ljava/net/ResponseCache;

    instance-of v0, v0, Lcom/integralblue/httpresponsecache/compat/java/net/a;

    if-eqz v0, :cond_0

    .line 830
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->k:Ljava/net/ResponseCache;

    check-cast v0, Lcom/integralblue/httpresponsecache/compat/java/net/a;

    .line 831
    invoke-interface {v0}, Lcom/integralblue/httpresponsecache/compat/java/net/a;->a()V

    .line 832
    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->l:Ljava/net/CacheResponse;

    invoke-virtual {p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->n()Ljava/net/HttpURLConnection;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/integralblue/httpresponsecache/compat/java/net/a;->a(Ljava/net/CacheResponse;Ljava/net/HttpURLConnection;)V

    goto/16 :goto_0

    :cond_5
    move v0, v1

    .line 806
    goto :goto_1

    .line 836
    :cond_6
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->v:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->b(Ljava/io/Closeable;)V

    .line 840
    :cond_7
    invoke-virtual {p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->p()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 4445
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->d:Ljava/lang/String;

    const-string v2, "CONNECT"

    if-eq v0, v2, :cond_8

    .line 4450
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->getUseCaches()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->k:Ljava/net/ResponseCache;

    if-nez v0, :cond_9

    .line 4542
    :cond_8
    :goto_2
    invoke-virtual {p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->p()Z

    move-result v0

    if-nez v0, :cond_a

    .line 4543
    new-instance v0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/f;

    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->f:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->m:Ljava/net/CacheRequest;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/f;-><init>(Ljava/io/InputStream;Ljava/net/CacheRequest;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;I)V

    .line 844
    :goto_3
    invoke-direct {p0, v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->a(Ljava/io/InputStream;)V

    goto/16 :goto_0

    .line 4455
    :cond_9
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->t:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;

    iget-object v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->s:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;

    invoke-virtual {v0, v2}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;->a(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 4460
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->k:Ljava/net/ResponseCache;

    iget-object v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->r:Ljava/net/URI;

    invoke-virtual {p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->n()Ljava/net/HttpURLConnection;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/net/ResponseCache;->put(Ljava/net/URI;Ljava/net/URLConnection;)Ljava/net/CacheRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->m:Ljava/net/CacheRequest;

    goto :goto_2

    .line 4546
    :cond_a
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->t:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;->c()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 4547
    new-instance v0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/d;

    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->f:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->m:Ljava/net/CacheRequest;

    invoke-direct {v0, v1, v2, p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/d;-><init>(Ljava/io/InputStream;Ljava/net/CacheRequest;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;)V

    goto :goto_3

    .line 4550
    :cond_b
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->t:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;->g()I

    move-result v0

    if-eq v0, v1, :cond_c

    .line 4551
    new-instance v0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/f;

    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->f:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->m:Ljava/net/CacheRequest;

    iget-object v3, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->t:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;

    .line 4552
    invoke-virtual {v3}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;->g()I

    move-result v3

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/f;-><init>(Ljava/io/InputStream;Ljava/net/CacheRequest;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;I)V

    goto :goto_3

    .line 4560
    :cond_c
    new-instance v0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/J;

    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->f:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->m:Ljava/net/CacheRequest;

    invoke-direct {v0, v1, v2, p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/J;-><init>(Ljava/io/InputStream;Ljava/net/CacheRequest;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;)V

    goto :goto_3
.end method
