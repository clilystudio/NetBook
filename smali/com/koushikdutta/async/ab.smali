.class final Lcom/koushikdutta/async/ab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/a/d;


# instance fields
.field private synthetic a:Lcom/koushikdutta/async/A;

.field private synthetic b:Lcom/koushikdutta/async/v;

.field private synthetic c:Lcom/koushikdutta/async/a/a;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/A;Lcom/koushikdutta/async/v;Lcom/koushikdutta/async/a/a;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lcom/koushikdutta/async/ab;->a:Lcom/koushikdutta/async/A;

    iput-object p2, p0, Lcom/koushikdutta/async/ab;->b:Lcom/koushikdutta/async/v;

    iput-object p3, p0, Lcom/koushikdutta/async/ab;->c:Lcom/koushikdutta/async/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 192
    iget-object v0, p0, Lcom/koushikdutta/async/ab;->a:Lcom/koushikdutta/async/A;

    iget-object v1, p0, Lcom/koushikdutta/async/ab;->b:Lcom/koushikdutta/async/v;

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/A;->a(Lcom/koushikdutta/async/v;)V

    .line 193
    iget-object v0, p0, Lcom/koushikdutta/async/ab;->b:Lcom/koushikdutta/async/v;

    invoke-virtual {v0}, Lcom/koushikdutta/async/v;->c()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/koushikdutta/async/ab;->c:Lcom/koushikdutta/async/a/a;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/koushikdutta/async/ab;->a:Lcom/koushikdutta/async/A;

    invoke-interface {v0, v2}, Lcom/koushikdutta/async/A;->a(Lcom/koushikdutta/async/a/d;)V

    .line 195
    iget-object v0, p0, Lcom/koushikdutta/async/ab;->c:Lcom/koushikdutta/async/a/a;

    invoke-interface {v0, v2}, Lcom/koushikdutta/async/a/a;->a(Ljava/lang/Exception;)V

    .line 197
    :cond_0
    return-void
.end method
