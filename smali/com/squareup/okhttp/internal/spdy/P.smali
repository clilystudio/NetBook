.class final Lcom/squareup/okhttp/internal/spdy/P;
.super Lokio/a;
.source "SourceFile"


# instance fields
.field private synthetic b:Lcom/squareup/okhttp/internal/spdy/M;


# direct methods
.method constructor <init>(Lcom/squareup/okhttp/internal/spdy/M;)V
    .locals 0

    .prologue
    .line 598
    iput-object p1, p0, Lcom/squareup/okhttp/internal/spdy/P;->b:Lcom/squareup/okhttp/internal/spdy/M;

    invoke-direct {p0}, Lokio/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 2

    .prologue
    .line 600
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/P;->b:Lcom/squareup/okhttp/internal/spdy/M;

    sget-object v1, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->CANCEL:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/spdy/M;->b(Lcom/squareup/okhttp/internal/spdy/ErrorCode;)V

    .line 601
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 604
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/spdy/P;->c_()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 605
    :cond_0
    return-void
.end method
