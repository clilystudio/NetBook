.class final Lu/aly/J;
.super Lu/aly/bW;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/bW",
        "<",
        "Lu/aly/as;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 480
    invoke-direct {p0}, Lu/aly/bW;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 480
    invoke-direct {p0}, Lu/aly/J;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lu/aly/bN;Lu/aly/bz;)V
    .locals 8

    .prologue
    const/16 v7, 0xc

    const/4 v1, 0x0

    const/4 v6, 0x1

    .line 1
    check-cast p2, Lu/aly/as;

    .line 1517
    check-cast p1, Lu/aly/bS;

    .line 1519
    new-instance v2, Lu/aly/bM;

    const/16 v0, 0xb

    invoke-virtual {p1}, Lu/aly/bS;->m()I

    move-result v3

    invoke-direct {v2, v0, v7, v3}, Lu/aly/bM;-><init>(BBI)V

    .line 1520
    new-instance v0, Ljava/util/HashMap;

    iget v3, v2, Lu/aly/bM;->c:I

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p2, Lu/aly/as;->a:Ljava/util/Map;

    move v0, v1

    .line 1521
    :goto_0
    iget v3, v2, Lu/aly/bM;->c:I

    if-lt v0, v3, :cond_2

    .line 1531
    invoke-virtual {p2, v6}, Lu/aly/as;->a(Z)V

    .line 1532
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lu/aly/bS;->b(I)Ljava/util/BitSet;

    move-result-object v0

    .line 1533
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1535
    new-instance v2, Lu/aly/bL;

    invoke-virtual {p1}, Lu/aly/bS;->m()I

    move-result v3

    invoke-direct {v2, v7, v3}, Lu/aly/bL;-><init>(BI)V

    .line 1536
    new-instance v3, Ljava/util/ArrayList;

    iget v4, v2, Lu/aly/bL;->b:I

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p2, Lu/aly/as;->b:Ljava/util/List;

    .line 1537
    :goto_1
    iget v3, v2, Lu/aly/bL;->b:I

    if-lt v1, v3, :cond_3

    .line 1545
    invoke-virtual {p2, v6}, Lu/aly/as;->b(Z)V

    .line 1547
    :cond_0
    invoke-virtual {v0, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1548
    invoke-virtual {p1}, Lu/aly/bS;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/as;->c:Ljava/lang/String;

    .line 1549
    invoke-virtual {p2, v6}, Lu/aly/as;->c(Z)V

    .line 1
    :cond_1
    return-void

    .line 1525
    :cond_2
    invoke-virtual {p1}, Lu/aly/bS;->p()Ljava/lang/String;

    move-result-object v3

    .line 1526
    new-instance v4, Lu/aly/ar;

    invoke-direct {v4}, Lu/aly/ar;-><init>()V

    .line 1527
    invoke-virtual {v4, p1}, Lu/aly/ar;->a(Lu/aly/bN;)V

    .line 1528
    iget-object v5, p2, Lu/aly/as;->a:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1521
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1540
    :cond_3
    new-instance v3, Lu/aly/aq;

    invoke-direct {v3}, Lu/aly/aq;-><init>()V

    .line 1541
    invoke-virtual {v3, p1}, Lu/aly/aq;->a(Lu/aly/bN;)V

    .line 1542
    iget-object v4, p2, Lu/aly/as;->b:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1537
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public final synthetic b(Lu/aly/bN;Lu/aly/bz;)V
    .locals 3

    .prologue
    .line 1
    check-cast p2, Lu/aly/as;

    .line 2484
    check-cast p1, Lu/aly/bS;

    .line 2486
    iget-object v0, p2, Lu/aly/as;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lu/aly/bS;->a(I)V

    .line 2487
    iget-object v0, p2, Lu/aly/as;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2493
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 2494
    invoke-virtual {p2}, Lu/aly/as;->l()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2495
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 2497
    :cond_0
    invoke-virtual {p2}, Lu/aly/as;->o()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2498
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 2500
    :cond_1
    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lu/aly/bS;->a(Ljava/util/BitSet;I)V

    .line 2501
    invoke-virtual {p2}, Lu/aly/as;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2503
    iget-object v0, p2, Lu/aly/as;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lu/aly/bS;->a(I)V

    .line 2504
    iget-object v0, p2, Lu/aly/as;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    .line 2510
    :cond_2
    invoke-virtual {p2}, Lu/aly/as;->o()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2511
    iget-object v0, p2, Lu/aly/as;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/bS;->a(Ljava/lang/String;)V

    .line 1
    :cond_3
    return-void

    .line 2487
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2489
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lu/aly/bS;->a(Ljava/lang/String;)V

    .line 2490
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/ar;

    invoke-virtual {v0, p1}, Lu/aly/ar;->b(Lu/aly/bN;)V

    goto :goto_0

    .line 2504
    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/aq;

    .line 2506
    invoke-virtual {v0, p1}, Lu/aly/aq;->b(Lu/aly/bN;)V

    goto :goto_1
.end method
