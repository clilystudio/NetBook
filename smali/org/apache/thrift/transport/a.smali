.class public final Lorg/apache/thrift/transport/a;
.super Lorg/apache/thrift/transport/c;


# instance fields
.field private a:Ljava/io/InputStream;

.field private b:Ljava/io/OutputStream;


# direct methods
.method protected constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lorg/apache/thrift/transport/c;-><init>()V

    iput-object v0, p0, Lorg/apache/thrift/transport/a;->a:Ljava/io/InputStream;

    iput-object v0, p0, Lorg/apache/thrift/transport/a;->b:Ljava/io/OutputStream;

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lorg/apache/thrift/transport/c;-><init>()V

    iput-object v0, p0, Lorg/apache/thrift/transport/a;->a:Ljava/io/InputStream;

    iput-object v0, p0, Lorg/apache/thrift/transport/a;->b:Ljava/io/OutputStream;

    iput-object p1, p0, Lorg/apache/thrift/transport/a;->b:Ljava/io/OutputStream;

    return-void
.end method


# virtual methods
.method public final a([BII)I
    .locals 3

    new-instance v0, Lorg/apache/thrift/transport/d;

    const/4 v1, 0x1

    const-string v2, "Cannot read from null inputStream"

    invoke-direct {v0, v1, v2}, Lorg/apache/thrift/transport/d;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public final b([BII)V
    .locals 3

    iget-object v0, p0, Lorg/apache/thrift/transport/a;->b:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/thrift/transport/d;

    const/4 v1, 0x1

    const-string v2, "Cannot write to null outputStream"

    invoke-direct {v0, v1, v2}, Lorg/apache/thrift/transport/d;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/thrift/transport/a;->b:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lorg/apache/thrift/transport/d;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Lorg/apache/thrift/transport/d;-><init>(ILjava/lang/Throwable;)V

    throw v1
.end method
