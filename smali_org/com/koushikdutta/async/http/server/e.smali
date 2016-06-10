.class final Lcom/koushikdutta/async/http/server/e;
.super Lcom/koushikdutta/async/http/server/m;
.source "SourceFile"


# instance fields
.field private synthetic c:Lcom/koushikdutta/async/http/server/c;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/server/c;Lcom/koushikdutta/async/s;Lcom/koushikdutta/async/http/server/i;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/koushikdutta/async/http/server/e;->c:Lcom/koushikdutta/async/http/server/c;

    invoke-direct {p0, p2, p3}, Lcom/koushikdutta/async/http/server/m;-><init>(Lcom/koushikdutta/async/s;Lcom/koushikdutta/async/http/server/i;)V

    return-void
.end method


# virtual methods
.method protected final b()V
    .locals 2

    .prologue
    .line 126
    invoke-super {p0}, Lcom/koushikdutta/async/http/server/m;->b()V

    .line 127
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/e;->a:Lcom/koushikdutta/async/s;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/s;->b(Lcom/koushikdutta/async/a/a;)V

    .line 128
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/e;->c:Lcom/koushikdutta/async/http/server/c;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/koushikdutta/async/http/server/c;->a:Z

    .line 130
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/e;->c:Lcom/koushikdutta/async/http/server/c;

    invoke-static {v0}, Lcom/koushikdutta/async/http/server/c;->a(Lcom/koushikdutta/async/http/server/c;)V

    .line 131
    return-void
.end method
