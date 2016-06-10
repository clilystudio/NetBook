.class public final Lorg/apache/thrift/protocol/b;
.super Lorg/apache/thrift/protocol/f;


# static fields
.field private static final b:Lorg/apache/thrift/protocol/k;

.field private static final c:Lorg/apache/thrift/protocol/c;

.field private static final d:[B


# instance fields
.field private e:Lorg/apache/thrift/a;

.field private f:S

.field private g:Lorg/apache/thrift/protocol/c;

.field private h:Ljava/lang/Boolean;

.field private i:[B

.field private j:[B

.field private k:[B

.field private l:[B


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/16 v6, 0x8

    const/4 v5, 0x6

    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x0

    new-instance v0, Lorg/apache/thrift/protocol/k;

    const-string v1, ""

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/k;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/thrift/protocol/b;->b:Lorg/apache/thrift/protocol/k;

    new-instance v0, Lorg/apache/thrift/protocol/c;

    const-string v1, ""

    invoke-direct {v0, v1, v2, v2}, Lorg/apache/thrift/protocol/c;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lorg/apache/thrift/protocol/b;->c:Lorg/apache/thrift/protocol/c;

    const/16 v0, 0x10

    new-array v0, v0, [B

    sput-object v0, Lorg/apache/thrift/protocol/b;->d:[B

    aput-byte v2, v0, v2

    sget-object v0, Lorg/apache/thrift/protocol/b;->d:[B

    const/4 v1, 0x2

    const/4 v2, 0x1

    aput-byte v2, v0, v1

    sget-object v0, Lorg/apache/thrift/protocol/b;->d:[B

    aput-byte v3, v0, v3

    sget-object v0, Lorg/apache/thrift/protocol/b;->d:[B

    aput-byte v4, v0, v5

    sget-object v0, Lorg/apache/thrift/protocol/b;->d:[B

    const/4 v1, 0x5

    aput-byte v1, v0, v6

    sget-object v0, Lorg/apache/thrift/protocol/b;->d:[B

    const/16 v1, 0xa

    aput-byte v5, v0, v1

    sget-object v0, Lorg/apache/thrift/protocol/b;->d:[B

    const/4 v1, 0x7

    aput-byte v1, v0, v4

    sget-object v0, Lorg/apache/thrift/protocol/b;->d:[B

    const/16 v1, 0xb

    aput-byte v6, v0, v1

    sget-object v0, Lorg/apache/thrift/protocol/b;->d:[B

    const/16 v1, 0xf

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    sget-object v0, Lorg/apache/thrift/protocol/b;->d:[B

    const/16 v1, 0xe

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    sget-object v0, Lorg/apache/thrift/protocol/b;->d:[B

    const/16 v1, 0xd

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    sget-object v0, Lorg/apache/thrift/protocol/b;->d:[B

    const/16 v1, 0xc

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    return-void
.end method

.method public constructor <init>(Lorg/apache/thrift/transport/c;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1}, Lorg/apache/thrift/protocol/f;-><init>(Lorg/apache/thrift/transport/c;)V

    new-instance v0, Lorg/apache/thrift/a;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Lorg/apache/thrift/a;-><init>(I)V

    iput-object v0, p0, Lorg/apache/thrift/protocol/b;->e:Lorg/apache/thrift/a;

    const/4 v0, 0x0

    iput-short v0, p0, Lorg/apache/thrift/protocol/b;->f:S

    iput-object v3, p0, Lorg/apache/thrift/protocol/b;->g:Lorg/apache/thrift/protocol/c;

    iput-object v3, p0, Lorg/apache/thrift/protocol/b;->h:Ljava/lang/Boolean;

    const/4 v0, 0x5

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/thrift/protocol/b;->i:[B

    const/16 v0, 0xa

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/thrift/protocol/b;->j:[B

    new-array v0, v2, [B

    iput-object v0, p0, Lorg/apache/thrift/protocol/b;->k:[B

    new-array v0, v2, [B

    iput-object v0, p0, Lorg/apache/thrift/protocol/b;->l:[B

    return-void
.end method

.method private a(B)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 0
    iget-object v0, p0, Lorg/apache/thrift/protocol/b;->k:[B

    aput-byte p1, v0, v3

    iget-object v0, p0, Lorg/apache/thrift/protocol/b;->a:Lorg/apache/thrift/transport/c;

    iget-object v1, p0, Lorg/apache/thrift/protocol/b;->k:[B

    .line 14000
    array-length v2, v1

    invoke-virtual {v0, v1, v3, v2}, Lorg/apache/thrift/transport/c;->b([BII)V

    .line 0
    return-void
.end method

.method private a(BI)V
    .locals 2

    .prologue
    .line 0
    const/16 v0, 0xe

    if-gt p2, v0, :cond_0

    shl-int/lit8 v0, p2, 0x4

    .line 10000
    sget-object v1, Lorg/apache/thrift/protocol/b;->d:[B

    aget-byte v1, v1, p1

    .line 0
    or-int/2addr v0, v1

    .line 11000
    int-to-byte v0, v0

    invoke-direct {p0, v0}, Lorg/apache/thrift/protocol/b;->a(B)V

    .line 0
    :goto_0
    return-void

    .line 12000
    :cond_0
    sget-object v0, Lorg/apache/thrift/protocol/b;->d:[B

    aget-byte v0, v0, p1

    .line 0
    or-int/lit16 v0, v0, 0xf0

    .line 13000
    int-to-byte v0, v0

    invoke-direct {p0, v0}, Lorg/apache/thrift/protocol/b;->a(B)V

    .line 0
    invoke-direct {p0, p2}, Lorg/apache/thrift/protocol/b;->b(I)V

    goto :goto_0
.end method

.method private a(Lorg/apache/thrift/protocol/c;B)V
    .locals 2

    .prologue
    .line 0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    iget-byte v0, p1, Lorg/apache/thrift/protocol/c;->a:B

    .line 1000
    sget-object v1, Lorg/apache/thrift/protocol/b;->d:[B

    aget-byte p2, v1, v0

    .line 0
    :cond_0
    iget-short v0, p1, Lorg/apache/thrift/protocol/c;->b:S

    iget-short v1, p0, Lorg/apache/thrift/protocol/b;->f:S

    if-le v0, v1, :cond_1

    iget-short v0, p1, Lorg/apache/thrift/protocol/c;->b:S

    iget-short v1, p0, Lorg/apache/thrift/protocol/b;->f:S

    sub-int/2addr v0, v1

    const/16 v1, 0xf

    if-gt v0, v1, :cond_1

    iget-short v0, p1, Lorg/apache/thrift/protocol/c;->b:S

    iget-short v1, p0, Lorg/apache/thrift/protocol/b;->f:S

    sub-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x4

    or-int/2addr v0, p2

    .line 2000
    int-to-byte v0, v0

    invoke-direct {p0, v0}, Lorg/apache/thrift/protocol/b;->a(B)V

    .line 0
    :goto_0
    iget-short v0, p1, Lorg/apache/thrift/protocol/c;->b:S

    iput-short v0, p0, Lorg/apache/thrift/protocol/b;->f:S

    return-void

    :cond_1
    invoke-direct {p0, p2}, Lorg/apache/thrift/protocol/b;->a(B)V

    iget-short v0, p1, Lorg/apache/thrift/protocol/c;->b:S

    .line 3000
    invoke-static {v0}, Lorg/apache/thrift/protocol/b;->c(I)I

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/thrift/protocol/b;->b(I)V

    goto :goto_0
.end method

.method private a([BII)V
    .locals 1

    invoke-direct {p0, p3}, Lorg/apache/thrift/protocol/b;->b(I)V

    iget-object v0, p0, Lorg/apache/thrift/protocol/b;->a:Lorg/apache/thrift/transport/c;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/thrift/transport/c;->b([BII)V

    return-void
.end method

.method private static b(B)B
    .locals 3

    and-int/lit8 v0, p0, 0xf

    int-to-byte v0, v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lorg/apache/thrift/protocol/g;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "don\'t know what type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    and-int/lit8 v2, p0, 0xf

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/g;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x6

    goto :goto_0

    :pswitch_4
    const/16 v0, 0x8

    goto :goto_0

    :pswitch_5
    const/16 v0, 0xa

    goto :goto_0

    :pswitch_6
    const/4 v0, 0x4

    goto :goto_0

    :pswitch_7
    const/16 v0, 0xb

    goto :goto_0

    :pswitch_8
    const/16 v0, 0xf

    goto :goto_0

    :pswitch_9
    const/16 v0, 0xe

    goto :goto_0

    :pswitch_a
    const/16 v0, 0xd

    goto :goto_0

    :pswitch_b
    const/16 v0, 0xc

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method private b(I)V
    .locals 5

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    and-int/lit8 v2, p1, -0x80

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/apache/thrift/protocol/b;->i:[B

    add-int/lit8 v3, v0, 0x1

    int-to-byte v4, p1

    aput-byte v4, v2, v0

    iget-object v0, p0, Lorg/apache/thrift/protocol/b;->a:Lorg/apache/thrift/transport/c;

    iget-object v2, p0, Lorg/apache/thrift/protocol/b;->i:[B

    invoke-virtual {v0, v2, v1, v3}, Lorg/apache/thrift/transport/c;->b([BII)V

    return-void

    :cond_0
    iget-object v3, p0, Lorg/apache/thrift/protocol/b;->i:[B

    add-int/lit8 v2, v0, 0x1

    and-int/lit8 v4, p1, 0x7f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    aput-byte v4, v3, v0

    ushr-int/lit8 p1, p1, 0x7

    move v0, v2

    goto :goto_0
.end method

.method private static c(I)I
    .locals 2

    shl-int/lit8 v0, p0, 0x1

    shr-int/lit8 v1, p0, 0x1f

    xor-int/2addr v0, v1

    return v0
.end method

.method private static d(I)I
    .locals 2

    ushr-int/lit8 v0, p0, 0x1

    and-int/lit8 v1, p0, 0x1

    neg-int v1, v1

    xor-int/2addr v0, v1

    return v0
.end method

.method private s()I
    .locals 8

    const/16 v7, 0x80

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/apache/thrift/protocol/b;->a:Lorg/apache/thrift/transport/c;

    invoke-virtual {v1}, Lorg/apache/thrift/transport/c;->c()I

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_2

    iget-object v1, p0, Lorg/apache/thrift/protocol/b;->a:Lorg/apache/thrift/transport/c;

    invoke-virtual {v1}, Lorg/apache/thrift/transport/c;->a()[B

    move-result-object v3

    iget-object v1, p0, Lorg/apache/thrift/protocol/b;->a:Lorg/apache/thrift/transport/c;

    invoke-virtual {v1}, Lorg/apache/thrift/transport/c;->b()I

    move-result v4

    move v1, v0

    move v2, v0

    :goto_0
    add-int v5, v4, v0

    aget-byte v5, v3, v5

    and-int/lit8 v6, v5, 0x7f

    shl-int/2addr v6, v1

    or-int/2addr v2, v6

    and-int/lit16 v5, v5, 0x80

    if-ne v5, v7, :cond_0

    add-int/lit8 v1, v1, 0x7

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/apache/thrift/protocol/b;->a:Lorg/apache/thrift/transport/c;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lorg/apache/thrift/transport/c;->a(I)V

    :goto_1
    return v2

    :goto_2
    invoke-virtual {p0}, Lorg/apache/thrift/protocol/b;->k()B

    move-result v2

    and-int/lit8 v3, v2, 0x7f

    shl-int/2addr v3, v0

    or-int/2addr v1, v3

    and-int/lit16 v2, v2, 0x80

    if-ne v2, v7, :cond_1

    add-int/lit8 v0, v0, 0x7

    goto :goto_2

    :cond_1
    move v2, v1

    goto :goto_1

    :cond_2
    move v1, v0

    goto :goto_2
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lorg/apache/thrift/protocol/b;->e:Lorg/apache/thrift/a;

    iget-short v1, p0, Lorg/apache/thrift/protocol/b;->f:S

    invoke-virtual {v0, v1}, Lorg/apache/thrift/a;->a(S)V

    const/4 v0, 0x0

    iput-short v0, p0, Lorg/apache/thrift/protocol/b;->f:S

    return-void
.end method

.method public final a(I)V
    .locals 1

    invoke-static {p1}, Lorg/apache/thrift/protocol/b;->c(I)I

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/thrift/protocol/b;->b(I)V

    return-void
.end method

.method public final a(J)V
    .locals 11

    .prologue
    const/4 v3, 0x0

    .line 0
    .line 8000
    const/4 v0, 0x1

    shl-long v0, p1, v0

    const/16 v2, 0x3f

    shr-long v4, p1, v2

    xor-long/2addr v0, v4

    move v2, v3

    .line 9000
    :goto_0
    const-wide/16 v4, -0x80

    and-long/2addr v4, v0

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    iget-object v4, p0, Lorg/apache/thrift/protocol/b;->j:[B

    add-int/lit8 v5, v2, 0x1

    long-to-int v0, v0

    int-to-byte v0, v0

    aput-byte v0, v4, v2

    iget-object v0, p0, Lorg/apache/thrift/protocol/b;->a:Lorg/apache/thrift/transport/c;

    iget-object v1, p0, Lorg/apache/thrift/protocol/b;->j:[B

    invoke-virtual {v0, v1, v3, v5}, Lorg/apache/thrift/transport/c;->b([BII)V

    .line 0
    return-void

    .line 9000
    :cond_0
    iget-object v5, p0, Lorg/apache/thrift/protocol/b;->j:[B

    add-int/lit8 v4, v2, 0x1

    const-wide/16 v6, 0x7f

    and-long/2addr v6, v0

    const-wide/16 v8, 0x80

    or-long/2addr v6, v8

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v5, v2

    const/4 v2, 0x7

    ushr-long/2addr v0, v2

    move v2, v4

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, v0

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/thrift/protocol/b;->a([BII)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v0, Lorg/apache/thrift/e;

    const-string v1, "UTF-8 not supported!"

    invoke-direct {v0, v1}, Lorg/apache/thrift/e;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Ljava/nio/ByteBuffer;)V
    .locals 4

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v3

    add-int/2addr v2, v3

    invoke-direct {p0, v1, v2, v0}, Lorg/apache/thrift/protocol/b;->a([BII)V

    return-void
.end method

.method public final a(Lorg/apache/thrift/protocol/c;)V
    .locals 2

    iget-byte v0, p1, Lorg/apache/thrift/protocol/c;->a:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iput-object p1, p0, Lorg/apache/thrift/protocol/b;->g:Lorg/apache/thrift/protocol/c;

    :goto_0
    return-void

    :cond_0
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/thrift/protocol/b;->a(Lorg/apache/thrift/protocol/c;B)V

    goto :goto_0
.end method

.method public final a(Lorg/apache/thrift/protocol/d;)V
    .locals 2

    iget-byte v0, p1, Lorg/apache/thrift/protocol/d;->a:B

    iget v1, p1, Lorg/apache/thrift/protocol/d;->b:I

    invoke-direct {p0, v0, v1}, Lorg/apache/thrift/protocol/b;->a(BI)V

    return-void
.end method

.method public final a(Lorg/apache/thrift/protocol/e;)V
    .locals 3

    .prologue
    .line 0
    iget v0, p1, Lorg/apache/thrift/protocol/e;->c:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 4000
    int-to-byte v0, v0

    invoke-direct {p0, v0}, Lorg/apache/thrift/protocol/b;->a(B)V

    .line 0
    :goto_0
    return-void

    :cond_0
    iget v0, p1, Lorg/apache/thrift/protocol/e;->c:I

    invoke-direct {p0, v0}, Lorg/apache/thrift/protocol/b;->b(I)V

    iget-byte v0, p1, Lorg/apache/thrift/protocol/e;->a:B

    .line 5000
    sget-object v1, Lorg/apache/thrift/protocol/b;->d:[B

    aget-byte v0, v1, v0

    .line 0
    shl-int/lit8 v0, v0, 0x4

    iget-byte v1, p1, Lorg/apache/thrift/protocol/e;->b:B

    .line 6000
    sget-object v2, Lorg/apache/thrift/protocol/b;->d:[B

    aget-byte v1, v2, v1

    .line 0
    or-int/2addr v0, v1

    .line 7000
    int-to-byte v0, v0

    invoke-direct {p0, v0}, Lorg/apache/thrift/protocol/b;->a(B)V

    goto :goto_0
.end method

.method public final a(Lorg/apache/thrift/protocol/j;)V
    .locals 2

    iget-byte v0, p1, Lorg/apache/thrift/protocol/j;->a:B

    iget v1, p1, Lorg/apache/thrift/protocol/j;->b:I

    invoke-direct {p0, v0, v1}, Lorg/apache/thrift/protocol/b;->a(BI)V

    return-void
.end method

.method public final a(Z)V
    .locals 3

    const/4 v1, 0x2

    const/4 v0, 0x1

    iget-object v2, p0, Lorg/apache/thrift/protocol/b;->g:Lorg/apache/thrift/protocol/c;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/apache/thrift/protocol/b;->g:Lorg/apache/thrift/protocol/c;

    if-eqz p1, :cond_0

    :goto_0
    invoke-direct {p0, v2, v0}, Lorg/apache/thrift/protocol/b;->a(Lorg/apache/thrift/protocol/c;B)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/thrift/protocol/b;->g:Lorg/apache/thrift/protocol/c;

    :goto_1
    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    :goto_2
    invoke-direct {p0, v0}, Lorg/apache/thrift/protocol/b;->a(B)V

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lorg/apache/thrift/protocol/b;->e:Lorg/apache/thrift/a;

    invoke-virtual {v0}, Lorg/apache/thrift/a;->a()S

    move-result v0

    iput-short v0, p0, Lorg/apache/thrift/protocol/b;->f:S

    return-void
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/thrift/protocol/b;->a(B)V

    return-void
.end method

.method public final d()Lorg/apache/thrift/protocol/k;
    .locals 2

    iget-object v0, p0, Lorg/apache/thrift/protocol/b;->e:Lorg/apache/thrift/a;

    iget-short v1, p0, Lorg/apache/thrift/protocol/b;->f:S

    invoke-virtual {v0, v1}, Lorg/apache/thrift/a;->a(S)V

    const/4 v0, 0x0

    iput-short v0, p0, Lorg/apache/thrift/protocol/b;->f:S

    sget-object v0, Lorg/apache/thrift/protocol/b;->b:Lorg/apache/thrift/protocol/k;

    return-object v0
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Lorg/apache/thrift/protocol/b;->e:Lorg/apache/thrift/a;

    invoke-virtual {v0}, Lorg/apache/thrift/a;->a()S

    move-result v0

    iput-short v0, p0, Lorg/apache/thrift/protocol/b;->f:S

    return-void
.end method

.method public final f()Lorg/apache/thrift/protocol/c;
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 0
    invoke-virtual {p0}, Lorg/apache/thrift/protocol/b;->k()B

    move-result v3

    if-nez v3, :cond_0

    sget-object v0, Lorg/apache/thrift/protocol/b;->c:Lorg/apache/thrift/protocol/c;

    :goto_0
    return-object v0

    :cond_0
    and-int/lit16 v0, v3, 0xf0

    shr-int/lit8 v0, v0, 0x4

    int-to-short v0, v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lorg/apache/thrift/protocol/b;->l()S

    move-result v0

    :goto_1
    new-instance v1, Lorg/apache/thrift/protocol/c;

    const-string v4, ""

    and-int/lit8 v5, v3, 0xf

    int-to-byte v5, v5

    invoke-static {v5}, Lorg/apache/thrift/protocol/b;->b(B)B

    move-result v5

    invoke-direct {v1, v4, v5, v0}, Lorg/apache/thrift/protocol/c;-><init>(Ljava/lang/String;BS)V

    .line 15000
    and-int/lit8 v0, v3, 0xf

    if-eq v0, v2, :cond_1

    const/4 v4, 0x2

    if-ne v0, v4, :cond_4

    :cond_1
    move v0, v2

    .line 0
    :goto_2
    if-eqz v0, :cond_2

    and-int/lit8 v0, v3, 0xf

    int-to-byte v0, v0

    if-ne v0, v2, :cond_5

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_3
    iput-object v0, p0, Lorg/apache/thrift/protocol/b;->h:Ljava/lang/Boolean;

    :cond_2
    iget-short v0, v1, Lorg/apache/thrift/protocol/c;->b:S

    iput-short v0, p0, Lorg/apache/thrift/protocol/b;->f:S

    move-object v0, v1

    goto :goto_0

    :cond_3
    iget-short v1, p0, Lorg/apache/thrift/protocol/b;->f:S

    add-int/2addr v0, v1

    int-to-short v0, v0

    goto :goto_1

    .line 15000
    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    .line 0
    :cond_5
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_3
.end method

.method public final g()Lorg/apache/thrift/protocol/e;
    .locals 4

    invoke-direct {p0}, Lorg/apache/thrift/protocol/b;->s()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    new-instance v2, Lorg/apache/thrift/protocol/e;

    shr-int/lit8 v3, v0, 0x4

    int-to-byte v3, v3

    invoke-static {v3}, Lorg/apache/thrift/protocol/b;->b(B)B

    move-result v3

    and-int/lit8 v0, v0, 0xf

    int-to-byte v0, v0

    invoke-static {v0}, Lorg/apache/thrift/protocol/b;->b(B)B

    move-result v0

    invoke-direct {v2, v3, v0, v1}, Lorg/apache/thrift/protocol/e;-><init>(BBI)V

    return-object v2

    :cond_0
    invoke-virtual {p0}, Lorg/apache/thrift/protocol/b;->k()B

    move-result v0

    goto :goto_0
.end method

.method public final h()Lorg/apache/thrift/protocol/d;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/thrift/protocol/b;->k()B

    move-result v1

    shr-int/lit8 v0, v1, 0x4

    and-int/lit8 v0, v0, 0xf

    const/16 v2, 0xf

    if-ne v0, v2, :cond_0

    invoke-direct {p0}, Lorg/apache/thrift/protocol/b;->s()I

    move-result v0

    :cond_0
    invoke-static {v1}, Lorg/apache/thrift/protocol/b;->b(B)B

    move-result v1

    new-instance v2, Lorg/apache/thrift/protocol/d;

    invoke-direct {v2, v1, v0}, Lorg/apache/thrift/protocol/d;-><init>(BI)V

    return-object v2
.end method

.method public final i()Lorg/apache/thrift/protocol/j;
    .locals 2

    new-instance v0, Lorg/apache/thrift/protocol/j;

    invoke-virtual {p0}, Lorg/apache/thrift/protocol/b;->h()Lorg/apache/thrift/protocol/d;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/thrift/protocol/j;-><init>(Lorg/apache/thrift/protocol/d;)V

    return-object v0
.end method

.method public final j()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lorg/apache/thrift/protocol/b;->h:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lorg/apache/thrift/protocol/b;->h:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/thrift/protocol/b;->h:Ljava/lang/Boolean;

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/thrift/protocol/b;->k()B

    move-result v1

    if-eq v1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final k()B
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/apache/thrift/protocol/b;->a:Lorg/apache/thrift/transport/c;

    invoke-virtual {v0}, Lorg/apache/thrift/transport/c;->c()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/apache/thrift/protocol/b;->a:Lorg/apache/thrift/transport/c;

    invoke-virtual {v0}, Lorg/apache/thrift/transport/c;->a()[B

    move-result-object v0

    iget-object v1, p0, Lorg/apache/thrift/protocol/b;->a:Lorg/apache/thrift/transport/c;

    invoke-virtual {v1}, Lorg/apache/thrift/transport/c;->b()I

    move-result v1

    aget-byte v0, v0, v1

    iget-object v1, p0, Lorg/apache/thrift/protocol/b;->a:Lorg/apache/thrift/transport/c;

    invoke-virtual {v1, v3}, Lorg/apache/thrift/transport/c;->a(I)V

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/thrift/protocol/b;->a:Lorg/apache/thrift/transport/c;

    iget-object v1, p0, Lorg/apache/thrift/protocol/b;->l:[B

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/thrift/transport/c;->d([BII)I

    iget-object v0, p0, Lorg/apache/thrift/protocol/b;->l:[B

    aget-byte v0, v0, v2

    goto :goto_0
.end method

.method public final l()S
    .locals 1

    invoke-direct {p0}, Lorg/apache/thrift/protocol/b;->s()I

    move-result v0

    invoke-static {v0}, Lorg/apache/thrift/protocol/b;->d(I)I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public final m()I
    .locals 1

    invoke-direct {p0}, Lorg/apache/thrift/protocol/b;->s()I

    move-result v0

    invoke-static {v0}, Lorg/apache/thrift/protocol/b;->d(I)I

    move-result v0

    return v0
.end method

.method public final n()J
    .locals 11

    .prologue
    const/16 v10, 0x80

    const/4 v0, 0x0

    .line 0
    .line 16000
    const-wide/16 v2, 0x0

    iget-object v1, p0, Lorg/apache/thrift/protocol/b;->a:Lorg/apache/thrift/transport/c;

    invoke-virtual {v1}, Lorg/apache/thrift/transport/c;->c()I

    move-result v1

    const/16 v4, 0xa

    if-lt v1, v4, :cond_2

    iget-object v1, p0, Lorg/apache/thrift/protocol/b;->a:Lorg/apache/thrift/transport/c;

    invoke-virtual {v1}, Lorg/apache/thrift/transport/c;->a()[B

    move-result-object v4

    iget-object v1, p0, Lorg/apache/thrift/protocol/b;->a:Lorg/apache/thrift/transport/c;

    invoke-virtual {v1}, Lorg/apache/thrift/transport/c;->b()I

    move-result v5

    move v1, v0

    :goto_0
    add-int v6, v5, v0

    aget-byte v6, v4, v6

    and-int/lit8 v7, v6, 0x7f

    int-to-long v8, v7

    shl-long/2addr v8, v1

    or-long/2addr v2, v8

    and-int/lit16 v6, v6, 0x80

    if-ne v6, v10, :cond_0

    add-int/lit8 v1, v1, 0x7

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/apache/thrift/protocol/b;->a:Lorg/apache/thrift/transport/c;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lorg/apache/thrift/transport/c;->a(I)V

    .line 17000
    :cond_1
    const/4 v0, 0x1

    ushr-long v0, v2, v0

    const-wide/16 v4, 0x1

    and-long/2addr v2, v4

    neg-long v2, v2

    xor-long/2addr v0, v2

    .line 0
    return-wide v0

    .line 16000
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lorg/apache/thrift/protocol/b;->k()B

    move-result v1

    and-int/lit8 v4, v1, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v0

    or-long/2addr v2, v4

    and-int/lit16 v1, v1, 0x80

    if-ne v1, v10, :cond_1

    add-int/lit8 v0, v0, 0x7

    goto :goto_1
.end method

.method public final o()D
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/16 v8, 0x8

    const-wide/16 v6, 0xff

    .line 0
    new-array v0, v8, [B

    iget-object v1, p0, Lorg/apache/thrift/protocol/b;->a:Lorg/apache/thrift/transport/c;

    invoke-virtual {v1, v0, v9, v8}, Lorg/apache/thrift/transport/c;->d([BII)I

    .line 18000
    const/4 v1, 0x7

    aget-byte v1, v0, v1

    int-to-long v2, v1

    and-long/2addr v2, v6

    const/16 v1, 0x38

    shl-long/2addr v2, v1

    const/4 v1, 0x6

    aget-byte v1, v0, v1

    int-to-long v4, v1

    and-long/2addr v4, v6

    const/16 v1, 0x30

    shl-long/2addr v4, v1

    or-long/2addr v2, v4

    const/4 v1, 0x5

    aget-byte v1, v0, v1

    int-to-long v4, v1

    and-long/2addr v4, v6

    const/16 v1, 0x28

    shl-long/2addr v4, v1

    or-long/2addr v2, v4

    const/4 v1, 0x4

    aget-byte v1, v0, v1

    int-to-long v4, v1

    and-long/2addr v4, v6

    const/16 v1, 0x20

    shl-long/2addr v4, v1

    or-long/2addr v2, v4

    const/4 v1, 0x3

    aget-byte v1, v0, v1

    int-to-long v4, v1

    and-long/2addr v4, v6

    const/16 v1, 0x18

    shl-long/2addr v4, v1

    or-long/2addr v2, v4

    const/4 v1, 0x2

    aget-byte v1, v0, v1

    int-to-long v4, v1

    and-long/2addr v4, v6

    const/16 v1, 0x10

    shl-long/2addr v4, v1

    or-long/2addr v2, v4

    const/4 v1, 0x1

    aget-byte v1, v0, v1

    int-to-long v4, v1

    and-long/2addr v4, v6

    shl-long/2addr v4, v8

    or-long/2addr v2, v4

    aget-byte v0, v0, v9

    int-to-long v0, v0

    and-long/2addr v0, v6

    or-long/2addr v0, v2

    .line 0
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public final p()Ljava/lang/String;
    .locals 5

    .prologue
    .line 0
    invoke-direct {p0}, Lorg/apache/thrift/protocol/b;->s()I

    move-result v2

    if-nez v2, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/thrift/protocol/b;->a:Lorg/apache/thrift/transport/c;

    invoke-virtual {v0}, Lorg/apache/thrift/transport/c;->c()I

    move-result v0

    if-lt v0, v2, :cond_1

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/thrift/protocol/b;->a:Lorg/apache/thrift/transport/c;

    invoke-virtual {v1}, Lorg/apache/thrift/transport/c;->a()[B

    move-result-object v1

    iget-object v3, p0, Lorg/apache/thrift/protocol/b;->a:Lorg/apache/thrift/transport/c;

    invoke-virtual {v3}, Lorg/apache/thrift/transport/c;->b()I

    move-result v3

    const-string v4, "UTF-8"

    invoke-direct {v0, v1, v3, v2, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iget-object v1, p0, Lorg/apache/thrift/protocol/b;->a:Lorg/apache/thrift/transport/c;

    invoke-virtual {v1, v2}, Lorg/apache/thrift/transport/c;->a(I)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Lorg/apache/thrift/e;

    const-string v1, "UTF-8 not supported!"

    invoke-direct {v0, v1}, Lorg/apache/thrift/e;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/String;

    .line 19000
    if-nez v2, :cond_2

    const/4 v1, 0x0

    new-array v1, v1, [B

    .line 0
    :goto_1
    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_0

    .line 19000
    :cond_2
    new-array v1, v2, [B

    iget-object v3, p0, Lorg/apache/thrift/protocol/b;->a:Lorg/apache/thrift/transport/c;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4, v2}, Lorg/apache/thrift/transport/c;->d([BII)I
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public final q()Ljava/nio/ByteBuffer;
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Lorg/apache/thrift/protocol/b;->s()I

    move-result v0

    if-nez v0, :cond_0

    new-array v0, v3, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-array v1, v0, [B

    iget-object v2, p0, Lorg/apache/thrift/protocol/b;->a:Lorg/apache/thrift/transport/c;

    invoke-virtual {v2, v1, v3, v0}, Lorg/apache/thrift/transport/c;->d([BII)I

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0
.end method

.method public final r()V
    .locals 1

    iget-object v0, p0, Lorg/apache/thrift/protocol/b;->e:Lorg/apache/thrift/a;

    invoke-virtual {v0}, Lorg/apache/thrift/a;->b()V

    const/4 v0, 0x0

    iput-short v0, p0, Lorg/apache/thrift/protocol/b;->f:S

    return-void
.end method
