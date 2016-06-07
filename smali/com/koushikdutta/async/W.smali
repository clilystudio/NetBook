.class Lcom/koushikdutta/async/W;
.super Lcom/koushikdutta/async/x;
.source "SourceFile"


# static fields
.field private static synthetic b:Z


# instance fields
.field a:Ljava/nio/channels/ServerSocketChannel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcom/koushikdutta/async/W;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/koushikdutta/async/W;->b:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Ljava/nio/channels/ServerSocketChannel;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/x;-><init>(Ljava/nio/channels/spi/AbstractSelectableChannel;)V

    .line 28
    iput-object p1, p0, Lcom/koushikdutta/async/W;->a:Ljava/nio/channels/ServerSocketChannel;

    .line 29
    return-void
.end method


# virtual methods
.method public final a(Ljava/nio/ByteBuffer;)I
    .locals 2

    .prologue
    .line 47
    sget-boolean v0, Lcom/koushikdutta/async/W;->b:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 48
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Can\'t write ServerSocketChannel"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a([Ljava/nio/ByteBuffer;)I
    .locals 2

    .prologue
    .line 59
    sget-boolean v0, Lcom/koushikdutta/async/W;->b:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 60
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Can\'t write ServerSocketChannel"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a()V
    .locals 0

    .prologue
    .line 15
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 40
    sget-boolean v0, Lcom/koushikdutta/async/W;->b:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 41
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 2

    .prologue
    .line 34
    sget-boolean v0, Lcom/koushikdutta/async/W;->b:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 35
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Can\'t read ServerSocketChannel"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read([Ljava/nio/ByteBuffer;)J
    .locals 2

    .prologue
    .line 66
    sget-boolean v0, Lcom/koushikdutta/async/W;->b:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 67
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Can\'t read ServerSocketChannel"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read([Ljava/nio/ByteBuffer;II)J
    .locals 2

    .prologue
    .line 73
    sget-boolean v0, Lcom/koushikdutta/async/W;->b:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 74
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Can\'t read ServerSocketChannel"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
