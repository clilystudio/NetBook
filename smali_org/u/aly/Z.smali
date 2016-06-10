.class final Lu/aly/Z;
.super Lu/aly/bW;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/bW",
        "<",
        "Lu/aly/aw;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 386
    invoke-direct {p0}, Lu/aly/bW;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 386
    invoke-direct {p0}, Lu/aly/Z;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lu/aly/bN;Lu/aly/bz;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1
    check-cast p2, Lu/aly/aw;

    .line 1398
    check-cast p1, Lu/aly/bS;

    .line 1399
    invoke-virtual {p1}, Lu/aly/bS;->o()D

    move-result-wide v0

    iput-wide v0, p2, Lu/aly/aw;->a:D

    .line 1400
    invoke-virtual {p2, v2}, Lu/aly/aw;->a(Z)V

    .line 1401
    invoke-virtual {p1}, Lu/aly/bS;->o()D

    move-result-wide v0

    iput-wide v0, p2, Lu/aly/aw;->b:D

    .line 1402
    invoke-virtual {p2, v2}, Lu/aly/aw;->b(Z)V

    .line 1403
    invoke-virtual {p1}, Lu/aly/bS;->n()J

    move-result-wide v0

    iput-wide v0, p2, Lu/aly/aw;->c:J

    .line 1404
    invoke-virtual {p2, v2}, Lu/aly/aw;->c(Z)V

    .line 1
    return-void
.end method

.method public final synthetic b(Lu/aly/bN;Lu/aly/bz;)V
    .locals 2

    .prologue
    .line 1
    check-cast p2, Lu/aly/aw;

    .line 2390
    check-cast p1, Lu/aly/bS;

    .line 2391
    iget-wide v0, p2, Lu/aly/aw;->a:D

    invoke-virtual {p1, v0, v1}, Lu/aly/bS;->a(D)V

    .line 2392
    iget-wide v0, p2, Lu/aly/aw;->b:D

    invoke-virtual {p1, v0, v1}, Lu/aly/bS;->a(D)V

    .line 2393
    iget-wide v0, p2, Lu/aly/aw;->c:J

    invoke-virtual {p1, v0, v1}, Lu/aly/bS;->a(J)V

    .line 1
    return-void
.end method
