.class final Lcom/koushikdutta/async/http/b;
.super Lcom/koushikdutta/async/C;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/koushikdutta/async/C;-><init>()V

    .line 48
    return-void
.end method

.method public static a(Lcom/koushikdutta/async/AsyncServer;Ljava/lang/Exception;)Lcom/koushikdutta/async/http/b;
    .locals 4

    .prologue
    .line 51
    new-instance v0, Lcom/koushikdutta/async/http/b;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/b;-><init>()V

    .line 54
    new-instance v1, Lcom/koushikdutta/async/http/c;

    invoke-direct {v1, v0, p1}, Lcom/koushikdutta/async/http/c;-><init>(Lcom/koushikdutta/async/http/b;Ljava/lang/Exception;)V

    .line 1167
    const-wide/16 v2, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/koushikdutta/async/AsyncServer;->a(Ljava/lang/Runnable;J)Ljava/lang/Object;

    .line 60
    return-object v0
.end method

.method static synthetic a(Lcom/koushikdutta/async/http/b;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/http/b;->a_(Ljava/lang/Exception;)V

    return-void
.end method
