.class final Lcom/koushikdutta/async/http/filter/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/a/b;


# instance fields
.field private synthetic a:Lcom/koushikdutta/async/http/filter/e;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/filter/e;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/koushikdutta/async/http/filter/h;->a:Lcom/koushikdutta/async/http/filter/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/koushikdutta/async/y;Lcom/koushikdutta/async/v;)V
    .locals 5

    .prologue
    .line 85
    iget-object v0, p0, Lcom/koushikdutta/async/http/filter/h;->a:Lcom/koushikdutta/async/http/filter/e;

    iget-boolean v0, v0, Lcom/koushikdutta/async/http/filter/e;->a:Z

    if-eqz v0, :cond_0

    .line 86
    :goto_0
    invoke-virtual {p2}, Lcom/koushikdutta/async/v;->l()I

    move-result v0

    if-lez v0, :cond_0

    .line 87
    invoke-virtual {p2}, Lcom/koushikdutta/async/v;->k()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 88
    iget-object v1, p0, Lcom/koushikdutta/async/http/filter/h;->a:Lcom/koushikdutta/async/http/filter/e;

    iget-object v1, v1, Lcom/koushikdutta/async/http/filter/e;->d:Lcom/koushikdutta/async/http/filter/d;

    iget-object v1, v1, Lcom/koushikdutta/async/http/filter/d;->b:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/zip/CRC32;->update([BII)V

    .line 89
    invoke-static {v0}, Lcom/koushikdutta/async/v;->c(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 92
    :cond_0
    invoke-virtual {p2}, Lcom/koushikdutta/async/v;->j()V

    .line 93
    iget-object v0, p0, Lcom/koushikdutta/async/http/filter/h;->a:Lcom/koushikdutta/async/http/filter/e;

    invoke-static {v0}, Lcom/koushikdutta/async/http/filter/e;->b(Lcom/koushikdutta/async/http/filter/e;)V

    .line 94
    return-void
.end method
