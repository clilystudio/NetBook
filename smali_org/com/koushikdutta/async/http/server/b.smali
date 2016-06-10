.class final Lcom/koushikdutta/async/http/server/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/a/c;


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/http/server/a;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/server/a;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/koushikdutta/async/http/server/b;->a:Lcom/koushikdutta/async/http/server/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/koushikdutta/async/r;)V
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/b;->a:Lcom/koushikdutta/async/http/server/a;

    iget-object v0, v0, Lcom/koushikdutta/async/http/server/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    return-void
.end method

.method public final a(Lcom/koushikdutta/async/s;)V
    .locals 3

    .prologue
    .line 66
    new-instance v0, Lcom/koushikdutta/async/http/server/c;

    invoke-direct {v0, p0, p1}, Lcom/koushikdutta/async/http/server/c;-><init>(Lcom/koushikdutta/async/http/server/b;Lcom/koushikdutta/async/s;)V

    .line 1092
    iput-object p1, v0, Lcom/koushikdutta/async/http/server/i;->c:Lcom/koushikdutta/async/s;

    .line 1094
    new-instance v1, Lcom/koushikdutta/async/F;

    invoke-direct {v1}, Lcom/koushikdutta/async/F;-><init>()V

    .line 1095
    iget-object v2, v0, Lcom/koushikdutta/async/http/server/i;->c:Lcom/koushikdutta/async/s;

    invoke-interface {v2, v1}, Lcom/koushikdutta/async/s;->a(Lcom/koushikdutta/async/a/b;)V

    .line 1096
    iget-object v0, v0, Lcom/koushikdutta/async/http/server/i;->d:Lcom/koushikdutta/async/G;

    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/F;->a(Lcom/koushikdutta/async/G;)V

    .line 199
    invoke-interface {p1}, Lcom/koushikdutta/async/s;->g()V

    .line 200
    return-void
.end method

.method public final a(Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/b;->a:Lcom/koushikdutta/async/http/server/a;

    invoke-static {v0, p1}, Lcom/koushikdutta/async/http/server/a;->a(Lcom/koushikdutta/async/http/server/a;Ljava/lang/Exception;)V

    .line 205
    return-void
.end method
