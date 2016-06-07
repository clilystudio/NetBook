.class final Lu/aly/R;
.super Lu/aly/bW;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/bW",
        "<",
        "Lu/aly/au;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 396
    invoke-direct {p0}, Lu/aly/bW;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 396
    invoke-direct {p0}, Lu/aly/R;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lu/aly/bN;Lu/aly/bz;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1
    check-cast p2, Lu/aly/au;

    .line 1415
    check-cast p1, Lu/aly/bS;

    .line 1416
    invoke-virtual {p1}, Lu/aly/bS;->n()J

    move-result-wide v0

    iput-wide v0, p2, Lu/aly/au;->b:J

    .line 1417
    invoke-virtual {p2, v2}, Lu/aly/au;->b(Z)V

    .line 1418
    invoke-virtual {p1}, Lu/aly/bS;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/au;->c:Ljava/lang/String;

    .line 1419
    invoke-virtual {p2, v2}, Lu/aly/au;->c(Z)V

    .line 1420
    invoke-virtual {p1, v2}, Lu/aly/bS;->b(I)Ljava/util/BitSet;

    move-result-object v0

    .line 1421
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1422
    invoke-virtual {p1}, Lu/aly/bS;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/au;->a:Ljava/lang/String;

    .line 1423
    invoke-virtual {p2, v2}, Lu/aly/au;->a(Z)V

    .line 1
    :cond_0
    return-void
.end method

.method public final synthetic b(Lu/aly/bN;Lu/aly/bz;)V
    .locals 2

    .prologue
    .line 1
    check-cast p2, Lu/aly/au;

    .line 2400
    check-cast p1, Lu/aly/bS;

    .line 2401
    iget-wide v0, p2, Lu/aly/au;->b:J

    invoke-virtual {p1, v0, v1}, Lu/aly/bS;->a(J)V

    .line 2402
    iget-object v0, p2, Lu/aly/au;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/bS;->a(Ljava/lang/String;)V

    .line 2403
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 2404
    invoke-virtual {p2}, Lu/aly/au;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2405
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 2407
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lu/aly/bS;->a(Ljava/util/BitSet;I)V

    .line 2408
    invoke-virtual {p2}, Lu/aly/au;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2409
    iget-object v0, p2, Lu/aly/au;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/bS;->a(Ljava/lang/String;)V

    .line 1
    :cond_1
    return-void
.end method
