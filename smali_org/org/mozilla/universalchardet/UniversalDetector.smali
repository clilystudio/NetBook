.class public final Lorg/mozilla/universalchardet/UniversalDetector;
.super Ljava/lang/Object;


# instance fields
.field private a:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:B

.field private f:Ljava/lang/String;

.field private g:[Lorg/mozilla/universalchardet/prober/CharsetProber;

.field private h:Lorg/mozilla/universalchardet/prober/CharsetProber;

.field private i:Landroid/support/design/widget/K;


# direct methods
.method public constructor <init>(Landroid/support/design/widget/K;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lorg/mozilla/universalchardet/UniversalDetector;->i:Landroid/support/design/widget/K;

    iput-object v2, p0, Lorg/mozilla/universalchardet/UniversalDetector;->h:Lorg/mozilla/universalchardet/prober/CharsetProber;

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/mozilla/universalchardet/prober/CharsetProber;

    iput-object v0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->g:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->g:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->g:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/mozilla/universalchardet/UniversalDetector;->d()V

    return-void
.end method


# virtual methods
.method public final a([BII)V
    .locals 9

    const/4 v8, 0x2

    const/16 v7, 0xff

    const/16 v5, 0xfe

    const/4 v6, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->b:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-lez p3, :cond_2

    iput-boolean v6, p0, Lorg/mozilla/universalchardet/UniversalDetector;->d:Z

    :cond_2
    iget-boolean v0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->c:Z

    if-eqz v0, :cond_7

    iput-boolean v1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->c:Z

    const/4 v0, 0x3

    if-le p3, v0, :cond_7

    aget-byte v0, p1, v1

    and-int/lit16 v0, v0, 0xff

    aget-byte v2, p1, v6

    and-int/lit16 v2, v2, 0xff

    aget-byte v3, p1, v8

    and-int/lit16 v3, v3, 0xff

    const/4 v4, 0x3

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    sparse-switch v0, :sswitch_data_0

    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->f:Ljava/lang/String;

    if-eqz v0, :cond_7

    iput-boolean v6, p0, Lorg/mozilla/universalchardet/UniversalDetector;->b:Z

    goto :goto_0

    :sswitch_0
    const/16 v0, 0xbb

    if-ne v2, v0, :cond_3

    const/16 v0, 0xbf

    if-ne v3, v0, :cond_3

    sget-object v0, Lorg/mozilla/universalchardet/a;->u:Ljava/lang/String;

    iput-object v0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->f:Ljava/lang/String;

    goto :goto_1

    :sswitch_1
    if-ne v2, v7, :cond_4

    if-nez v3, :cond_4

    if-nez v4, :cond_4

    sget-object v0, Lorg/mozilla/universalchardet/a;->A:Ljava/lang/String;

    iput-object v0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->f:Ljava/lang/String;

    goto :goto_1

    :cond_4
    if-ne v2, v7, :cond_3

    sget-object v0, Lorg/mozilla/universalchardet/a;->v:Ljava/lang/String;

    iput-object v0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->f:Ljava/lang/String;

    goto :goto_1

    :sswitch_2
    if-nez v2, :cond_5

    if-ne v3, v5, :cond_5

    if-ne v4, v7, :cond_5

    sget-object v0, Lorg/mozilla/universalchardet/a;->x:Ljava/lang/String;

    iput-object v0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->f:Ljava/lang/String;

    goto :goto_1

    :cond_5
    if-nez v2, :cond_3

    if-ne v3, v7, :cond_3

    if-ne v4, v5, :cond_3

    sget-object v0, Lorg/mozilla/universalchardet/a;->B:Ljava/lang/String;

    iput-object v0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->f:Ljava/lang/String;

    goto :goto_1

    :sswitch_3
    if-ne v2, v5, :cond_6

    if-nez v3, :cond_6

    if-nez v4, :cond_6

    sget-object v0, Lorg/mozilla/universalchardet/a;->y:Ljava/lang/String;

    iput-object v0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->f:Ljava/lang/String;

    goto :goto_1

    :cond_6
    if-ne v2, v5, :cond_3

    sget-object v0, Lorg/mozilla/universalchardet/a;->w:Ljava/lang/String;

    iput-object v0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->f:Ljava/lang/String;

    goto :goto_1

    :cond_7
    add-int/lit8 v2, p3, 0x0

    move v0, v1

    :goto_2
    if-ge v0, v2, :cond_f

    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xff

    and-int/lit16 v4, v3, 0x80

    if-eqz v4, :cond_c

    const/16 v4, 0xa0

    if-eq v3, v4, :cond_c

    iget-object v3, p0, Lorg/mozilla/universalchardet/UniversalDetector;->a:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    sget-object v4, Lorg/mozilla/universalchardet/UniversalDetector$InputState;->HIGHBYTE:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    if-eq v3, v4, :cond_b

    sget-object v3, Lorg/mozilla/universalchardet/UniversalDetector$InputState;->HIGHBYTE:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    iput-object v3, p0, Lorg/mozilla/universalchardet/UniversalDetector;->a:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    iget-object v3, p0, Lorg/mozilla/universalchardet/UniversalDetector;->h:Lorg/mozilla/universalchardet/prober/CharsetProber;

    if-eqz v3, :cond_8

    const/4 v3, 0x0

    iput-object v3, p0, Lorg/mozilla/universalchardet/UniversalDetector;->h:Lorg/mozilla/universalchardet/prober/CharsetProber;

    :cond_8
    iget-object v3, p0, Lorg/mozilla/universalchardet/UniversalDetector;->g:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    aget-object v3, v3, v1

    if-nez v3, :cond_9

    iget-object v3, p0, Lorg/mozilla/universalchardet/UniversalDetector;->g:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    new-instance v4, Lorg/mozilla/universalchardet/prober/i;

    invoke-direct {v4}, Lorg/mozilla/universalchardet/prober/i;-><init>()V

    aput-object v4, v3, v1

    :cond_9
    iget-object v3, p0, Lorg/mozilla/universalchardet/UniversalDetector;->g:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    aget-object v3, v3, v6

    if-nez v3, :cond_a

    iget-object v3, p0, Lorg/mozilla/universalchardet/UniversalDetector;->g:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    new-instance v4, Lorg/mozilla/universalchardet/prober/j;

    invoke-direct {v4}, Lorg/mozilla/universalchardet/prober/j;-><init>()V

    aput-object v4, v3, v6

    :cond_a
    iget-object v3, p0, Lorg/mozilla/universalchardet/UniversalDetector;->g:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    aget-object v3, v3, v8

    if-nez v3, :cond_b

    iget-object v3, p0, Lorg/mozilla/universalchardet/UniversalDetector;->g:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    new-instance v4, Lorg/mozilla/universalchardet/prober/h;

    invoke-direct {v4}, Lorg/mozilla/universalchardet/prober/h;-><init>()V

    aput-object v4, v3, v8

    :cond_b
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_c
    iget-object v4, p0, Lorg/mozilla/universalchardet/UniversalDetector;->a:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    sget-object v5, Lorg/mozilla/universalchardet/UniversalDetector$InputState;->PURE_ASCII:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    if-ne v4, v5, :cond_e

    const/16 v4, 0x1b

    if-eq v3, v4, :cond_d

    const/16 v4, 0x7b

    if-ne v3, v4, :cond_e

    iget-byte v3, p0, Lorg/mozilla/universalchardet/UniversalDetector;->e:B

    const/16 v4, 0x7e

    if-ne v3, v4, :cond_e

    :cond_d
    sget-object v3, Lorg/mozilla/universalchardet/UniversalDetector$InputState;->ESC_ASCII:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    iput-object v3, p0, Lorg/mozilla/universalchardet/UniversalDetector;->a:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    :cond_e
    aget-byte v3, p1, v0

    iput-byte v3, p0, Lorg/mozilla/universalchardet/UniversalDetector;->e:B

    goto :goto_3

    :cond_f
    iget-object v0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->a:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    sget-object v2, Lorg/mozilla/universalchardet/UniversalDetector$InputState;->ESC_ASCII:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    if-ne v0, v2, :cond_11

    iget-object v0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->h:Lorg/mozilla/universalchardet/prober/CharsetProber;

    if-nez v0, :cond_10

    new-instance v0, Lorg/mozilla/universalchardet/prober/e;

    invoke-direct {v0}, Lorg/mozilla/universalchardet/prober/e;-><init>()V

    iput-object v0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->h:Lorg/mozilla/universalchardet/prober/CharsetProber;

    :cond_10
    iget-object v0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->h:Lorg/mozilla/universalchardet/prober/CharsetProber;

    invoke-virtual {v0, p1, v1, p3}, Lorg/mozilla/universalchardet/prober/CharsetProber;->a([BII)Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    move-result-object v0

    sget-object v1, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->FOUND_IT:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    if-ne v0, v1, :cond_0

    iput-boolean v6, p0, Lorg/mozilla/universalchardet/UniversalDetector;->b:Z

    iget-object v0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->h:Lorg/mozilla/universalchardet/prober/CharsetProber;

    invoke-virtual {v0}, Lorg/mozilla/universalchardet/prober/CharsetProber;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->f:Ljava/lang/String;

    goto/16 :goto_0

    :cond_11
    iget-object v0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->a:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    sget-object v2, Lorg/mozilla/universalchardet/UniversalDetector$InputState;->HIGHBYTE:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    if-ne v0, v2, :cond_0

    move v0, v1

    :goto_4
    iget-object v2, p0, Lorg/mozilla/universalchardet/UniversalDetector;->g:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lorg/mozilla/universalchardet/UniversalDetector;->g:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1, v1, p3}, Lorg/mozilla/universalchardet/prober/CharsetProber;->a([BII)Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    move-result-object v2

    sget-object v3, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->FOUND_IT:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    if-ne v2, v3, :cond_12

    iput-boolean v6, p0, Lorg/mozilla/universalchardet/UniversalDetector;->b:Z

    iget-object v1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->g:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    aget-object v0, v1, v0

    invoke-virtual {v0}, Lorg/mozilla/universalchardet/prober/CharsetProber;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->f:Ljava/lang/String;

    goto/16 :goto_0

    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0xef -> :sswitch_0
        0xfe -> :sswitch_1
        0xff -> :sswitch_3
    .end sparse-switch
.end method

.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->b:Z

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final c()V
    .locals 5

    const/4 v0, 0x0

    iget-boolean v1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->d:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->f:Ljava/lang/String;

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->b:Z

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->a:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    sget-object v2, Lorg/mozilla/universalchardet/UniversalDetector$InputState;->HIGHBYTE:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    if-ne v1, v2, :cond_5

    const/4 v1, 0x0

    move v2, v1

    move v1, v0

    :goto_1
    iget-object v3, p0, Lorg/mozilla/universalchardet/UniversalDetector;->g:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    array-length v3, v3

    if-ge v0, v3, :cond_4

    iget-object v3, p0, Lorg/mozilla/universalchardet/UniversalDetector;->g:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lorg/mozilla/universalchardet/prober/CharsetProber;->b()F

    move-result v3

    cmpl-float v4, v3, v2

    if-lez v4, :cond_3

    move v1, v0

    move v2, v3

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    const v0, 0x3e4ccccd

    cmpl-float v0, v2, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->g:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/mozilla/universalchardet/prober/CharsetProber;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->f:Ljava/lang/String;

    goto :goto_0

    :cond_5
    sget-object v0, Lorg/mozilla/universalchardet/UniversalDetector$InputState;->ESC_ASCII:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    goto :goto_0
.end method

.method public final d()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->b:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->c:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->f:Ljava/lang/String;

    iput-boolean v0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->d:Z

    sget-object v1, Lorg/mozilla/universalchardet/UniversalDetector$InputState;->PURE_ASCII:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    iput-object v1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->a:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    iput-byte v0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->e:B

    iget-object v1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->h:Lorg/mozilla/universalchardet/prober/CharsetProber;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->h:Lorg/mozilla/universalchardet/prober/CharsetProber;

    invoke-virtual {v1}, Lorg/mozilla/universalchardet/prober/CharsetProber;->d()V

    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->g:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->g:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->g:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/mozilla/universalchardet/prober/CharsetProber;->d()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
