.class public final Lorg/mozilla/universalchardet/prober/j;
.super Lorg/mozilla/universalchardet/prober/CharsetProber;


# static fields
.field private static final f:Lorg/mozilla/universalchardet/prober/c/l;

.field private static final g:Lorg/mozilla/universalchardet/prober/c/l;

.field private static final h:Lorg/mozilla/universalchardet/prober/c/l;

.field private static final i:Lorg/mozilla/universalchardet/prober/c/l;

.field private static final j:Lorg/mozilla/universalchardet/prober/c/l;

.field private static final k:Lorg/mozilla/universalchardet/prober/c/l;

.field private static final l:Lorg/mozilla/universalchardet/prober/c/l;

.field private static final m:Lorg/mozilla/universalchardet/prober/c/l;

.field private static final n:Lorg/mozilla/universalchardet/prober/c/l;

.field private static final o:Lorg/mozilla/universalchardet/prober/c/l;

.field private static final p:Lorg/mozilla/universalchardet/prober/c/l;


# instance fields
.field private a:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

.field private b:[Lorg/mozilla/universalchardet/prober/CharsetProber;

.field private c:[Z

.field private d:I

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/mozilla/universalchardet/prober/c/n;

    invoke-direct {v0}, Lorg/mozilla/universalchardet/prober/c/n;-><init>()V

    sput-object v0, Lorg/mozilla/universalchardet/prober/j;->f:Lorg/mozilla/universalchardet/prober/c/l;

    new-instance v0, Lorg/mozilla/universalchardet/prober/c/g;

    invoke-direct {v0}, Lorg/mozilla/universalchardet/prober/c/g;-><init>()V

    sput-object v0, Lorg/mozilla/universalchardet/prober/j;->g:Lorg/mozilla/universalchardet/prober/c/l;

    new-instance v0, Lorg/mozilla/universalchardet/prober/c/i;

    invoke-direct {v0}, Lorg/mozilla/universalchardet/prober/c/i;-><init>()V

    sput-object v0, Lorg/mozilla/universalchardet/prober/j;->h:Lorg/mozilla/universalchardet/prober/c/l;

    new-instance v0, Lorg/mozilla/universalchardet/prober/c/k;

    invoke-direct {v0}, Lorg/mozilla/universalchardet/prober/c/k;-><init>()V

    sput-object v0, Lorg/mozilla/universalchardet/prober/j;->i:Lorg/mozilla/universalchardet/prober/c/l;

    new-instance v0, Lorg/mozilla/universalchardet/prober/c/f;

    invoke-direct {v0}, Lorg/mozilla/universalchardet/prober/c/f;-><init>()V

    sput-object v0, Lorg/mozilla/universalchardet/prober/j;->j:Lorg/mozilla/universalchardet/prober/c/l;

    new-instance v0, Lorg/mozilla/universalchardet/prober/c/e;

    invoke-direct {v0}, Lorg/mozilla/universalchardet/prober/c/e;-><init>()V

    sput-object v0, Lorg/mozilla/universalchardet/prober/j;->k:Lorg/mozilla/universalchardet/prober/c/l;

    new-instance v0, Lorg/mozilla/universalchardet/prober/c/j;

    invoke-direct {v0}, Lorg/mozilla/universalchardet/prober/c/j;-><init>()V

    sput-object v0, Lorg/mozilla/universalchardet/prober/j;->l:Lorg/mozilla/universalchardet/prober/c/l;

    new-instance v0, Lorg/mozilla/universalchardet/prober/c/o;

    invoke-direct {v0}, Lorg/mozilla/universalchardet/prober/c/o;-><init>()V

    sput-object v0, Lorg/mozilla/universalchardet/prober/j;->m:Lorg/mozilla/universalchardet/prober/c/l;

    new-instance v0, Lorg/mozilla/universalchardet/prober/c/h;

    invoke-direct {v0}, Lorg/mozilla/universalchardet/prober/c/h;-><init>()V

    sput-object v0, Lorg/mozilla/universalchardet/prober/j;->n:Lorg/mozilla/universalchardet/prober/c/l;

    new-instance v0, Lorg/mozilla/universalchardet/prober/c/m;

    invoke-direct {v0}, Lorg/mozilla/universalchardet/prober/c/m;-><init>()V

    sput-object v0, Lorg/mozilla/universalchardet/prober/j;->o:Lorg/mozilla/universalchardet/prober/c/l;

    new-instance v0, Lorg/mozilla/universalchardet/prober/c/d;

    invoke-direct {v0}, Lorg/mozilla/universalchardet/prober/c/d;-><init>()V

    sput-object v0, Lorg/mozilla/universalchardet/prober/j;->p:Lorg/mozilla/universalchardet/prober/c/l;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    const/16 v1, 0xd

    const/16 v7, 0xc

    const/16 v6, 0xb

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Lorg/mozilla/universalchardet/prober/CharsetProber;-><init>()V

    new-array v0, v1, [Lorg/mozilla/universalchardet/prober/CharsetProber;

    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/j;->b:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    new-array v0, v1, [Z

    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/j;->c:[Z

    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/j;->b:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    new-instance v1, Lorg/mozilla/universalchardet/prober/l;

    sget-object v2, Lorg/mozilla/universalchardet/prober/j;->f:Lorg/mozilla/universalchardet/prober/c/l;

    invoke-direct {v1, v2}, Lorg/mozilla/universalchardet/prober/l;-><init>(Lorg/mozilla/universalchardet/prober/c/l;)V

    aput-object v1, v0, v4

    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/j;->b:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    new-instance v1, Lorg/mozilla/universalchardet/prober/l;

    sget-object v2, Lorg/mozilla/universalchardet/prober/j;->g:Lorg/mozilla/universalchardet/prober/c/l;

    invoke-direct {v1, v2}, Lorg/mozilla/universalchardet/prober/l;-><init>(Lorg/mozilla/universalchardet/prober/c/l;)V

    aput-object v1, v0, v5

    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/j;->b:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    const/4 v1, 0x2

    new-instance v2, Lorg/mozilla/universalchardet/prober/l;

    sget-object v3, Lorg/mozilla/universalchardet/prober/j;->h:Lorg/mozilla/universalchardet/prober/c/l;

    invoke-direct {v2, v3}, Lorg/mozilla/universalchardet/prober/l;-><init>(Lorg/mozilla/universalchardet/prober/c/l;)V

    aput-object v2, v0, v1

    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/j;->b:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    const/4 v1, 0x3

    new-instance v2, Lorg/mozilla/universalchardet/prober/l;

    sget-object v3, Lorg/mozilla/universalchardet/prober/j;->i:Lorg/mozilla/universalchardet/prober/c/l;

    invoke-direct {v2, v3}, Lorg/mozilla/universalchardet/prober/l;-><init>(Lorg/mozilla/universalchardet/prober/c/l;)V

    aput-object v2, v0, v1

    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/j;->b:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    const/4 v1, 0x4

    new-instance v2, Lorg/mozilla/universalchardet/prober/l;

    sget-object v3, Lorg/mozilla/universalchardet/prober/j;->j:Lorg/mozilla/universalchardet/prober/c/l;

    invoke-direct {v2, v3}, Lorg/mozilla/universalchardet/prober/l;-><init>(Lorg/mozilla/universalchardet/prober/c/l;)V

    aput-object v2, v0, v1

    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/j;->b:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    const/4 v1, 0x5

    new-instance v2, Lorg/mozilla/universalchardet/prober/l;

    sget-object v3, Lorg/mozilla/universalchardet/prober/j;->k:Lorg/mozilla/universalchardet/prober/c/l;

    invoke-direct {v2, v3}, Lorg/mozilla/universalchardet/prober/l;-><init>(Lorg/mozilla/universalchardet/prober/c/l;)V

    aput-object v2, v0, v1

    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/j;->b:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    const/4 v1, 0x6

    new-instance v2, Lorg/mozilla/universalchardet/prober/l;

    sget-object v3, Lorg/mozilla/universalchardet/prober/j;->l:Lorg/mozilla/universalchardet/prober/c/l;

    invoke-direct {v2, v3}, Lorg/mozilla/universalchardet/prober/l;-><init>(Lorg/mozilla/universalchardet/prober/c/l;)V

    aput-object v2, v0, v1

    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/j;->b:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    const/4 v1, 0x7

    new-instance v2, Lorg/mozilla/universalchardet/prober/l;

    sget-object v3, Lorg/mozilla/universalchardet/prober/j;->m:Lorg/mozilla/universalchardet/prober/c/l;

    invoke-direct {v2, v3}, Lorg/mozilla/universalchardet/prober/l;-><init>(Lorg/mozilla/universalchardet/prober/c/l;)V

    aput-object v2, v0, v1

    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/j;->b:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    const/16 v1, 0x8

    new-instance v2, Lorg/mozilla/universalchardet/prober/l;

    sget-object v3, Lorg/mozilla/universalchardet/prober/j;->n:Lorg/mozilla/universalchardet/prober/c/l;

    invoke-direct {v2, v3}, Lorg/mozilla/universalchardet/prober/l;-><init>(Lorg/mozilla/universalchardet/prober/c/l;)V

    aput-object v2, v0, v1

    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/j;->b:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    const/16 v1, 0x9

    new-instance v2, Lorg/mozilla/universalchardet/prober/l;

    sget-object v3, Lorg/mozilla/universalchardet/prober/j;->o:Lorg/mozilla/universalchardet/prober/c/l;

    invoke-direct {v2, v3}, Lorg/mozilla/universalchardet/prober/l;-><init>(Lorg/mozilla/universalchardet/prober/c/l;)V

    aput-object v2, v0, v1

    new-instance v0, Lorg/mozilla/universalchardet/prober/g;

    invoke-direct {v0}, Lorg/mozilla/universalchardet/prober/g;-><init>()V

    iget-object v1, p0, Lorg/mozilla/universalchardet/prober/j;->b:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    const/16 v2, 0xa

    aput-object v0, v1, v2

    iget-object v1, p0, Lorg/mozilla/universalchardet/prober/j;->b:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    new-instance v2, Lorg/mozilla/universalchardet/prober/l;

    sget-object v3, Lorg/mozilla/universalchardet/prober/j;->p:Lorg/mozilla/universalchardet/prober/c/l;

    invoke-direct {v2, v3, v4, v0}, Lorg/mozilla/universalchardet/prober/l;-><init>(Lorg/mozilla/universalchardet/prober/c/l;ZLorg/mozilla/universalchardet/prober/CharsetProber;)V

    aput-object v2, v1, v6

    iget-object v1, p0, Lorg/mozilla/universalchardet/prober/j;->b:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    new-instance v2, Lorg/mozilla/universalchardet/prober/l;

    sget-object v3, Lorg/mozilla/universalchardet/prober/j;->p:Lorg/mozilla/universalchardet/prober/c/l;

    invoke-direct {v2, v3, v5, v0}, Lorg/mozilla/universalchardet/prober/l;-><init>(Lorg/mozilla/universalchardet/prober/c/l;ZLorg/mozilla/universalchardet/prober/CharsetProber;)V

    aput-object v2, v1, v7

    iget-object v1, p0, Lorg/mozilla/universalchardet/prober/j;->b:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    aget-object v1, v1, v6

    iget-object v2, p0, Lorg/mozilla/universalchardet/prober/j;->b:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    aget-object v2, v2, v7

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/universalchardet/prober/g;->a(Lorg/mozilla/universalchardet/prober/CharsetProber;Lorg/mozilla/universalchardet/prober/CharsetProber;)V

    invoke-virtual {p0}, Lorg/mozilla/universalchardet/prober/j;->d()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    const/4 v1, -0x1

    iget v0, p0, Lorg/mozilla/universalchardet/prober/j;->d:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/mozilla/universalchardet/prober/j;->b()F

    iget v0, p0, Lorg/mozilla/universalchardet/prober/j;->d:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lorg/mozilla/universalchardet/prober/j;->d:I

    :cond_0
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/j;->b:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    iget v1, p0, Lorg/mozilla/universalchardet/prober/j;->d:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/mozilla/universalchardet/prober/CharsetProber;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a([BII)Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;
    .locals 6

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lorg/mozilla/universalchardet/prober/j;->b([BII)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v3, p0, Lorg/mozilla/universalchardet/prober/j;->b:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lorg/mozilla/universalchardet/prober/j;->c:[Z

    aget-boolean v3, v3, v0

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/mozilla/universalchardet/prober/j;->b:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    aget-object v3, v3, v0

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    invoke-virtual {v3, v4, v1, v5}, Lorg/mozilla/universalchardet/prober/CharsetProber;->a([BII)Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    move-result-object v3

    sget-object v4, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->FOUND_IT:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    if-ne v3, v4, :cond_1

    iput v0, p0, Lorg/mozilla/universalchardet/prober/j;->d:I

    sget-object v0, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->FOUND_IT:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/j;->a:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    :cond_0
    :goto_1
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/j;->a:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    return-object v0

    :cond_1
    sget-object v4, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->NOT_ME:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lorg/mozilla/universalchardet/prober/j;->c:[Z

    aput-boolean v1, v3, v0

    iget v3, p0, Lorg/mozilla/universalchardet/prober/j;->e:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lorg/mozilla/universalchardet/prober/j;->e:I

    iget v3, p0, Lorg/mozilla/universalchardet/prober/j;->e:I

    if-gtz v3, :cond_2

    sget-object v0, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->NOT_ME:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/j;->a:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final b()F
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/j;->a:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    sget-object v2, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->FOUND_IT:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    if-ne v0, v2, :cond_1

    const v1, 0x3f7d70a4    # 0.99f

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/j;->a:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    sget-object v2, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->NOT_ME:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    if-ne v0, v2, :cond_2

    const v1, 0x3c23d70a    # 0.01f

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lorg/mozilla/universalchardet/prober/j;->b:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lorg/mozilla/universalchardet/prober/j;->c:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/mozilla/universalchardet/prober/j;->b:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lorg/mozilla/universalchardet/prober/CharsetProber;->b()F

    move-result v2

    cmpg-float v3, v1, v2

    if-gez v3, :cond_3

    iput v0, p0, Lorg/mozilla/universalchardet/prober/j;->d:I

    move v1, v2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public final c()Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/j;->a:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    return-object v0
.end method

.method public final d()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/mozilla/universalchardet/prober/j;->e:I

    :goto_0
    iget-object v1, p0, Lorg/mozilla/universalchardet/prober/j;->b:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/mozilla/universalchardet/prober/j;->b:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/mozilla/universalchardet/prober/CharsetProber;->d()V

    iget-object v1, p0, Lorg/mozilla/universalchardet/prober/j;->c:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    iget v1, p0, Lorg/mozilla/universalchardet/prober/j;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/mozilla/universalchardet/prober/j;->e:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lorg/mozilla/universalchardet/prober/j;->d:I

    sget-object v0, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->DETECTING:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/j;->a:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    return-void
.end method
