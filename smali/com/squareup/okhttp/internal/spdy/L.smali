.class final Lcom/squareup/okhttp/internal/spdy/L;
.super Lcom/squareup/okhttp/internal/c;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/squareup/okhttp/internal/spdy/w;

.field private synthetic b:Lcom/squareup/okhttp/internal/spdy/J;


# direct methods
.method varargs constructor <init>(Lcom/squareup/okhttp/internal/spdy/J;Ljava/lang/String;[Ljava/lang/Object;Lcom/squareup/okhttp/internal/spdy/w;)V
    .locals 0

    .prologue
    .line 716
    iput-object p1, p0, Lcom/squareup/okhttp/internal/spdy/L;->b:Lcom/squareup/okhttp/internal/spdy/J;

    iput-object p4, p0, Lcom/squareup/okhttp/internal/spdy/L;->a:Lcom/squareup/okhttp/internal/spdy/w;

    invoke-direct {p0, p2, p3}, Lcom/squareup/okhttp/internal/c;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    .prologue
    .line 719
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/L;->b:Lcom/squareup/okhttp/internal/spdy/J;

    iget-object v0, v0, Lcom/squareup/okhttp/internal/spdy/J;->a:Lcom/squareup/okhttp/internal/spdy/A;

    iget-object v0, v0, Lcom/squareup/okhttp/internal/spdy/A;->i:Lcom/squareup/okhttp/internal/spdy/c;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/L;->a:Lcom/squareup/okhttp/internal/spdy/w;

    invoke-interface {v0, v1}, Lcom/squareup/okhttp/internal/spdy/c;->a(Lcom/squareup/okhttp/internal/spdy/w;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 722
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
