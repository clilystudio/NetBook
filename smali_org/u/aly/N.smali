.class final Lu/aly/N;
.super Lu/aly/bW;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/bW",
        "<",
        "Lu/aly/at;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 442
    invoke-direct {p0}, Lu/aly/bW;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 442
    invoke-direct {p0}, Lu/aly/N;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lu/aly/bN;Lu/aly/bz;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1
    check-cast p2, Lu/aly/at;

    .line 1461
    check-cast p1, Lu/aly/bS;

    .line 1463
    new-instance v1, Lu/aly/bM;

    const/16 v0, 0xb

    const/16 v2, 0xc

    invoke-virtual {p1}, Lu/aly/bS;->m()I

    move-result v3

    invoke-direct {v1, v0, v2, v3}, Lu/aly/bM;-><init>(BBI)V

    .line 1464
    new-instance v0, Ljava/util/HashMap;

    iget v2, v1, Lu/aly/bM;->c:I

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p2, Lu/aly/at;->a:Ljava/util/Map;

    .line 1465
    const/4 v0, 0x0

    :goto_0
    iget v2, v1, Lu/aly/bM;->c:I

    if-lt v0, v2, :cond_0

    .line 1475
    invoke-virtual {p2, v5}, Lu/aly/at;->a(Z)V

    .line 1476
    invoke-virtual {p1}, Lu/aly/bS;->m()I

    move-result v0

    iput v0, p2, Lu/aly/at;->b:I

    .line 1477
    invoke-virtual {p2, v5}, Lu/aly/at;->b(Z)V

    .line 1478
    invoke-virtual {p1}, Lu/aly/bS;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/at;->c:Ljava/lang/String;

    .line 1479
    invoke-virtual {p2, v5}, Lu/aly/at;->c(Z)V

    .line 1
    return-void

    .line 1469
    :cond_0
    invoke-virtual {p1}, Lu/aly/bS;->p()Ljava/lang/String;

    move-result-object v2

    .line 1470
    new-instance v3, Lu/aly/au;

    invoke-direct {v3}, Lu/aly/au;-><init>()V

    .line 1471
    invoke-virtual {v3, p1}, Lu/aly/au;->a(Lu/aly/bN;)V

    .line 1472
    iget-object v4, p2, Lu/aly/at;->a:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1465
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final synthetic b(Lu/aly/bN;Lu/aly/bz;)V
    .locals 3

    .prologue
    .line 1
    check-cast p2, Lu/aly/at;

    .line 2446
    check-cast p1, Lu/aly/bS;

    .line 2448
    iget-object v0, p2, Lu/aly/at;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lu/aly/bS;->a(I)V

    .line 2449
    iget-object v0, p2, Lu/aly/at;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2455
    iget v0, p2, Lu/aly/at;->b:I

    invoke-virtual {p1, v0}, Lu/aly/bS;->a(I)V

    .line 2456
    iget-object v0, p2, Lu/aly/at;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/bS;->a(Ljava/lang/String;)V

    .line 1
    return-void

    .line 2449
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2451
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lu/aly/bS;->a(Ljava/lang/String;)V

    .line 2452
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/au;

    invoke-virtual {v0, p1}, Lu/aly/au;->b(Lu/aly/bN;)V

    goto :goto_0
.end method
