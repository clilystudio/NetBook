.class final Lcom/koushikdutta/async/aa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/a/d;


# instance fields
.field private a:I

.field private b:Ljava/nio/ByteBuffer;

.field private c:I

.field private d:I

.field private synthetic e:Lcom/koushikdutta/async/A;

.field private synthetic f:Ljava/io/InputStream;

.field private synthetic g:J

.field private synthetic h:Lcom/koushikdutta/async/a/a;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/A;Ljava/io/InputStream;JLcom/koushikdutta/async/a/a;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 65
    iput-object p1, p0, Lcom/koushikdutta/async/aa;->e:Lcom/koushikdutta/async/A;

    iput-object p2, p0, Lcom/koushikdutta/async/aa;->f:Ljava/io/InputStream;

    iput-wide p3, p0, Lcom/koushikdutta/async/aa;->g:J

    iput-object p5, p0, Lcom/koushikdutta/async/aa;->h:Lcom/koushikdutta/async/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput v0, p0, Lcom/koushikdutta/async/aa;->a:I

    .line 80
    iput v0, p0, Lcom/koushikdutta/async/aa;->c:I

    .line 81
    const/high16 v0, 0x40000

    iput v0, p0, Lcom/koushikdutta/async/aa;->d:I

    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 68
    iget-object v0, p0, Lcom/koushikdutta/async/aa;->e:Lcom/koushikdutta/async/A;

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/A;->a(Lcom/koushikdutta/async/a/a;)V

    .line 69
    iget-object v0, p0, Lcom/koushikdutta/async/aa;->e:Lcom/koushikdutta/async/A;

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/A;->a(Lcom/koushikdutta/async/a/d;)V

    .line 70
    iget-object v0, p0, Lcom/koushikdutta/async/aa;->b:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/koushikdutta/async/v;->c(Ljava/nio/ByteBuffer;)V

    .line 71
    iput-object v1, p0, Lcom/koushikdutta/async/aa;->b:Ljava/nio/ByteBuffer;

    .line 73
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/aa;->f:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :goto_0
    return-void

    .line 75
    :catch_0
    move-exception v0

    .line 76
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 6

    .prologue
    .line 87
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/aa;->b:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/koushikdutta/async/aa;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-nez v0, :cond_4

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/koushikdutta/async/aa;->b:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/koushikdutta/async/v;->c(Ljava/nio/ByteBuffer;)V

    .line 89
    iget v0, p0, Lcom/koushikdutta/async/aa;->c:I

    const/16 v1, 0x1000

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Lcom/koushikdutta/async/aa;->d:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v0}, Lcom/koushikdutta/async/v;->b(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/koushikdutta/async/aa;->b:Ljava/nio/ByteBuffer;

    .line 91
    iget-wide v0, p0, Lcom/koushikdutta/async/aa;->g:J

    iget v2, p0, Lcom/koushikdutta/async/aa;->a:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/koushikdutta/async/aa;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 92
    iget-object v2, p0, Lcom/koushikdutta/async/aa;->f:Ljava/io/InputStream;

    iget-object v3, p0, Lcom/koushikdutta/async/aa;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    const/4 v4, 0x0

    long-to-int v0, v0

    invoke-virtual {v2, v3, v4, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 93
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget v1, p0, Lcom/koushikdutta/async/aa;->a:I

    int-to-long v2, v1

    iget-wide v4, p0, Lcom/koushikdutta/async/aa;->g:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_3

    .line 94
    :cond_2
    invoke-direct {p0}, Lcom/koushikdutta/async/aa;->b()V

    .line 95
    iget-object v0, p0, Lcom/koushikdutta/async/aa;->h:Lcom/koushikdutta/async/a/a;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/a/a;->a(Ljava/lang/Exception;)V

    .line 112
    :goto_0
    return-void

    .line 98
    :cond_3
    shl-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/koushikdutta/async/aa;->c:I

    .line 99
    iget v1, p0, Lcom/koushikdutta/async/aa;->a:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/koushikdutta/async/aa;->a:I

    .line 100
    iget-object v1, p0, Lcom/koushikdutta/async/aa;->b:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 101
    iget-object v1, p0, Lcom/koushikdutta/async/aa;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 104
    :cond_4
    iget-object v0, p0, Lcom/koushikdutta/async/aa;->e:Lcom/koushikdutta/async/A;

    iget-object v1, p0, Lcom/koushikdutta/async/aa;->b:Ljava/nio/ByteBuffer;

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/A;->a(Ljava/nio/ByteBuffer;)V

    .line 106
    iget-object v0, p0, Lcom/koushikdutta/async/aa;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 108
    :catch_0
    move-exception v0

    .line 109
    invoke-direct {p0}, Lcom/koushikdutta/async/aa;->b()V

    .line 110
    iget-object v1, p0, Lcom/koushikdutta/async/aa;->h:Lcom/koushikdutta/async/a/a;

    invoke-interface {v1, v0}, Lcom/koushikdutta/async/a/a;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method
