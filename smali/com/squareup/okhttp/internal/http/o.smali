.class final Lcom/squareup/okhttp/internal/http/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokio/y;


# instance fields
.field private a:Z

.field private synthetic b:Lokio/i;

.field private synthetic c:Landroid/support/design/widget/K;

.field private synthetic d:Lokio/h;


# direct methods
.method constructor <init>(Lcom/squareup/okhttp/internal/http/m;Lokio/i;Landroid/support/design/widget/K;Lokio/h;)V
    .locals 0

    .prologue
    .line 949
    iput-object p2, p0, Lcom/squareup/okhttp/internal/http/o;->b:Lokio/i;

    iput-object p3, p0, Lcom/squareup/okhttp/internal/http/o;->c:Landroid/support/design/widget/K;

    iput-object p4, p0, Lcom/squareup/okhttp/internal/http/o;->d:Lokio/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lokio/f;J)J
    .locals 6

    .prologue
    const-wide/16 v0, -0x1

    const/4 v3, 0x1

    .line 955
    :try_start_0
    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/o;->b:Lokio/i;

    invoke-interface {v2, p1, p2, p3}, Lokio/i;->a(Lokio/f;J)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 964
    cmp-long v2, v4, v0

    if-nez v2, :cond_2

    .line 965
    iget-boolean v2, p0, Lcom/squareup/okhttp/internal/http/o;->a:Z

    if-nez v2, :cond_0

    .line 966
    iput-boolean v3, p0, Lcom/squareup/okhttp/internal/http/o;->a:Z

    .line 967
    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/o;->d:Lokio/h;

    invoke-interface {v2}, Lokio/h;->close()V

    :cond_0
    move-wide v4, v0

    .line 974
    :goto_0
    return-wide v4

    .line 956
    :catch_0
    move-exception v0

    .line 957
    iget-boolean v1, p0, Lcom/squareup/okhttp/internal/http/o;->a:Z

    if-nez v1, :cond_1

    .line 958
    iput-boolean v3, p0, Lcom/squareup/okhttp/internal/http/o;->a:Z

    .line 961
    :cond_1
    throw v0

    .line 972
    :cond_2
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/o;->d:Lokio/h;

    invoke-interface {v0}, Lokio/h;->c()Lokio/f;

    move-result-object v1

    invoke-virtual {p1}, Lokio/f;->b()J

    move-result-wide v2

    sub-long/2addr v2, v4

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lokio/f;->a(Lokio/f;JJ)Lokio/f;

    .line 973
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/o;->d:Lokio/h;

    invoke-interface {v0}, Lokio/h;->r()Lokio/h;

    goto :goto_0
.end method

.method public final a()Lokio/z;
    .locals 1

    .prologue
    .line 978
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/o;->b:Lokio/i;

    invoke-interface {v0}, Lokio/i;->a()Lokio/z;

    move-result-object v0

    return-object v0
.end method

.method public final close()V
    .locals 2

    .prologue
    .line 982
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/http/o;->a:Z

    if-nez v0, :cond_0

    const/16 v0, 0x64

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 983
    invoke-static {p0, v0, v1}, Lcom/squareup/okhttp/internal/l;->a(Lokio/y;ILjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 984
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/squareup/okhttp/internal/http/o;->a:Z

    .line 987
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/o;->b:Lokio/i;

    invoke-interface {v0}, Lokio/i;->close()V

    .line 988
    return-void
.end method
