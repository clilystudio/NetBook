.class public final Lcom/integralblue/httpresponsecache/compat/libcore/net/http/p;
.super Ljava/net/ResponseCache;
.source "SourceFile"

# interfaces
.implements Lcom/integralblue/httpresponsecache/compat/java/net/a;


# instance fields
.field private final a:Lcom/b/c;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>(Ljava/io/File;J)V
    .locals 2

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/net/ResponseCache;-><init>()V

    .line 83
    const v0, 0x31191

    const/4 v1, 0x2

    invoke-static {p1, v0, v1, p2, p3}, Lcom/b/c;->a(Ljava/io/File;IIJ)Lcom/b/c;

    move-result-object v0

    iput-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/p;->a:Lcom/b/c;

    .line 84
    return-void
.end method

.method static synthetic a(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/p;)I
    .locals 2

    .prologue
    .line 66
    iget v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/p;->b:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/p;->b:I

    return v0
.end method

.method private static a(Ljava/net/HttpURLConnection;)Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;
    .locals 1

    .prologue
    .line 270
    instance-of v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;

    if-eqz v0, :cond_0

    .line 271
    check-cast p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;

    invoke-virtual {p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/HttpURLConnectionImpl;->a()Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;

    move-result-object v0

    .line 275
    :goto_0
    return-object v0

    .line 272
    :cond_0
    instance-of v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/y;

    if-eqz v0, :cond_1

    .line 273
    check-cast p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/y;

    invoke-virtual {p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/y;->a()Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;

    move-result-object v0

    goto :goto_0

    .line 275
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/b/h;)Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 66
    .line 1613
    new-instance v0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/q;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/b/h;->a(I)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/q;-><init>(Ljava/io/InputStream;Lcom/b/h;)V

    .line 66
    return-object v0
.end method

.method private a(Ljava/net/URI;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 88
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    const-string v1, "chapter2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {p1}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v0

    .line 90
    if-eqz v0, :cond_0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 92
    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 93
    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 94
    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/p;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/p;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "?"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 112
    :cond_0
    :goto_0
    new-instance v0, Lcom/integralblue/httpresponsecache/compat/b;

    invoke-direct {v0}, Lcom/integralblue/httpresponsecache/compat/b;-><init>()V

    .line 113
    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/integralblue/httpresponsecache/compat/a;->a:Ljava/nio/charset/Charset;

    invoke-static {v1, v2}, Lcom/integralblue/httpresponsecache/compat/c;->a(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 114
    invoke-static {v0, v3}, Lcom/integralblue/httpresponsecache/compat/c;->a([BZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 102
    :catch_0
    move-exception v0

    .line 103
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static a(Lcom/b/a;)V
    .locals 1

    .prologue
    .line 262
    if-eqz p0, :cond_0

    .line 263
    :try_start_0
    invoke-virtual {p0}, Lcom/b/a;->b()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 121
    const-string v0, "k"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "t"

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

.method static synthetic b(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/p;)I
    .locals 2

    .prologue
    .line 66
    iget v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/p;->c:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/p;->c:I

    return v0
.end method

.method private b(Ljava/net/URI;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 206
    invoke-direct {p0, p1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/p;->a(Ljava/net/URI;)Ljava/lang/String;

    move-result-object v1

    .line 211
    :try_start_0
    iget-object v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/p;->a:Lcom/b/c;

    invoke-virtual {v2, v1}, Lcom/b/c;->a(Ljava/lang/String;)Lcom/b/h;

    move-result-object v1

    .line 212
    if-nez v1, :cond_0

    .line 223
    :goto_0
    return-object v0

    .line 215
    :cond_0
    new-instance v2, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;

    new-instance v3, Ljava/io/BufferedInputStream;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/b/h;->a(I)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    invoke-static {v2}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;->b(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;)Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;

    move-result-object v0

    .line 223
    const-string v1, "Content-Encoding"

    invoke-virtual {v0, v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 218
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 1

    .prologue
    .line 306
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/p;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/p;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    monitor-exit p0

    return-void

    .line 306
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/integralblue/httpresponsecache/compat/java/net/ResponseSource;)V
    .locals 2

    .prologue
    .line 292
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/p;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/p;->f:I

    .line 294
    sget-object v0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/r;->a:[I

    invoke-virtual {p1}, Lcom/integralblue/httpresponsecache/compat/java/net/ResponseSource;->ordinal()I

    move-result v1

    aget v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v0, :pswitch_data_0

    .line 303
    :goto_0
    monitor-exit p0

    return-void

    .line 296
    :pswitch_0
    :try_start_1
    iget v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/p;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/p;->e:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 292
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 300
    :pswitch_1
    :try_start_2
    iget v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/p;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/p;->d:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 294
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Ljava/net/CacheResponse;Ljava/net/HttpURLConnection;)V
    .locals 4

    .prologue
    .line 236
    invoke-static {p2}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/p;->a(Ljava/net/HttpURLConnection;)Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;

    move-result-object v0

    .line 237
    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->a()Ljava/net/URI;

    move-result-object v1

    .line 238
    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->h()Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;

    move-result-object v2

    .line 239
    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->g()Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;

    move-result-object v0

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;->c()Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;

    move-result-object v0

    .line 240
    invoke-virtual {v2}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;->f()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;->a(Ljava/util/Set;)Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;

    move-result-object v0

    .line 243
    new-instance v2, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;

    invoke-direct {p0, v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/p;->b(Ljava/net/URI;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v0, p2, v3}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;-><init>(Ljava/net/URI;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;Ljava/net/HttpURLConnection;Ljava/lang/String;)V

    .line 244
    instance-of v0, p1, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/v;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/v;

    .line 245
    invoke-static {p1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/v;->a(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/v;)Lcom/b/h;

    move-result-object v0

    .line 247
    :goto_0
    const/4 v1, 0x0

    .line 249
    :try_start_0
    invoke-virtual {v0}, Lcom/b/h;->a()Lcom/b/a;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 250
    if-eqz v0, :cond_0

    .line 251
    :try_start_1
    invoke-virtual {v2, v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;->a(Lcom/b/a;)V

    .line 252
    invoke-virtual {v0}, Lcom/b/a;->a()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 257
    :cond_0
    :goto_1
    return-void

    .line 245
    :cond_1
    check-cast p1, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/w;

    .line 246
    invoke-static {p1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/w;->a(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/w;)Lcom/b/h;

    move-result-object v0

    goto :goto_0

    .line 255
    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_2
    invoke-static {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/p;->a(Lcom/b/a;)V

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method public final b()Lcom/b/c;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/p;->a:Lcom/b/c;

    return-object v0
.end method

.method public final get(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)Ljava/net/CacheResponse;
    .locals 5
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
            ">;>;)",
            "Ljava/net/CacheResponse;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 126
    invoke-direct {p0, p1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/p;->a(Ljava/net/URI;)Ljava/lang/String;

    move-result-object v1

    .line 130
    :try_start_0
    iget-object v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/p;->a:Lcom/b/c;

    invoke-virtual {v2, v1}, Lcom/b/c;->a(Ljava/lang/String;)Lcom/b/h;

    move-result-object v1

    .line 131
    if-nez v1, :cond_0

    .line 145
    :goto_0
    return-object v0

    .line 134
    :cond_0
    new-instance v2, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;

    new-instance v3, Ljava/io/BufferedInputStream;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/b/h;->a(I)Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    invoke-virtual {v2, p1, p2, p3}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;->a(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 141
    invoke-virtual {v1}, Lcom/b/h;->close()V

    goto :goto_0

    .line 145
    :cond_1
    invoke-static {v2}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;->a(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/w;

    invoke-direct {v0, v2, v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/w;-><init>(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;Lcom/b/h;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/v;

    invoke-direct {v0, v2, v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/v;-><init>(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;Lcom/b/h;)V

    goto :goto_0

    .line 137
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final put(Ljava/net/URI;Ljava/net/URLConnection;)Ljava/net/CacheRequest;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 151
    instance-of v1, p2, Ljava/net/HttpURLConnection;

    if-nez v1, :cond_1

    .line 201
    :cond_0
    :goto_0
    return-object v0

    .line 155
    :cond_1
    check-cast p2, Ljava/net/HttpURLConnection;

    .line 156
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v1

    .line 157
    invoke-direct {p0, p1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/p;->a(Ljava/net/URI;)Ljava/lang/String;

    move-result-object v2

    .line 159
    const-string v3, "POST"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "PUT"

    .line 160
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "DELETE"

    .line 161
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 163
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/p;->a:Lcom/b/c;

    invoke-virtual {v1, v2}, Lcom/b/c;->c(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    .line 168
    :cond_3
    const-string v3, "GET"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 177
    invoke-static {p2}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/p;->a(Ljava/net/HttpURLConnection;)Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;

    move-result-object v1

    .line 178
    if-eqz v1, :cond_0

    .line 183
    invoke-virtual {v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->h()Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;

    move-result-object v3

    .line 184
    invoke-virtual {v3}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;->h()Z

    move-result v4

    if-nez v4, :cond_0

    .line 188
    invoke-virtual {v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->g()Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;

    move-result-object v1

    invoke-virtual {v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;->c()Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;

    move-result-object v1

    .line 189
    invoke-virtual {v3}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;->f()Ljava/util/Set;

    move-result-object v3

    .line 188
    invoke-virtual {v1, v3}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;->a(Ljava/util/Set;)Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;

    move-result-object v1

    .line 190
    new-instance v3, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;

    invoke-direct {v3, p1, v1, p2}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;-><init>(Ljava/net/URI;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;Ljava/net/HttpURLConnection;)V

    .line 193
    :try_start_1
    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/p;->a:Lcom/b/c;

    invoke-virtual {v1, v2}, Lcom/b/c;->b(Ljava/lang/String;)Lcom/b/a;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 194
    if-eqz v2, :cond_0

    .line 197
    :try_start_2
    invoke-virtual {v3, v2}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;->a(Lcom/b/a;)V

    .line 198
    new-instance v1, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/s;

    invoke-direct {v1, p0, v2}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/s;-><init>(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/p;Lcom/b/a;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v0, v1

    goto :goto_0

    .line 200
    :catch_1
    move-exception v1

    move-object v1, v0

    :goto_1
    invoke-static {v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/p;->a(Lcom/b/a;)V

    goto :goto_0

    :catch_2
    move-exception v1

    move-object v1, v2

    goto :goto_1
.end method
