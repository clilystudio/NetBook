.class final Lcom/squareup/okhttp/internal/spdy/C;
.super Lcom/squareup/okhttp/internal/c;
.source "SourceFile"


# instance fields
.field private synthetic a:I

.field private synthetic b:J

.field private synthetic c:Lcom/squareup/okhttp/internal/spdy/A;


# direct methods
.method varargs constructor <init>(Lcom/squareup/okhttp/internal/spdy/A;Ljava/lang/String;[Ljava/lang/Object;IJ)V
    .locals 1

    .prologue
    .line 360
    iput-object p1, p0, Lcom/squareup/okhttp/internal/spdy/C;->c:Lcom/squareup/okhttp/internal/spdy/A;

    iput p4, p0, Lcom/squareup/okhttp/internal/spdy/C;->a:I

    iput-wide p5, p0, Lcom/squareup/okhttp/internal/spdy/C;->b:J

    invoke-direct {p0, p2, p3}, Lcom/squareup/okhttp/internal/c;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 4

    .prologue
    .line 363
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/C;->c:Lcom/squareup/okhttp/internal/spdy/A;

    iget-object v0, v0, Lcom/squareup/okhttp/internal/spdy/A;->i:Lcom/squareup/okhttp/internal/spdy/c;

    iget v1, p0, Lcom/squareup/okhttp/internal/spdy/C;->a:I

    iget-wide v2, p0, Lcom/squareup/okhttp/internal/spdy/C;->b:J

    invoke-interface {v0, v1, v2, v3}, Lcom/squareup/okhttp/internal/spdy/c;->a(IJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 366
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
