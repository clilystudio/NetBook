.class public final Lorg/mozilla/universalchardet/prober/g;
.super Lorg/mozilla/universalchardet/prober/CharsetProber;


# instance fields
.field private a:I

.field private b:I

.field private c:B

.field private d:B

.field private e:Lorg/mozilla/universalchardet/prober/CharsetProber;

.field private f:Lorg/mozilla/universalchardet/prober/CharsetProber;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lorg/mozilla/universalchardet/prober/CharsetProber;-><init>()V

    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/g;->e:Lorg/mozilla/universalchardet/prober/CharsetProber;

    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/g;->f:Lorg/mozilla/universalchardet/prober/CharsetProber;

    invoke-virtual {p0}, Lorg/mozilla/universalchardet/prober/g;->d()V

    return-void
.end method

.method private static a(B)Z
    .locals 2

    and-int/lit16 v0, p0, 0xff

    const/16 v1, 0xea

    if-eq v0, v1, :cond_0

    const/16 v1, 0xed

    if-eq v0, v1, :cond_0

    const/16 v1, 0xef

    if-eq v0, v1, :cond_0

    const/16 v1, 0xf3

    if-eq v0, v1, :cond_0

    const/16 v1, 0xf5

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lorg/mozilla/universalchardet/prober/g;->a:I

    iget v1, p0, Lorg/mozilla/universalchardet/prober/g;->b:I

    sub-int/2addr v0, v1

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    sget-object v0, Lorg/mozilla/universalchardet/a;->t:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v1, -0x5

    if-gt v0, v1, :cond_1

    sget-object v0, Lorg/mozilla/universalchardet/a;->f:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/mozilla/universalchardet/prober/g;->e:Lorg/mozilla/universalchardet/prober/CharsetProber;

    invoke-virtual {v1}, Lorg/mozilla/universalchardet/prober/CharsetProber;->b()F

    move-result v1

    iget-object v2, p0, Lorg/mozilla/universalchardet/prober/g;->f:Lorg/mozilla/universalchardet/prober/CharsetProber;

    invoke-virtual {v2}, Lorg/mozilla/universalchardet/prober/CharsetProber;->b()F

    move-result v2

    sub-float/2addr v1, v2

    const v2, 0x3c23d70a

    cmpl-float v2, v1, v2

    if-lez v2, :cond_2

    sget-object v0, Lorg/mozilla/universalchardet/a;->t:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const v2, -0x43dc28f6

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    sget-object v0, Lorg/mozilla/universalchardet/a;->f:Ljava/lang/String;

    goto :goto_0

    :cond_3
    if-gez v0, :cond_4

    sget-object v0, Lorg/mozilla/universalchardet/a;->f:Ljava/lang/String;

    goto :goto_0

    :cond_4
    sget-object v0, Lorg/mozilla/universalchardet/a;->t:Ljava/lang/String;

    goto :goto_0
.end method

.method public final a([BII)Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;
    .locals 5

    .prologue
    const/16 v4, 0x20

    .line 0
    invoke-virtual {p0}, Lorg/mozilla/universalchardet/prober/g;->c()Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    move-result-object v0

    sget-object v1, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->NOT_ME:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    if-ne v0, v1, :cond_0

    sget-object v0, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->NOT_ME:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    :goto_0
    return-object v0

    :cond_0
    add-int v1, p2, p3

    :goto_1
    if-ge p2, v1, :cond_6

    aget-byte v2, p1, p2

    if-ne v2, v4, :cond_5

    iget-byte v0, p0, Lorg/mozilla/universalchardet/prober/g;->d:B

    if-eq v0, v4, :cond_1

    iget-byte v0, p0, Lorg/mozilla/universalchardet/prober/g;->c:B

    invoke-static {v0}, Lorg/mozilla/universalchardet/prober/g;->a(B)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/mozilla/universalchardet/prober/g;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/mozilla/universalchardet/prober/g;->a:I

    :cond_1
    :goto_2
    iget-byte v0, p0, Lorg/mozilla/universalchardet/prober/g;->c:B

    iput-byte v0, p0, Lorg/mozilla/universalchardet/prober/g;->d:B

    iput-byte v2, p0, Lorg/mozilla/universalchardet/prober/g;->c:B

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    iget-byte v0, p0, Lorg/mozilla/universalchardet/prober/g;->c:B

    .line 1000
    and-int/lit16 v0, v0, 0xff

    const/16 v3, 0xeb

    if-eq v0, v3, :cond_3

    const/16 v3, 0xee

    if-eq v0, v3, :cond_3

    const/16 v3, 0xf0

    if-eq v0, v3, :cond_3

    const/16 v3, 0xf4

    if-ne v0, v3, :cond_4

    :cond_3
    const/4 v0, 0x1

    .line 0
    :goto_3
    if-eqz v0, :cond_1

    iget v0, p0, Lorg/mozilla/universalchardet/prober/g;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/mozilla/universalchardet/prober/g;->b:I

    goto :goto_2

    .line 1000
    :cond_4
    const/4 v0, 0x0

    goto :goto_3

    .line 0
    :cond_5
    iget-byte v0, p0, Lorg/mozilla/universalchardet/prober/g;->d:B

    if-ne v0, v4, :cond_1

    iget-byte v0, p0, Lorg/mozilla/universalchardet/prober/g;->c:B

    invoke-static {v0}, Lorg/mozilla/universalchardet/prober/g;->a(B)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eq v2, v4, :cond_1

    iget v0, p0, Lorg/mozilla/universalchardet/prober/g;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/mozilla/universalchardet/prober/g;->b:I

    goto :goto_2

    :cond_6
    sget-object v0, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->DETECTING:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    goto :goto_0
.end method

.method public final a(Lorg/mozilla/universalchardet/prober/CharsetProber;Lorg/mozilla/universalchardet/prober/CharsetProber;)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/universalchardet/prober/g;->e:Lorg/mozilla/universalchardet/prober/CharsetProber;

    iput-object p2, p0, Lorg/mozilla/universalchardet/prober/g;->f:Lorg/mozilla/universalchardet/prober/CharsetProber;

    return-void
.end method

.method public final b()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final c()Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;
    .locals 2

    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/g;->e:Lorg/mozilla/universalchardet/prober/CharsetProber;

    invoke-virtual {v0}, Lorg/mozilla/universalchardet/prober/CharsetProber;->c()Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    move-result-object v0

    sget-object v1, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->NOT_ME:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/g;->f:Lorg/mozilla/universalchardet/prober/CharsetProber;

    invoke-virtual {v0}, Lorg/mozilla/universalchardet/prober/CharsetProber;->c()Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    move-result-object v0

    sget-object v1, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->NOT_ME:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    if-ne v0, v1, :cond_0

    sget-object v0, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->NOT_ME:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->DETECTING:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    goto :goto_0
.end method

.method public final d()V
    .locals 2

    const/16 v1, 0x20

    const/4 v0, 0x0

    iput v0, p0, Lorg/mozilla/universalchardet/prober/g;->a:I

    iput v0, p0, Lorg/mozilla/universalchardet/prober/g;->b:I

    iput-byte v1, p0, Lorg/mozilla/universalchardet/prober/g;->c:B

    iput-byte v1, p0, Lorg/mozilla/universalchardet/prober/g;->d:B

    return-void
.end method
