.class public final Lorg/mozilla/universalchardet/prober/l;
.super Lorg/mozilla/universalchardet/prober/CharsetProber;


# instance fields
.field private a:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

.field private b:Lorg/mozilla/universalchardet/prober/c/l;

.field private c:Z

.field private d:S

.field private e:I

.field private f:[I

.field private g:I

.field private h:I

.field private i:Lorg/mozilla/universalchardet/prober/CharsetProber;


# direct methods
.method public constructor <init>(Lorg/mozilla/universalchardet/prober/c/l;)V
    .locals 1

    invoke-direct {p0}, Lorg/mozilla/universalchardet/prober/CharsetProber;-><init>()V

    iput-object p1, p0, Lorg/mozilla/universalchardet/prober/l;->b:Lorg/mozilla/universalchardet/prober/c/l;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mozilla/universalchardet/prober/l;->c:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/l;->i:Lorg/mozilla/universalchardet/prober/CharsetProber;

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/l;->f:[I

    invoke-virtual {p0}, Lorg/mozilla/universalchardet/prober/l;->d()V

    return-void
.end method

.method public constructor <init>(Lorg/mozilla/universalchardet/prober/c/l;ZLorg/mozilla/universalchardet/prober/CharsetProber;)V
    .locals 1

    invoke-direct {p0}, Lorg/mozilla/universalchardet/prober/CharsetProber;-><init>()V

    iput-object p1, p0, Lorg/mozilla/universalchardet/prober/l;->b:Lorg/mozilla/universalchardet/prober/c/l;

    iput-boolean p2, p0, Lorg/mozilla/universalchardet/prober/l;->c:Z

    iput-object p3, p0, Lorg/mozilla/universalchardet/prober/l;->i:Lorg/mozilla/universalchardet/prober/CharsetProber;

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/l;->f:[I

    invoke-virtual {p0}, Lorg/mozilla/universalchardet/prober/l;->d()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/l;->i:Lorg/mozilla/universalchardet/prober/CharsetProber;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/l;->b:Lorg/mozilla/universalchardet/prober/c/l;

    invoke-virtual {v0}, Lorg/mozilla/universalchardet/prober/c/l;->b()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/l;->i:Lorg/mozilla/universalchardet/prober/CharsetProber;

    invoke-virtual {v0}, Lorg/mozilla/universalchardet/prober/CharsetProber;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final a([BII)Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;
    .locals 7

    const/16 v6, 0x40

    add-int v0, p2, p3

    :goto_0
    if-ge p2, v0, :cond_3

    iget-object v1, p0, Lorg/mozilla/universalchardet/prober/l;->b:Lorg/mozilla/universalchardet/prober/c/l;

    aget-byte v2, p1, p2

    invoke-virtual {v1, v2}, Lorg/mozilla/universalchardet/prober/c/l;->a(B)S

    move-result v1

    const/16 v2, 0xfa

    if-ge v1, v2, :cond_0

    iget v2, p0, Lorg/mozilla/universalchardet/prober/l;->g:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/mozilla/universalchardet/prober/l;->g:I

    :cond_0
    if-ge v1, v6, :cond_1

    iget v2, p0, Lorg/mozilla/universalchardet/prober/l;->h:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/mozilla/universalchardet/prober/l;->h:I

    iget-short v2, p0, Lorg/mozilla/universalchardet/prober/l;->d:S

    if-ge v2, v6, :cond_1

    iget v2, p0, Lorg/mozilla/universalchardet/prober/l;->e:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/mozilla/universalchardet/prober/l;->e:I

    iget-boolean v2, p0, Lorg/mozilla/universalchardet/prober/l;->c:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/mozilla/universalchardet/prober/l;->f:[I

    iget-object v3, p0, Lorg/mozilla/universalchardet/prober/l;->b:Lorg/mozilla/universalchardet/prober/c/l;

    iget-short v4, p0, Lorg/mozilla/universalchardet/prober/l;->d:S

    shl-int/lit8 v4, v4, 0x6

    add-int/2addr v4, v1

    invoke-virtual {v3, v4}, Lorg/mozilla/universalchardet/prober/c/l;->a(I)B

    move-result v3

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    :cond_1
    :goto_1
    iput-short v1, p0, Lorg/mozilla/universalchardet/prober/l;->d:S

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lorg/mozilla/universalchardet/prober/l;->f:[I

    iget-object v3, p0, Lorg/mozilla/universalchardet/prober/l;->b:Lorg/mozilla/universalchardet/prober/c/l;

    shl-int/lit8 v4, v1, 0x6

    iget-short v5, p0, Lorg/mozilla/universalchardet/prober/l;->d:S

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Lorg/mozilla/universalchardet/prober/c/l;->a(I)B

    move-result v3

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/l;->a:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    sget-object v1, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->DETECTING:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    if-ne v0, v1, :cond_4

    iget v0, p0, Lorg/mozilla/universalchardet/prober/l;->e:I

    const/16 v1, 0x400

    if-le v0, v1, :cond_4

    invoke-virtual {p0}, Lorg/mozilla/universalchardet/prober/l;->b()F

    move-result v0

    const v1, 0x3f733333    # 0.95f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_5

    sget-object v0, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->FOUND_IT:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/l;->a:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    :cond_4
    :goto_2
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/l;->a:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    return-object v0

    :cond_5
    const v1, 0x3d4ccccd    # 0.05f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    sget-object v0, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->NOT_ME:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/l;->a:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    goto :goto_2
.end method

.method public final b()F
    .locals 3

    const/high16 v2, 0x3f800000    # 1.0f

    iget v0, p0, Lorg/mozilla/universalchardet/prober/l;->e:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/l;->f:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, v2

    iget v1, p0, Lorg/mozilla/universalchardet/prober/l;->e:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lorg/mozilla/universalchardet/prober/l;->b:Lorg/mozilla/universalchardet/prober/c/l;

    invoke-virtual {v1}, Lorg/mozilla/universalchardet/prober/c/l;->a()F

    move-result v1

    div-float/2addr v0, v1

    iget v1, p0, Lorg/mozilla/universalchardet/prober/l;->h:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/mozilla/universalchardet/prober/l;->g:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    cmpl-float v1, v0, v2

    if-ltz v1, :cond_0

    const v0, 0x3f7d70a4    # 0.99f

    :cond_0
    :goto_0
    return v0

    :cond_1
    const v0, 0x3c23d70a    # 0.01f

    goto :goto_0
.end method

.method public final c()Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/l;->a:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    return-object v0
.end method

.method public final d()V
    .locals 3

    const/4 v1, 0x0

    sget-object v0, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->DETECTING:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/l;->a:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    const/16 v0, 0xff

    iput-short v0, p0, Lorg/mozilla/universalchardet/prober/l;->d:S

    move v0, v1

    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lorg/mozilla/universalchardet/prober/l;->f:[I

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput v1, p0, Lorg/mozilla/universalchardet/prober/l;->e:I

    iput v1, p0, Lorg/mozilla/universalchardet/prober/l;->g:I

    iput v1, p0, Lorg/mozilla/universalchardet/prober/l;->h:I

    return-void
.end method
