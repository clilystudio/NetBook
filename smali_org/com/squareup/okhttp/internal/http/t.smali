.class public final Lcom/squareup/okhttp/internal/http/t;
.super Lcom/squareup/okhttp/K;
.source "SourceFile"


# instance fields
.field private final a:Lcom/squareup/okhttp/u;

.field private final b:Lokio/i;


# direct methods
.method public constructor <init>(Lcom/squareup/okhttp/u;Lokio/i;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/squareup/okhttp/K;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/squareup/okhttp/internal/http/t;->a:Lcom/squareup/okhttp/u;

    .line 29
    iput-object p2, p0, Lcom/squareup/okhttp/internal/http/t;->b:Lokio/i;

    .line 30
    return-void
.end method


# virtual methods
.method public final a()Lcom/squareup/okhttp/z;
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/t;->a:Lcom/squareup/okhttp/u;

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/u;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 34
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/squareup/okhttp/z;->a(Ljava/lang/String;)Lcom/squareup/okhttp/z;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/t;->a:Lcom/squareup/okhttp/u;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/r;->a(Lcom/squareup/okhttp/u;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final d()Lokio/i;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/t;->b:Lokio/i;

    return-object v0
.end method
