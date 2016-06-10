.class final Lcom/koushikdutta/async/http/server/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/a/a;


# instance fields
.field private synthetic a:Ljava/io/InputStream;

.field private synthetic b:Lcom/koushikdutta/async/http/server/m;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/server/m;Ljava/io/InputStream;)V
    .locals 0

    .prologue
    .line 266
    iput-object p1, p0, Lcom/koushikdutta/async/http/server/p;->b:Lcom/koushikdutta/async/http/server/m;

    iput-object p2, p0, Lcom/koushikdutta/async/http/server/p;->a:Ljava/io/InputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Exception;)V
    .locals 3

    .prologue
    .line 269
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/Closeable;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/koushikdutta/async/http/server/p;->a:Ljava/io/InputStream;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->a([Ljava/io/Closeable;)V

    .line 270
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/p;->b:Lcom/koushikdutta/async/http/server/m;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/server/m;->b()V

    .line 271
    return-void
.end method
