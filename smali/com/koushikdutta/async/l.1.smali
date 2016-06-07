.class final Lcom/koushikdutta/async/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/net/InetAddress;

.field private synthetic b:I

.field private synthetic c:Lcom/koushikdutta/async/a/c;

.field private synthetic d:Lcom/koushikdutta/async/o;

.field private synthetic e:Lcom/koushikdutta/async/AsyncServer;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/AsyncServer;Ljava/net/InetAddress;ILcom/koushikdutta/async/a/c;Lcom/koushikdutta/async/o;)V
    .locals 0

    .prologue
    .line 279
    iput-object p1, p0, Lcom/koushikdutta/async/l;->e:Lcom/koushikdutta/async/AsyncServer;

    iput-object p2, p0, Lcom/koushikdutta/async/l;->a:Ljava/net/InetAddress;

    iput p3, p0, Lcom/koushikdutta/async/l;->b:I

    iput-object p4, p0, Lcom/koushikdutta/async/l;->c:Lcom/koushikdutta/async/a/c;

    iput-object p5, p0, Lcom/koushikdutta/async/l;->d:Lcom/koushikdutta/async/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 282
    .line 285
    :try_start_0
    invoke-static {}, Ljava/nio/channels/ServerSocketChannel;->open()Ljava/nio/channels/ServerSocketChannel;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 286
    :try_start_1
    new-instance v1, Lcom/koushikdutta/async/W;

    invoke-direct {v1, v3}, Lcom/koushikdutta/async/W;-><init>(Ljava/nio/channels/ServerSocketChannel;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 291
    :try_start_2
    iget-object v0, p0, Lcom/koushikdutta/async/l;->a:Ljava/net/InetAddress;

    if-nez v0, :cond_0

    .line 292
    new-instance v0, Ljava/net/InetSocketAddress;

    iget v2, p0, Lcom/koushikdutta/async/l;->b:I

    invoke-direct {v0, v2}, Ljava/net/InetSocketAddress;-><init>(I)V

    .line 295
    :goto_0
    invoke-virtual {v3}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V

    .line 296
    iget-object v0, p0, Lcom/koushikdutta/async/l;->e:Lcom/koushikdutta/async/AsyncServer;

    invoke-static {v0}, Lcom/koushikdutta/async/AsyncServer;->a(Lcom/koushikdutta/async/AsyncServer;)Lcom/koushikdutta/async/V;

    move-result-object v0

    invoke-virtual {v0}, Lcom/koushikdutta/async/V;->a()Ljava/nio/channels/Selector;

    move-result-object v0

    .line 1053
    iget-object v2, v1, Lcom/koushikdutta/async/W;->a:Ljava/nio/channels/ServerSocketChannel;

    const/16 v4, 0x10

    invoke-virtual {v2, v0, v4}, Ljava/nio/channels/ServerSocketChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    move-result-object v0

    .line 297
    iget-object v2, p0, Lcom/koushikdutta/async/l;->c:Lcom/koushikdutta/async/a/c;

    invoke-virtual {v0, v2}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    iget-object v2, p0, Lcom/koushikdutta/async/l;->c:Lcom/koushikdutta/async/a/c;

    iget-object v4, p0, Lcom/koushikdutta/async/l;->d:Lcom/koushikdutta/async/o;

    new-instance v5, Lcom/koushikdutta/async/m;

    invoke-direct {v5, p0, v3, v1, v0}, Lcom/koushikdutta/async/m;-><init>(Lcom/koushikdutta/async/l;Ljava/nio/channels/ServerSocketChannel;Lcom/koushikdutta/async/W;Ljava/nio/channels/SelectionKey;)V

    iput-object v5, v4, Lcom/koushikdutta/async/o;->a:Ljava/lang/Object;

    invoke-interface {v2, v5}, Lcom/koushikdutta/async/a/c;->a(Lcom/koushikdutta/async/r;)V

    .line 319
    :goto_1
    return-void

    .line 294
    :cond_0
    new-instance v0, Ljava/net/InetSocketAddress;

    iget-object v2, p0, Lcom/koushikdutta/async/l;->a:Ljava/net/InetAddress;

    iget v4, p0, Lcom/koushikdutta/async/l;->b:I

    invoke-direct {v0, v2, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 315
    :catch_0
    move-exception v0

    move-object v2, v3

    .line 316
    :goto_2
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/io/Closeable;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    invoke-static {v3}, Lcom/arcsoft/hpay100/a/a;->a([Ljava/io/Closeable;)V

    .line 317
    iget-object v1, p0, Lcom/koushikdutta/async/l;->c:Lcom/koushikdutta/async/a/c;

    invoke-interface {v1, v0}, Lcom/koushikdutta/async/a/c;->a(Ljava/lang/Exception;)V

    goto :goto_1

    .line 315
    :catch_1
    move-exception v0

    move-object v1, v2

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_2
.end method
