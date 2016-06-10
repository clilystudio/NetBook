.class public abstract Lcom/koushikdutta/async/http/server/i;
.super Lcom/koushikdutta/async/C;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/a/a;
.implements Lcom/koushikdutta/async/http/server/h;


# instance fields
.field private a:Lcom/koushikdutta/async/http/b/e;

.field private b:Lcom/koushikdutta/async/a/a;

.field c:Lcom/koushikdutta/async/s;

.field d:Lcom/koushikdutta/async/G;

.field e:Ljava/lang/String;

.field f:Lcom/koushikdutta/async/http/a/a;

.field private g:Lcom/koushikdutta/async/http/b/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/koushikdutta/async/C;-><init>()V

    .line 18
    new-instance v0, Lcom/koushikdutta/async/http/b/e;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/b/e;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/server/i;->a:Lcom/koushikdutta/async/http/b/e;

    .line 22
    new-instance v0, Lcom/koushikdutta/async/http/server/j;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/http/server/j;-><init>(Lcom/koushikdutta/async/http/server/i;)V

    iput-object v0, p0, Lcom/koushikdutta/async/http/server/i;->b:Lcom/koushikdutta/async/a/a;

    .line 47
    new-instance v0, Lcom/koushikdutta/async/http/server/k;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/http/server/k;-><init>(Lcom/koushikdutta/async/http/server/i;)V

    iput-object v0, p0, Lcom/koushikdutta/async/http/server/i;->d:Lcom/koushikdutta/async/G;

    return-void
.end method

.method static synthetic a(Lcom/koushikdutta/async/http/server/i;Lcom/koushikdutta/async/http/b/a;)Lcom/koushikdutta/async/http/b/a;
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Lcom/koushikdutta/async/http/server/i;->g:Lcom/koushikdutta/async/http/b/a;

    return-object p1
.end method

.method static synthetic a(Lcom/koushikdutta/async/http/server/i;)Lcom/koushikdutta/async/http/b/e;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/i;->a:Lcom/koushikdutta/async/http/b/e;

    return-object v0
.end method

.method static synthetic b(Lcom/koushikdutta/async/http/server/i;)Lcom/koushikdutta/async/a/a;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/i;->b:Lcom/koushikdutta/async/a/a;

    return-object v0
.end method


# virtual methods
.method protected a(Lcom/koushikdutta/async/http/b/e;)Lcom/koushikdutta/async/http/a/a;
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(Lcom/koushikdutta/async/a/b;)V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/i;->c:Lcom/koushikdutta/async/s;

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/s;->a(Lcom/koushikdutta/async/a/b;)V

    .line 113
    return-void
.end method

.method public a(Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/http/server/i;->a_(Ljava/lang/Exception;)V

    .line 34
    return-void
.end method

.method protected abstract b()V
.end method

.method public final b_()Lcom/koushikdutta/async/http/a/a;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/i;->f:Lcom/koushikdutta/async/http/a/a;

    return-object v0
.end method

.method public final d()Lcom/koushikdutta/async/a/b;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/i;->c:Lcom/koushikdutta/async/s;

    invoke-interface {v0}, Lcom/koushikdutta/async/s;->d()Lcom/koushikdutta/async/a/b;

    move-result-object v0

    return-object v0
.end method

.method public final f()V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/i;->c:Lcom/koushikdutta/async/s;

    invoke-interface {v0}, Lcom/koushikdutta/async/s;->f()V

    .line 139
    return-void
.end method

.method public final g()V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/i;->c:Lcom/koushikdutta/async/s;

    invoke-interface {v0}, Lcom/koushikdutta/async/s;->g()V

    .line 144
    return-void
.end method

.method public final h()Z
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/i;->c:Lcom/koushikdutta/async/s;

    invoke-interface {v0}, Lcom/koushikdutta/async/s;->h()Z

    move-result v0

    return v0
.end method

.method protected final k()V
    .locals 3

    .prologue
    .line 39
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "not http: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/koushikdutta/async/http/server/i;->a:Lcom/koushikdutta/async/http/b/e;

    invoke-virtual {v2}, Lcom/koushikdutta/async/http/b/e;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 40
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "not http: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/koushikdutta/async/http/server/i;->a:Lcom/koushikdutta/async/http/b/e;

    invoke-virtual {v2}, Lcom/koushikdutta/async/http/b/e;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method final l()Lcom/koushikdutta/async/http/b/e;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/i;->a:Lcom/koushikdutta/async/http/b/e;

    return-object v0
.end method

.method public final m()Lcom/koushikdutta/async/http/b/a;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/i;->g:Lcom/koushikdutta/async/http/b/a;

    return-object v0
.end method
