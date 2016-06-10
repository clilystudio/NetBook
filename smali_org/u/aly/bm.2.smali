.class final Lu/aly/bm;
.super Lu/aly/bW;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/bW",
        "<",
        "Lu/aly/bg;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 463
    invoke-direct {p0}, Lu/aly/bW;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 463
    invoke-direct {p0}, Lu/aly/bm;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lu/aly/bN;Lu/aly/bz;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1
    check-cast p2, Lu/aly/bg;

    .line 1498
    check-cast p1, Lu/aly/bS;

    .line 1499
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lu/aly/bS;->b(I)Ljava/util/BitSet;

    move-result-object v0

    .line 1500
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1501
    invoke-virtual {p1}, Lu/aly/bS;->m()I

    move-result v1

    invoke-static {v1}, Lu/aly/ap;->a(I)Lu/aly/ap;

    move-result-object v1

    iput-object v1, p2, Lu/aly/bg;->a:Lu/aly/ap;

    .line 1502
    invoke-virtual {p2, v2}, Lu/aly/bg;->a(Z)V

    .line 1504
    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1505
    invoke-virtual {p1}, Lu/aly/bS;->m()I

    move-result v1

    iput v1, p2, Lu/aly/bg;->b:I

    .line 1506
    invoke-virtual {p2, v2}, Lu/aly/bg;->b(Z)V

    .line 1508
    :cond_1
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1509
    invoke-virtual {p1}, Lu/aly/bS;->p()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lu/aly/bg;->c:Ljava/lang/String;

    .line 1510
    invoke-virtual {p2, v2}, Lu/aly/bg;->c(Z)V

    .line 1512
    :cond_2
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1513
    invoke-virtual {p1}, Lu/aly/bS;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bg;->d:Ljava/lang/String;

    .line 1514
    invoke-virtual {p2, v2}, Lu/aly/bg;->d(Z)V

    .line 1
    :cond_3
    return-void
.end method

.method public final synthetic b(Lu/aly/bN;Lu/aly/bz;)V
    .locals 2

    .prologue
    .line 1
    check-cast p2, Lu/aly/bg;

    .line 2467
    check-cast p1, Lu/aly/bS;

    .line 2468
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 2469
    invoke-virtual {p2}, Lu/aly/bg;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2470
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 2472
    :cond_0
    invoke-virtual {p2}, Lu/aly/bg;->i()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2473
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 2475
    :cond_1
    invoke-virtual {p2}, Lu/aly/bg;->l()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2476
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 2478
    :cond_2
    invoke-virtual {p2}, Lu/aly/bg;->o()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2479
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 2481
    :cond_3
    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lu/aly/bS;->a(Ljava/util/BitSet;I)V

    .line 2482
    invoke-virtual {p2}, Lu/aly/bg;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2483
    iget-object v0, p2, Lu/aly/bg;->a:Lu/aly/ap;

    invoke-virtual {v0}, Lu/aly/ap;->a()I

    move-result v0

    invoke-virtual {p1, v0}, Lu/aly/bS;->a(I)V

    .line 2485
    :cond_4
    invoke-virtual {p2}, Lu/aly/bg;->i()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2486
    iget v0, p2, Lu/aly/bg;->b:I

    invoke-virtual {p1, v0}, Lu/aly/bS;->a(I)V

    .line 2488
    :cond_5
    invoke-virtual {p2}, Lu/aly/bg;->l()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2489
    iget-object v0, p2, Lu/aly/bg;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/bS;->a(Ljava/lang/String;)V

    .line 2491
    :cond_6
    invoke-virtual {p2}, Lu/aly/bg;->o()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2492
    iget-object v0, p2, Lu/aly/bg;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/bS;->a(Ljava/lang/String;)V

    .line 1
    :cond_7
    return-void
.end method
