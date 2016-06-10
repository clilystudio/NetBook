.class final Lcom/squareup/okhttp/internal/spdy/G;
.super Lcom/squareup/okhttp/internal/c;
.source "SourceFile"


# instance fields
.field private synthetic a:I

.field private synthetic b:Lokio/f;

.field private synthetic c:I

.field private synthetic d:Z

.field private synthetic e:Lcom/squareup/okhttp/internal/spdy/A;


# direct methods
.method varargs constructor <init>(Lcom/squareup/okhttp/internal/spdy/A;Ljava/lang/String;[Ljava/lang/Object;ILokio/f;IZ)V
    .locals 0

    .prologue
    .line 854
    iput-object p1, p0, Lcom/squareup/okhttp/internal/spdy/G;->e:Lcom/squareup/okhttp/internal/spdy/A;

    iput p4, p0, Lcom/squareup/okhttp/internal/spdy/G;->a:I

    iput-object p5, p0, Lcom/squareup/okhttp/internal/spdy/G;->b:Lokio/f;

    iput p6, p0, Lcom/squareup/okhttp/internal/spdy/G;->c:I

    iput-boolean p7, p0, Lcom/squareup/okhttp/internal/spdy/G;->d:Z

    invoke-direct {p0, p2, p3}, Lcom/squareup/okhttp/internal/c;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 3

    .prologue
    .line 857
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/G;->e:Lcom/squareup/okhttp/internal/spdy/A;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/A;->h(Lcom/squareup/okhttp/internal/spdy/A;)Lcom/squareup/okhttp/internal/spdy/u;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/G;->b:Lokio/f;

    iget v2, p0, Lcom/squareup/okhttp/internal/spdy/G;->c:I

    invoke-interface {v0, v1, v2}, Lcom/squareup/okhttp/internal/spdy/u;->a(Lokio/i;I)Z

    .line 858
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/G;->e:Lcom/squareup/okhttp/internal/spdy/A;

    iget-object v0, v0, Lcom/squareup/okhttp/internal/spdy/A;->i:Lcom/squareup/okhttp/internal/spdy/c;

    iget v1, p0, Lcom/squareup/okhttp/internal/spdy/G;->a:I

    sget-object v2, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->CANCEL:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    invoke-interface {v0, v1, v2}, Lcom/squareup/okhttp/internal/spdy/c;->a(ILcom/squareup/okhttp/internal/spdy/ErrorCode;)V

    .line 860
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/G;->e:Lcom/squareup/okhttp/internal/spdy/A;

    monitor-enter v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 861
    :try_start_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/G;->e:Lcom/squareup/okhttp/internal/spdy/A;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/A;->i(Lcom/squareup/okhttp/internal/spdy/A;)Ljava/util/Set;

    move-result-object v0

    iget v2, p0, Lcom/squareup/okhttp/internal/spdy/G;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 862
    monitor-exit v1

    .line 866
    :goto_0
    return-void

    .line 862
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
