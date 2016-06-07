.class final Lcom/integralblue/httpresponsecache/compat/libcore/net/http/v;
.super Ljava/net/CacheResponse;
.source "SourceFile"


# instance fields
.field private final a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;

.field private final b:Lcom/b/h;

.field private final c:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;Lcom/b/h;)V
    .locals 1

    .prologue
    .line 626
    invoke-direct {p0}, Ljava/net/CacheResponse;-><init>()V

    .line 627
    iput-object p1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/v;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;

    .line 628
    iput-object p2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/v;->b:Lcom/b/h;

    .line 629
    invoke-static {p2}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/p;->a(Lcom/b/h;)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/v;->c:Ljava/io/InputStream;

    .line 630
    return-void
.end method

.method static synthetic a(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/v;)Lcom/b/h;
    .locals 1

    .prologue
    .line 621
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/v;->b:Lcom/b/h;

    return-object v0
.end method


# virtual methods
.method public final getBody()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 637
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/v;->c:Ljava/io/InputStream;

    return-object v0
.end method

.method public final getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 633
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/v;->a:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;

    invoke-static {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;->b(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/u;)Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;->g()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
