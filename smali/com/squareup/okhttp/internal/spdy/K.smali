.class final Lcom/squareup/okhttp/internal/spdy/K;
.super Lcom/squareup/okhttp/internal/c;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/squareup/okhttp/internal/spdy/M;

.field private synthetic b:Lcom/squareup/okhttp/internal/spdy/J;


# direct methods
.method varargs constructor <init>(Lcom/squareup/okhttp/internal/spdy/J;Ljava/lang/String;[Ljava/lang/Object;Lcom/squareup/okhttp/internal/spdy/M;)V
    .locals 0

    .prologue
    .line 644
    iput-object p1, p0, Lcom/squareup/okhttp/internal/spdy/K;->b:Lcom/squareup/okhttp/internal/spdy/J;

    iput-object p4, p0, Lcom/squareup/okhttp/internal/spdy/K;->a:Lcom/squareup/okhttp/internal/spdy/M;

    invoke-direct {p0, p2, p3}, Lcom/squareup/okhttp/internal/c;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 5

    .prologue
    .line 647
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/K;->b:Lcom/squareup/okhttp/internal/spdy/J;

    iget-object v0, v0, Lcom/squareup/okhttp/internal/spdy/J;->a:Lcom/squareup/okhttp/internal/spdy/A;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/A;->f(Lcom/squareup/okhttp/internal/spdy/A;)Lcom/squareup/okhttp/internal/spdy/o;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/K;->a:Lcom/squareup/okhttp/internal/spdy/M;

    invoke-interface {v0, v1}, Lcom/squareup/okhttp/internal/spdy/o;->a(Lcom/squareup/okhttp/internal/spdy/M;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 655
    :goto_0
    return-void

    .line 648
    :catch_0
    move-exception v0

    .line 649
    sget-object v1, Lcom/squareup/okhttp/internal/b;->a:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "StreamHandler failure for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/K;->b:Lcom/squareup/okhttp/internal/spdy/J;

    iget-object v4, v4, Lcom/squareup/okhttp/internal/spdy/J;->a:Lcom/squareup/okhttp/internal/spdy/A;

    invoke-static {v4}, Lcom/squareup/okhttp/internal/spdy/A;->a(Lcom/squareup/okhttp/internal/spdy/A;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 651
    :try_start_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/K;->a:Lcom/squareup/okhttp/internal/spdy/M;

    sget-object v1, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->PROTOCOL_ERROR:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/spdy/M;->a(Lcom/squareup/okhttp/internal/spdy/ErrorCode;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 655
    :catch_1
    move-exception v0

    goto :goto_0
.end method
