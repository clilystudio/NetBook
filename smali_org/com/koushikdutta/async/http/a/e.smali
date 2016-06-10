.class final Lcom/koushikdutta/async/http/a/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/G;


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/http/a/d;

.field private synthetic b:Lcom/koushikdutta/async/http/b/e;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/a/d;Lcom/koushikdutta/async/http/b/e;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/koushikdutta/async/http/a/e;->a:Lcom/koushikdutta/async/http/a/d;

    iput-object p2, p0, Lcom/koushikdutta/async/http/a/e;->b:Lcom/koushikdutta/async/http/b/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 70
    const-string v0, "\r"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 71
    iget-object v0, p0, Lcom/koushikdutta/async/http/a/e;->b:Lcom/koushikdutta/async/http/b/e;

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/http/b/e;->b(Ljava/lang/String;)V

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    iget-object v0, p0, Lcom/koushikdutta/async/http/a/e;->a:Lcom/koushikdutta/async/http/a/d;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/a/d;->b()V

    .line 76
    iget-object v0, p0, Lcom/koushikdutta/async/http/a/e;->a:Lcom/koushikdutta/async/http/a/d;

    iput-object v1, v0, Lcom/koushikdutta/async/http/a/d;->a:Lcom/koushikdutta/async/F;

    .line 77
    iget-object v0, p0, Lcom/koushikdutta/async/http/a/e;->a:Lcom/koushikdutta/async/http/a/d;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/a/d;->a(Lcom/koushikdutta/async/a/b;)V

    .line 78
    new-instance v0, Lcom/koushikdutta/async/http/a/h;

    iget-object v1, p0, Lcom/koushikdutta/async/http/a/e;->b:Lcom/koushikdutta/async/http/b/e;

    invoke-direct {v0, v1}, Lcom/koushikdutta/async/http/a/h;-><init>(Lcom/koushikdutta/async/http/b/e;)V

    .line 79
    iget-object v1, p0, Lcom/koushikdutta/async/http/a/e;->a:Lcom/koushikdutta/async/http/a/d;

    iget-object v1, v1, Lcom/koushikdutta/async/http/a/d;->d:Lcom/koushikdutta/async/http/a/g;

    if-eqz v1, :cond_2

    .line 80
    iget-object v1, p0, Lcom/koushikdutta/async/http/a/e;->a:Lcom/koushikdutta/async/http/a/d;

    iget-object v1, v1, Lcom/koushikdutta/async/http/a/d;->d:Lcom/koushikdutta/async/http/a/g;

    invoke-interface {v1, v0}, Lcom/koushikdutta/async/http/a/g;->a(Lcom/koushikdutta/async/http/a/h;)V

    .line 81
    :cond_2
    iget-object v1, p0, Lcom/koushikdutta/async/http/a/e;->a:Lcom/koushikdutta/async/http/a/d;

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/a/d;->d()Lcom/koushikdutta/async/a/b;

    move-result-object v1

    if-nez v1, :cond_0

    .line 82
    invoke-virtual {v0}, Lcom/koushikdutta/async/http/a/h;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 83
    iget-object v0, p0, Lcom/koushikdutta/async/http/a/e;->a:Lcom/koushikdutta/async/http/a/d;

    new-instance v1, Lcom/koushikdutta/async/H;

    invoke-direct {v1}, Lcom/koushikdutta/async/H;-><init>()V

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/a/d;->a(Lcom/koushikdutta/async/a/b;)V

    goto :goto_0

    .line 87
    :cond_3
    iget-object v1, p0, Lcom/koushikdutta/async/http/a/e;->a:Lcom/koushikdutta/async/http/a/d;

    .line 1024
    iget-object v0, v0, Lcom/koushikdutta/async/http/a/h;->a:Lcom/koushikdutta/async/http/Multimap;

    const-string v2, "name"

    invoke-virtual {v0, v2}, Lcom/koushikdutta/async/http/Multimap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    iput-object v0, v1, Lcom/koushikdutta/async/http/a/d;->c:Ljava/lang/String;

    .line 88
    iget-object v0, p0, Lcom/koushikdutta/async/http/a/e;->a:Lcom/koushikdutta/async/http/a/d;

    new-instance v1, Lcom/koushikdutta/async/v;

    invoke-direct {v1}, Lcom/koushikdutta/async/v;-><init>()V

    iput-object v1, v0, Lcom/koushikdutta/async/http/a/d;->b:Lcom/koushikdutta/async/v;

    .line 89
    iget-object v0, p0, Lcom/koushikdutta/async/http/a/e;->a:Lcom/koushikdutta/async/http/a/d;

    new-instance v1, Lcom/koushikdutta/async/http/a/f;

    invoke-direct {v1, p0}, Lcom/koushikdutta/async/http/a/f;-><init>(Lcom/koushikdutta/async/http/a/e;)V

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/a/d;->a(Lcom/koushikdutta/async/a/b;)V

    goto :goto_0
.end method
