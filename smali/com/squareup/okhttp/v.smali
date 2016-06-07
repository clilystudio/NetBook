.class public final Lcom/squareup/okhttp/v;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/squareup/okhttp/v;->a:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/squareup/okhttp/v;)Ljava/util/List;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/squareup/okhttp/v;->a:Ljava/util/List;

    return-object v0
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/v;
    .locals 2

    .prologue
    .line 258
    iget-object v0, p0, Lcom/squareup/okhttp/v;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    iget-object v0, p0, Lcom/squareup/okhttp/v;->a:Ljava/util/List;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    return-object p0
.end method


# virtual methods
.method public final a()Lcom/squareup/okhttp/u;
    .locals 2

    .prologue
    .line 295
    new-instance v0, Lcom/squareup/okhttp/u;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/squareup/okhttp/u;-><init>(Lcom/squareup/okhttp/v;B)V

    return-object v0
.end method

.method final a(Ljava/lang/String;)Lcom/squareup/okhttp/v;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 222
    const-string v0, ":"

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 223
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 224
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/squareup/okhttp/v;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/v;

    move-result-object v0

    .line 230
    :goto_0
    return-object v0

    .line 225
    :cond_0
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 228
    const-string v0, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/squareup/okhttp/v;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/v;

    move-result-object v0

    goto :goto_0

    .line 230
    :cond_1
    const-string v0, ""

    invoke-direct {p0, v0, p1}, Lcom/squareup/okhttp/v;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/v;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/v;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 245
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 246
    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "value == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 247
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v1, :cond_2

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v1, :cond_3

    .line 248
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected header: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 250
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/squareup/okhttp/v;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/v;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Lcom/squareup/okhttp/v;
    .locals 2

    .prologue
    .line 264
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/squareup/okhttp/v;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 265
    iget-object v0, p0, Lcom/squareup/okhttp/v;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/squareup/okhttp/v;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 267
    iget-object v0, p0, Lcom/squareup/okhttp/v;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 268
    add-int/lit8 v1, v1, -0x2

    .line 264
    :cond_0
    add-int/lit8 v0, v1, 0x2

    move v1, v0

    goto :goto_0

    .line 271
    :cond_1
    return-object p0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/v;
    .locals 0

    .prologue
    .line 279
    invoke-virtual {p0, p1}, Lcom/squareup/okhttp/v;->b(Ljava/lang/String;)Lcom/squareup/okhttp/v;

    .line 280
    invoke-virtual {p0, p1, p2}, Lcom/squareup/okhttp/v;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/v;

    .line 281
    return-object p0
.end method
