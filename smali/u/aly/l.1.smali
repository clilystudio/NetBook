.class final Lu/aly/l;
.super Lu/aly/bW;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/bW",
        "<",
        "Lu/aly/aj;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 388
    invoke-direct {p0}, Lu/aly/bW;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 388
    invoke-direct {p0}, Lu/aly/l;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lu/aly/bN;Lu/aly/bz;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1
    check-cast p2, Lu/aly/aj;

    .line 1407
    check-cast p1, Lu/aly/bS;

    .line 1408
    invoke-virtual {p1}, Lu/aly/bS;->m()I

    move-result v0

    iput v0, p2, Lu/aly/aj;->a:I

    .line 1409
    invoke-virtual {p2, v2}, Lu/aly/aj;->a(Z)V

    .line 1410
    invoke-virtual {p1}, Lu/aly/bS;->m()I

    move-result v0

    iput v0, p2, Lu/aly/aj;->b:I

    .line 1411
    invoke-virtual {p2, v2}, Lu/aly/aj;->b(Z)V

    .line 1412
    invoke-virtual {p1, v2}, Lu/aly/bS;->b(I)Ljava/util/BitSet;

    move-result-object v0

    .line 1413
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1414
    invoke-virtual {p1}, Lu/aly/bS;->m()I

    move-result v0

    iput v0, p2, Lu/aly/aj;->c:I

    .line 1415
    invoke-virtual {p2, v2}, Lu/aly/aj;->c(Z)V

    .line 1
    :cond_0
    return-void
.end method

.method public final synthetic b(Lu/aly/bN;Lu/aly/bz;)V
    .locals 2

    .prologue
    .line 1
    check-cast p2, Lu/aly/aj;

    .line 2392
    check-cast p1, Lu/aly/bS;

    .line 2393
    iget v0, p2, Lu/aly/aj;->a:I

    invoke-virtual {p1, v0}, Lu/aly/bS;->a(I)V

    .line 2394
    iget v0, p2, Lu/aly/aj;->b:I

    invoke-virtual {p1, v0}, Lu/aly/bS;->a(I)V

    .line 2395
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 2396
    invoke-virtual {p2}, Lu/aly/aj;->l()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2397
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 2399
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lu/aly/bS;->a(Ljava/util/BitSet;I)V

    .line 2400
    invoke-virtual {p2}, Lu/aly/aj;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2401
    iget v0, p2, Lu/aly/aj;->c:I

    invoke-virtual {p1, v0}, Lu/aly/bS;->a(I)V

    .line 1
    :cond_1
    return-void
.end method
