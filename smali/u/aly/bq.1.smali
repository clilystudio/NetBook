.class final Lu/aly/bq;
.super Lu/aly/bW;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/bW",
        "<",
        "Lu/aly/bh;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 765
    invoke-direct {p0}, Lu/aly/bW;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 765
    invoke-direct {p0}, Lu/aly/bq;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lu/aly/bN;Lu/aly/bz;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1
    check-cast p2, Lu/aly/bh;

    .line 1783
    check-cast p1, Lu/aly/bS;

    .line 1784
    invoke-virtual {p1}, Lu/aly/bS;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bh;->a:Ljava/lang/String;

    .line 1785
    invoke-virtual {p2, v1}, Lu/aly/bh;->a(Z)V

    .line 1786
    invoke-virtual {p1}, Lu/aly/bS;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bh;->b:Ljava/lang/String;

    .line 1787
    invoke-virtual {p2, v1}, Lu/aly/bh;->b(Z)V

    .line 1788
    invoke-virtual {p1}, Lu/aly/bS;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bh;->c:Ljava/lang/String;

    .line 1789
    invoke-virtual {p2, v1}, Lu/aly/bh;->c(Z)V

    .line 1790
    invoke-virtual {p1}, Lu/aly/bS;->m()I

    move-result v0

    iput v0, p2, Lu/aly/bh;->d:I

    .line 1791
    invoke-virtual {p2, v1}, Lu/aly/bh;->d(Z)V

    .line 1792
    invoke-virtual {p1}, Lu/aly/bS;->m()I

    move-result v0

    iput v0, p2, Lu/aly/bh;->e:I

    .line 1793
    invoke-virtual {p2, v1}, Lu/aly/bh;->e(Z)V

    .line 1794
    invoke-virtual {p1}, Lu/aly/bS;->m()I

    move-result v0

    iput v0, p2, Lu/aly/bh;->f:I

    .line 1795
    invoke-virtual {p2, v1}, Lu/aly/bh;->f(Z)V

    .line 1796
    invoke-virtual {p1}, Lu/aly/bS;->q()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bh;->g:Ljava/nio/ByteBuffer;

    .line 1797
    invoke-virtual {p2, v1}, Lu/aly/bh;->g(Z)V

    .line 1798
    invoke-virtual {p1}, Lu/aly/bS;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bh;->h:Ljava/lang/String;

    .line 1799
    invoke-virtual {p2, v1}, Lu/aly/bh;->h(Z)V

    .line 1800
    invoke-virtual {p1}, Lu/aly/bS;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bh;->i:Ljava/lang/String;

    .line 1801
    invoke-virtual {p2, v1}, Lu/aly/bh;->i(Z)V

    .line 1
    return-void
.end method

.method public final synthetic b(Lu/aly/bN;Lu/aly/bz;)V
    .locals 1

    .prologue
    .line 1
    check-cast p2, Lu/aly/bh;

    .line 2769
    check-cast p1, Lu/aly/bS;

    .line 2770
    iget-object v0, p2, Lu/aly/bh;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/bS;->a(Ljava/lang/String;)V

    .line 2771
    iget-object v0, p2, Lu/aly/bh;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/bS;->a(Ljava/lang/String;)V

    .line 2772
    iget-object v0, p2, Lu/aly/bh;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/bS;->a(Ljava/lang/String;)V

    .line 2773
    iget v0, p2, Lu/aly/bh;->d:I

    invoke-virtual {p1, v0}, Lu/aly/bS;->a(I)V

    .line 2774
    iget v0, p2, Lu/aly/bh;->e:I

    invoke-virtual {p1, v0}, Lu/aly/bS;->a(I)V

    .line 2775
    iget v0, p2, Lu/aly/bh;->f:I

    invoke-virtual {p1, v0}, Lu/aly/bS;->a(I)V

    .line 2776
    iget-object v0, p2, Lu/aly/bh;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Lu/aly/bS;->a(Ljava/nio/ByteBuffer;)V

    .line 2777
    iget-object v0, p2, Lu/aly/bh;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/bS;->a(Ljava/lang/String;)V

    .line 2778
    iget-object v0, p2, Lu/aly/bh;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/bS;->a(Ljava/lang/String;)V

    .line 1
    return-void
.end method
