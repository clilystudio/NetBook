.class public final Lcom/koushikdutta/async/http/a/d;
.super Lcom/koushikdutta/async/http/server/q;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/http/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/koushikdutta/async/http/server/q;",
        "Lcom/koushikdutta/async/http/a/a",
        "<",
        "Lcom/koushikdutta/async/http/Multimap;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/koushikdutta/async/F;

.field b:Lcom/koushikdutta/async/v;

.field c:Ljava/lang/String;

.field d:Lcom/koushikdutta/async/http/a/g;

.field private e:Lcom/koushikdutta/async/http/b/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 217
    invoke-direct {p0}, Lcom/koushikdutta/async/http/server/q;-><init>()V

    .line 218
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 104
    invoke-direct {p0}, Lcom/koushikdutta/async/http/server/q;-><init>()V

    .line 105
    array-length v2, p1

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, p1, v0

    .line 106
    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 107
    array-length v4, v3

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 109
    const-string v4, "boundary"

    aget-object v5, v3, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 111
    const/4 v0, 0x1

    aget-object v0, v3, v0

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/a/d;->a(Ljava/lang/String;)V

    .line 115
    :goto_1
    return-void

    .line 105
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 114
    :cond_1
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "No boundary found for multipart/form-data"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/a/d;->a_(Ljava/lang/Exception;)V

    goto :goto_1
.end method


# virtual methods
.method public final a(Lcom/koushikdutta/async/http/a/g;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/koushikdutta/async/http/a/d;->d:Lcom/koushikdutta/async/http/a/g;

    .line 120
    return-void
.end method

.method public final a(Lcom/koushikdutta/async/y;Lcom/koushikdutta/async/a/a;)V
    .locals 0

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/http/a/d;->a(Lcom/koushikdutta/async/y;)V

    .line 35
    invoke-virtual {p0, p2}, Lcom/koushikdutta/async/http/a/d;->b(Lcom/koushikdutta/async/a/a;)V

    .line 36
    return-void
.end method

.method public final a_()Z
    .locals 1

    .prologue
    .line 196
    const/4 v0, 0x0

    return v0
.end method

.method final b()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 39
    iget-object v0, p0, Lcom/koushikdutta/async/http/a/d;->b:Lcom/koushikdutta/async/v;

    if-nez v0, :cond_0

    .line 49
    :goto_0
    return-void

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/a/d;->e:Lcom/koushikdutta/async/http/b/e;

    if-nez v0, :cond_1

    .line 43
    new-instance v0, Lcom/koushikdutta/async/http/b/e;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/b/e;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/a/d;->e:Lcom/koushikdutta/async/http/b/e;

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/koushikdutta/async/http/a/d;->e:Lcom/koushikdutta/async/http/b/e;

    iget-object v1, p0, Lcom/koushikdutta/async/http/a/d;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/koushikdutta/async/http/a/d;->b:Lcom/koushikdutta/async/v;

    invoke-virtual {v2}, Lcom/koushikdutta/async/v;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/koushikdutta/async/http/b/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iput-object v3, p0, Lcom/koushikdutta/async/http/a/d;->c:Ljava/lang/String;

    .line 48
    iput-object v3, p0, Lcom/koushikdutta/async/http/a/d;->b:Lcom/koushikdutta/async/v;

    goto :goto_0
.end method

.method protected final k()V
    .locals 0

    .prologue
    .line 59
    invoke-super {p0}, Lcom/koushikdutta/async/http/server/q;->k()V

    .line 60
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/a/d;->b()V

    .line 61
    return-void
.end method

.method protected final l()V
    .locals 3

    .prologue
    .line 65
    new-instance v0, Lcom/koushikdutta/async/http/b/e;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/b/e;-><init>()V

    .line 66
    new-instance v1, Lcom/koushikdutta/async/F;

    invoke-direct {v1}, Lcom/koushikdutta/async/F;-><init>()V

    iput-object v1, p0, Lcom/koushikdutta/async/http/a/d;->a:Lcom/koushikdutta/async/F;

    .line 67
    iget-object v1, p0, Lcom/koushikdutta/async/http/a/d;->a:Lcom/koushikdutta/async/F;

    new-instance v2, Lcom/koushikdutta/async/http/a/e;

    invoke-direct {v2, p0, v0}, Lcom/koushikdutta/async/http/a/e;-><init>(Lcom/koushikdutta/async/http/a/d;Lcom/koushikdutta/async/http/b/e;)V

    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/F;->a(Lcom/koushikdutta/async/G;)V

    .line 99
    iget-object v0, p0, Lcom/koushikdutta/async/http/a/d;->a:Lcom/koushikdutta/async/F;

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/a/d;->a(Lcom/koushikdutta/async/a/b;)V

    .line 100
    return-void
.end method
