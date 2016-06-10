.class final Lcom/koushikdutta/async/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/r;


# instance fields
.field private synthetic a:Lcom/koushikdutta/async/W;

.field private synthetic b:Ljava/nio/channels/SelectionKey;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/l;Ljava/nio/channels/ServerSocketChannel;Lcom/koushikdutta/async/W;Ljava/nio/channels/SelectionKey;)V
    .locals 0

    .prologue
    .line 298
    iput-object p3, p0, Lcom/koushikdutta/async/m;->a:Lcom/koushikdutta/async/W;

    iput-object p4, p0, Lcom/koushikdutta/async/m;->b:Ljava/nio/channels/SelectionKey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 306
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/Closeable;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/koushikdutta/async/m;->a:Lcom/koushikdutta/async/W;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->a([Ljava/io/Closeable;)V

    .line 308
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/m;->b:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 312
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
