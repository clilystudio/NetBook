.class abstract Lcom/integralblue/httpresponsecache/compat/libcore/net/http/b;
.super Ljava/io/OutputStream;
.source "SourceFile"


# instance fields
.field protected a:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 2

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/b;->a:Z

    if-eqz v0, :cond_0

    .line 37
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_0
    return-void
.end method

.method public final write(I)V
    .locals 3

    .prologue
    .line 32
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/b;->write([B)V

    .line 33
    return-void
.end method
