.class final Lcom/koushikdutta/async/http/filter/f;
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
.field final synthetic a:Lcom/koushikdutta/async/http/filter/e;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/filter/e;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/koushikdutta/async/http/filter/f;->a:Lcom/koushikdutta/async/http/filter/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 59
    check-cast p1, [B

    .line 1061
    iget-object v0, p0, Lcom/koushikdutta/async/http/filter/f;->a:Lcom/koushikdutta/async/http/filter/e;

    iget-boolean v0, v0, Lcom/koushikdutta/async/http/filter/e;->a:Z

    if-eqz v0, :cond_0

    .line 1062
    iget-object v0, p0, Lcom/koushikdutta/async/http/filter/f;->a:Lcom/koushikdutta/async/http/filter/e;

    iget-object v0, v0, Lcom/koushikdutta/async/http/filter/e;->d:Lcom/koushikdutta/async/http/filter/d;

    iget-object v0, v0, Lcom/koushikdutta/async/http/filter/d;->b:Ljava/util/zip/CRC32;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v2, v1}, Ljava/util/zip/CRC32;->update([BII)V

    .line 1064
    :cond_0
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {p1, v2, v0}, Lcom/arcsoft/hpay100/a/a;->a([BILjava/nio/ByteOrder;)S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    .line 1065
    iget-object v1, p0, Lcom/koushikdutta/async/http/filter/f;->a:Lcom/koushikdutta/async/http/filter/e;

    iget-object v1, v1, Lcom/koushikdutta/async/http/filter/e;->c:Lcom/koushikdutta/async/I;

    new-instance v2, Lcom/koushikdutta/async/http/filter/g;

    invoke-direct {v2, p0}, Lcom/koushikdutta/async/http/filter/g;-><init>(Lcom/koushikdutta/async/http/filter/f;)V

    invoke-virtual {v1, v0, v2}, Lcom/koushikdutta/async/I;->a(ILcom/koushikdutta/async/S;)Lcom/koushikdutta/async/I;

    .line 59
    return-void
.end method
