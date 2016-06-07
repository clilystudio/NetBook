.class public final Lorg/mozilla/universalchardet/prober/h;
.super Lorg/mozilla/universalchardet/prober/CharsetProber;


# static fields
.field private static final d:[B

.field private static final e:[B


# instance fields
.field private a:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

.field private b:B

.field private c:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x100

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/mozilla/universalchardet/prober/h;->d:[B

    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lorg/mozilla/universalchardet/prober/h;->e:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x7t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x5t
        0x1t
        0x5t
        0x0t
        0x5t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x7t
        0x1t
        0x7t
        0x0t
        0x7t
        0x5t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x5t
        0x5t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x5t
        0x5t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x1t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x5t
        0x5t
        0x5t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x7t
        0x7t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x7t
        0x7t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x1t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x7t
        0x7t
        0x7t
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x0t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x0t
        0x3t
        0x3t
        0x3t
        0x1t
        0x1t
        0x3t
        0x3t
        0x0t
        0x3t
        0x3t
        0x3t
        0x1t
        0x2t
        0x1t
        0x2t
        0x0t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x0t
        0x3t
        0x1t
        0x3t
        0x1t
        0x1t
        0x1t
        0x3t
        0x0t
        0x3t
        0x1t
        0x3t
        0x1t
        0x1t
        0x3t
        0x3t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/mozilla/universalchardet/prober/CharsetProber;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/h;->c:[I

    invoke-virtual {p0}, Lorg/mozilla/universalchardet/prober/h;->d()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/mozilla/universalchardet/a;->r:Ljava/lang/String;

    return-object v0
.end method

.method public final a([BII)Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;
    .locals 7

    invoke-virtual {p0, p1, p2, p3}, Lorg/mozilla/universalchardet/prober/h;->c([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-byte v3, v1, v0

    and-int/lit16 v3, v3, 0xff

    sget-object v4, Lorg/mozilla/universalchardet/prober/h;->d:[B

    aget-byte v3, v4, v3

    sget-object v4, Lorg/mozilla/universalchardet/prober/h;->e:[B

    iget-byte v5, p0, Lorg/mozilla/universalchardet/prober/h;->b:B

    shl-int/lit8 v5, v5, 0x3

    add-int/2addr v5, v3

    aget-byte v4, v4, v5

    if-nez v4, :cond_1

    sget-object v0, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->NOT_ME:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/h;->a:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    :cond_0
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/h;->a:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    return-object v0

    :cond_1
    iget-object v5, p0, Lorg/mozilla/universalchardet/prober/h;->c:[I

    aget v6, v5, v4

    add-int/lit8 v6, v6, 0x1

    aput v6, v5, v4

    iput-byte v3, p0, Lorg/mozilla/universalchardet/prober/h;->b:B

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final b()F
    .locals 5

    const/4 v0, 0x0

    const/4 v2, 0x0

    iget-object v1, p0, Lorg/mozilla/universalchardet/prober/h;->a:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    sget-object v3, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->NOT_ME:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    if-ne v1, v3, :cond_0

    const v0, 0x3c23d70a    # 0.01f

    :goto_0
    return v0

    :cond_0
    move v1, v0

    :goto_1
    iget-object v3, p0, Lorg/mozilla/universalchardet/prober/h;->c:[I

    array-length v3, v3

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lorg/mozilla/universalchardet/prober/h;->c:[I

    aget v3, v3, v1

    add-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    if-gtz v0, :cond_3

    move v0, v2

    :goto_2
    cmpg-float v1, v0, v2

    if-gez v1, :cond_2

    move v0, v2

    :cond_2
    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lorg/mozilla/universalchardet/prober/h;->c:[I

    const/4 v3, 0x3

    aget v1, v1, v3

    int-to-float v1, v1

    int-to-float v3, v0

    div-float/2addr v1, v3

    iget-object v3, p0, Lorg/mozilla/universalchardet/prober/h;->c:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x41a00000    # 20.0f

    mul-float/2addr v3, v4

    int-to-float v0, v0

    div-float v0, v3, v0

    sub-float v0, v1, v0

    goto :goto_2
.end method

.method public final c()Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/h;->a:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    return-object v0
.end method

.method public final d()V
    .locals 3

    const/4 v1, 0x0

    sget-object v0, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->DETECTING:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/h;->a:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    const/4 v0, 0x1

    iput-byte v0, p0, Lorg/mozilla/universalchardet/prober/h;->b:B

    move v0, v1

    :goto_0
    iget-object v2, p0, Lorg/mozilla/universalchardet/prober/h;->c:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lorg/mozilla/universalchardet/prober/h;->c:[I

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
