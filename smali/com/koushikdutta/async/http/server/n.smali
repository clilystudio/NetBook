.class final Lcom/koushikdutta/async/http/server/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/a/a;


# instance fields
.field private synthetic a:Lcom/koushikdutta/async/http/server/m;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/server/m;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/koushikdutta/async/http/server/n;->a:Lcom/koushikdutta/async/http/server/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/n;->a:Lcom/koushikdutta/async/http/server/m;

    iget-object v0, v0, Lcom/koushikdutta/async/http/server/m;->b:Lcom/koushikdutta/async/A;

    instance-of v0, v0, Lcom/koushikdutta/async/t;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/n;->a:Lcom/koushikdutta/async/http/server/m;

    iget-object v0, v0, Lcom/koushikdutta/async/http/server/m;->b:Lcom/koushikdutta/async/A;

    check-cast v0, Lcom/koushikdutta/async/t;

    iget-object v1, p0, Lcom/koushikdutta/async/http/server/n;->a:Lcom/koushikdutta/async/http/server/m;

    iget-object v1, v1, Lcom/koushikdutta/async/http/server/m;->a:Lcom/koushikdutta/async/s;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/t;->a(Lcom/koushikdutta/async/A;)V

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/n;->a:Lcom/koushikdutta/async/http/server/m;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/server/m;->e()Lcom/koushikdutta/async/a/d;

    move-result-object v0

    .line 160
    if-eqz v0, :cond_1

    .line 161
    invoke-interface {v0}, Lcom/koushikdutta/async/a/d;->a()V

    .line 162
    :cond_1
    return-void
.end method
