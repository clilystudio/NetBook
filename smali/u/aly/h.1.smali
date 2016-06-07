.class final Lu/aly/h;
.super Lu/aly/bW;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/bW",
        "<",
        "Lu/aly/ai;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 825
    invoke-direct {p0}, Lu/aly/bW;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 825
    invoke-direct {p0}, Lu/aly/h;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lu/aly/bN;Lu/aly/bz;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1
    check-cast p2, Lu/aly/ai;

    .line 1876
    check-cast p1, Lu/aly/bS;

    .line 1877
    invoke-virtual {p1}, Lu/aly/bS;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/ai;->a:Ljava/lang/String;

    .line 1878
    invoke-virtual {p2, v2}, Lu/aly/ai;->a(Z)V

    .line 1879
    invoke-virtual {p1}, Lu/aly/bS;->m()I

    move-result v0

    invoke-static {v0}, Lu/aly/bc;->a(I)Lu/aly/bc;

    move-result-object v0

    iput-object v0, p2, Lu/aly/ai;->e:Lu/aly/bc;

    .line 1880
    invoke-virtual {p2, v2}, Lu/aly/ai;->e(Z)V

    .line 1881
    invoke-virtual {p1}, Lu/aly/bS;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/ai;->f:Ljava/lang/String;

    .line 1882
    invoke-virtual {p2, v2}, Lu/aly/ai;->f(Z)V

    .line 1883
    invoke-virtual {p1}, Lu/aly/bS;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/ai;->g:Ljava/lang/String;

    .line 1884
    invoke-virtual {p2, v2}, Lu/aly/ai;->g(Z)V

    .line 1885
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lu/aly/bS;->b(I)Ljava/util/BitSet;

    move-result-object v0

    .line 1886
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1887
    invoke-virtual {p1}, Lu/aly/bS;->p()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lu/aly/ai;->b:Ljava/lang/String;

    .line 1888
    invoke-virtual {p2, v2}, Lu/aly/ai;->b(Z)V

    .line 1890
    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1891
    invoke-virtual {p1}, Lu/aly/bS;->m()I

    move-result v1

    iput v1, p2, Lu/aly/ai;->c:I

    .line 1892
    invoke-virtual {p2, v2}, Lu/aly/ai;->c(Z)V

    .line 1894
    :cond_1
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1895
    invoke-virtual {p1}, Lu/aly/bS;->p()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lu/aly/ai;->d:Ljava/lang/String;

    .line 1896
    invoke-virtual {p2, v2}, Lu/aly/ai;->d(Z)V

    .line 1898
    :cond_2
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1899
    invoke-virtual {p1}, Lu/aly/bS;->p()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lu/aly/ai;->h:Ljava/lang/String;

    .line 1900
    invoke-virtual {p2, v2}, Lu/aly/ai;->h(Z)V

    .line 1902
    :cond_3
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1903
    invoke-virtual {p1}, Lu/aly/bS;->p()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lu/aly/ai;->i:Ljava/lang/String;

    .line 1904
    invoke-virtual {p2, v2}, Lu/aly/ai;->i(Z)V

    .line 1906
    :cond_4
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1907
    invoke-virtual {p1}, Lu/aly/bS;->m()I

    move-result v0

    iput v0, p2, Lu/aly/ai;->j:I

    .line 1908
    invoke-virtual {p2, v2}, Lu/aly/ai;->j(Z)V

    .line 1
    :cond_5
    return-void
.end method

.method public final synthetic b(Lu/aly/bN;Lu/aly/bz;)V
    .locals 2

    .prologue
    .line 1
    check-cast p2, Lu/aly/ai;

    .line 2829
    check-cast p1, Lu/aly/bS;

    .line 2830
    iget-object v0, p2, Lu/aly/ai;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/bS;->a(Ljava/lang/String;)V

    .line 2831
    iget-object v0, p2, Lu/aly/ai;->e:Lu/aly/bc;

    invoke-virtual {v0}, Lu/aly/bc;->a()I

    move-result v0

    invoke-virtual {p1, v0}, Lu/aly/bS;->a(I)V

    .line 2832
    iget-object v0, p2, Lu/aly/ai;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/bS;->a(Ljava/lang/String;)V

    .line 2833
    iget-object v0, p2, Lu/aly/ai;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/bS;->a(Ljava/lang/String;)V

    .line 2834
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 2835
    invoke-virtual {p2}, Lu/aly/ai;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2836
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 2838
    :cond_0
    invoke-virtual {p2}, Lu/aly/ai;->l()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2839
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 2841
    :cond_1
    invoke-virtual {p2}, Lu/aly/ai;->o()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2842
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 2844
    :cond_2
    invoke-virtual {p2}, Lu/aly/ai;->A()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2845
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 2847
    :cond_3
    invoke-virtual {p2}, Lu/aly/ai;->D()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2848
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 2850
    :cond_4
    invoke-virtual {p2}, Lu/aly/ai;->G()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2851
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 2853
    :cond_5
    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lu/aly/bS;->a(Ljava/util/BitSet;I)V

    .line 2854
    invoke-virtual {p2}, Lu/aly/ai;->i()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2855
    iget-object v0, p2, Lu/aly/ai;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/bS;->a(Ljava/lang/String;)V

    .line 2857
    :cond_6
    invoke-virtual {p2}, Lu/aly/ai;->l()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2858
    iget v0, p2, Lu/aly/ai;->c:I

    invoke-virtual {p1, v0}, Lu/aly/bS;->a(I)V

    .line 2860
    :cond_7
    invoke-virtual {p2}, Lu/aly/ai;->o()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2861
    iget-object v0, p2, Lu/aly/ai;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/bS;->a(Ljava/lang/String;)V

    .line 2863
    :cond_8
    invoke-virtual {p2}, Lu/aly/ai;->A()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2864
    iget-object v0, p2, Lu/aly/ai;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/bS;->a(Ljava/lang/String;)V

    .line 2866
    :cond_9
    invoke-virtual {p2}, Lu/aly/ai;->D()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2867
    iget-object v0, p2, Lu/aly/ai;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/bS;->a(Ljava/lang/String;)V

    .line 2869
    :cond_a
    invoke-virtual {p2}, Lu/aly/ai;->G()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2870
    iget v0, p2, Lu/aly/ai;->j:I

    invoke-virtual {p1, v0}, Lu/aly/bS;->a(I)V

    .line 1
    :cond_b
    return-void
.end method
