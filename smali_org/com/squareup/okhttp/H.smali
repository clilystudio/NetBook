.class final Lcom/squareup/okhttp/H;
.super Lcom/squareup/okhttp/E;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/squareup/okhttp/z;

.field private synthetic b:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/squareup/okhttp/z;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/squareup/okhttp/H;->a:Lcom/squareup/okhttp/z;

    iput-object p2, p0, Lcom/squareup/okhttp/H;->b:Ljava/io/File;

    invoke-direct {p0}, Lcom/squareup/okhttp/E;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/squareup/okhttp/z;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/squareup/okhttp/H;->a:Lcom/squareup/okhttp/z;

    return-object v0
.end method

.method public final a(Lokio/h;)V
    .locals 2

    .prologue
    .line 115
    const/4 v1, 0x0

    .line 117
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/H;->b:Ljava/io/File;

    invoke-static {v0}, Lokio/o;->a(Ljava/io/File;)Lokio/y;

    move-result-object v1

    .line 118
    invoke-interface {p1, v1}, Lokio/h;->a(Lokio/y;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    invoke-static {v1}, Lcom/squareup/okhttp/internal/l;->a(Ljava/io/Closeable;)V

    .line 121
    return-void

    .line 120
    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/squareup/okhttp/internal/l;->a(Ljava/io/Closeable;)V

    throw v0
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/squareup/okhttp/H;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method
