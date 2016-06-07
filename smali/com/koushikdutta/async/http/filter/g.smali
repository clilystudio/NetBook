.class final Lcom/koushikdutta/async/http/filter/g;
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
.field private synthetic a:Lcom/koushikdutta/async/http/filter/f;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/filter/f;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/koushikdutta/async/http/filter/g;->a:Lcom/koushikdutta/async/http/filter/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 65
    check-cast p1, [B

    .line 1067
    iget-object v0, p0, Lcom/koushikdutta/async/http/filter/g;->a:Lcom/koushikdutta/async/http/filter/f;

    iget-object v0, v0, Lcom/koushikdutta/async/http/filter/f;->a:Lcom/koushikdutta/async/http/filter/e;

    iget-boolean v0, v0, Lcom/koushikdutta/async/http/filter/e;->a:Z

    if-eqz v0, :cond_0

    .line 1068
    iget-object v0, p0, Lcom/koushikdutta/async/http/filter/g;->a:Lcom/koushikdutta/async/http/filter/f;

    iget-object v0, v0, Lcom/koushikdutta/async/http/filter/f;->a:Lcom/koushikdutta/async/http/filter/e;

    iget-object v0, v0, Lcom/koushikdutta/async/http/filter/e;->d:Lcom/koushikdutta/async/http/filter/d;

    iget-object v0, v0, Lcom/koushikdutta/async/http/filter/d;->b:Ljava/util/zip/CRC32;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Ljava/util/zip/CRC32;->update([BII)V

    .line 1070
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/filter/g;->a:Lcom/koushikdutta/async/http/filter/f;

    iget-object v0, v0, Lcom/koushikdutta/async/http/filter/f;->a:Lcom/koushikdutta/async/http/filter/e;

    invoke-static {v0}, Lcom/koushikdutta/async/http/filter/e;->a(Lcom/koushikdutta/async/http/filter/e;)V

    .line 65
    return-void
.end method
