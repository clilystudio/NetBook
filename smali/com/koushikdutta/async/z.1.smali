.class public abstract Lcom/koushikdutta/async/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/y;


# instance fields
.field private a:Z

.field private b:Lcom/koushikdutta/async/a/a;

.field private c:Lcom/koushikdutta/async/a/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/koushikdutta/async/a/b;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/koushikdutta/async/z;->c:Lcom/koushikdutta/async/a/b;

    .line 38
    return-void
.end method

.method protected a_(Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 15
    iget-boolean v0, p0, Lcom/koushikdutta/async/z;->a:Z

    if-eqz v0, :cond_1

    .line 20
    :cond_0
    :goto_0
    return-void

    .line 17
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/koushikdutta/async/z;->a:Z

    .line 1030
    iget-object v0, p0, Lcom/koushikdutta/async/z;->b:Lcom/koushikdutta/async/a/a;

    .line 18
    if-eqz v0, :cond_0

    .line 2030
    iget-object v0, p0, Lcom/koushikdutta/async/z;->b:Lcom/koushikdutta/async/a/a;

    .line 19
    invoke-interface {v0, p1}, Lcom/koushikdutta/async/a/a;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public final b(Lcom/koushikdutta/async/a/a;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/koushikdutta/async/z;->b:Lcom/koushikdutta/async/a/a;

    .line 25
    return-void
.end method

.method public d()Lcom/koushikdutta/async/a/b;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/koushikdutta/async/z;->c:Lcom/koushikdutta/async/a/b;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    return-object v0
.end method
