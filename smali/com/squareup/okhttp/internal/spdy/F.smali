.class final Lcom/squareup/okhttp/internal/spdy/F;
.super Lcom/squareup/okhttp/internal/c;
.source "SourceFile"


# instance fields
.field private synthetic a:I

.field private synthetic b:Ljava/util/List;

.field private synthetic c:Z

.field private synthetic d:Lcom/squareup/okhttp/internal/spdy/A;


# direct methods
.method varargs constructor <init>(Lcom/squareup/okhttp/internal/spdy/A;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;Z)V
    .locals 0

    .prologue
    .line 828
    iput-object p1, p0, Lcom/squareup/okhttp/internal/spdy/F;->d:Lcom/squareup/okhttp/internal/spdy/A;

    iput p4, p0, Lcom/squareup/okhttp/internal/spdy/F;->a:I

    iput-object p5, p0, Lcom/squareup/okhttp/internal/spdy/F;->b:Ljava/util/List;

    iput-boolean p6, p0, Lcom/squareup/okhttp/internal/spdy/F;->c:Z

    invoke-direct {p0, p2, p3}, Lcom/squareup/okhttp/internal/c;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 3

    .prologue
    .line 830
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/F;->d:Lcom/squareup/okhttp/internal/spdy/A;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/A;->h(Lcom/squareup/okhttp/internal/spdy/A;)Lcom/squareup/okhttp/internal/spdy/u;

    move-result-object v0

    invoke-interface {v0}, Lcom/squareup/okhttp/internal/spdy/u;->b()Z

    .line 832
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/F;->d:Lcom/squareup/okhttp/internal/spdy/A;

    iget-object v0, v0, Lcom/squareup/okhttp/internal/spdy/A;->i:Lcom/squareup/okhttp/internal/spdy/c;

    iget v1, p0, Lcom/squareup/okhttp/internal/spdy/F;->a:I

    sget-object v2, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->CANCEL:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    invoke-interface {v0, v1, v2}, Lcom/squareup/okhttp/internal/spdy/c;->a(ILcom/squareup/okhttp/internal/spdy/ErrorCode;)V

    .line 834
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/F;->d:Lcom/squareup/okhttp/internal/spdy/A;

    monitor-enter v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 835
    :try_start_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/F;->d:Lcom/squareup/okhttp/internal/spdy/A;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/A;->i(Lcom/squareup/okhttp/internal/spdy/A;)Ljava/util/Set;

    move-result-object v0

    iget v2, p0, Lcom/squareup/okhttp/internal/spdy/F;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 836
    monitor-exit v1

    .line 840
    :goto_0
    return-void

    .line 836
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
