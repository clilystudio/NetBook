.class final Lu/aly/aK;
.super Lu/aly/bW;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/bW",
        "<",
        "Lu/aly/ba;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 330
    invoke-direct {p0}, Lu/aly/bW;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 330
    invoke-direct {p0}, Lu/aly/aK;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lu/aly/bN;Lu/aly/bz;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1
    check-cast p2, Lu/aly/ba;

    .line 1341
    check-cast p1, Lu/aly/bS;

    .line 1342
    invoke-virtual {p1}, Lu/aly/bS;->m()I

    move-result v0

    iput v0, p2, Lu/aly/ba;->a:I

    .line 1343
    invoke-virtual {p2, v1}, Lu/aly/ba;->a(Z)V

    .line 1344
    invoke-virtual {p1}, Lu/aly/bS;->m()I

    move-result v0

    iput v0, p2, Lu/aly/ba;->b:I

    .line 1345
    invoke-virtual {p2, v1}, Lu/aly/ba;->b(Z)V

    .line 1
    return-void
.end method

.method public final synthetic b(Lu/aly/bN;Lu/aly/bz;)V
    .locals 1

    .prologue
    .line 1
    check-cast p2, Lu/aly/ba;

    .line 2334
    check-cast p1, Lu/aly/bS;

    .line 2335
    iget v0, p2, Lu/aly/ba;->a:I

    invoke-virtual {p1, v0}, Lu/aly/bS;->a(I)V

    .line 2336
    iget v0, p2, Lu/aly/ba;->b:I

    invoke-virtual {p1, v0}, Lu/aly/bS;->a(I)V

    .line 1
    return-void
.end method
