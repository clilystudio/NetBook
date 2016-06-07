.class public final Lcom/integralblue/httpresponsecache/compat/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/net/URLStreamHandlerFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createURLStreamHandler(Ljava/lang/String;)Ljava/net/URLStreamHandler;
    .locals 1

    .prologue
    .line 13
    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14
    new-instance v0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/o;

    invoke-direct {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/o;-><init>()V

    .line 18
    :goto_0
    return-object v0

    .line 15
    :cond_0
    const-string v0, "https"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 16
    new-instance v0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/x;

    invoke-direct {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/x;-><init>()V

    goto :goto_0

    .line 18
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
