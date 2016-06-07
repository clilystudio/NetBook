.class final Lu/aly/F;
.super Lu/aly/bW;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/bW",
        "<",
        "Lu/aly/ar;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 391
    invoke-direct {p0}, Lu/aly/bW;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 391
    invoke-direct {p0}, Lu/aly/F;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lu/aly/bN;Lu/aly/bz;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1
    check-cast p2, Lu/aly/ar;

    .line 1403
    check-cast p1, Lu/aly/bS;

    .line 1404
    invoke-virtual {p1}, Lu/aly/bS;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/ar;->a:Ljava/lang/String;

    .line 1405
    invoke-virtual {p2, v2}, Lu/aly/ar;->a(Z)V

    .line 1406
    invoke-virtual {p1}, Lu/aly/bS;->n()J

    move-result-wide v0

    iput-wide v0, p2, Lu/aly/ar;->b:J

    .line 1407
    invoke-virtual {p2, v2}, Lu/aly/ar;->b(Z)V

    .line 1408
    invoke-virtual {p1}, Lu/aly/bS;->m()I

    move-result v0

    iput v0, p2, Lu/aly/ar;->c:I

    .line 1409
    invoke-virtual {p2, v2}, Lu/aly/ar;->c(Z)V

    .line 1
    return-void
.end method

.method public final synthetic b(Lu/aly/bN;Lu/aly/bz;)V
    .locals 2

    .prologue
    .line 1
    check-cast p2, Lu/aly/ar;

    .line 2395
    check-cast p1, Lu/aly/bS;

    .line 2396
    iget-object v0, p2, Lu/aly/ar;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/bS;->a(Ljava/lang/String;)V

    .line 2397
    iget-wide v0, p2, Lu/aly/ar;->b:J

    invoke-virtual {p1, v0, v1}, Lu/aly/bS;->a(J)V

    .line 2398
    iget v0, p2, Lu/aly/ar;->c:I

    invoke-virtual {p1, v0}, Lu/aly/bS;->a(I)V

    .line 1
    return-void
.end method
