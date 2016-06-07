.class final Lcom/integralblue/httpresponsecache/compat/libcore/net/http/q;
.super Ljava/io/FilterInputStream;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/b/h;


# direct methods
.method constructor <init>(Ljava/io/InputStream;Lcom/b/h;)V
    .locals 0

    .prologue
    .line 613
    iput-object p2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/q;->a:Lcom/b/h;

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .prologue
    .line 615
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/q;->a:Lcom/b/h;

    invoke-virtual {v0}, Lcom/b/h;->close()V

    .line 616
    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    .line 617
    return-void
.end method
