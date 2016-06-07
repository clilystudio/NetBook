.class final Lcom/squareup/okhttp/internal/spdy/B;
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
    .line 345
    iput-object p1, p0, Lcom/squareup/okhttp/internal/spdy/B;->c:Lcom/squareup/okhttp/internal/spdy/A;

    iput p4, p0, Lcom/squareup/okhttp/internal/spdy/B;->a:I

    iput-object p5, p0, Lcom/squareup/okhttp/internal/spdy/B;->b:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    invoke-direct {p0, p2, p3}, Lcom/squareup/okhttp/internal/c;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 3

    .prologue
    .line 348
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/B;->c:Lcom/squareup/okhttp/internal/spdy/A;

    iget v1, p0, Lcom/squareup/okhttp/internal/spdy/B;->a:I

    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/B;->b:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    invoke-virtual {v0, v1, v2}, Lcom/squareup/okhttp/internal/spdy/A;->b(ILcom/squareup/okhttp/internal/spdy/ErrorCode;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
