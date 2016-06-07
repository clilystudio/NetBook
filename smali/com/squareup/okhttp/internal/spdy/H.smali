.class final Lcom/squareup/okhttp/internal/spdy/H;
.super Lcom/squareup/okhttp/internal/c;
.source "SourceFile"


# instance fields
.field private synthetic a:I

.field private synthetic b:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

.field private synthetic c:Lcom/squareup/okhttp/internal/spdy/A;


# direct methods
.method varargs constructor <init>(Lcom/squareup/okhttp/internal/spdy/A;Ljava/lang/String;[Ljava/lang/Object;ILcom/squareup/okhttp/internal/spdy/ErrorCode;)V
    .locals 0

    .prologue
    .line 871
    iput-object p1, p0, Lcom/squareup/okhttp/internal/spdy/H;->c:Lcom/squareup/okhttp/internal/spdy/A;

    iput p4, p0, Lcom/squareup/okhttp/internal/spdy/H;->a:I

    iput-object p5, p0, Lcom/squareup/okhttp/internal/spdy/H;->b:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    invoke-direct {p0, p2, p3}, Lcom/squareup/okhttp/internal/c;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 3

    .prologue
    .line 873
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/H;->c:Lcom/squareup/okhttp/internal/spdy/A;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/A;->h(Lcom/squareup/okhttp/internal/spdy/A;)Lcom/squareup/okhttp/internal/spdy/u;

    move-result-object v0

    invoke-interface {v0}, Lcom/squareup/okhttp/internal/spdy/u;->c()V

    .line 874
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/H;->c:Lcom/squareup/okhttp/internal/spdy/A;

    monitor-enter v1

    .line 875
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/H;->c:Lcom/squareup/okhttp/internal/spdy/A;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/A;->i(Lcom/squareup/okhttp/internal/spdy/A;)Ljava/util/Set;

    move-result-object v0

    iget v2, p0, Lcom/squareup/okhttp/internal/spdy/H;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 876
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
