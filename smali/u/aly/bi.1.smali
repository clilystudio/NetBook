.class final Lu/aly/bi;
.super Lu/aly/bW;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/bW",
        "<",
        "Lu/aly/bf;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 863
    invoke-direct {p0}, Lu/aly/bW;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 863
    invoke-direct {p0}, Lu/aly/bi;-><init>()V

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
    check-cast p2, Lu/aly/bf;

    .line 1920
    check-cast p1, Lu/aly/bS;

    .line 1921
    new-instance v0, Lu/aly/aj;

    invoke-direct {v0}, Lu/aly/aj;-><init>()V

    iput-object v0, p2, Lu/aly/bf;->a:Lu/aly/aj;

    .line 1922
    iget-object v0, p2, Lu/aly/bf;->a:Lu/aly/aj;

    invoke-virtual {v0, p1}, Lu/aly/aj;->a(Lu/aly/bN;)V

    .line 1923
    invoke-virtual {p2, v6}, Lu/aly/bf;->a(Z)V

    .line 1924
    new-instance v0, Lu/aly/ai;

    invoke-direct {v0}, Lu/aly/ai;-><init>()V

    iput-object v0, p2, Lu/aly/bf;->b:Lu/aly/ai;

    .line 1925
    iget-object v0, p2, Lu/aly/bf;->b:Lu/aly/ai;

    invoke-virtual {v0, p1}, Lu/aly/ai;->a(Lu/aly/bN;)V

    .line 1926
    invoke-virtual {p2, v6}, Lu/aly/bf;->b(Z)V

    .line 1927
    new-instance v0, Lu/aly/ak;

    invoke-direct {v0}, Lu/aly/ak;-><init>()V

    iput-object v0, p2, Lu/aly/bf;->c:Lu/aly/ak;

    .line 1928
    iget-object v0, p2, Lu/aly/bf;->c:Lu/aly/ak;

    invoke-virtual {v0, p1}, Lu/aly/ak;->a(Lu/aly/bN;)V

    .line 1929
    invoke-virtual {p2, v6}, Lu/aly/bf;->c(Z)V

    .line 1930
    new-instance v0, Lu/aly/ax;

    invoke-direct {v0}, Lu/aly/ax;-><init>()V

    iput-object v0, p2, Lu/aly/bf;->d:Lu/aly/ax;

    .line 1931
    iget-object v0, p2, Lu/aly/bf;->d:Lu/aly/ax;

    invoke-virtual {v0, p1}, Lu/aly/ax;->a(Lu/aly/bN;)V

    .line 1932
    invoke-virtual {p2, v6}, Lu/aly/bf;->d(Z)V

    .line 1933
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lu/aly/bS;->b(I)Ljava/util/BitSet;

    move-result-object v2

    .line 1934
    invoke-virtual {v2, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1935
    new-instance v0, Lu/aly/ah;

    invoke-direct {v0}, Lu/aly/ah;-><init>()V

    iput-object v0, p2, Lu/aly/bf;->e:Lu/aly/ah;

    .line 1936
    iget-object v0, p2, Lu/aly/bf;->e:Lu/aly/ah;

    invoke-virtual {v0, p1}, Lu/aly/ah;->a(Lu/aly/bN;)V

    .line 1937
    invoke-virtual {p2, v6}, Lu/aly/bf;->e(Z)V

    .line 1939
    :cond_0
    invoke-virtual {v2, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1941
    new-instance v3, Lu/aly/bL;

    invoke-virtual {p1}, Lu/aly/bS;->m()I

    move-result v0

    invoke-direct {v3, v7, v0}, Lu/aly/bL;-><init>(BI)V

    .line 1942
    new-instance v0, Ljava/util/ArrayList;

    iget v4, v3, Lu/aly/bL;->b:I

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p2, Lu/aly/bf;->f:Ljava/util/List;

    move v0, v1

    .line 1943
    :goto_0
    iget v4, v3, Lu/aly/bL;->b:I

    if-lt v0, v4, :cond_5

    .line 1951
    invoke-virtual {p2, v6}, Lu/aly/bf;->f(Z)V

    .line 1953
    :cond_1
    const/4 v0, 0x2

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1955
    new-instance v0, Lu/aly/bL;

    invoke-virtual {p1}, Lu/aly/bS;->m()I

    move-result v3

    invoke-direct {v0, v7, v3}, Lu/aly/bL;-><init>(BI)V

    .line 1956
    new-instance v3, Ljava/util/ArrayList;

    iget v4, v0, Lu/aly/bL;->b:I

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p2, Lu/aly/bf;->g:Ljava/util/List;

    .line 1957
    :goto_1
    iget v3, v0, Lu/aly/bL;->b:I

    if-lt v1, v3, :cond_6

    .line 1965
    invoke-virtual {p2, v6}, Lu/aly/bf;->g(Z)V

    .line 1967
    :cond_2
    const/4 v0, 0x3

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1968
    new-instance v0, Lu/aly/at;

    invoke-direct {v0}, Lu/aly/at;-><init>()V

    iput-object v0, p2, Lu/aly/bf;->h:Lu/aly/at;

    .line 1969
    iget-object v0, p2, Lu/aly/bf;->h:Lu/aly/at;

    invoke-virtual {v0, p1}, Lu/aly/at;->a(Lu/aly/bN;)V

    .line 1970
    invoke-virtual {p2, v6}, Lu/aly/bf;->h(Z)V

    .line 1972
    :cond_3
    const/4 v0, 0x4

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1973
    new-instance v0, Lu/aly/as;

    invoke-direct {v0}, Lu/aly/as;-><init>()V

    iput-object v0, p2, Lu/aly/bf;->i:Lu/aly/as;

    .line 1974
    iget-object v0, p2, Lu/aly/bf;->i:Lu/aly/as;

    invoke-virtual {v0, p1}, Lu/aly/as;->a(Lu/aly/bN;)V

    .line 1975
    invoke-virtual {p2, v6}, Lu/aly/bf;->i(Z)V

    .line 1
    :cond_4
    return-void

    .line 1946
    :cond_5
    new-instance v4, Lu/aly/av;

    invoke-direct {v4}, Lu/aly/av;-><init>()V

    .line 1947
    invoke-virtual {v4, p1}, Lu/aly/av;->a(Lu/aly/bN;)V

    .line 1948
    iget-object v5, p2, Lu/aly/bf;->f:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1943
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1960
    :cond_6
    new-instance v3, Lu/aly/bd;

    invoke-direct {v3}, Lu/aly/bd;-><init>()V

    .line 1961
    invoke-virtual {v3, p1}, Lu/aly/bd;->a(Lu/aly/bN;)V

    .line 1962
    iget-object v4, p2, Lu/aly/bf;->g:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1957
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public final synthetic b(Lu/aly/bN;Lu/aly/bz;)V
    .locals 2

    .prologue
    .line 1
    check-cast p2, Lu/aly/bf;

    .line 2867
    check-cast p1, Lu/aly/bS;

    .line 2868
    iget-object v0, p2, Lu/aly/bf;->a:Lu/aly/aj;

    invoke-virtual {v0, p1}, Lu/aly/aj;->b(Lu/aly/bN;)V

    .line 2869
    iget-object v0, p2, Lu/aly/bf;->b:Lu/aly/ai;

    invoke-virtual {v0, p1}, Lu/aly/ai;->b(Lu/aly/bN;)V

    .line 2870
    iget-object v0, p2, Lu/aly/bf;->c:Lu/aly/ak;

    invoke-virtual {v0, p1}, Lu/aly/ak;->b(Lu/aly/bN;)V

    .line 2871
    iget-object v0, p2, Lu/aly/bf;->d:Lu/aly/ax;

    invoke-virtual {v0, p1}, Lu/aly/ax;->b(Lu/aly/bN;)V

    .line 2872
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 2873
    invoke-virtual {p2}, Lu/aly/bf;->r()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2874
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 2876
    :cond_0
    invoke-virtual {p2}, Lu/aly/bf;->w()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2877
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 2879
    :cond_1
    invoke-virtual {p2}, Lu/aly/bf;->B()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2880
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 2882
    :cond_2
    invoke-virtual {p2}, Lu/aly/bf;->E()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2883
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 2885
    :cond_3
    invoke-virtual {p2}, Lu/aly/bf;->H()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2886
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 2888
    :cond_4
    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lu/aly/bS;->a(Ljava/util/BitSet;I)V

    .line 2889
    invoke-virtual {p2}, Lu/aly/bf;->r()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2890
    iget-object v0, p2, Lu/aly/bf;->e:Lu/aly/ah;

    invoke-virtual {v0, p1}, Lu/aly/ah;->b(Lu/aly/bN;)V

    .line 2892
    :cond_5
    invoke-virtual {p2}, Lu/aly/bf;->w()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2894
    iget-object v0, p2, Lu/aly/bf;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lu/aly/bS;->a(I)V

    .line 2895
    iget-object v0, p2, Lu/aly/bf;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_a

    .line 2901
    :cond_6
    invoke-virtual {p2}, Lu/aly/bf;->B()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2903
    iget-object v0, p2, Lu/aly/bf;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lu/aly/bS;->a(I)V

    .line 2904
    iget-object v0, p2, Lu/aly/bf;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_b

    .line 2910
    :cond_7
    invoke-virtual {p2}, Lu/aly/bf;->E()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2911
    iget-object v0, p2, Lu/aly/bf;->h:Lu/aly/at;

    invoke-virtual {v0, p1}, Lu/aly/at;->b(Lu/aly/bN;)V

    .line 2913
    :cond_8
    invoke-virtual {p2}, Lu/aly/bf;->H()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2914
    iget-object v0, p2, Lu/aly/bf;->i:Lu/aly/as;

    invoke-virtual {v0, p1}, Lu/aly/as;->b(Lu/aly/bN;)V

    .line 1
    :cond_9
    return-void

    .line 2895
    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/av;

    .line 2897
    invoke-virtual {v0, p1}, Lu/aly/av;->b(Lu/aly/bN;)V

    goto :goto_0

    .line 2904
    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/bd;

    .line 2906
    invoke-virtual {v0, p1}, Lu/aly/bd;->b(Lu/aly/bN;)V

    goto :goto_1
.end method
