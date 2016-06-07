.class final Lu/aly/V;
.super Lu/aly/bW;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/bW",
        "<",
        "Lu/aly/av;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 570
    invoke-direct {p0}, Lu/aly/bW;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 570
    invoke-direct {p0}, Lu/aly/V;-><init>()V

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
    check-cast p2, Lu/aly/av;

    .line 1618
    check-cast p1, Lu/aly/bS;

    .line 1619
    invoke-virtual {p1}, Lu/aly/bS;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/av;->a:Ljava/lang/String;

    .line 1620
    invoke-virtual {p2, v6}, Lu/aly/av;->a(Z)V

    .line 1621
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lu/aly/bS;->b(I)Ljava/util/BitSet;

    move-result-object v2

    .line 1622
    invoke-virtual {v2, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1624
    new-instance v3, Lu/aly/bL;

    invoke-virtual {p1}, Lu/aly/bS;->m()I

    move-result v0

    invoke-direct {v3, v7, v0}, Lu/aly/bL;-><init>(BI)V

    .line 1625
    new-instance v0, Ljava/util/ArrayList;

    iget v4, v3, Lu/aly/bL;->b:I

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p2, Lu/aly/av;->b:Ljava/util/List;

    move v0, v1

    .line 1626
    :goto_0
    iget v4, v3, Lu/aly/bL;->b:I

    if-lt v0, v4, :cond_3

    .line 1634
    invoke-virtual {p2, v6}, Lu/aly/av;->b(Z)V

    .line 1636
    :cond_0
    invoke-virtual {v2, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1638
    new-instance v3, Lu/aly/bL;

    invoke-virtual {p1}, Lu/aly/bS;->m()I

    move-result v0

    invoke-direct {v3, v7, v0}, Lu/aly/bL;-><init>(BI)V

    .line 1639
    new-instance v0, Ljava/util/ArrayList;

    iget v4, v3, Lu/aly/bL;->b:I

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p2, Lu/aly/av;->c:Ljava/util/List;

    move v0, v1

    .line 1640
    :goto_1
    iget v4, v3, Lu/aly/bL;->b:I

    if-lt v0, v4, :cond_4

    .line 1648
    invoke-virtual {p2, v6}, Lu/aly/av;->c(Z)V

    .line 1650
    :cond_1
    const/4 v0, 0x2

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1652
    new-instance v0, Lu/aly/bL;

    invoke-virtual {p1}, Lu/aly/bS;->m()I

    move-result v2

    invoke-direct {v0, v7, v2}, Lu/aly/bL;-><init>(BI)V

    .line 1653
    new-instance v2, Ljava/util/ArrayList;

    iget v3, v0, Lu/aly/bL;->b:I

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p2, Lu/aly/av;->d:Ljava/util/List;

    .line 1654
    :goto_2
    iget v2, v0, Lu/aly/bL;->b:I

    if-lt v1, v2, :cond_5

    .line 1662
    invoke-virtual {p2, v6}, Lu/aly/av;->d(Z)V

    .line 1
    :cond_2
    return-void

    .line 1629
    :cond_3
    new-instance v4, Lu/aly/am;

    invoke-direct {v4}, Lu/aly/am;-><init>()V

    .line 1630
    invoke-virtual {v4, p1}, Lu/aly/am;->a(Lu/aly/bN;)V

    .line 1631
    iget-object v5, p2, Lu/aly/av;->b:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1626
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1643
    :cond_4
    new-instance v4, Lu/aly/ao;

    invoke-direct {v4}, Lu/aly/ao;-><init>()V

    .line 1644
    invoke-virtual {v4, p1}, Lu/aly/ao;->a(Lu/aly/bN;)V

    .line 1645
    iget-object v5, p2, Lu/aly/av;->c:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1640
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1657
    :cond_5
    new-instance v2, Lu/aly/ao;

    invoke-direct {v2}, Lu/aly/ao;-><init>()V

    .line 1658
    invoke-virtual {v2, p1}, Lu/aly/ao;->a(Lu/aly/bN;)V

    .line 1659
    iget-object v3, p2, Lu/aly/av;->d:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1654
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public final synthetic b(Lu/aly/bN;Lu/aly/bz;)V
    .locals 2

    .prologue
    .line 1
    check-cast p2, Lu/aly/av;

    .line 2574
    check-cast p1, Lu/aly/bS;

    .line 2575
    iget-object v0, p2, Lu/aly/av;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/bS;->a(Ljava/lang/String;)V

    .line 2576
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 2577
    invoke-virtual {p2}, Lu/aly/av;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2578
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 2580
    :cond_0
    invoke-virtual {p2}, Lu/aly/av;->p()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2581
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 2583
    :cond_1
    invoke-virtual {p2}, Lu/aly/av;->u()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2584
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 2586
    :cond_2
    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lu/aly/bS;->a(Ljava/util/BitSet;I)V

    .line 2587
    invoke-virtual {p2}, Lu/aly/av;->k()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2589
    iget-object v0, p2, Lu/aly/av;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lu/aly/bS;->a(I)V

    .line 2590
    iget-object v0, p2, Lu/aly/av;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6

    .line 2596
    :cond_3
    invoke-virtual {p2}, Lu/aly/av;->p()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2598
    iget-object v0, p2, Lu/aly/av;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lu/aly/bS;->a(I)V

    .line 2599
    iget-object v0, p2, Lu/aly/av;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_7

    .line 2605
    :cond_4
    invoke-virtual {p2}, Lu/aly/av;->u()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2607
    iget-object v0, p2, Lu/aly/av;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lu/aly/bS;->a(I)V

    .line 2608
    iget-object v0, p2, Lu/aly/av;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1
    :cond_5
    return-void

    .line 2590
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/am;

    .line 2592
    invoke-virtual {v0, p1}, Lu/aly/am;->b(Lu/aly/bN;)V

    goto :goto_0

    .line 2599
    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/ao;

    .line 2601
    invoke-virtual {v0, p1}, Lu/aly/ao;->b(Lu/aly/bN;)V

    goto :goto_1

    .line 2608
    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/ao;

    .line 2610
    invoke-virtual {v0, p1}, Lu/aly/ao;->b(Lu/aly/bN;)V

    goto :goto_2
.end method
