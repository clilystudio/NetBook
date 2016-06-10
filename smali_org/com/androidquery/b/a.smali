.class public abstract Lcom/androidquery/b/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field private static final C:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static E:Ljava/util/concurrent/ExecutorService;

.field private static F:Lorg/apache/http/impl/client/DefaultHttpClient;

.field private static G:I

.field private static c:I

.field private static d:Ljava/lang/String;

.field private static e:I

.field private static f:Z

.field private static g:Z

.field private static h:Z


# instance fields
.field private A:I

.field private B:Lorg/apache/http/HttpHost;

.field private D:Z

.field protected a:Lcom/androidquery/b/c;

.field protected b:Z

.field private i:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field private j:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/lang/Object;

.field private l:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Landroid/support/design/widget/K;

.field private p:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private q:I

.field private r:Ljava/io/File;

.field private s:Lcom/androidquery/a/a;

.field private t:Z

.field private u:I

.field private v:Z

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private y:I

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 114
    const/16 v0, 0x7530

    sput v0, Lcom/androidquery/b/a;->c:I

    .line 115
    const/4 v0, 0x0

    sput-object v0, Lcom/androidquery/b/a;->d:Ljava/lang/String;

    .line 116
    const/4 v0, 0x4

    sput v0, Lcom/androidquery/b/a;->e:I

    .line 117
    sput-boolean v2, Lcom/androidquery/b/a;->f:Z

    .line 118
    sput-boolean v2, Lcom/androidquery/b/a;->g:Z

    .line 119
    sput-boolean v3, Lcom/androidquery/b/a;->h:Z

    .line 563
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Ljava/lang/String;

    aput-object v1, v0, v3

    const-class v1, Ljava/lang/Object;

    aput-object v1, v0, v2

    const/4 v1, 0x2

    const-class v2, Lcom/androidquery/b/c;

    aput-object v2, v0, v1

    sput-object v0, Lcom/androidquery/b/a;->C:[Ljava/lang/Class;

    .line 1963
    const/16 v0, 0xc8

    sput v0, Lcom/androidquery/b/a;->G:I

    .line 2020
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput v1, p0, Lcom/androidquery/b/a;->q:I

    .line 147
    iput v1, p0, Lcom/androidquery/b/a;->u:I

    .line 148
    iput-boolean v2, p0, Lcom/androidquery/b/a;->v:Z

    .line 151
    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/androidquery/b/a;->w:Ljava/lang/String;

    .line 154
    const/4 v0, 0x4

    iput v0, p0, Lcom/androidquery/b/a;->y:I

    .line 157
    iput-boolean v2, p0, Lcom/androidquery/b/a;->z:Z

    .line 158
    iput v1, p0, Lcom/androidquery/b/a;->A:I

    .line 112
    return-void
.end method

.method static synthetic a(Lcom/androidquery/b/a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/androidquery/b/a;->m:Ljava/lang/String;

    return-object v0
.end method

.method private static a(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1828
    if-nez p0, :cond_1

    .line 1833
    :cond_0
    :goto_0
    return-object v0

    .line 1830
    :cond_1
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v1

    .line 1831
    if-eqz v1, :cond_0

    .line 1833
    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a([BLjava/lang/String;Lcom/androidquery/b/c;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 864
    .line 867
    :try_start_0
    const-string v0, "utf-8"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 868
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 893
    :goto_0
    return-object v0

    .line 871
    :cond_0
    const-string v0, "Content-Type"

    invoke-virtual {p3, v0}, Lcom/androidquery/b/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/androidquery/b/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 872
    const-string v0, "parsing header"

    invoke-static {v0, v1}, Lcom/androidquery/util/a;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 873
    if-eqz v1, :cond_1

    .line 874
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 889
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    .line 890
    :goto_1
    invoke-static {v1}, Lcom/androidquery/util/a;->b(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 877
    :cond_1
    :try_start_1
    new-instance v1, Ljava/lang/String;

    const-string v0, "utf-8"

    invoke-direct {v1, p1, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 13836
    :try_start_2
    const-string v0, "<meta [^>]*http-equiv[^>]*\"Content-Type\"[^>]*>"

    .line 13838
    const/4 v3, 0x2

    invoke-static {v0, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 13839
    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 13841
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-nez v3, :cond_2

    .line 881
    :goto_2
    const-string v0, "parsing needed"

    invoke-static {v0, v2}, Lcom/androidquery/util/a;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 883
    if-eqz v2, :cond_3

    const-string v0, "utf-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 884
    const-string v0, "correction needed"

    invoke-static {v0, v2}, Lcom/androidquery/util/a;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 885
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 886
    :try_start_3
    const-string v1, "utf-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/androidquery/b/c;->a([B)Lcom/androidquery/b/c;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 889
    :catch_1
    move-exception v1

    goto :goto_1

    .line 13843
    :cond_2
    :try_start_4
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    .line 13845
    invoke-static {v0}, Lcom/androidquery/b/a;->d(Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v2

    goto :goto_2

    .line 889
    :catch_2
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method private static a(Landroid/net/Uri;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 1296
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1297
    invoke-virtual {p0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v0

    const-string v3, "&"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1299
    array-length v4, v3

    move v0, v1

    :goto_0
    if-lt v0, v4, :cond_0

    .line 1307
    return-object v2

    .line 1299
    :cond_0
    aget-object v5, v3, v0

    .line 1300
    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1301
    array-length v6, v5

    const/4 v7, 0x2

    if-lt v6, v7, :cond_2

    .line 1302
    aget-object v6, v5, v1

    aget-object v5, v5, v8

    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1299
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1303
    :cond_2
    array-length v6, v5

    if-ne v6, v8, :cond_1

    .line 1304
    aget-object v5, v5, v1

    const-string v6, ""

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private static a(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .locals 4

    .prologue
    .line 1615
    invoke-interface {p0}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1616
    invoke-interface {p0}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v1

    .line 1618
    invoke-virtual {v1}, Ljava/net/URL;->getPort()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 1619
    new-instance v0, Lorg/apache/http/HttpHost;

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x50

    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v3, v1}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 1623
    :goto_0
    invoke-virtual {p1, v0, p0, p2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 1629
    :goto_1
    return-object v0

    .line 1621
    :cond_0
    new-instance v0, Lorg/apache/http/HttpHost;

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/net/URL;->getPort()I

    move-result v3

    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v3, v1}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 1625
    :cond_1
    invoke-virtual {p1, p0, p2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    goto :goto_1
.end method

.method private static a(Ljava/io/DataOutputStream;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 2

    .prologue
    .line 2168
    const-string v0, "--*****\r\n"

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 2169
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Content-Disposition: form-data; name=\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"; filename=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2170
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2169
    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 2174
    const-string v0, "Content-Type: application/octet-stream"

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 2175
    const-string v0, "\r\n"

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 2176
    const-string v0, "Content-Transfer-Encoding: binary"

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 2177
    const-string v0, "\r\n"

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 2179
    const-string v0, "\r\n"

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 2181
    invoke-static {p3, p0}, Lcom/androidquery/util/a;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 2183
    const-string v0, "\r\n"

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 2185
    return-void
.end method

.method private a(Ljava/io/InputStream;Ljava/io/OutputStream;I)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1885
    .line 1887
    iget-object v1, p0, Lcom/androidquery/b/a;->l:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    .line 1888
    iget-object v1, p0, Lcom/androidquery/b/a;->l:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    .line 1893
    :goto_0
    if-eqz v1, :cond_0

    .line 1894
    new-instance v0, Lcom/androidquery/util/d;

    invoke-direct {v0, v1}, Lcom/androidquery/util/d;-><init>(Ljava/lang/Object;)V

    .line 1897
    :cond_0
    invoke-static {p1, p2, p3, v0}, Lcom/androidquery/util/a;->a(Ljava/io/InputStream;Ljava/io/OutputStream;ILcom/androidquery/util/d;)V

    .line 1900
    return-void

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/util/Map;Lcom/androidquery/b/c;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/androidquery/b/c;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 2036
    const-string v0, "multipart"

    invoke-static {v0, p1}, Lcom/androidquery/util/a;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2041
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 2045
    iget-object v0, p0, Lcom/androidquery/b/a;->B:Lorg/apache/http/HttpHost;

    if-eqz v0, :cond_a

    .line 2046
    const-string v0, "proxy"

    iget-object v2, p0, Lcom/androidquery/b/a;->B:Lorg/apache/http/HttpHost;

    invoke-static {v0, v2}, Lcom/androidquery/util/a;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2047
    new-instance v0, Ljava/net/Proxy;

    sget-object v2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v4, Ljava/net/InetSocketAddress;

    iget-object v5, p0, Lcom/androidquery/b/a;->B:Lorg/apache/http/HttpHost;

    invoke-virtual {v5}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/androidquery/b/a;->B:Lorg/apache/http/HttpHost;

    invoke-virtual {v6}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v6

    invoke-direct {v4, v5, v6}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v2, v4}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 2052
    :goto_0
    if-nez v0, :cond_4

    .line 2053
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v2, v0

    .line 2058
    :goto_1
    invoke-virtual {v2, v7}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 2060
    sget v0, Lcom/androidquery/b/a;->c:I

    shl-int/lit8 v0, v0, 0x2

    invoke-virtual {v2, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 2062
    invoke-virtual {v2, v8}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 2063
    invoke-virtual {v2, v8}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 2064
    invoke-virtual {v2, v7}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 2066
    const-string v0, "POST"

    invoke-virtual {v2, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 2067
    const-string v0, "Connection"

    const-string v1, "Keep-Alive"

    invoke-virtual {v2, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2068
    const-string v0, "Content-Type"

    const-string v1, "multipart/form-data;charset=utf-8;boundary=*****"

    invoke-virtual {v2, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2077
    if-eqz v3, :cond_0

    .line 2078
    const-string v0, "Cookie"

    invoke-virtual {v2, v0, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2086
    :cond_0
    new-instance v4, Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2088
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    .line 2094
    const-string v0, "--*****--\r\n"

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 2095
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V

    .line 2096
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V

    .line 2100
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    .line 2103
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 2105
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v4

    .line 2109
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v0

    .line 2112
    const/16 v5, 0xc8

    if-lt v1, v5, :cond_2

    const/16 v5, 0x12c

    if-lt v1, v5, :cond_9

    .line 2114
    :cond_2
    new-instance v5, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/androidquery/b/a;->a(Ljava/lang/String;Ljava/io/InputStream;)[B

    move-result-object v0

    const-string v2, "UTF-8"

    invoke-direct {v5, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 2116
    const-string v0, "error"

    invoke-static {v0, v5}, Lcom/androidquery/util/a;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v3

    .line 2122
    :goto_3
    const-string v2, "response"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/androidquery/util/a;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2124
    if-eqz v0, :cond_3

    .line 2125
    array-length v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/androidquery/util/a;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2128
    :cond_3
    invoke-virtual {p3, v1}, Lcom/androidquery/b/c;->b(I)Lcom/androidquery/b/c;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/androidquery/b/c;->a(Ljava/lang/String;)Lcom/androidquery/b/c;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v0}, Lcom/androidquery/b/c;->a([B)Lcom/androidquery/b/c;

    .line 2132
    return-void

    .line 2055
    :cond_4
    invoke-virtual {v1, v0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v2, v0

    goto/16 :goto_1

    .line 2088
    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    .line 2090
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 27148
    if-eqz v1, :cond_1

    .line 27150
    instance-of v6, v1, Ljava/io/File;

    if-eqz v6, :cond_6

    .line 27152
    check-cast v1, Ljava/io/File;

    .line 27153
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v4, v0, v6, v7}, Lcom/androidquery/b/a;->a(Ljava/io/DataOutputStream;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    goto/16 :goto_2

    .line 27155
    :cond_6
    instance-of v6, v1, [B

    if-eqz v6, :cond_7

    .line 27156
    new-instance v6, Ljava/io/ByteArrayInputStream;

    check-cast v1, [B

    invoke-direct {v6, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v4, v0, v0, v6}, Lcom/androidquery/b/a;->a(Ljava/io/DataOutputStream;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    goto/16 :goto_2

    .line 27157
    :cond_7
    instance-of v6, v1, Ljava/io/InputStream;

    if-eqz v6, :cond_8

    .line 27158
    check-cast v1, Ljava/io/InputStream;

    invoke-static {v4, v0, v0, v1}, Lcom/androidquery/b/a;->a(Ljava/io/DataOutputStream;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    goto/16 :goto_2

    .line 27160
    :cond_8
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 27189
    const-string v6, "--*****\r\n"

    invoke-virtual {v4, v6}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 27190
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Content-Disposition: form-data; name=\""

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "\""

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 27191
    const-string v0, "\r\n"

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 27192
    const-string v0, "\r\n"

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 27194
    const-string v0, "UTF-8"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 27195
    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 27197
    const-string v0, "\r\n"

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2119
    :cond_9
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/androidquery/b/a;->a(Ljava/lang/String;Ljava/io/InputStream;)[B

    move-result-object v0

    goto/16 :goto_3

    :cond_a
    move-object v0, v3

    goto/16 :goto_0
.end method

.method private a(Ljava/lang/String;Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Ljava/util/Map;Lcom/androidquery/b/c;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/androidquery/b/c;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1504
    invoke-virtual {p2}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string v1, "http.protocol.expect-continue"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;

    .line 1508
    const-string v0, "%entity"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1510
    instance-of v1, v0, Lorg/apache/http/HttpEntity;

    if-eqz v1, :cond_0

    .line 1511
    check-cast v0, Lorg/apache/http/HttpEntity;

    .line 1532
    :goto_0
    invoke-virtual {p2, v0}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 1533
    invoke-direct {p0, p2, p1, p4}, Lcom/androidquery/b/a;->a(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/androidquery/b/c;)V

    .line 1536
    return-void

    .line 1514
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1516
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1523
    new-instance v0, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    .line 1516
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1517
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 1518
    if-eqz v3, :cond_1

    .line 1519
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v0, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private a(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/androidquery/b/c;)V
    .locals 17

    .prologue
    .line 22581
    sget-object v2, Lcom/androidquery/b/a;->F:Lorg/apache/http/impl/client/DefaultHttpClient;

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/androidquery/b/a;->g:Z

    if-nez v2, :cond_1

    .line 22583
    :cond_0
    const-string v2, "creating http client"

    invoke-static {v2}, Lcom/androidquery/util/a;->a(Ljava/lang/Object;)V

    .line 22585
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 22589
    sget v3, Lcom/androidquery/b/a;->c:I

    invoke-static {v2, v3}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 22590
    sget v3, Lcom/androidquery/b/a;->c:I

    invoke-static {v2, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 22593
    new-instance v3, Lorg/apache/http/conn/params/ConnPerRouteBean;

    const/16 v4, 0x19

    invoke-direct {v3, v4}, Lorg/apache/http/conn/params/ConnPerRouteBean;-><init>(I)V

    invoke-static {v2, v3}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V

    .line 22596
    const/16 v3, 0x2000

    invoke-static {v2, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 22598
    new-instance v3, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 22599
    new-instance v4, Lorg/apache/http/conn/scheme/Scheme;

    const-string v5, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v6

    const/16 v7, 0x50

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v3, v4}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 22600
    new-instance v4, Lorg/apache/http/conn/scheme/Scheme;

    const-string v5, "https"

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v6

    const/16 v7, 0x1bb

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v3, v4}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 22602
    new-instance v4, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v4, v2, v3}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 22603
    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v3, v4, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    sput-object v3, Lcom/androidquery/b/a;->F:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 22607
    :cond_1
    sget-object v2, Lcom/androidquery/b/a;->F:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 1649
    sget-boolean v3, Lcom/androidquery/b/a;->f:Z

    if-eqz v3, :cond_2

    .line 1650
    const-string v3, "User-Agent"

    const-string v4, "gzip"

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1661
    :cond_2
    sget-boolean v3, Lcom/androidquery/b/a;->f:Z

    if-eqz v3, :cond_3

    .line 1662
    const-string v3, "Accept-Encoding"

    const-string v4, "gzip"

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 23203
    :cond_3
    const/4 v3, 0x0

    .line 1670
    if-eqz v3, :cond_4

    .line 1671
    const-string v4, "Cookie"

    move-object/from16 v0, p1

    invoke-interface {v0, v4, v3}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1676
    :cond_4
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v3

    .line 1679
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/androidquery/b/a;->B:Lorg/apache/http/HttpHost;

    if-eqz v4, :cond_5

    const-string v4, "http.route.default-proxy"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/androidquery/b/a;->B:Lorg/apache/http/HttpHost;

    invoke-interface {v3, v4, v5}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 1687
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/androidquery/b/a;->v:Z

    if-nez v4, :cond_6

    .line 1688
    const-string v4, "http.protocol.handle-redirects"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lorg/apache/http/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;

    .line 1691
    :cond_6
    new-instance v5, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v5}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    .line 1692
    new-instance v4, Lorg/apache/http/impl/client/BasicCookieStore;

    invoke-direct {v4}, Lorg/apache/http/impl/client/BasicCookieStore;-><init>()V

    .line 1693
    const-string v6, "http.cookie-store"

    invoke-interface {v5, v6, v4}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1709
    :try_start_0
    move-object/from16 v0, p1

    invoke-static {v0, v2, v5}, Lcom/androidquery/b/a;->a(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v4, v2

    .line 1724
    :goto_0
    const/4 v6, 0x0

    .line 1729
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v9

    .line 1730
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v10

    .line 1733
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v11

    .line 1735
    const/4 v3, 0x0

    .line 1736
    const/4 v8, 0x0

    .line 1738
    const/16 v2, 0xc8

    if-lt v9, v2, :cond_7

    const/16 v2, 0x12c

    if-lt v9, v2, :cond_b

    .line 1740
    :cond_7
    const/4 v2, 0x0

    .line 1744
    if-eqz v11, :cond_8

    .line 1746
    :try_start_1
    invoke-interface {v11}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 1747
    :try_start_2
    invoke-static {v11}, Lcom/androidquery/b/a;->a(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/androidquery/b/a;->a(Ljava/lang/String;Ljava/io/InputStream;)[B

    move-result-object v5

    .line 1749
    new-instance v7, Ljava/lang/String;

    const-string v8, "UTF-8"

    invoke-direct {v7, v5, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 1751
    const-string v5, "error"

    invoke-static {v5, v7}, Lcom/androidquery/util/a;->b(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 1757
    :cond_8
    invoke-static {v2}, Lcom/androidquery/util/a;->a(Ljava/io/Closeable;)V

    move-object v2, v3

    .line 1815
    :goto_1
    const-string v3, "response"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/androidquery/util/a;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1816
    if-eqz v6, :cond_9

    .line 1817
    array-length v3, v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-static {v3, v0}, Lcom/androidquery/util/a;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1820
    :cond_9
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Lcom/androidquery/b/c;->b(I)Lcom/androidquery/b/c;

    move-result-object v3

    invoke-virtual {v3, v10}, Lcom/androidquery/b/c;->a(Ljava/lang/String;)Lcom/androidquery/b/c;

    move-result-object v3

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v6}, Lcom/androidquery/b/c;->a([B)Lcom/androidquery/b/c;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/androidquery/b/c;->a(Ljava/io/File;)Lcom/androidquery/b/c;

    move-result-object v2

    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/androidquery/b/c;->a([Lorg/apache/http/Header;)Lcom/androidquery/b/c;

    .line 1823
    return-void

    .line 1710
    :catch_0
    move-exception v4

    .line 1713
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/androidquery/b/a;->B:Lorg/apache/http/HttpHost;

    if-eqz v6, :cond_a

    .line 1714
    const-string v4, "proxy failed, retrying without proxy"

    invoke-static {v4}, Lcom/androidquery/util/a;->a(Ljava/lang/Object;)V

    .line 1715
    const-string v4, "http.route.default-proxy"

    const/4 v6, 0x0

    invoke-interface {v3, v4, v6}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 1717
    move-object/from16 v0, p1

    invoke-static {v0, v2, v5}, Lcom/androidquery/b/a;->a(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    move-object v4, v2

    .line 1718
    goto/16 :goto_0

    .line 1719
    :cond_a
    throw v4

    .line 1754
    :catch_1
    move-exception v5

    move-object/from16 v16, v5

    move-object v5, v2

    move-object/from16 v2, v16

    .line 1755
    :goto_2
    :try_start_3
    invoke-static {v2}, Lcom/androidquery/util/a;->a(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    .line 1757
    invoke-static {v5}, Lcom/androidquery/util/a;->a(Ljava/io/Closeable;)V

    move-object v2, v3

    goto :goto_1

    .line 1756
    :catchall_0
    move-exception v3

    move-object v5, v2

    move-object v2, v3

    .line 1757
    :goto_3
    invoke-static {v5}, Lcom/androidquery/util/a;->a(Ljava/io/Closeable;)V

    .line 1758
    throw v2

    .line 1764
    :cond_b
    const-string v2, "http.target_host"

    invoke-interface {v5, v2}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/http/HttpHost;

    .line 1765
    const-string v3, "http.request"

    invoke-interface {v5, v3}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/http/client/methods/HttpUriRequest;

    .line 1766
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/apache/http/HttpHost;->toURI()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1768
    const/16 v2, 0x20

    const/high16 v3, 0x10000

    invoke-interface {v11}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v12

    long-to-int v5, v12

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 1770
    const/4 v3, 0x0

    .line 1771
    const/4 v7, 0x0

    .line 1774
    :try_start_4
    invoke-direct/range {p0 .. p0}, Lcom/androidquery/b/a;->h()Ljava/io/File;

    move-result-object v5

    .line 1776
    if-nez v5, :cond_d

    .line 1777
    new-instance v2, Lcom/androidquery/util/c;

    invoke-direct {v2, v12}, Lcom/androidquery/util/c;-><init>(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object v3, v2

    .line 1784
    :goto_4
    :try_start_5
    invoke-interface {v11}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move-result-object v7

    .line 1786
    :try_start_6
    const-string v2, "gzip"

    invoke-static {v11}, Lcom/androidquery/b/a;->a(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .line 1788
    if-eqz v2, :cond_c

    .line 1789
    new-instance v2, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v2, v7}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    move-object v7, v2

    .line 1792
    :cond_c
    :try_start_7
    invoke-interface {v11}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v12

    long-to-int v2, v12

    .line 24840
    if-nez v5, :cond_e

    .line 24841
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v3, v2}, Lcom/androidquery/b/a;->a(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    .line 1800
    :goto_5
    if-nez v5, :cond_f

    .line 1801
    move-object v0, v3

    check-cast v0, Lcom/androidquery/util/c;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/androidquery/util/c;->toByteArray()[B
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result-object v2

    move-object/from16 v16, v5

    move-object v5, v2

    move-object/from16 v2, v16

    .line 1809
    :goto_6
    invoke-static {v7}, Lcom/androidquery/util/a;->a(Ljava/io/Closeable;)V

    .line 1810
    invoke-static {v3}, Lcom/androidquery/util/a;->a(Ljava/io/Closeable;)V

    move-object v6, v5

    goto/16 :goto_1

    .line 23874
    :cond_d
    :try_start_8
    new-instance v8, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v2, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, ".tmp"

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v8, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 23875
    invoke-virtual {v8}, Ljava/io/File;->createNewFile()Z

    .line 1781
    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v12, Ljava/io/FileOutputStream;

    invoke-direct {v12, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v12}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-object v3, v2

    goto :goto_4

    .line 24847
    :cond_e
    :try_start_9
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v3, v2}, Lcom/androidquery/b/a;->a(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    .line 24848
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 24849
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 24853
    invoke-virtual {v8, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_5

    .line 24855
    :catch_2
    move-exception v2

    .line 24857
    :try_start_a
    const-string v4, "copy failed, deleting files"

    invoke-static {v4}, Lcom/androidquery/util/a;->a(Ljava/lang/Object;)V

    .line 24860
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 24861
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 24863
    invoke-static {v7}, Lcom/androidquery/util/a;->a(Ljava/io/Closeable;)V

    .line 24864
    invoke-static {v3}, Lcom/androidquery/util/a;->a(Ljava/io/Closeable;)V

    .line 24866
    throw v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 1808
    :catchall_1
    move-exception v2

    move-object v4, v3

    move-object v3, v7

    .line 1809
    :goto_7
    invoke-static {v3}, Lcom/androidquery/util/a;->a(Ljava/io/Closeable;)V

    .line 1810
    invoke-static {v4}, Lcom/androidquery/util/a;->a(Ljava/io/Closeable;)V

    .line 1811
    throw v2

    .line 1803
    :cond_f
    :try_start_b
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-virtual {v5}, Ljava/io/File;->length()J
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v2, v12, v14

    if-nez v2, :cond_11

    .line 1804
    :cond_10
    const/4 v2, 0x0

    move-object v5, v6

    .line 1808
    goto :goto_6

    :catchall_2
    move-exception v2

    move-object v4, v3

    move-object v3, v7

    goto :goto_7

    :catchall_3
    move-exception v2

    move-object v4, v3

    move-object v3, v7

    goto :goto_7

    :catchall_4
    move-exception v2

    move-object v4, v3

    move-object v3, v7

    goto :goto_7

    .line 1756
    :catchall_5
    move-exception v3

    move-object v5, v2

    move-object v2, v3

    goto/16 :goto_3

    :catchall_6
    move-exception v2

    goto/16 :goto_3

    .line 1754
    :catch_3
    move-exception v5

    move-object/from16 v16, v5

    move-object v5, v2

    move-object/from16 v2, v16

    goto/16 :goto_2

    :cond_11
    move-object v2, v5

    move-object v5, v6

    goto/16 :goto_6
.end method

.method private static a(Ljava/util/Map;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 2025
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2031
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 2025
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2026
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 2027
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/androidquery/util/a;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2028
    instance-of v0, v2, Ljava/io/File;

    if-nez v0, :cond_2

    instance-of v0, v2, [B

    if-nez v0, :cond_2

    instance-of v0, v2, Ljava/io/InputStream;

    if-eqz v0, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/io/InputStream;)[B
    .locals 1

    .prologue
    .line 2136
    const-string v0, "gzip"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 2138
    if-eqz v0, :cond_0

    .line 2139
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, p1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p1, v0

    .line 2142
    :cond_0
    invoke-static {p1}, Lcom/androidquery/util/a;->a(Ljava/io/InputStream;)[B

    move-result-object v0

    return-object v0
.end method

.method protected static c()I
    .locals 1

    .prologue
    .line 1965
    sget v0, Lcom/androidquery/b/a;->G:I

    return v0
.end method

.method private static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, -0x1

    .line 850
    if-nez p0, :cond_1

    .line 858
    :cond_0
    :goto_0
    return-object v0

    .line 851
    :cond_1
    const-string v1, "charset"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 852
    if-eq v1, v2, :cond_0

    .line 854
    const-string v0, ";"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 855
    if-ne v0, v2, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 857
    :cond_2
    add-int/lit8 v1, v1, 0x7

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[^\\w-]"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private d()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 568
    invoke-virtual {p0, v1}, Lcom/androidquery/b/a;->c(Z)V

    .line 10989
    iget-object v0, p0, Lcom/androidquery/b/a;->x:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    .line 10991
    iget-object v0, p0, Lcom/androidquery/b/a;->x:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 10993
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    move v0, v1

    .line 572
    :goto_0
    if-eqz v0, :cond_4

    .line 580
    :try_start_0
    iget-object v0, p0, Lcom/androidquery/b/a;->m:Ljava/lang/String;

    iget-object v1, p0, Lcom/androidquery/b/a;->p:Ljava/lang/Object;

    iget-object v3, p0, Lcom/androidquery/b/a;->a:Lcom/androidquery/b/c;

    invoke-virtual {p0, v0, v1, v3}, Lcom/androidquery/b/a;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/androidquery/b/c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11250
    :goto_1
    iget-object v0, p0, Lcom/androidquery/b/a;->p:Ljava/lang/Object;

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/androidquery/b/a;->t:Z

    if-eqz v0, :cond_6

    .line 11252
    iget-object v0, p0, Lcom/androidquery/b/a;->a:Lcom/androidquery/b/c;

    invoke-virtual {v0}, Lcom/androidquery/b/c;->h()[B

    move-result-object v0

    .line 11255
    if-eqz v0, :cond_1

    :try_start_1
    iget-object v1, p0, Lcom/androidquery/b/a;->a:Lcom/androidquery/b/c;

    invoke-virtual {v1}, Lcom/androidquery/b/c;->j()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 11257
    invoke-direct {p0}, Lcom/androidquery/b/a;->g()Ljava/io/File;

    move-result-object v1

    .line 11258
    iget-object v2, p0, Lcom/androidquery/b/a;->a:Lcom/androidquery/b/c;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 12908
    if-eqz v1, :cond_1

    if-nez v0, :cond_5

    .line 11271
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/androidquery/b/a;->a:Lcom/androidquery/b/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/androidquery/b/c;->a([B)Lcom/androidquery/b/c;

    .line 594
    :cond_2
    :goto_3
    iget-object v0, p0, Lcom/androidquery/b/a;->a:Lcom/androidquery/b/c;

    invoke-virtual {v0}, Lcom/androidquery/b/c;->c()V

    .line 598
    invoke-static {}, Lcom/androidquery/util/a;->a()V

    .line 599
    return-void

    :cond_3
    move v0, v2

    .line 10997
    goto :goto_0

    .line 581
    :catch_0
    move-exception v0

    .line 582
    invoke-static {v0}, Lcom/androidquery/util/a;->b(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 587
    :cond_4
    iget-object v0, p0, Lcom/androidquery/b/a;->m:Ljava/lang/String;

    iget-object v1, p0, Lcom/androidquery/b/a;->p:Ljava/lang/Object;

    iget-object v3, p0, Lcom/androidquery/b/a;->a:Lcom/androidquery/b/c;

    invoke-virtual {p0, v0, v1, v3}, Lcom/androidquery/b/a;->b(Ljava/lang/String;Ljava/lang/Object;Lcom/androidquery/b/c;)V

    goto :goto_1

    .line 12910
    :cond_5
    const-wide/16 v2, 0x0

    :try_start_2
    invoke-static {v1, v0, v2, v3}, Lcom/androidquery/util/a;->a(Ljava/io/File;[BJ)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 11267
    :catch_1
    move-exception v0

    .line 11268
    invoke-static {v0}, Lcom/androidquery/util/a;->a(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 11272
    :cond_6
    iget-object v0, p0, Lcom/androidquery/b/a;->a:Lcom/androidquery/b/c;

    invoke-virtual {v0}, Lcom/androidquery/b/c;->f()I

    move-result v0

    const/16 v1, -0x67

    if-ne v0, v1, :cond_2

    .line 11274
    invoke-direct {p0}, Lcom/androidquery/b/a;->g()Ljava/io/File;

    move-result-object v0

    .line 11276
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 11277
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 11278
    const-string v0, "invalidated cache due to transform error"

    invoke-static {v0}, Lcom/androidquery/util/a;->a(Ljava/lang/Object;)V

    goto :goto_3
.end method

.method private e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1095
    iget-object v0, p0, Lcom/androidquery/b/a;->s:Lcom/androidquery/a/a;

    if-eqz v0, :cond_0

    .line 1096
    iget-object v0, p0, Lcom/androidquery/b/a;->m:Ljava/lang/String;

    .line 1098
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/androidquery/b/a;->m:Ljava/lang/String;

    goto :goto_0
.end method

.method private static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 1453
    const-string v0, " "

    const-string v1, "%20"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\|"

    const-string v2, "%7C"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1454
    return-object v0
.end method

.method private f()V
    .locals 4

    .prologue
    const/16 v3, -0x65

    .line 1146
    iget-object v0, p0, Lcom/androidquery/b/a;->m:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1147
    iget-object v0, p0, Lcom/androidquery/b/a;->a:Lcom/androidquery/b/c;

    invoke-virtual {v0, v3}, Lcom/androidquery/b/c;->b(I)Lcom/androidquery/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androidquery/b/c;->a()Lcom/androidquery/b/c;

    .line 1202
    :goto_0
    return-void

    .line 1152
    :cond_0
    const/4 v1, 0x0

    .line 17314
    :try_start_0
    invoke-direct {p0}, Lcom/androidquery/b/a;->i()V

    .line 1158
    iget-object v0, p0, Lcom/androidquery/b/a;->s:Lcom/androidquery/a/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/androidquery/b/a;->s:Lcom/androidquery/a/a;

    invoke-virtual {v0}, Lcom/androidquery/a/a;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/androidquery/b/a;->D:Z

    if-nez v0, :cond_1

    .line 1159
    const-string v0, "reauth needed"

    iget-object v2, p0, Lcom/androidquery/b/a;->a:Lcom/androidquery/b/c;

    invoke-virtual {v2}, Lcom/androidquery/b/c;->g()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/androidquery/util/a;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/androidquery/b/a;->D:Z

    .line 1161
    iget-object v0, p0, Lcom/androidquery/b/a;->s:Lcom/androidquery/a/a;

    invoke-virtual {v0}, Lcom/androidquery/a/a;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1162
    invoke-direct {p0}, Lcom/androidquery/b/a;->i()V

    .line 1169
    :cond_1
    iget-object v0, p0, Lcom/androidquery/b/a;->a:Lcom/androidquery/b/c;

    invoke-virtual {v0}, Lcom/androidquery/b/c;->h()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    move-object v1, v0

    .line 1191
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/androidquery/b/a;->m:Ljava/lang/String;

    iget-object v2, p0, Lcom/androidquery/b/a;->a:Lcom/androidquery/b/c;

    invoke-virtual {p0, v0, v1, v2}, Lcom/androidquery/b/a;->a(Ljava/lang/String;[BLcom/androidquery/b/c;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/androidquery/b/a;->p:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 1196
    :goto_2
    iget-object v0, p0, Lcom/androidquery/b/a;->p:Ljava/lang/Object;

    if-nez v0, :cond_2

    if-eqz v1, :cond_2

    .line 1197
    iget-object v0, p0, Lcom/androidquery/b/a;->a:Lcom/androidquery/b/c;

    const/16 v1, -0x67

    invoke-virtual {v0, v1}, Lcom/androidquery/b/c;->b(I)Lcom/androidquery/b/c;

    move-result-object v0

    const-string v1, "transform error"

    invoke-virtual {v0, v1}, Lcom/androidquery/b/c;->a(Ljava/lang/String;)Lcom/androidquery/b/c;

    .line 1200
    :cond_2
    iget-object v0, p0, Lcom/androidquery/b/a;->a:Lcom/androidquery/b/c;

    invoke-virtual {v0}, Lcom/androidquery/b/c;->f()I

    move-result v0

    sput v0, Lcom/androidquery/b/a;->G:I

    .line 1201
    iget-object v0, p0, Lcom/androidquery/b/a;->a:Lcom/androidquery/b/c;

    invoke-virtual {v0}, Lcom/androidquery/b/c;->a()Lcom/androidquery/b/c;

    goto :goto_0

    .line 1164
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/androidquery/b/a;->a:Lcom/androidquery/b/c;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/androidquery/b/c;->a(Z)Lcom/androidquery/b/c;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1171
    :catch_0
    move-exception v0

    .line 1173
    const-string v2, "IOException"

    invoke-static {v2}, Lcom/androidquery/util/a;->a(Ljava/lang/Object;)V

    .line 1177
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 1178
    if-eqz v0, :cond_4

    const-string v2, "No authentication challenges found"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1179
    iget-object v2, p0, Lcom/androidquery/b/a;->a:Lcom/androidquery/b/c;

    const/16 v3, 0x191

    invoke-virtual {v2, v3}, Lcom/androidquery/b/c;->b(I)Lcom/androidquery/b/c;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/androidquery/b/c;->a(Ljava/lang/String;)Lcom/androidquery/b/c;

    goto :goto_1

    .line 1181
    :cond_4
    iget-object v0, p0, Lcom/androidquery/b/a;->a:Lcom/androidquery/b/c;

    invoke-virtual {v0, v3}, Lcom/androidquery/b/c;->b(I)Lcom/androidquery/b/c;

    move-result-object v0

    const-string v2, "network error"

    invoke-virtual {v0, v2}, Lcom/androidquery/b/c;->a(Ljava/lang/String;)Lcom/androidquery/b/c;

    goto :goto_1

    .line 1184
    :catch_1
    move-exception v0

    .line 1185
    invoke-static {v0}, Lcom/androidquery/util/a;->a(Ljava/lang/Throwable;)V

    .line 1186
    iget-object v0, p0, Lcom/androidquery/b/a;->a:Lcom/androidquery/b/c;

    invoke-virtual {v0, v3}, Lcom/androidquery/b/c;->b(I)Lcom/androidquery/b/c;

    move-result-object v0

    const-string v2, "network error"

    invoke-virtual {v0, v2}, Lcom/androidquery/b/c;->a(Ljava/lang/String;)Lcom/androidquery/b/c;

    goto :goto_1

    .line 1192
    :catch_2
    move-exception v0

    .line 1193
    invoke-static {v0}, Lcom/androidquery/util/a;->a(Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method private g()Ljava/io/File;
    .locals 2

    .prologue
    .line 1205
    iget-object v0, p0, Lcom/androidquery/b/a;->r:Ljava/io/File;

    invoke-direct {p0}, Lcom/androidquery/b/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/androidquery/util/a;->a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private h()Ljava/io/File;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1215
    invoke-virtual {p0}, Lcom/androidquery/b/a;->a()Z

    move-result v0

    .line 1219
    if-eqz v0, :cond_3

    .line 1223
    iget-boolean v0, p0, Lcom/androidquery/b/a;->t:Z

    if-eqz v0, :cond_1

    .line 1224
    invoke-direct {p0}, Lcom/androidquery/b/a;->g()Ljava/io/File;

    move-result-object v0

    .line 1233
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1236
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 1237
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1244
    :cond_0
    :goto_1
    return-object v0

    .line 1226
    :cond_1
    invoke-static {}, Lcom/androidquery/util/a;->c()Ljava/io/File;

    move-result-object v0

    .line 1228
    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/androidquery/b/a;->r:Ljava/io/File;

    .line 1229
    :cond_2
    iget-object v2, p0, Lcom/androidquery/b/a;->m:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/androidquery/util/a;->a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    goto :goto_0

    .line 1238
    :catch_0
    move-exception v0

    .line 1239
    invoke-static {v0}, Lcom/androidquery/util/a;->b(Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 1240
    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method private i()V
    .locals 5

    .prologue
    .line 1339
    iget-object v1, p0, Lcom/androidquery/b/a;->m:Ljava/lang/String;

    .line 1340
    const/4 v0, 0x0

    .line 1343
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x7d0

    if-le v2, v3, :cond_1

    .line 1344
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 18286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "://"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 18288
    invoke-virtual {v1}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v2

    .line 18289
    if-eqz v2, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "#"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1346
    :cond_0
    invoke-static {v1}, Lcom/androidquery/b/a;->a(Landroid/net/Uri;)Ljava/util/Map;

    move-result-object v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    .line 19105
    :cond_1
    iget-object v2, p0, Lcom/androidquery/b/a;->n:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 19106
    iget-object v1, p0, Lcom/androidquery/b/a;->n:Ljava/lang/String;

    .line 19109
    :cond_2
    iget-object v2, p0, Lcom/androidquery/b/a;->s:Lcom/androidquery/a/a;

    if-eqz v2, :cond_3

    .line 1352
    :cond_3
    const/4 v2, 0x2

    iget v3, p0, Lcom/androidquery/b/a;->y:I

    if-ne v2, v3, :cond_4

    .line 1353
    iget-object v0, p0, Lcom/androidquery/b/a;->a:Lcom/androidquery/b/c;

    .line 20470
    const-string v2, "get"

    invoke-static {v2, v1}, Lcom/androidquery/util/a;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 20471
    invoke-static {v1}, Lcom/androidquery/b/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 20473
    new-instance v2, Lorg/apache/http/client/methods/HttpDelete;

    invoke-direct {v2, v1}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/lang/String;)V

    .line 20475
    invoke-direct {p0, v2, v1, v0}, Lcom/androidquery/b/a;->a(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/androidquery/b/c;)V

    .line 1379
    :goto_0
    return-void

    .line 1354
    :cond_4
    const/4 v2, 0x3

    iget v3, p0, Lcom/androidquery/b/a;->y:I

    if-ne v2, v3, :cond_5

    .line 1355
    iget-object v2, p0, Lcom/androidquery/b/a;->a:Lcom/androidquery/b/c;

    .line 20491
    const-string v3, "put"

    invoke-static {v3, v1}, Lcom/androidquery/util/a;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 20493
    new-instance v3, Lorg/apache/http/client/methods/HttpPut;

    invoke-direct {v3, v1}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    .line 20495
    invoke-direct {p0, v1, v3, v0, v2}, Lcom/androidquery/b/a;->a(Ljava/lang/String;Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Ljava/util/Map;Lcom/androidquery/b/c;)V

    goto :goto_0

    .line 1358
    :cond_5
    const/4 v2, 0x1

    iget v3, p0, Lcom/androidquery/b/a;->y:I

    if-ne v2, v3, :cond_6

    if-nez v0, :cond_6

    .line 1359
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1362
    :cond_6
    if-nez v0, :cond_7

    .line 1363
    iget-object v0, p0, Lcom/androidquery/b/a;->a:Lcom/androidquery/b/c;

    .line 21459
    const-string v2, "get"

    invoke-static {v2, v1}, Lcom/androidquery/util/a;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 21460
    invoke-static {v1}, Lcom/androidquery/b/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 21462
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 21464
    invoke-direct {p0, v2, v1, v0}, Lcom/androidquery/b/a;->a(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/androidquery/b/c;)V

    goto :goto_0

    .line 1365
    :cond_7
    invoke-static {v0}, Lcom/androidquery/b/a;->a(Ljava/util/Map;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1366
    iget-object v2, p0, Lcom/androidquery/b/a;->a:Lcom/androidquery/b/c;

    invoke-direct {p0, v1, v0, v2}, Lcom/androidquery/b/a;->a(Ljava/lang/String;Ljava/util/Map;Lcom/androidquery/b/c;)V

    goto :goto_0

    .line 1368
    :cond_8
    iget-object v2, p0, Lcom/androidquery/b/a;->a:Lcom/androidquery/b/c;

    .line 21481
    const-string v3, "post"

    invoke-static {v3, v1}, Lcom/androidquery/util/a;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 21483
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v3, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 21485
    invoke-direct {p0, v1, v3, v0, v2}, Lcom/androidquery/b/a;->a(Ljava/lang/String;Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Ljava/util/Map;Lcom/androidquery/b/c;)V

    goto :goto_0
.end method

.method private j()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1384
    iget-object v0, p0, Lcom/androidquery/b/a;->m:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/androidquery/b/a;->b:Z

    if-eqz v0, :cond_0

    .line 1385
    iget-object v0, p0, Lcom/androidquery/b/a;->m:Ljava/lang/String;

    iget-object v1, p0, Lcom/androidquery/b/a;->p:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/androidquery/b/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1388
    :cond_0
    invoke-direct {p0}, Lcom/androidquery/b/a;->d()V

    .line 22166
    iput-object v2, p0, Lcom/androidquery/b/a;->j:Ljava/lang/ref/Reference;

    .line 22167
    iput-object v2, p0, Lcom/androidquery/b/a;->k:Ljava/lang/Object;

    .line 22168
    iput-object v2, p0, Lcom/androidquery/b/a;->l:Ljava/lang/ref/WeakReference;

    .line 22170
    iput-object v2, p0, Lcom/androidquery/b/a;->o:Landroid/support/design/widget/K;

    .line 22171
    iput-object v2, p0, Lcom/androidquery/b/a;->s:Lcom/androidquery/a/a;

    .line 22172
    iput-object v2, p0, Lcom/androidquery/b/a;->x:Ljava/lang/ref/WeakReference;

    .line 1390
    return-void
.end method


# virtual methods
.method protected a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 8

    .prologue
    const/4 v0, 0x0

    const-wide/16 v6, 0x0

    .line 916
    cmp-long v1, v6, v6

    if-gez v1, :cond_1

    .line 927
    :cond_0
    :goto_0
    return-object v0

    .line 918
    :cond_1
    invoke-static {p1, p2}, Lcom/androidquery/util/a;->b(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 920
    if-eqz v1, :cond_2

    cmp-long v2, v6, v6

    if-eqz v2, :cond_2

    .line 921
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 922
    cmp-long v2, v2, v6

    if-gtz v2, :cond_0

    :cond_2
    move-object v0, v1

    .line 927
    goto :goto_0
.end method

.method public final a(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    .prologue
    .line 364
    iput p1, p0, Lcom/androidquery/b/a;->q:I

    .line 365
    return-object p0
.end method

.method public final a(Lcom/androidquery/a/a;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/androidquery/a/a;",
            ")TK;"
        }
    .end annotation

    .prologue
    .line 1929
    iput-object p1, p0, Lcom/androidquery/b/a;->s:Lcom/androidquery/a/a;

    .line 1930
    return-object p0
.end method

.method public final a(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;)TK;"
        }
    .end annotation

    .prologue
    .line 292
    iput-object p1, p0, Lcom/androidquery/b/a;->i:Ljava/lang/Class;

    .line 293
    return-object p0
.end method

.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TK;"
        }
    .end annotation

    .prologue
    .line 557
    if-eqz p1, :cond_0

    .line 558
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/androidquery/b/a;->l:Ljava/lang/ref/WeakReference;

    .line 560
    :cond_0
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TK;"
        }
    .end annotation

    .prologue
    .line 272
    iput-object p1, p0, Lcom/androidquery/b/a;->m:Ljava/lang/String;

    .line 273
    return-object p0
.end method

.method public final a(Ljava/lang/String;I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)TK;"
        }
    .end annotation

    .prologue
    .line 471
    new-instance v0, Lorg/apache/http/HttpHost;

    invoke-direct {v0, p1, p2}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/androidquery/b/a;->B:Lorg/apache/http/HttpHost;

    .line 472
    return-object p0
.end method

.method protected a(Ljava/lang/String;Ljava/io/File;Lcom/androidquery/b/c;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Lcom/androidquery/b/c;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 661
    .line 663
    :try_start_0
    invoke-virtual {p0}, Lcom/androidquery/b/a;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 664
    invoke-virtual {p3, p2}, Lcom/androidquery/b/c;->a(Ljava/io/File;)Lcom/androidquery/b/c;

    move-object v1, v0

    .line 669
    :goto_0
    invoke-virtual {p0, p1, v1, p3}, Lcom/androidquery/b/a;->a(Ljava/lang/String;[BLcom/androidquery/b/c;)Ljava/lang/Object;

    move-result-object v0

    .line 672
    :goto_1
    return-object v0

    .line 666
    :cond_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v1}, Lcom/androidquery/util/a;->a(Ljava/io/InputStream;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 670
    :catch_0
    move-exception v1

    .line 671
    invoke-static {v1}, Lcom/androidquery/util/a;->a(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method protected a(Ljava/lang/String;[BLcom/androidquery/b/c;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Lcom/androidquery/b/c;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 706
    iget-object v0, p0, Lcom/androidquery/b/a;->i:Ljava/lang/Class;

    if-nez v0, :cond_1

    .line 830
    :cond_0
    :goto_0
    return-object v1

    .line 710
    :cond_1
    invoke-virtual {p3}, Lcom/androidquery/b/c;->i()Ljava/io/File;

    move-result-object v0

    .line 712
    if-eqz p2, :cond_7

    .line 714
    iget-object v0, p0, Lcom/androidquery/b/a;->i:Ljava/lang/Class;

    const-class v2, Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 715
    const/4 v0, 0x0

    array-length v1, p2

    invoke-static {p2, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    .line 718
    :cond_2
    iget-object v0, p0, Lcom/androidquery/b/a;->i:Ljava/lang/Class;

    const-class v2, Lorg/json/JSONObject;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 723
    :try_start_0
    new-instance v2, Ljava/lang/String;

    iget-object v0, p0, Lcom/androidquery/b/a;->w:Ljava/lang/String;

    invoke-direct {v2, p2, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 724
    :try_start_1
    new-instance v0, Lorg/json/JSONTokener;

    invoke-direct {v0, v2}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    :goto_1
    move-object v1, v0

    .line 729
    goto :goto_0

    .line 725
    :catch_0
    move-exception v0

    move-object v2, v1

    .line 726
    :goto_2
    invoke-static {v0}, Lcom/androidquery/util/a;->a(Ljava/lang/Throwable;)V

    .line 727
    invoke-static {v2}, Lcom/androidquery/util/a;->a(Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_1

    .line 732
    :cond_3
    iget-object v0, p0, Lcom/androidquery/b/a;->i:Ljava/lang/Class;

    const-class v2, Lorg/json/JSONArray;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 737
    :try_start_2
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/androidquery/b/a;->w:Ljava/lang/String;

    invoke-direct {v0, p2, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 738
    new-instance v2, Lorg/json/JSONTokener;

    invoke-direct {v2, v0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    move-object v1, v0

    .line 742
    goto :goto_0

    .line 739
    :catch_1
    move-exception v0

    .line 740
    invoke-static {v0}, Lcom/androidquery/util/a;->a(Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_3

    .line 745
    :cond_4
    iget-object v0, p0, Lcom/androidquery/b/a;->i:Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 749
    invoke-virtual {p3}, Lcom/androidquery/b/c;->j()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_5

    .line 750
    const-string v0, "network"

    invoke-static {v0}, Lcom/androidquery/util/a;->a(Ljava/lang/Object;)V

    .line 751
    iget-object v0, p0, Lcom/androidquery/b/a;->w:Ljava/lang/String;

    invoke-direct {p0, p2, v0, p3}, Lcom/androidquery/b/a;->a([BLjava/lang/String;Lcom/androidquery/b/c;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 753
    :cond_5
    const-string v0, "file"

    invoke-static {v0}, Lcom/androidquery/util/a;->a(Ljava/lang/Object;)V

    .line 755
    :try_start_3
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/androidquery/b/a;->w:Ljava/lang/String;

    invoke-direct {v0, p2, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-object v1, v0

    .line 756
    goto/16 :goto_0

    :catch_2
    move-exception v0

    .line 757
    invoke-static {v0}, Lcom/androidquery/util/a;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 765
    :cond_6
    iget-object v0, p0, Lcom/androidquery/b/a;->i:Ljava/lang/Class;

    const-class v2, [B

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v1, p2

    .line 766
    goto/16 :goto_0

    .line 778
    :cond_7
    if-eqz v0, :cond_0

    .line 780
    iget-object v2, p0, Lcom/androidquery/b/a;->i:Ljava/lang/Class;

    const-class v3, Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    move-object v1, v0

    .line 781
    goto/16 :goto_0

    .line 784
    :cond_8
    iget-object v2, p0, Lcom/androidquery/b/a;->i:Ljava/lang/Class;

    const-class v3, Lcom/androidquery/util/f;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 789
    :try_start_4
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 790
    new-instance v0, Lcom/androidquery/util/f;

    invoke-direct {v0, v2}, Lcom/androidquery/util/f;-><init>(Ljava/io/InputStream;)V

    .line 791
    invoke-virtual {p3, v2}, Lcom/androidquery/b/c;->a(Ljava/io/Closeable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move-object v1, v0

    .line 797
    goto/16 :goto_0

    .line 792
    :catch_3
    move-exception v0

    .line 793
    invoke-static {v0}, Lcom/androidquery/util/a;->b(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 800
    :cond_9
    iget-object v2, p0, Lcom/androidquery/b/a;->i:Ljava/lang/Class;

    const-class v3, Lorg/xmlpull/v1/XmlPullParser;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 802
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object p2

    .line 805
    :try_start_5
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 806
    iget-object v0, p0, Lcom/androidquery/b/a;->w:Ljava/lang/String;

    invoke-interface {p2, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 807
    invoke-virtual {p3, v2}, Lcom/androidquery/b/c;->a(Ljava/io/Closeable;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    move-object v1, p2

    .line 812
    goto/16 :goto_0

    .line 808
    :catch_4
    move-exception v0

    .line 809
    invoke-static {v0}, Lcom/androidquery/util/a;->b(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 815
    :cond_a
    iget-object v2, p0, Lcom/androidquery/b/a;->i:Ljava/lang/Class;

    const-class v3, Ljava/io/InputStream;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 817
    :try_start_6
    new-instance p2, Ljava/io/FileInputStream;

    invoke-direct {p2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 818
    invoke-virtual {p3, p2}, Lcom/androidquery/b/c;->a(Ljava/io/Closeable;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    move-object v1, p2

    .line 819
    goto/16 :goto_0

    .line 820
    :catch_5
    move-exception v0

    .line 821
    invoke-static {v0}, Lcom/androidquery/util/a;->b(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 725
    :catch_6
    move-exception v0

    goto/16 :goto_2
.end method

.method public final a(Z)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TK;"
        }
    .end annotation

    .prologue
    .line 347
    iput-boolean p1, p0, Lcom/androidquery/b/a;->t:Z

    .line 348
    return-object p0
.end method

.method public final a(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 940
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 941
    const-string v0, "Warning"

    const-string v1, "Possible memory leak. Calling ajax with a terminated activity."

    invoke-static {v0, v1}, Lcom/androidquery/util/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 944
    :cond_0
    iget-object v0, p0, Lcom/androidquery/b/a;->i:Ljava/lang/Class;

    if-nez v0, :cond_1

    .line 945
    const-string v0, "Warning"

    const-string v1, "type() is not called with response type."

    invoke-static {v0, v1}, Lcom/androidquery/util/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 952
    :goto_0
    return-void

    .line 949
    :cond_1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/androidquery/b/a;->x:Ljava/lang/ref/WeakReference;

    .line 950
    invoke-virtual {p0, p1}, Lcom/androidquery/b/a;->a(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 963
    iget-object v0, p0, Lcom/androidquery/b/a;->a:Lcom/androidquery/b/c;

    if-nez v0, :cond_1

    .line 964
    new-instance v0, Lcom/androidquery/b/c;

    invoke-direct {v0}, Lcom/androidquery/b/c;-><init>()V

    iput-object v0, p0, Lcom/androidquery/b/a;->a:Lcom/androidquery/b/c;

    .line 971
    :cond_0
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/androidquery/b/a;->c(Z)V

    .line 973
    iget-object v0, p0, Lcom/androidquery/b/a;->s:Lcom/androidquery/a/a;

    if-eqz v0, :cond_2

    .line 975
    iget-object v0, p0, Lcom/androidquery/b/a;->s:Lcom/androidquery/a/a;

    invoke-virtual {v0}, Lcom/androidquery/a/a;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 976
    const-string v0, "auth needed"

    iget-object v1, p0, Lcom/androidquery/b/a;->m:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/androidquery/util/a;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 977
    iget-object v0, p0, Lcom/androidquery/b/a;->s:Lcom/androidquery/a/a;

    invoke-virtual {v0, p0}, Lcom/androidquery/a/a;->a(Lcom/androidquery/b/a;)V

    .line 14027
    :goto_1
    return-void

    .line 966
    :cond_1
    iget-object v0, p0, Lcom/androidquery/b/a;->a:Lcom/androidquery/b/c;

    invoke-virtual {v0}, Lcom/androidquery/b/c;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 967
    iget-object v0, p0, Lcom/androidquery/b/a;->a:Lcom/androidquery/b/c;

    invoke-virtual {v0}, Lcom/androidquery/b/c;->b()Lcom/androidquery/b/c;

    .line 968
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/androidquery/b/a;->p:Ljava/lang/Object;

    goto :goto_0

    .line 14021
    :cond_2
    iget-object v0, p0, Lcom/androidquery/b/a;->m:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/androidquery/b/a;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 14023
    if-eqz v0, :cond_3

    .line 14024
    iput-object v0, p0, Lcom/androidquery/b/a;->p:Ljava/lang/Object;

    .line 14025
    iget-object v0, p0, Lcom/androidquery/b/a;->a:Lcom/androidquery/b/c;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/androidquery/b/c;->a(I)Lcom/androidquery/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androidquery/b/c;->a()Lcom/androidquery/b/c;

    .line 14026
    invoke-direct {p0}, Lcom/androidquery/b/a;->d()V

    goto :goto_1

    .line 14029
    :cond_3
    iget v0, p0, Lcom/androidquery/b/a;->q:I

    invoke-static {p1, v0}, Lcom/androidquery/util/a;->a(Landroid/content/Context;I)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/androidquery/b/a;->r:Ljava/io/File;

    .line 14396
    sget-object v0, Lcom/androidquery/b/a;->E:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_4

    .line 14397
    sget v0, Lcom/androidquery/b/a;->e:I

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/androidquery/b/a;->E:Ljava/util/concurrent/ExecutorService;

    .line 14400
    :cond_4
    sget-object v0, Lcom/androidquery/b/a;->E:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method protected a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 904
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;Lcom/androidquery/b/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;",
            "Lcom/androidquery/b/c;",
            ")V"
        }
    .end annotation

    .prologue
    .line 652
    return-void
.end method

.method protected a()Z
    .locals 2

    .prologue
    .line 1210
    const-class v0, Ljava/io/File;

    iget-object v1, p0, Lcom/androidquery/b/a;->i:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lorg/xmlpull/v1/XmlPullParser;

    iget-object v1, p0, Lcom/androidquery/b/a;->i:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Ljava/io/InputStream;

    iget-object v1, p0, Lcom/androidquery/b/a;->i:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lcom/androidquery/util/f;

    iget-object v1, p0, Lcom/androidquery/b/a;->i:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TK;"
        }
    .end annotation

    .prologue
    .line 277
    iput-object p1, p0, Lcom/androidquery/b/a;->n:Ljava/lang/String;

    .line 278
    return-object p0
.end method

.method public final b(Z)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TK;"
        }
    .end annotation

    .prologue
    .line 359
    iput-boolean p1, p0, Lcom/androidquery/b/a;->b:Z

    .line 360
    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1939
    iget-object v0, p0, Lcom/androidquery/b/a;->m:Ljava/lang/String;

    return-object v0
.end method

.method protected b(Ljava/lang/String;Ljava/lang/Object;Lcom/androidquery/b/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;",
            "Lcom/androidquery/b/c;",
            ")V"
        }
    .end annotation

    .prologue
    .line 656
    return-void
.end method

.method protected final b(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 1036
    iget-boolean v0, p0, Lcom/androidquery/b/a;->t:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/androidquery/b/a;->q:I

    invoke-static {p1, v0}, Lcom/androidquery/util/a;->a(Landroid/content/Context;I)Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Lcom/androidquery/b/a;->m:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/androidquery/util/a;->b(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected c(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 899
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final c(Z)V
    .locals 2

    .prologue
    .line 684
    iget-object v0, p0, Lcom/androidquery/b/a;->l:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 686
    :goto_0
    if-eqz v0, :cond_0

    .line 688
    invoke-static {}, Lcom/androidquery/util/a;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 689
    iget-object v1, p0, Lcom/androidquery/b/a;->m:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/androidquery/util/b;->a(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 701
    :cond_0
    :goto_1
    return-void

    .line 684
    :cond_1
    iget-object v0, p0, Lcom/androidquery/b/a;->l:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 691
    :cond_2
    new-instance v1, Lcom/androidquery/b/b;

    invoke-direct {v1, p0, v0, p1}, Lcom/androidquery/b/b;-><init>(Lcom/androidquery/b/a;Ljava/lang/Object;Z)V

    invoke-static {v1}, Lcom/androidquery/util/a;->a(Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method public run()V
    .locals 6

    .prologue
    .line 1048
    iget-object v0, p0, Lcom/androidquery/b/a;->a:Lcom/androidquery/b/c;

    invoke-virtual {v0}, Lcom/androidquery/b/c;->d()Z

    move-result v0

    if-nez v0, :cond_5

    .line 15078
    :try_start_0
    iget-boolean v0, p0, Lcom/androidquery/b/a;->t:Z

    if-eqz v0, :cond_0

    .line 15118
    iget-object v0, p0, Lcom/androidquery/b/a;->r:Ljava/io/File;

    invoke-direct {p0}, Lcom/androidquery/b/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/androidquery/b/a;->a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 15121
    if-eqz v0, :cond_0

    .line 15123
    iget-object v1, p0, Lcom/androidquery/b/a;->a:Lcom/androidquery/b/c;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/androidquery/b/c;->a(I)Lcom/androidquery/b/c;

    .line 15124
    iget-object v1, p0, Lcom/androidquery/b/a;->m:Ljava/lang/String;

    iget-object v2, p0, Lcom/androidquery/b/a;->a:Lcom/androidquery/b/c;

    invoke-virtual {p0, v1, v0, v2}, Lcom/androidquery/b/a;->a(Ljava/lang/String;Ljava/io/File;Lcom/androidquery/b/c;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/androidquery/b/a;->p:Ljava/lang/Object;

    .line 15128
    iget-object v1, p0, Lcom/androidquery/b/a;->p:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 15129
    iget-object v1, p0, Lcom/androidquery/b/a;->a:Lcom/androidquery/b/c;

    new-instance v2, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1}, Lcom/androidquery/b/c;->a()Lcom/androidquery/b/c;

    .line 15083
    :cond_0
    iget-object v0, p0, Lcom/androidquery/b/a;->p:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 16136
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/androidquery/b/a;->p:Ljava/lang/Object;

    .line 16138
    iget-object v0, p0, Lcom/androidquery/b/a;->p:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 16139
    iget-object v0, p0, Lcom/androidquery/b/a;->a:Lcom/androidquery/b/c;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/androidquery/b/c;->a(I)Lcom/androidquery/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androidquery/b/c;->a()Lcom/androidquery/b/c;

    .line 15087
    :cond_1
    iget-object v0, p0, Lcom/androidquery/b/a;->p:Ljava/lang/Object;

    if-nez v0, :cond_2

    .line 15088
    invoke-direct {p0}, Lcom/androidquery/b/a;->f()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1057
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/androidquery/b/a;->a:Lcom/androidquery/b/c;

    invoke-virtual {v0}, Lcom/androidquery/b/c;->e()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1059
    iget-boolean v0, p0, Lcom/androidquery/b/a;->z:Z

    if-eqz v0, :cond_4

    .line 1060
    invoke-static {p0}, Lcom/androidquery/util/a;->a(Ljava/lang/Runnable;)V

    .line 1072
    :cond_3
    :goto_1
    return-void

    .line 1052
    :catch_0
    move-exception v0

    .line 1053
    invoke-static {v0}, Lcom/androidquery/util/a;->a(Ljava/lang/Throwable;)V

    .line 1054
    iget-object v0, p0, Lcom/androidquery/b/a;->a:Lcom/androidquery/b/c;

    const/16 v1, -0x65

    invoke-virtual {v0, v1}, Lcom/androidquery/b/c;->b(I)Lcom/androidquery/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androidquery/b/c;->a()Lcom/androidquery/b/c;

    goto :goto_0

    .line 1062
    :cond_4
    invoke-direct {p0}, Lcom/androidquery/b/a;->j()V

    goto :goto_1

    .line 1066
    :cond_5
    invoke-direct {p0}, Lcom/androidquery/b/a;->j()V

    goto :goto_1
.end method
