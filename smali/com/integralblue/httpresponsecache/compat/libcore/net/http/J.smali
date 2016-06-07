.class final Lcom/integralblue/httpresponsecache/compat/libcore/net/http/J;
.super Lcom/integralblue/httpresponsecache/compat/libcore/net/http/a;
.source "SourceFile"


# instance fields
.field private d:Z


# direct methods
.method constructor <init>(Ljava/io/InputStream;Ljava/net/CacheRequest;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1, p3, p2}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/a;-><init>(Ljava/io/InputStream;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/m;Ljava/net/CacheRequest;)V

    .line 32
    return-void
.end method


# virtual methods
.method public final available()I
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/J;->a()V

    .line 52
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/J;->a:Ljava/io/InputStream;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/J;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    goto :goto_0
.end method

.method public final close()V
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/J;->c:Z

    if-eqz v0, :cond_1

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/J;->c:Z

    .line 60
    iget-boolean v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/J;->d:Z

    if-nez v0, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/J;->b()V

    goto :goto_0
.end method

.method public final read([BII)I
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 35
    array-length v1, p1

    invoke-static {v1, p2, p3}, Lcom/arcsoft/hpay100/a/a;->a(III)V

    .line 36
    invoke-virtual {p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/J;->a()V

    .line 37
    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/J;->a:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/J;->d:Z

    if-eqz v1, :cond_1

    .line 47
    :cond_0
    :goto_0
    return v0

    .line 40
    :cond_1
    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/J;->a:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 41
    if-ne v1, v0, :cond_2

    .line 42
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/J;->d:Z

    .line 43
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/J;->a(Z)V

    goto :goto_0

    .line 46
    :cond_2
    invoke-virtual {p0, p1, p2, v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/J;->a([BII)V

    move v0, v1

    .line 47
    goto :goto_0
.end method
