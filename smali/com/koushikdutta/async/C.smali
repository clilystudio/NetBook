.class public Lcom/koushikdutta/async/C;
.super Lcom/koushikdutta/async/z;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/a/b;
.implements Lcom/koushikdutta/async/s;
.implements Lcom/koushikdutta/async/y;


# instance fields
.field private a:Lcom/koushikdutta/async/y;

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/koushikdutta/async/z;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/koushikdutta/async/y;)V
    .locals 2

    .prologue
    .line 16
    iget-object v0, p0, Lcom/koushikdutta/async/C;->a:Lcom/koushikdutta/async/y;

    if-eqz v0, :cond_0

    .line 17
    iget-object v0, p0, Lcom/koushikdutta/async/C;->a:Lcom/koushikdutta/async/y;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/y;->a(Lcom/koushikdutta/async/a/b;)V

    .line 19
    :cond_0
    iput-object p1, p0, Lcom/koushikdutta/async/C;->a:Lcom/koushikdutta/async/y;

    .line 20
    iget-object v0, p0, Lcom/koushikdutta/async/C;->a:Lcom/koushikdutta/async/y;

    invoke-interface {v0, p0}, Lcom/koushikdutta/async/y;->a(Lcom/koushikdutta/async/a/b;)V

    .line 21
    iget-object v0, p0, Lcom/koushikdutta/async/C;->a:Lcom/koushikdutta/async/y;

    new-instance v1, Lcom/koushikdutta/async/D;

    invoke-direct {v1, p0}, Lcom/koushikdutta/async/D;-><init>(Lcom/koushikdutta/async/C;)V

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/y;->b(Lcom/koushikdutta/async/a/a;)V

    .line 27
    return-void
.end method

.method public a(Lcom/koushikdutta/async/y;Lcom/koushikdutta/async/v;)V
    .locals 2

    .prologue
    .line 48
    if-eqz p2, :cond_0

    .line 49
    iget v0, p0, Lcom/koushikdutta/async/C;->b:I

    invoke-virtual {p2}, Lcom/koushikdutta/async/v;->c()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/koushikdutta/async/C;->b:I

    .line 50
    :cond_0
    invoke-static {p0, p2}, Lcom/koushikdutta/async/Y;->a(Lcom/koushikdutta/async/y;Lcom/koushikdutta/async/v;)V

    .line 51
    if-eqz p2, :cond_1

    .line 52
    iget v0, p0, Lcom/koushikdutta/async/C;->b:I

    invoke-virtual {p2}, Lcom/koushikdutta/async/v;->c()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/koushikdutta/async/C;->b:I

    .line 57
    :cond_1
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/koushikdutta/async/C;->a:Lcom/koushikdutta/async/y;

    invoke-interface {v0}, Lcom/koushikdutta/async/y;->c()V

    .line 87
    return-void
.end method

.method public f()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/koushikdutta/async/C;->a:Lcom/koushikdutta/async/y;

    invoke-interface {v0}, Lcom/koushikdutta/async/y;->f()V

    .line 67
    return-void
.end method

.method public g()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/koushikdutta/async/C;->a:Lcom/koushikdutta/async/y;

    invoke-interface {v0}, Lcom/koushikdutta/async/y;->g()V

    .line 72
    return-void
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/koushikdutta/async/C;->a:Lcom/koushikdutta/async/y;

    invoke-interface {v0}, Lcom/koushikdutta/async/y;->h()Z

    move-result v0

    return v0
.end method

.method public final i()Lcom/koushikdutta/async/AsyncServer;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/koushikdutta/async/C;->a:Lcom/koushikdutta/async/y;

    invoke-interface {v0}, Lcom/koushikdutta/async/y;->i()Lcom/koushikdutta/async/AsyncServer;

    move-result-object v0

    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/koushikdutta/async/C;->a:Lcom/koushikdutta/async/y;

    if-nez v0, :cond_0

    .line 92
    const/4 v0, 0x0

    .line 93
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/C;->a:Lcom/koushikdutta/async/y;

    invoke-interface {v0}, Lcom/koushikdutta/async/y;->j()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
