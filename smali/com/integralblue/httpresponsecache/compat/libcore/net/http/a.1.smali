.class abstract Lcom/integralblue/httpresponsecache/compat/libcore/net/http/a;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field protected final a:Ljava/io/InputStream;

.field protected final b:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;

.field protected c:Z

.field private final d:Ljava/net/CacheRequest;

.field private final e:Ljava/io/OutputStream;


# direct methods
.method constructor <init>(Ljava/io/InputStream;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;Ljava/net/CacheRequest;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/a;->a:Ljava/io/InputStream;

    .line 47
    iput-object p2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/a;->b:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;

    .line 49
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/net/CacheRequest;->getBody()Ljava/io/OutputStream;

    move-result-object v1

    .line 52
    :goto_0
    if-nez v1, :cond_0

    move-object p3, v0

    .line 56
    :cond_0
    iput-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/a;->e:Ljava/io/OutputStream;

    .line 57
    iput-object p3, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/a;->d:Ljava/net/CacheRequest;

    .line 58
    return-void

    :cond_1
    move-object v1, v0

    .line 49
    goto :goto_0
.end method


# virtual methods
.method protected final a()V
    .locals 2

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/a;->c:Z

    if-eqz v0, :cond_0

    .line 70
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_0
    return-void
.end method

.method protected final a(Z)V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/a;->d:Ljava/net/CacheRequest;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/a;->e:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/a;->b:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;

    invoke-virtual {v0, p1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->a(Z)V

    .line 89
    return-void
.end method

.method protected final a([BII)V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/a;->e:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/a;->e:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 78
    :cond_0
    return-void
.end method

.method protected final b()V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/a;->d:Ljava/net/CacheRequest;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/a;->d:Ljava/net/CacheRequest;

    invoke-virtual {v0}, Ljava/net/CacheRequest;->abort()V

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/a;->b:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;->a(Z)V

    .line 108
    return-void
.end method

.method public final read()I
    .locals 1

    .prologue
    .line 65
    invoke-static {p0}, Lcom/integralblue/httpresponsecache/compat/libcore/a/b;->a(Ljava/io/InputStream;)I

    move-result v0

    return v0
.end method
