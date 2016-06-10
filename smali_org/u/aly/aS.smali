.class final Lu/aly/aS;
.super Lu/aly/bW;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/bW",
        "<",
        "Lu/aly/bd;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 708
    invoke-direct {p0}, Lu/aly/bW;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 708
    invoke-direct {p0}, Lu/aly/aS;-><init>()V

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
    check-cast p2, Lu/aly/bd;

    .line 1753
    check-cast p1, Lu/aly/bS;

    .line 1754
    invoke-virtual {p1}, Lu/aly/bS;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bd;->a:Ljava/lang/String;

    .line 1755
    invoke-virtual {p2, v6}, Lu/aly/bd;->a(Z)V

    .line 1756
    invoke-virtual {p1}, Lu/aly/bS;->n()J

    move-result-wide v2

    iput-wide v2, p2, Lu/aly/bd;->b:J

    .line 1757
    invoke-virtual {p2, v6}, Lu/aly/bd;->b(Z)V

    .line 1758
    invoke-virtual {p1}, Lu/aly/bS;->n()J

    move-result-wide v2

    iput-wide v2, p2, Lu/aly/bd;->c:J

    .line 1759
    invoke-virtual {p2, v6}, Lu/aly/bd;->c(Z)V

    .line 1760
    invoke-virtual {p1}, Lu/aly/bS;->n()J

    move-result-wide v2

    iput-wide v2, p2, Lu/aly/bd;->d:J

    .line 1761
    invoke-virtual {p2, v6}, Lu/aly/bd;->d(Z)V

    .line 1762
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lu/aly/bS;->b(I)Ljava/util/BitSet;

    move-result-object v2

    .line 1763
    invoke-virtual {v2, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1765
    new-instance v3, Lu/aly/bL;

    invoke-virtual {p1}, Lu/aly/bS;->m()I

    move-result v0

    invoke-direct {v3, v7, v0}, Lu/aly/bL;-><init>(BI)V

    .line 1766
    new-instance v0, Ljava/util/ArrayList;

    iget v4, v3, Lu/aly/bL;->b:I

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p2, Lu/aly/bd;->e:Ljava/util/List;

    move v0, v1

    .line 1767
    :goto_0
    iget v4, v3, Lu/aly/bL;->b:I

    if-lt v0, v4, :cond_3

    .line 1775
    invoke-virtual {p2, v6}, Lu/aly/bd;->e(Z)V

    .line 1777
    :cond_0
    invoke-virtual {v2, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1779
    new-instance v0, Lu/aly/bL;

    invoke-virtual {p1}, Lu/aly/bS;->m()I

    move-result v3

    invoke-direct {v0, v7, v3}, Lu/aly/bL;-><init>(BI)V

    .line 1780
    new-instance v3, Ljava/util/ArrayList;

    iget v4, v0, Lu/aly/bL;->b:I

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p2, Lu/aly/bd;->f:Ljava/util/List;

    .line 1781
    :goto_1
    iget v3, v0, Lu/aly/bL;->b:I

    if-lt v1, v3, :cond_4

    .line 1789
    invoke-virtual {p2, v6}, Lu/aly/bd;->f(Z)V

    .line 1791
    :cond_1
    const/4 v0, 0x2

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1792
    new-instance v0, Lu/aly/be;

    invoke-direct {v0}, Lu/aly/be;-><init>()V

    iput-object v0, p2, Lu/aly/bd;->g:Lu/aly/be;

    .line 1793
    iget-object v0, p2, Lu/aly/bd;->g:Lu/aly/be;

    invoke-virtual {v0, p1}, Lu/aly/be;->a(Lu/aly/bN;)V

    .line 1794
    invoke-virtual {p2, v6}, Lu/aly/bd;->g(Z)V

    .line 1
    :cond_2
    return-void

    .line 1770
    :cond_3
    new-instance v4, Lu/aly/ay;

    invoke-direct {v4}, Lu/aly/ay;-><init>()V

    .line 1771
    invoke-virtual {v4, p1}, Lu/aly/ay;->a(Lu/aly/bN;)V

    .line 1772
    iget-object v5, p2, Lu/aly/bd;->e:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1767
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1784
    :cond_4
    new-instance v3, Lu/aly/aw;

    invoke-direct {v3}, Lu/aly/aw;-><init>()V

    .line 1785
    invoke-virtual {v3, p1}, Lu/aly/aw;->a(Lu/aly/bN;)V

    .line 1786
    iget-object v4, p2, Lu/aly/bd;->f:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1781
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public final synthetic b(Lu/aly/bN;Lu/aly/bz;)V
    .locals 2

    .prologue
    .line 1
    check-cast p2, Lu/aly/bd;

    .line 2712
    check-cast p1, Lu/aly/bS;

    .line 2713
    iget-object v0, p2, Lu/aly/bd;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/bS;->a(Ljava/lang/String;)V

    .line 2714
    iget-wide v0, p2, Lu/aly/bd;->b:J

    invoke-virtual {p1, v0, v1}, Lu/aly/bS;->a(J)V

    .line 2715
    iget-wide v0, p2, Lu/aly/bd;->c:J

    invoke-virtual {p1, v0, v1}, Lu/aly/bS;->a(J)V

    .line 2716
    iget-wide v0, p2, Lu/aly/bd;->d:J

    invoke-virtual {p1, v0, v1}, Lu/aly/bS;->a(J)V

    .line 2717
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 2718
    invoke-virtual {p2}, Lu/aly/bd;->t()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2719
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 2721
    :cond_0
    invoke-virtual {p2}, Lu/aly/bd;->y()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2722
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 2724
    :cond_1
    invoke-virtual {p2}, Lu/aly/bd;->B()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2725
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 2727
    :cond_2
    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lu/aly/bS;->a(Ljava/util/BitSet;I)V

    .line 2728
    invoke-virtual {p2}, Lu/aly/bd;->t()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2730
    iget-object v0, p2, Lu/aly/bd;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lu/aly/bS;->a(I)V

    .line 2731
    iget-object v0, p2, Lu/aly/bd;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6

    .line 2737
    :cond_3
    invoke-virtual {p2}, Lu/aly/bd;->y()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2739
    iget-object v0, p2, Lu/aly/bd;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lu/aly/bS;->a(I)V

    .line 2740
    iget-object v0, p2, Lu/aly/bd;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_7

    .line 2746
    :cond_4
    invoke-virtual {p2}, Lu/aly/bd;->B()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2747
    iget-object v0, p2, Lu/aly/bd;->g:Lu/aly/be;

    invoke-virtual {v0, p1}, Lu/aly/be;->b(Lu/aly/bN;)V

    .line 1
    :cond_5
    return-void

    .line 2731
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/ay;

    .line 2733
    invoke-virtual {v0, p1}, Lu/aly/ay;->b(Lu/aly/bN;)V

    goto :goto_0

    .line 2740
    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/aw;

    .line 2742
    invoke-virtual {v0, p1}, Lu/aly/aw;->b(Lu/aly/bN;)V

    goto :goto_1
.end method
