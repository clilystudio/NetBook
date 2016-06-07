.class public final Lcom/arcsoft/hpay100/b/b;
.super Lcom/arcsoft/hpay100/b/a;


# direct methods
.method public constructor <init>(Lorg/apache/http/HttpEntity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/arcsoft/hpay100/b/a;-><init>(Lorg/apache/http/HttpEntity;)V

    return-void
.end method


# virtual methods
.method final a(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 1

    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, p1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public final bridge synthetic getContent()Ljava/io/InputStream;
    .locals 1

    invoke-super {p0}, Lcom/arcsoft/hpay100/b/a;->getContent()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public final getContentEncoding()Lorg/apache/http/Header;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getContentLength()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final bridge synthetic writeTo(Ljava/io/OutputStream;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/arcsoft/hpay100/b/a;->writeTo(Ljava/io/OutputStream;)V

    return-void
.end method
