.class public final Lcom/squareup/okhttp/I;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/squareup/okhttp/C;

.field private final b:Lcom/squareup/okhttp/Protocol;

.field private final c:I

.field private final d:Ljava/lang/String;

.field private final e:Lcom/squareup/okhttp/t;

.field private final f:Lcom/squareup/okhttp/u;

.field private final g:Lcom/squareup/okhttp/K;

.field private h:Lcom/squareup/okhttp/I;

.field private i:Lcom/squareup/okhttp/I;

.field private final j:Lcom/squareup/okhttp/I;

.field private volatile k:Lcom/squareup/okhttp/d;


# direct methods
.method private constructor <init>(Lcom/squareup/okhttp/J;)V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-static {p1}, Lcom/squareup/okhttp/J;->a(Lcom/squareup/okhttp/J;)Lcom/squareup/okhttp/C;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/I;->a:Lcom/squareup/okhttp/C;

    .line 52
    invoke-static {p1}, Lcom/squareup/okhttp/J;->b(Lcom/squareup/okhttp/J;)Lcom/squareup/okhttp/Protocol;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/I;->b:Lcom/squareup/okhttp/Protocol;

    .line 53
    invoke-static {p1}, Lcom/squareup/okhttp/J;->c(Lcom/squareup/okhttp/J;)I

    move-result v0

    iput v0, p0, Lcom/squareup/okhttp/I;->c:I

    .line 54
    invoke-static {p1}, Lcom/squareup/okhttp/J;->d(Lcom/squareup/okhttp/J;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/I;->d:Ljava/lang/String;

    .line 55
    invoke-static {p1}, Lcom/squareup/okhttp/J;->e(Lcom/squareup/okhttp/J;)Lcom/squareup/okhttp/t;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/I;->e:Lcom/squareup/okhttp/t;

    .line 56
    invoke-static {p1}, Lcom/squareup/okhttp/J;->f(Lcom/squareup/okhttp/J;)Lcom/squareup/okhttp/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/v;->a()Lcom/squareup/okhttp/u;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/I;->f:Lcom/squareup/okhttp/u;

    .line 57
    invoke-static {p1}, Lcom/squareup/okhttp/J;->g(Lcom/squareup/okhttp/J;)Lcom/squareup/okhttp/K;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/I;->g:Lcom/squareup/okhttp/K;

    .line 58
    invoke-static {p1}, Lcom/squareup/okhttp/J;->h(Lcom/squareup/okhttp/J;)Lcom/squareup/okhttp/I;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/I;->h:Lcom/squareup/okhttp/I;

    .line 59
    invoke-static {p1}, Lcom/squareup/okhttp/J;->i(Lcom/squareup/okhttp/J;)Lcom/squareup/okhttp/I;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/I;->i:Lcom/squareup/okhttp/I;

    .line 60
    invoke-static {p1}, Lcom/squareup/okhttp/J;->j(Lcom/squareup/okhttp/J;)Lcom/squareup/okhttp/I;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/I;->j:Lcom/squareup/okhttp/I;

    .line 61
    return-void
.end method

.method synthetic constructor <init>(Lcom/squareup/okhttp/J;B)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/I;-><init>(Lcom/squareup/okhttp/J;)V

    return-void
.end method

.method static synthetic a(Lcom/squareup/okhttp/I;)Lcom/squareup/okhttp/C;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/squareup/okhttp/I;->a:Lcom/squareup/okhttp/C;

    return-object v0
.end method

.method static synthetic b(Lcom/squareup/okhttp/I;)Lcom/squareup/okhttp/Protocol;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/squareup/okhttp/I;->b:Lcom/squareup/okhttp/Protocol;

    return-object v0
.end method

.method static synthetic c(Lcom/squareup/okhttp/I;)I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/squareup/okhttp/I;->c:I

    return v0
.end method

.method static synthetic d(Lcom/squareup/okhttp/I;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/squareup/okhttp/I;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/squareup/okhttp/I;)Lcom/squareup/okhttp/t;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/squareup/okhttp/I;->e:Lcom/squareup/okhttp/t;

    return-object v0
.end method

.method static synthetic f(Lcom/squareup/okhttp/I;)Lcom/squareup/okhttp/u;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/squareup/okhttp/I;->f:Lcom/squareup/okhttp/u;

    return-object v0
.end method

.method static synthetic g(Lcom/squareup/okhttp/I;)Lcom/squareup/okhttp/K;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/squareup/okhttp/I;->g:Lcom/squareup/okhttp/K;

    return-object v0
.end method

.method static synthetic h(Lcom/squareup/okhttp/I;)Lcom/squareup/okhttp/I;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/squareup/okhttp/I;->h:Lcom/squareup/okhttp/I;

    return-object v0
.end method

.method static synthetic i(Lcom/squareup/okhttp/I;)Lcom/squareup/okhttp/I;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/squareup/okhttp/I;->i:Lcom/squareup/okhttp/I;

    return-object v0
.end method

.method static synthetic j(Lcom/squareup/okhttp/I;)Lcom/squareup/okhttp/I;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/squareup/okhttp/I;->j:Lcom/squareup/okhttp/I;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/squareup/okhttp/C;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/squareup/okhttp/I;->a:Lcom/squareup/okhttp/C;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lcom/squareup/okhttp/I;->f:Lcom/squareup/okhttp/u;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/u;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lcom/squareup/okhttp/Protocol;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/squareup/okhttp/I;->b:Lcom/squareup/okhttp/Protocol;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    .line 1121
    iget-object v0, p0, Lcom/squareup/okhttp/I;->f:Lcom/squareup/okhttp/u;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/u;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1122
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 117
    goto :goto_0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/squareup/okhttp/I;->c:I

    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/squareup/okhttp/I;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Lcom/squareup/okhttp/t;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/squareup/okhttp/I;->e:Lcom/squareup/okhttp/t;

    return-object v0
.end method

.method public final f()Lcom/squareup/okhttp/u;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/squareup/okhttp/I;->f:Lcom/squareup/okhttp/u;

    return-object v0
.end method

.method public final g()Lcom/squareup/okhttp/K;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/squareup/okhttp/I;->g:Lcom/squareup/okhttp/K;

    return-object v0
.end method

.method public final h()Lcom/squareup/okhttp/J;
    .locals 2

    .prologue
    .line 134
    new-instance v0, Lcom/squareup/okhttp/J;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/squareup/okhttp/J;-><init>(Lcom/squareup/okhttp/I;B)V

    return-object v0
.end method

.method public final i()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/l;",
            ">;"
        }
    .end annotation

    .prologue
    .line 190
    iget v0, p0, Lcom/squareup/okhttp/I;->c:I

    const/16 v1, 0x191

    if-ne v0, v1, :cond_0

    .line 191
    const-string v0, "WWW-Authenticate"

    .line 1126
    :goto_0
    iget-object v1, p0, Lcom/squareup/okhttp/I;->f:Lcom/squareup/okhttp/u;

    .line 197
    invoke-static {v1, v0}, Lcom/squareup/okhttp/internal/http/r;->b(Lcom/squareup/okhttp/u;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    :goto_1
    return-object v0

    .line 192
    :cond_0
    iget v0, p0, Lcom/squareup/okhttp/I;->c:I

    const/16 v1, 0x197

    if-ne v0, v1, :cond_1

    .line 193
    const-string v0, "Proxy-Authenticate"

    goto :goto_0

    .line 195
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_1
.end method

.method public final j()Lcom/squareup/okhttp/d;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/squareup/okhttp/I;->k:Lcom/squareup/okhttp/d;

    .line 206
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/I;->f:Lcom/squareup/okhttp/u;

    invoke-static {v0}, Lcom/squareup/okhttp/d;->a(Lcom/squareup/okhttp/u;)Lcom/squareup/okhttp/d;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/I;->k:Lcom/squareup/okhttp/d;

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Response{protocol="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/squareup/okhttp/I;->b:Lcom/squareup/okhttp/Protocol;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/squareup/okhttp/I;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/okhttp/I;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/okhttp/I;->a:Lcom/squareup/okhttp/C;

    .line 217
    invoke-virtual {v1}, Lcom/squareup/okhttp/C;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
