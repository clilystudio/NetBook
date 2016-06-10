.class final Lcom/koushikdutta/async/http/server/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/a/a;


# instance fields
.field private synthetic a:Lcom/koushikdutta/async/http/server/c;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/server/c;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/koushikdutta/async/http/server/d;->a:Lcom/koushikdutta/async/http/server/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/d;->a:Lcom/koushikdutta/async/http/server/c;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/server/c;->g()V

    .line 93
    if-eqz p1, :cond_0

    .line 94
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/d;->a:Lcom/koushikdutta/async/http/server/c;

    invoke-static {v0, p1}, Lcom/koushikdutta/async/http/server/c;->a(Lcom/koushikdutta/async/http/server/c;Ljava/lang/Exception;)V

    .line 99
    :goto_0
    return-void

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/d;->a:Lcom/koushikdutta/async/http/server/c;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/koushikdutta/async/http/server/c;->b:Z

    .line 98
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/d;->a:Lcom/koushikdutta/async/http/server/c;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/server/c;->b()V

    goto :goto_0
.end method
