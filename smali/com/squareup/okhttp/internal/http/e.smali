.class abstract Lcom/squareup/okhttp/internal/http/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokio/y;


# instance fields
.field protected a:Z

.field private b:Lokio/l;

.field private synthetic c:Lcom/squareup/okhttp/internal/http/d;


# direct methods
.method private constructor <init>(Lcom/squareup/okhttp/internal/http/d;)V
    .locals 2

    .prologue
    .line 357
    iput-object p1, p0, Lcom/squareup/okhttp/internal/http/e;->c:Lcom/squareup/okhttp/internal/http/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 358
    new-instance v0, Lokio/l;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/e;->c:Lcom/squareup/okhttp/internal/http/d;

    invoke-static {v1}, Lcom/squareup/okhttp/internal/http/d;->b(Lcom/squareup/okhttp/internal/http/d;)Lokio/i;

    move-result-object v1

    invoke-interface {v1}, Lokio/i;->a()Lokio/z;

    move-result-object v1

    invoke-direct {v0, v1}, Lokio/l;-><init>(Lokio/z;)V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/e;->b:Lokio/l;

    return-void
.end method

.method synthetic constructor <init>(Lcom/squareup/okhttp/internal/http/d;B)V
    .locals 0

    .prologue
    .line 357
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/http/e;-><init>(Lcom/squareup/okhttp/internal/http/d;)V

    return-void
.end method


# virtual methods
.method public final a()Lokio/z;
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/e;->b:Lokio/l;

    return-object v0
.end method

.method protected final a(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 370
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/e;->c:Lcom/squareup/okhttp/internal/http/d;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/d;->c(Lcom/squareup/okhttp/internal/http/d;)I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/e;->c:Lcom/squareup/okhttp/internal/http/d;

    invoke-static {v2}, Lcom/squareup/okhttp/internal/http/d;->c(Lcom/squareup/okhttp/internal/http/d;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/e;->c:Lcom/squareup/okhttp/internal/http/d;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/e;->b:Lokio/l;

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/http/d;->a(Lcom/squareup/okhttp/internal/http/d;Lokio/l;)V

    .line 374
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/e;->c:Lcom/squareup/okhttp/internal/http/d;

    invoke-static {v0, v2}, Lcom/squareup/okhttp/internal/http/d;->a(Lcom/squareup/okhttp/internal/http/d;I)I

    .line 375
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/e;->c:Lcom/squareup/okhttp/internal/http/d;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/d;->d(Lcom/squareup/okhttp/internal/http/d;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 376
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/e;->c:Lcom/squareup/okhttp/internal/http/d;

    invoke-static {v0, v2}, Lcom/squareup/okhttp/internal/http/d;->b(Lcom/squareup/okhttp/internal/http/d;I)I

    .line 377
    sget-object v0, Lcom/squareup/okhttp/internal/b;->b:Lcom/squareup/okhttp/internal/b;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/e;->c:Lcom/squareup/okhttp/internal/http/d;

    invoke-static {v1}, Lcom/squareup/okhttp/internal/http/d;->e(Lcom/squareup/okhttp/internal/http/d;)Lcom/squareup/okhttp/n;

    move-result-object v1

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/e;->c:Lcom/squareup/okhttp/internal/http/d;

    invoke-static {v2}, Lcom/squareup/okhttp/internal/http/d;->f(Lcom/squareup/okhttp/internal/http/d;)Lcom/squareup/okhttp/m;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/squareup/okhttp/internal/b;->a(Lcom/squareup/okhttp/n;Lcom/squareup/okhttp/m;)V

    .line 382
    :cond_1
    :goto_0
    return-void

    .line 378
    :cond_2
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/e;->c:Lcom/squareup/okhttp/internal/http/d;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/d;->d(Lcom/squareup/okhttp/internal/http/d;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 379
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/e;->c:Lcom/squareup/okhttp/internal/http/d;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/http/d;->a(Lcom/squareup/okhttp/internal/http/d;I)I

    .line 380
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/e;->c:Lcom/squareup/okhttp/internal/http/d;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/d;->f(Lcom/squareup/okhttp/internal/http/d;)Lcom/squareup/okhttp/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/m;->c()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    goto :goto_0
.end method

.method protected final b()V
    .locals 2

    .prologue
    .line 397
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/e;->c:Lcom/squareup/okhttp/internal/http/d;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/d;->f(Lcom/squareup/okhttp/internal/http/d;)Lcom/squareup/okhttp/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/m;->c()Ljava/net/Socket;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/okhttp/internal/l;->a(Ljava/net/Socket;)V

    .line 398
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/e;->c:Lcom/squareup/okhttp/internal/http/d;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/http/d;->a(Lcom/squareup/okhttp/internal/http/d;I)I

    .line 399
    return-void
.end method
