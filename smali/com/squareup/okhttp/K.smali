.class public abstract Lcom/squareup/okhttp/K;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private a:Ljava/io/Reader;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private g()[B
    .locals 6

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/squareup/okhttp/K;->b()J

    move-result-wide v0

    .line 50
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 51
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Cannot buffer entire body for content length: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 54
    :cond_0
    invoke-virtual {p0}, Lcom/squareup/okhttp/K;->d()Lokio/i;

    move-result-object v2

    .line 57
    :try_start_0
    invoke-interface {v2}, Lokio/i;->o()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 59
    invoke-static {v2}, Lcom/squareup/okhttp/internal/l;->a(Ljava/io/Closeable;)V

    .line 61
    const-wide/16 v4, -0x1

    cmp-long v2, v0, v4

    if-eqz v2, :cond_1

    array-length v2, v3

    int-to-long v4, v2

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    .line 62
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Content-Length and stream length disagree"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :catchall_0
    move-exception v0

    invoke-static {v2}, Lcom/squareup/okhttp/internal/l;->a(Ljava/io/Closeable;)V

    throw v0

    .line 64
    :cond_1
    return-object v3
.end method

.method private h()Ljava/nio/charset/Charset;
    .locals 2

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/squareup/okhttp/K;->a()Lcom/squareup/okhttp/z;

    move-result-object v0

    .line 88
    if-eqz v0, :cond_0

    sget-object v1, Lcom/squareup/okhttp/internal/l;->c:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/z;->a(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/squareup/okhttp/internal/l;->c:Ljava/nio/charset/Charset;

    goto :goto_0
.end method


# virtual methods
.method public abstract a()Lcom/squareup/okhttp/z;
.end method

.method public abstract b()J
.end method

.method public final c()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/squareup/okhttp/K;->d()Lokio/i;

    move-result-object v0

    invoke-interface {v0}, Lokio/i;->e()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/squareup/okhttp/K;->d()Lokio/i;

    move-result-object v0

    invoke-interface {v0}, Lokio/i;->close()V

    .line 93
    return-void
.end method

.method public abstract d()Lokio/i;
.end method

.method public final e()Ljava/io/Reader;
    .locals 3

    .prologue
    .line 73
    iget-object v0, p0, Lcom/squareup/okhttp/K;->a:Ljava/io/Reader;

    .line 74
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Lcom/squareup/okhttp/K;->c()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {p0}, Lcom/squareup/okhttp/K;->h()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    iput-object v0, p0, Lcom/squareup/okhttp/K;->a:Ljava/io/Reader;

    goto :goto_0
.end method

.method public final f()Ljava/lang/String;
    .locals 3

    .prologue
    .line 83
    new-instance v0, Ljava/lang/String;

    invoke-direct {p0}, Lcom/squareup/okhttp/K;->g()[B

    move-result-object v1

    invoke-direct {p0}, Lcom/squareup/okhttp/K;->h()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method
