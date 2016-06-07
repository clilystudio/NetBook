.class final Lcom/koushikdutta/async/http/server/f;
.super Lcom/koushikdutta/async/H;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/koushikdutta/async/http/server/c;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/server/c;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/koushikdutta/async/http/server/f;->a:Lcom/koushikdutta/async/http/server/c;

    invoke-direct {p0}, Lcom/koushikdutta/async/H;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/koushikdutta/async/y;Lcom/koushikdutta/async/v;)V
    .locals 1

    .prologue
    .line 162
    invoke-super {p0, p1, p2}, Lcom/koushikdutta/async/H;->a(Lcom/koushikdutta/async/y;Lcom/koushikdutta/async/v;)V

    .line 163
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/f;->a:Lcom/koushikdutta/async/http/server/c;

    iget-object v0, v0, Lcom/koushikdutta/async/http/server/c;->c:Lcom/koushikdutta/async/s;

    invoke-interface {v0}, Lcom/koushikdutta/async/s;->c()V

    .line 164
    return-void
.end method
