.class final Lu/aly/B;
.super Lu/aly/bW;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/bW",
        "<",
        "Lu/aly/aq;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 457
    invoke-direct {p0}, Lu/aly/bW;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 457
    invoke-direct {p0}, Lu/aly/B;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lu/aly/bN;Lu/aly/bz;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1
    check-cast p2, Lu/aly/aq;

    .line 1477
    check-cast p1, Lu/aly/bS;

    .line 1478
    invoke-virtual {p1}, Lu/aly/bS;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/aq;->a:Ljava/lang/String;

    .line 1479
    invoke-virtual {p2, v2}, Lu/aly/aq;->a(Z)V

    .line 1480
    invoke-virtual {p1}, Lu/aly/bS;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/aq;->c:Ljava/lang/String;

    .line 1481
    invoke-virtual {p2, v2}, Lu/aly/aq;->c(Z)V

    .line 1482
    invoke-virtual {p1}, Lu/aly/bS;->n()J

    move-result-wide v0

    iput-wide v0, p2, Lu/aly/aq;->d:J

    .line 1483
    invoke-virtual {p2, v2}, Lu/aly/aq;->d(Z)V

    .line 1484
    invoke-virtual {p1, v2}, Lu/aly/bS;->b(I)Ljava/util/BitSet;

    move-result-object v0

    .line 1485
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1486
    invoke-virtual {p1}, Lu/aly/bS;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/aq;->b:Ljava/lang/String;

    .line 1487
    invoke-virtual {p2, v2}, Lu/aly/aq;->b(Z)V

    .line 1
    :cond_0
    return-void
.end method

.method public final synthetic b(Lu/aly/bN;Lu/aly/bz;)V
    .locals 2

    .prologue
    .line 1
    check-cast p2, Lu/aly/aq;

    .line 2461
    check-cast p1, Lu/aly/bS;

    .line 2462
    iget-object v0, p2, Lu/aly/aq;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/bS;->a(Ljava/lang/String;)V

    .line 2463
    iget-object v0, p2, Lu/aly/aq;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/bS;->a(Ljava/lang/String;)V

    .line 2464
    iget-wide v0, p2, Lu/aly/aq;->d:J

    invoke-virtual {p1, v0, v1}, Lu/aly/bS;->a(J)V

    .line 2465
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 2466
    invoke-virtual {p2}, Lu/aly/aq;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2467
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 2469
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lu/aly/bS;->a(Ljava/util/BitSet;I)V

    .line 2470
    invoke-virtual {p2}, Lu/aly/aq;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2471
    iget-object v0, p2, Lu/aly/aq;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/bS;->a(Ljava/lang/String;)V

    .line 1
    :cond_1
    return-void
.end method
