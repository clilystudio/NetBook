.class public final Lorg/mozilla/universalchardet/prober/e;
.super Lorg/mozilla/universalchardet/prober/CharsetProber;


# static fields
.field private static final e:Lorg/mozilla/universalchardet/prober/d/g;

.field private static final f:Lorg/mozilla/universalchardet/prober/d/h;

.field private static final g:Lorg/mozilla/universalchardet/prober/d/i;

.field private static final h:Lorg/mozilla/universalchardet/prober/d/j;


# instance fields
.field private a:[Lorg/mozilla/universalchardet/prober/d/b;

.field private b:I

.field private c:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/mozilla/universalchardet/prober/d/g;

    invoke-direct {v0}, Lorg/mozilla/universalchardet/prober/d/g;-><init>()V

    sput-object v0, Lorg/mozilla/universalchardet/prober/e;->e:Lorg/mozilla/universalchardet/prober/d/g;

    new-instance v0, Lorg/mozilla/universalchardet/prober/d/h;

    invoke-direct {v0}, Lorg/mozilla/universalchardet/prober/d/h;-><init>()V

    sput-object v0, Lorg/mozilla/universalchardet/prober/e;->f:Lorg/mozilla/universalchardet/prober/d/h;

    new-instance v0, Lorg/mozilla/universalchardet/prober/d/i;

    invoke-direct {v0}, Lorg/mozilla/universalchardet/prober/d/i;-><init>()V

    sput-object v0, Lorg/mozilla/universalchardet/prober/e;->g:Lorg/mozilla/universalchardet/prober/d/i;

    new-instance v0, Lorg/mozilla/universalchardet/prober/d/j;

    invoke-direct {v0}, Lorg/mozilla/universalchardet/prober/d/j;-><init>()V

    sput-object v0, Lorg/mozilla/universalchardet/prober/e;->h:Lorg/mozilla/universalchardet/prober/d/j;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lorg/mozilla/universalchardet/prober/CharsetProber;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [Lorg/mozilla/universalchardet/prober/d/b;

    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/e;->a:[Lorg/mozilla/universalchardet/prober/d/b;

    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/e;->a:[Lorg/mozilla/universalchardet/prober/d/b;

    const/4 v1, 0x0

    new-instance v2, Lorg/mozilla/universalchardet/prober/d/b;

    sget-object v3, Lorg/mozilla/universalchardet/prober/e;->e:Lorg/mozilla/universalchardet/prober/d/g;

    invoke-direct {v2, v3}, Lorg/mozilla/universalchardet/prober/d/b;-><init>(Lorg/mozilla/universalchardet/prober/d/m;)V

    aput-object v2, v0, v1

    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/e;->a:[Lorg/mozilla/universalchardet/prober/d/b;

    const/4 v1, 0x1

    new-instance v2, Lorg/mozilla/universalchardet/prober/d/b;

    sget-object v3, Lorg/mozilla/universalchardet/prober/e;->f:Lorg/mozilla/universalchardet/prober/d/h;

    invoke-direct {v2, v3}, Lorg/mozilla/universalchardet/prober/d/b;-><init>(Lorg/mozilla/universalchardet/prober/d/m;)V

    aput-object v2, v0, v1

    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/e;->a:[Lorg/mozilla/universalchardet/prober/d/b;

    const/4 v1, 0x2

    new-instance v2, Lorg/mozilla/universalchardet/prober/d/b;

    sget-object v3, Lorg/mozilla/universalchardet/prober/e;->g:Lorg/mozilla/universalchardet/prober/d/i;

    invoke-direct {v2, v3}, Lorg/mozilla/universalchardet/prober/d/b;-><init>(Lorg/mozilla/universalchardet/prober/d/m;)V

    aput-object v2, v0, v1

    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/e;->a:[Lorg/mozilla/universalchardet/prober/d/b;

    const/4 v1, 0x3

    new-instance v2, Lorg/mozilla/universalchardet/prober/d/b;

    sget-object v3, Lorg/mozilla/universalchardet/prober/e;->h:Lorg/mozilla/universalchardet/prober/d/j;

    invoke-direct {v2, v3}, Lorg/mozilla/universalchardet/prober/d/b;-><init>(Lorg/mozilla/universalchardet/prober/d/m;)V

    aput-object v2, v0, v1

    invoke-virtual {p0}, Lorg/mozilla/universalchardet/prober/e;->d()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/e;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final a([BII)Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;
    .locals 6

    add-int v1, p2, p3

    :goto_0
    if-ge p2, v1, :cond_4

    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/e;->c:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    sget-object v2, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->DETECTING:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    if-ne v0, v2, :cond_4

    iget v0, p0, Lorg/mozilla/universalchardet/prober/e;->b:I

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_3

    iget-object v2, p0, Lorg/mozilla/universalchardet/prober/e;->a:[Lorg/mozilla/universalchardet/prober/d/b;

    aget-object v2, v2, v0

    aget-byte v3, p1, p2

    invoke-virtual {v2, v3}, Lorg/mozilla/universalchardet/prober/d/b;->a(B)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    iget v2, p0, Lorg/mozilla/universalchardet/prober/e;->b:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/mozilla/universalchardet/prober/e;->b:I

    iget v2, p0, Lorg/mozilla/universalchardet/prober/e;->b:I

    if-gtz v2, :cond_0

    sget-object v0, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->NOT_ME:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/e;->c:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/e;->c:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    :goto_2
    return-object v0

    :cond_0
    iget v2, p0, Lorg/mozilla/universalchardet/prober/e;->b:I

    if-eq v0, v2, :cond_1

    iget-object v2, p0, Lorg/mozilla/universalchardet/prober/e;->a:[Lorg/mozilla/universalchardet/prober/d/b;

    iget v3, p0, Lorg/mozilla/universalchardet/prober/e;->b:I

    aget-object v2, v2, v3

    iget-object v3, p0, Lorg/mozilla/universalchardet/prober/e;->a:[Lorg/mozilla/universalchardet/prober/d/b;

    iget v4, p0, Lorg/mozilla/universalchardet/prober/e;->b:I

    iget-object v5, p0, Lorg/mozilla/universalchardet/prober/e;->a:[Lorg/mozilla/universalchardet/prober/d/b;

    aget-object v5, v5, v0

    aput-object v5, v3, v4

    iget-object v3, p0, Lorg/mozilla/universalchardet/prober/e;->a:[Lorg/mozilla/universalchardet/prober/d/b;

    aput-object v2, v3, v0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    sget-object v1, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->FOUND_IT:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    iput-object v1, p0, Lorg/mozilla/universalchardet/prober/e;->c:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    iget-object v1, p0, Lorg/mozilla/universalchardet/prober/e;->a:[Lorg/mozilla/universalchardet/prober/d/b;

    aget-object v0, v1, v0

    invoke-virtual {v0}, Lorg/mozilla/universalchardet/prober/d/b;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/e;->d:Ljava/lang/String;

    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/e;->c:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    goto :goto_2

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/e;->c:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    goto :goto_2
.end method

.method public final b()F
    .locals 1

    const v0, 0x3f7d70a4    # 0.99f

    return v0
.end method

.method public final c()Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/e;->c:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    return-object v0
.end method

.method public final d()V
    .locals 2

    sget-object v0, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->DETECTING:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/e;->c:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/mozilla/universalchardet/prober/e;->a:[Lorg/mozilla/universalchardet/prober/d/b;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/mozilla/universalchardet/prober/e;->a:[Lorg/mozilla/universalchardet/prober/d/b;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/mozilla/universalchardet/prober/d/b;->b()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/e;->a:[Lorg/mozilla/universalchardet/prober/d/b;

    array-length v0, v0

    iput v0, p0, Lorg/mozilla/universalchardet/prober/e;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/e;->d:Ljava/lang/String;

    return-void
.end method
