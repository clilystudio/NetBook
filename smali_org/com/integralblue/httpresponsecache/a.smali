.class public final Lcom/integralblue/httpresponsecache/a;
.super Ljava/net/ResponseCache;
.source "SourceFile"

# interfaces
.implements Lcom/integralblue/httpresponsecache/compat/java/net/a;
.implements Ljava/io/Closeable;


# static fields
.field private static a:Z


# instance fields
.field private final b:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/p;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x0

    sput-boolean v0, Lcom/integralblue/httpresponsecache/a;->a:Z

    return-void
.end method

.method private constructor <init>(Ljava/io/File;J)V
    .locals 2

    .prologue
    .line 154
    invoke-direct {p0}, Ljava/net/ResponseCache;-><init>()V

    .line 155
    new-instance v0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/p;

    invoke-direct {v0, p1, p2, p3}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/p;-><init>(Ljava/io/File;J)V

    iput-object v0, p0, Lcom/integralblue/httpresponsecache/a;->b:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/p;

    .line 156
    return-void
.end method

.method public static a(Ljava/io/File;J)Lcom/integralblue/httpresponsecache/a;
    .locals 6

    .prologue
    const-wide/32 v4, 0xc800000

    .line 1163
    invoke-static {}, Ljava/net/ResponseCache;->getDefault()Ljava/net/ResponseCache;

    move-result-object v0

    .line 1164
    instance-of v1, v0, Lcom/integralblue/httpresponsecache/a;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/integralblue/httpresponsecache/a;

    .line 180
    :goto_0
    if-eqz v0, :cond_3

    .line 182
    iget-object v1, v0, Lcom/integralblue/httpresponsecache/a;->b:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/p;

    invoke-virtual {v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/p;->b()Lcom/b/c;

    move-result-object v1

    .line 183
    invoke-virtual {v1}, Lcom/b/c;->a()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 184
    invoke-virtual {v1}, Lcom/b/c;->b()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 185
    invoke-virtual {v1}, Lcom/b/c;->c()Z

    move-result v1

    if-nez v1, :cond_2

    .line 201
    :cond_0
    :goto_1
    return-object v0

    .line 1164
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 188
    :cond_2
    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->b(Ljava/io/Closeable;)V

    .line 192
    :cond_3
    new-instance v0, Lcom/integralblue/httpresponsecache/a;

    invoke-direct {v0, p0, v4, v5}, Lcom/integralblue/httpresponsecache/a;-><init>(Ljava/io/File;J)V

    .line 193
    invoke-static {v0}, Ljava/net/ResponseCache;->setDefault(Ljava/net/ResponseCache;)V

    .line 194
    new-instance v1, Lcom/integralblue/httpresponsecache/compat/a/a/a/a;

    invoke-direct {v1}, Lcom/integralblue/httpresponsecache/compat/a/a/a/a;-><init>()V

    invoke-static {v1}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 195
    sget-boolean v1, Lcom/integralblue/httpresponsecache/a;->a:Z

    if-nez v1, :cond_0

    .line 198
    const/4 v1, 0x1

    sput-boolean v1, Lcom/integralblue/httpresponsecache/a;->a:Z

    .line 199
    new-instance v1, Lcom/integralblue/httpresponsecache/compat/e;

    invoke-direct {v1}, Lcom/integralblue/httpresponsecache/compat/e;-><init>()V

    invoke-static {v1}, Ljava/net/URL;->setURLStreamHandlerFactory(Ljava/net/URLStreamHandlerFactory;)V

    goto :goto_1
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/a;->b:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/p;

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/p;->a()V

    .line 276
    return-void
.end method

.method public final a(Lcom/integralblue/httpresponsecache/compat/java/net/ResponseSource;)V
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/a;->b:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/p;

    invoke-virtual {v0, p1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/p;->a(Lcom/integralblue/httpresponsecache/compat/java/net/ResponseSource;)V

    .line 271
    return-void
.end method

.method public final a(Ljava/net/CacheResponse;Ljava/net/HttpURLConnection;)V
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/a;->b:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/p;

    invoke-virtual {v0, p1, p2}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/p;->a(Ljava/net/CacheResponse;Ljava/net/HttpURLConnection;)V

    .line 281
    return-void
.end method

.method public final close()V
    .locals 1

    .prologue
    .line 288
    invoke-static {}, Ljava/net/ResponseCache;->getDefault()Ljava/net/ResponseCache;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 289
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/net/ResponseCache;->setDefault(Ljava/net/ResponseCache;)V

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/a;->b:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/p;

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/p;->b()Lcom/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/c;->close()V

    .line 292
    return-void
.end method

.method public final get(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)Ljava/net/CacheResponse;
    .locals 1
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
    .line 206
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/a;->b:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/p;

    invoke-virtual {v0, p1, p2, p3}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/p;->get(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)Ljava/net/CacheResponse;

    move-result-object v0

    return-object v0
.end method

.method public final put(Ljava/net/URI;Ljava/net/URLConnection;)Ljava/net/CacheRequest;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/a;->b:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/p;

    invoke-virtual {v0, p1, p2}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/p;->put(Ljava/net/URI;Ljava/net/URLConnection;)Ljava/net/CacheRequest;

    move-result-object v0

    return-object v0
.end method
