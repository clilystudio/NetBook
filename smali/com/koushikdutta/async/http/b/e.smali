.class public final Lcom/koushikdutta/async/http/b/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;

.field private d:I

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lcom/koushikdutta/async/http/b/f;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/b/f;-><init>()V

    sput-object v0, Lcom/koushikdutta/async/http/b/e;->a:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/koushikdutta/async/http/b/e;->b:Ljava/util/List;

    .line 64
    const/4 v0, 0x1

    iput v0, p0, Lcom/koushikdutta/async/http/b/e;->d:I

    .line 65
    const/4 v0, -0x1

    iput v0, p0, Lcom/koushikdutta/async/http/b/e;->e:I

    .line 68
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/koushikdutta/async/http/b/e;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final a(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 205
    shl-int/lit8 v0, p1, 0x1

    .line 206
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/koushikdutta/async/http/b/e;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 207
    :cond_0
    const/4 v0, 0x0

    .line 209
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/koushikdutta/async/http/b/e;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 87
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 88
    iput-object v0, p0, Lcom/koushikdutta/async/http/b/e;->c:Ljava/lang/String;

    .line 90
    if-eqz v0, :cond_0

    const-string v1, "HTTP/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 94
    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v2, v0, 0x1

    .line 95
    if-eqz v2, :cond_0

    .line 98
    add-int/lit8 v0, v2, -0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x31

    if-eq v0, v3, :cond_2

    .line 99
    const/4 v0, 0x0

    iput v0, p0, Lcom/koushikdutta/async/http/b/e;->d:I

    .line 101
    :cond_2
    add-int/lit8 v0, v2, 0x3

    .line 102
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v0, v3, :cond_3

    .line 103
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 105
    :cond_3
    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/koushikdutta/async/http/b/e;->e:I

    .line 106
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v2, v3, :cond_0

    .line 107
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 154
    if-nez p1, :cond_0

    .line 155
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "fieldName == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_0
    if-nez p2, :cond_1

    .line 163
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Ignoring HTTP header field \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' because its value is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 168
    :goto_0
    return-void

    .line 166
    :cond_1
    iget-object v0, p0, Lcom/koushikdutta/async/http/b/e;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    iget-object v0, p0, Lcom/koushikdutta/async/http/b/e;->b:Ljava/util/List;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final b()I
    .locals 2

    .prologue
    .line 120
    iget v0, p0, Lcom/koushikdutta/async/http/b/e;->d:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/koushikdutta/async/http/b/e;->d:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final b(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 216
    shl-int/lit8 v0, p1, 0x1

    add-int/lit8 v0, v0, 0x1

    .line 217
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/koushikdutta/async/http/b/e;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 218
    :cond_0
    const/4 v0, 0x0

    .line 220
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/koushikdutta/async/http/b/e;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 142
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 143
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 144
    const-string v0, ""

    invoke-virtual {p0, v0, p1}, Lcom/koushikdutta/async/http/b/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    :goto_0
    return-void

    .line 146
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/koushikdutta/async/http/b/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 190
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/http/b/e;->c(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p0, p1, p2}, Lcom/koushikdutta/async/http/b/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    return-void
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lcom/koushikdutta/async/http/b/e;->e:I

    return v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 171
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/b/e;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/koushikdutta/async/http/b/e;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/koushikdutta/async/http/b/e;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 174
    iget-object v0, p0, Lcom/koushikdutta/async/http/b/e;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 171
    :cond_0
    add-int/lit8 v0, v1, 0x2

    move v1, v0

    goto :goto_0

    .line 177
    :cond_1
    return-void
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/koushikdutta/async/http/b/e;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public final d(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/koushikdutta/async/http/b/e;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 228
    iget-object v0, p0, Lcom/koushikdutta/async/http/b/e;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/koushikdutta/async/http/b/e;->b:Ljava/util/List;

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 232
    :goto_1
    return-object v0

    .line 227
    :cond_0
    add-int/lit8 v0, v1, -0x2

    move v1, v0

    goto :goto_0

    .line 232
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final e()Ljava/lang/String;
    .locals 5

    .prologue
    .line 250
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v0, 0x100

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 251
    iget-object v0, p0, Lcom/koushikdutta/async/http/b/e;->c:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/b/e;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/koushikdutta/async/http/b/e;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/koushikdutta/async/http/b/e;->b:Ljava/util/List;

    add-int/lit8 v4, v1, 0x1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\r\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    add-int/lit8 v0, v1, 0x2

    move v1, v0

    goto :goto_0

    .line 256
    :cond_0
    const-string v0, "\r\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final f()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 265
    new-instance v4, Ljava/util/TreeMap;

    sget-object v0, Lcom/koushikdutta/async/http/b/e;->a:Ljava/util/Comparator;

    invoke-direct {v4, v0}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 266
    const/4 v0, 0x0

    move v3, v0

    :goto_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/b/e;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_1

    .line 267
    iget-object v0, p0, Lcom/koushikdutta/async/http/b/e;->b:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 268
    iget-object v1, p0, Lcom/koushikdutta/async/http/b/e;->b:Ljava/util/List;

    add-int/lit8 v2, v3, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 270
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 271
    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 272
    if-eqz v2, :cond_0

    .line 273
    invoke-interface {v5, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 275
    :cond_0
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    add-int/lit8 v0, v3, 0x2

    move v3, v0

    goto :goto_0

    .line 278
    :cond_1
    iget-object v0, p0, Lcom/koushikdutta/async/http/b/e;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 279
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/koushikdutta/async/http/b/e;->c:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    :cond_2
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
