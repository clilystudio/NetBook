.class public final Lu/aly/bX;
.super Lu/aly/bZ;
.source "SourceFile"


# instance fields
.field private a:Ljava/io/InputStream;

.field private b:Ljava/io/OutputStream;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Lu/aly/bZ;-><init>()V

    .line 36
    iput-object v0, p0, Lu/aly/bX;->a:Ljava/io/InputStream;

    .line 39
    iput-object v0, p0, Lu/aly/bX;->b:Ljava/io/OutputStream;

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-direct {p0}, Lu/aly/bZ;-><init>()V

    .line 36
    iput-object v0, p0, Lu/aly/bX;->a:Ljava/io/InputStream;

    .line 39
    iput-object v0, p0, Lu/aly/bX;->b:Ljava/io/OutputStream;

    .line 62
    iput-object p1, p0, Lu/aly/bX;->b:Ljava/io/OutputStream;

    .line 63
    return-void
.end method


# virtual methods
.method public final a([BII)I
    .locals 3

    .prologue
    .line 118
    new-instance v0, Lu/aly/dn;

    const/4 v1, 0x1

    const-string v2, "Cannot read from null inputStream"

    invoke-direct {v0, v1, v2}, Lu/aly/dn;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public final b([BII)V
    .locals 3

    .prologue
    .line 136
    iget-object v0, p0, Lu/aly/bX;->b:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    .line 137
    new-instance v0, Lu/aly/dn;

    const/4 v1, 0x1

    const-string v2, "Cannot write to null outputStream"

    invoke-direct {v0, v1, v2}, Lu/aly/dn;-><init>(ILjava/lang/String;)V

    throw v0

    .line 140
    :cond_0
    :try_start_0
    iget-object v0, p0, Lu/aly/bX;->b:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    return-void

    :catch_0
    move-exception v0

    .line 142
    new-instance v1, Lu/aly/dn;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Lu/aly/dn;-><init>(ILjava/lang/Throwable;)V

    throw v1
.end method
