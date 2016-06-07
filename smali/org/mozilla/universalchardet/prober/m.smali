.class public final Lorg/mozilla/universalchardet/prober/m;
.super Lorg/mozilla/universalchardet/prober/CharsetProber;


# static fields
.field private static final d:Lorg/mozilla/universalchardet/prober/d/m;


# instance fields
.field private a:Lorg/mozilla/universalchardet/prober/d/b;

.field private b:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/mozilla/universalchardet/prober/d/n;

    invoke-direct {v0}, Lorg/mozilla/universalchardet/prober/d/n;-><init>()V

    sput-object v0, Lorg/mozilla/universalchardet/prober/m;->d:Lorg/mozilla/universalchardet/prober/d/m;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lorg/mozilla/universalchardet/prober/CharsetProber;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/mozilla/universalchardet/prober/m;->c:I

    new-instance v0, Lorg/mozilla/universalchardet/prober/d/b;

    sget-object v1, Lorg/mozilla/universalchardet/prober/m;->d:Lorg/mozilla/universalchardet/prober/d/m;

    invoke-direct {v0, v1}, Lorg/mozilla/universalchardet/prober/d/b;-><init>(Lorg/mozilla/universalchardet/prober/d/m;)V

    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/m;->a:Lorg/mozilla/universalchardet/prober/d/b;

    invoke-virtual {p0}, Lorg/mozilla/universalchardet/prober/m;->d()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/mozilla/universalchardet/a;->u:Ljava/lang/String;

    return-object v0
.end method

.method public final a([BII)Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;
    .locals 4

    const/4 v3, 0x2

    add-int v0, p2, p3

    :goto_0
    if-ge p2, v0, :cond_0

    iget-object v1, p0, Lorg/mozilla/universalchardet/prober/m;->a:Lorg/mozilla/universalchardet/prober/d/b;

    aget-byte v2, p1, p2

    invoke-virtual {v1, v2}, Lorg/mozilla/universalchardet/prober/d/b;->a(B)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    sget-object v0, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->NOT_ME:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/m;->b:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    :cond_0
    :goto_1
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/m;->b:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    sget-object v1, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->DETECTING:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/mozilla/universalchardet/prober/m;->b()F

    move-result v0

    const v1, 0x3f733333    # 0.95f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    sget-object v0, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->FOUND_IT:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/m;->b:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    :cond_1
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/m;->b:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    return-object v0

    :cond_2
    if-ne v1, v3, :cond_3

    sget-object v0, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->FOUND_IT:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/m;->b:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    goto :goto_1

    :cond_3
    if-nez v1, :cond_4

    iget-object v1, p0, Lorg/mozilla/universalchardet/prober/m;->a:Lorg/mozilla/universalchardet/prober/d/b;

    invoke-virtual {v1}, Lorg/mozilla/universalchardet/prober/d/b;->a()I

    move-result v1

    if-lt v1, v3, :cond_4

    iget v1, p0, Lorg/mozilla/universalchardet/prober/m;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/mozilla/universalchardet/prober/m;->c:I

    :cond_4
    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method public final b()F
    .locals 3

    const v1, 0x3f7d70a4    # 0.99f

    iget v0, p0, Lorg/mozilla/universalchardet/prober/m;->c:I

    const/4 v2, 0x6

    if-ge v0, v2, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lorg/mozilla/universalchardet/prober/m;->c:I

    if-ge v0, v2, :cond_0

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v1, v0, v1

    :cond_1
    return v1
.end method

.method public final c()Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/m;->b:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    return-object v0
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/m;->a:Lorg/mozilla/universalchardet/prober/d/b;

    invoke-virtual {v0}, Lorg/mozilla/universalchardet/prober/d/b;->b()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/mozilla/universalchardet/prober/m;->c:I

    sget-object v0, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->DETECTING:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/m;->b:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    return-void
.end method
