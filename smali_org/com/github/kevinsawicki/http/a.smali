.class final Lcom/github/kevinsawicki/http/a;
.super Lcom/github/kevinsawicki/http/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/kevinsawicki/http/b",
        "<",
        "Lcom/github/kevinsawicki/http/HttpRequest;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Ljava/io/InputStream;

.field private synthetic b:Ljava/io/OutputStream;

.field private synthetic c:Lcom/github/kevinsawicki/http/HttpRequest;


# direct methods
.method constructor <init>(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/io/Closeable;ZLjava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 0

    .prologue
    .line 2476
    iput-object p1, p0, Lcom/github/kevinsawicki/http/a;->c:Lcom/github/kevinsawicki/http/HttpRequest;

    iput-object p4, p0, Lcom/github/kevinsawicki/http/a;->a:Ljava/io/InputStream;

    iput-object p5, p0, Lcom/github/kevinsawicki/http/a;->b:Ljava/io/OutputStream;

    invoke-direct {p0, p2, p3}, Lcom/github/kevinsawicki/http/b;-><init>(Ljava/io/Closeable;Z)V

    return-void
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 2476
    .line 3480
    iget-object v0, p0, Lcom/github/kevinsawicki/http/a;->c:Lcom/github/kevinsawicki/http/HttpRequest;

    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Lcom/github/kevinsawicki/http/HttpRequest;)I

    move-result v0

    new-array v0, v0, [B

    .line 3482
    :goto_0
    iget-object v1, p0, Lcom/github/kevinsawicki/http/a;->a:Ljava/io/InputStream;

    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 3483
    iget-object v2, p0, Lcom/github/kevinsawicki/http/a;->b:Ljava/io/OutputStream;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 3484
    :cond_0
    iget-object v0, p0, Lcom/github/kevinsawicki/http/a;->c:Lcom/github/kevinsawicki/http/HttpRequest;

    .line 2476
    return-object v0
.end method
