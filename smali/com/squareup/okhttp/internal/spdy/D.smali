.class final Lcom/squareup/okhttp/internal/spdy/D;
.super Lcom/squareup/okhttp/internal/c;
.source "SourceFile"


# instance fields
.field private synthetic a:Z

.field private synthetic b:I

.field private synthetic c:I

.field private synthetic d:Lcom/squareup/okhttp/internal/spdy/t;

.field private synthetic e:Lcom/squareup/okhttp/internal/spdy/A;


# direct methods
.method varargs constructor <init>(Lcom/squareup/okhttp/internal/spdy/A;Ljava/lang/String;[Ljava/lang/Object;ZIILcom/squareup/okhttp/internal/spdy/t;)V
    .locals 0

    .prologue
    .line 393
    iput-object p1, p0, Lcom/squareup/okhttp/internal/spdy/D;->e:Lcom/squareup/okhttp/internal/spdy/A;

    iput-boolean p4, p0, Lcom/squareup/okhttp/internal/spdy/D;->a:Z

    iput p5, p0, Lcom/squareup/okhttp/internal/spdy/D;->b:I

    iput p6, p0, Lcom/squareup/okhttp/internal/spdy/D;->c:I

    iput-object p7, p0, Lcom/squareup/okhttp/internal/spdy/D;->d:Lcom/squareup/okhttp/internal/spdy/t;

    invoke-direct {p0, p2, p3}, Lcom/squareup/okhttp/internal/c;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 5

    .prologue
    .line 396
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/D;->e:Lcom/squareup/okhttp/internal/spdy/A;

    iget-boolean v1, p0, Lcom/squareup/okhttp/internal/spdy/D;->a:Z

    iget v2, p0, Lcom/squareup/okhttp/internal/spdy/D;->b:I

    iget v3, p0, Lcom/squareup/okhttp/internal/spdy/D;->c:I

    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/D;->d:Lcom/squareup/okhttp/internal/spdy/t;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/A;->a(Lcom/squareup/okhttp/internal/spdy/A;ZIILcom/squareup/okhttp/internal/spdy/t;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 399
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
