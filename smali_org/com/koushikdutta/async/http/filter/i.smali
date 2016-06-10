.class final Lcom/koushikdutta/async/http/filter/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/S;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/koushikdutta/async/S",
        "<[B>;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/koushikdutta/async/http/filter/e;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/filter/e;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/koushikdutta/async/http/filter/i;->a:Lcom/koushikdutta/async/http/filter/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 110
    check-cast p1, [B

    .line 1112
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {p1, v4, v0}, Lcom/arcsoft/hpay100/a/a;->a([BILjava/nio/ByteOrder;)S

    move-result v0

    .line 1113
    iget-object v1, p0, Lcom/koushikdutta/async/http/filter/i;->a:Lcom/koushikdutta/async/http/filter/e;

    iget-object v1, v1, Lcom/koushikdutta/async/http/filter/e;->d:Lcom/koushikdutta/async/http/filter/d;

    iget-object v1, v1, Lcom/koushikdutta/async/http/filter/d;->b:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    long-to-int v1, v2

    int-to-short v1, v1

    if-eq v1, v0, :cond_0

    .line 1114
    iget-object v0, p0, Lcom/koushikdutta/async/http/filter/i;->a:Lcom/koushikdutta/async/http/filter/e;

    iget-object v0, v0, Lcom/koushikdutta/async/http/filter/e;->d:Lcom/koushikdutta/async/http/filter/d;

    new-instance v1, Ljava/io/IOException;

    const-string v2, "CRC mismatch"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/filter/d;->a_(Ljava/lang/Exception;)V

    .line 1115
    :goto_0
    return-void

    .line 1117
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/filter/i;->a:Lcom/koushikdutta/async/http/filter/e;

    iget-object v0, v0, Lcom/koushikdutta/async/http/filter/e;->d:Lcom/koushikdutta/async/http/filter/d;

    iget-object v0, v0, Lcom/koushikdutta/async/http/filter/d;->b:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->reset()V

    .line 1118
    iget-object v0, p0, Lcom/koushikdutta/async/http/filter/i;->a:Lcom/koushikdutta/async/http/filter/e;

    iget-object v0, v0, Lcom/koushikdutta/async/http/filter/e;->d:Lcom/koushikdutta/async/http/filter/d;

    iput-boolean v4, v0, Lcom/koushikdutta/async/http/filter/d;->a:Z

    .line 1119
    iget-object v0, p0, Lcom/koushikdutta/async/http/filter/i;->a:Lcom/koushikdutta/async/http/filter/e;

    iget-object v0, v0, Lcom/koushikdutta/async/http/filter/e;->d:Lcom/koushikdutta/async/http/filter/d;

    iget-object v1, p0, Lcom/koushikdutta/async/http/filter/i;->a:Lcom/koushikdutta/async/http/filter/e;

    iget-object v1, v1, Lcom/koushikdutta/async/http/filter/e;->b:Lcom/koushikdutta/async/y;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/filter/d;->a(Lcom/koushikdutta/async/y;)V

    goto :goto_0
.end method
