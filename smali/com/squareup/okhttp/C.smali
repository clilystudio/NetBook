.class public final Lcom/squareup/okhttp/C;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/squareup/okhttp/w;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/squareup/okhttp/u;

.field private final d:Lcom/squareup/okhttp/E;

.field private final e:Ljava/lang/Object;

.field private volatile f:Ljava/net/URL;

.field private volatile g:Ljava/net/URI;

.field private volatile h:Lcom/squareup/okhttp/d;


# direct methods
.method private constructor <init>(Lcom/squareup/okhttp/D;)V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-static {p1}, Lcom/squareup/okhttp/D;->a(Lcom/squareup/okhttp/D;)Lcom/squareup/okhttp/w;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/C;->a:Lcom/squareup/okhttp/w;

    .line 41
    invoke-static {p1}, Lcom/squareup/okhttp/D;->b(Lcom/squareup/okhttp/D;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/C;->b:Ljava/lang/String;

    .line 42
    invoke-static {p1}, Lcom/squareup/okhttp/D;->c(Lcom/squareup/okhttp/D;)Lcom/squareup/okhttp/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/v;->a()Lcom/squareup/okhttp/u;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/C;->c:Lcom/squareup/okhttp/u;

    .line 43
    invoke-static {p1}, Lcom/squareup/okhttp/D;->d(Lcom/squareup/okhttp/D;)Lcom/squareup/okhttp/E;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/C;->d:Lcom/squareup/okhttp/E;

    .line 44
    invoke-static {p1}, Lcom/squareup/okhttp/D;->e(Lcom/squareup/okhttp/D;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/squareup/okhttp/D;->e(Lcom/squareup/okhttp/D;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/squareup/okhttp/C;->e:Ljava/lang/Object;

    .line 45
    return-void

    :cond_0
    move-object v0, p0

    .line 44
    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/squareup/okhttp/D;B)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/C;-><init>(Lcom/squareup/okhttp/D;)V

    return-void
.end method

.method static synthetic a(Lcom/squareup/okhttp/C;)Lcom/squareup/okhttp/w;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/squareup/okhttp/C;->a:Lcom/squareup/okhttp/w;

    return-object v0
.end method

.method static synthetic b(Lcom/squareup/okhttp/C;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/squareup/okhttp/C;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/squareup/okhttp/C;)Lcom/squareup/okhttp/E;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/squareup/okhttp/C;->d:Lcom/squareup/okhttp/E;

    return-object v0
.end method

.method static synthetic d(Lcom/squareup/okhttp/C;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/squareup/okhttp/C;->e:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic e(Lcom/squareup/okhttp/C;)Lcom/squareup/okhttp/u;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/squareup/okhttp/C;->c:Lcom/squareup/okhttp/u;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/squareup/okhttp/C;->c:Lcom/squareup/okhttp/u;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/u;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a()Ljava/net/URL;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/squareup/okhttp/C;->f:Ljava/net/URL;

    .line 53
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/C;->a:Lcom/squareup/okhttp/w;

    invoke-virtual {v0}, Lcom/squareup/okhttp/w;->a()Ljava/net/URL;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/C;->f:Ljava/net/URL;

    goto :goto_0
.end method

.method public final b()Ljava/net/URI;
    .locals 2

    .prologue
    .line 58
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/C;->g:Ljava/net/URI;

    .line 59
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/C;->a:Lcom/squareup/okhttp/w;

    invoke-virtual {v0}, Lcom/squareup/okhttp/w;->b()Ljava/net/URI;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/C;->g:Ljava/net/URI;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 60
    :catch_0
    move-exception v0

    .line 61
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/squareup/okhttp/C;->a:Lcom/squareup/okhttp/w;

    invoke-virtual {v0}, Lcom/squareup/okhttp/w;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/squareup/okhttp/C;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Lcom/squareup/okhttp/u;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/squareup/okhttp/C;->c:Lcom/squareup/okhttp/u;

    return-object v0
.end method

.method public final f()Lcom/squareup/okhttp/E;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/squareup/okhttp/C;->d:Lcom/squareup/okhttp/E;

    return-object v0
.end method

.method public final g()Lcom/squareup/okhttp/D;
    .locals 2

    .prologue
    .line 94
    new-instance v0, Lcom/squareup/okhttp/D;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/squareup/okhttp/D;-><init>(Lcom/squareup/okhttp/C;B)V

    return-object v0
.end method

.method public final h()Lcom/squareup/okhttp/d;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/squareup/okhttp/C;->h:Lcom/squareup/okhttp/d;

    .line 103
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/C;->c:Lcom/squareup/okhttp/u;

    invoke-static {v0}, Lcom/squareup/okhttp/d;->a(Lcom/squareup/okhttp/u;)Lcom/squareup/okhttp/d;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/C;->h:Lcom/squareup/okhttp/d;

    goto :goto_0
.end method

.method public final i()Z
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/squareup/okhttp/C;->a:Lcom/squareup/okhttp/w;

    invoke-virtual {v0}, Lcom/squareup/okhttp/w;->c()Z

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Request{method="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/squareup/okhttp/C;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/okhttp/C;->a:Lcom/squareup/okhttp/w;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/squareup/okhttp/C;->e:Ljava/lang/Object;

    if-eq v0, p0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/C;->e:Ljava/lang/Object;

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
