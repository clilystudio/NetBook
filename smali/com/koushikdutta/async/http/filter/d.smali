.class public final Lcom/koushikdutta/async/http/filter/d;
.super Lcom/koushikdutta/async/http/filter/j;
.source "SourceFile"


# instance fields
.field a:Z

.field protected b:Ljava/util/zip/CRC32;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 27
    new-instance v0, Ljava/util/zip/Inflater;

    invoke-direct {v0, v1}, Ljava/util/zip/Inflater;-><init>(Z)V

    invoke-direct {p0, v0}, Lcom/koushikdutta/async/http/filter/j;-><init>(Ljava/util/zip/Inflater;)V

    .line 30
    iput-boolean v1, p0, Lcom/koushikdutta/async/http/filter/d;->a:Z

    .line 31
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/filter/d;->b:Ljava/util/zip/CRC32;

    .line 28
    return-void
.end method


# virtual methods
.method public final a(Lcom/koushikdutta/async/y;Lcom/koushikdutta/async/v;)V
    .locals 3

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/filter/d;->a:Z

    if-eqz v0, :cond_0

    .line 41
    new-instance v0, Lcom/koushikdutta/async/I;

    invoke-direct {v0, p1}, Lcom/koushikdutta/async/I;-><init>(Lcom/koushikdutta/async/y;)V

    .line 42
    const/16 v1, 0xa

    new-instance v2, Lcom/koushikdutta/async/http/filter/e;

    invoke-direct {v2, p0, p1, v0}, Lcom/koushikdutta/async/http/filter/e;-><init>(Lcom/koushikdutta/async/http/filter/d;Lcom/koushikdutta/async/y;Lcom/koushikdutta/async/I;)V

    invoke-virtual {v0, v1, v2}, Lcom/koushikdutta/async/I;->a(ILcom/koushikdutta/async/S;)Lcom/koushikdutta/async/I;

    .line 133
    :goto_0
    return-void

    .line 131
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/koushikdutta/async/http/filter/j;->a(Lcom/koushikdutta/async/y;Lcom/koushikdutta/async/v;)V

    goto :goto_0
.end method
