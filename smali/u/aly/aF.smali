.class final Lu/aly/aF;
.super Lu/aly/bW;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/bW",
        "<",
        "Lu/aly/ay;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 335
    invoke-direct {p0}, Lu/aly/bW;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 335
    invoke-direct {p0}, Lu/aly/aF;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lu/aly/bN;Lu/aly/bz;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1
    check-cast p2, Lu/aly/ay;

    .line 1346
    check-cast p1, Lu/aly/bS;

    .line 1347
    invoke-virtual {p1}, Lu/aly/bS;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/ay;->a:Ljava/lang/String;

    .line 1348
    invoke-virtual {p2, v2}, Lu/aly/ay;->a(Z)V

    .line 1349
    invoke-virtual {p1}, Lu/aly/bS;->n()J

    move-result-wide v0

    iput-wide v0, p2, Lu/aly/ay;->b:J

    .line 1350
    invoke-virtual {p2, v2}, Lu/aly/ay;->b(Z)V

    .line 1
    return-void
.end method

.method public final synthetic b(Lu/aly/bN;Lu/aly/bz;)V
    .locals 2

    .prologue
    .line 1
    check-cast p2, Lu/aly/ay;

    .line 2339
    check-cast p1, Lu/aly/bS;

    .line 2340
    iget-object v0, p2, Lu/aly/ay;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/bS;->a(Ljava/lang/String;)V

    .line 2341
    iget-wide v0, p2, Lu/aly/ay;->b:J

    invoke-virtual {p1, v0, v1}, Lu/aly/bS;->a(J)V

    .line 1
    return-void
.end method
