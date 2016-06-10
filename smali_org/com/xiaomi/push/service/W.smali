.class public final Lcom/xiaomi/push/service/W;
.super Ljava/lang/Object;


# instance fields
.field private a:[B

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, -0x29a

    iput v0, p0, Lcom/xiaomi/push/service/W;->d:I

    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/xiaomi/push/service/W;->a:[B

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/push/service/W;->c:I

    iput v0, p0, Lcom/xiaomi/push/service/W;->b:I

    return-void
.end method

.method private static a(B)I
    .locals 0

    if-ltz p0, :cond_0

    :goto_0
    return p0

    :cond_0
    add-int/lit16 p0, p0, 0x100

    goto :goto_0
.end method

.method public static a([BLjava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {p0, v0}, Lcom/xiaomi/push/service/W;->a([B[B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/a/a/d/a;->a([B)[C

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a([BII)V
    .locals 2

    aget-byte v0, p0, p1

    aget-byte v1, p0, p2

    aput-byte v1, p0, p1

    aput-byte v0, p0, p2

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 6

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/xiaomi/a/a/d/a;->a(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v0, v2

    add-int/lit8 v0, v0, 0x1

    array-length v4, v3

    add-int/2addr v0, v4

    new-array v4, v0, [B

    move v0, v1

    :goto_0
    array-length v5, v2

    if-ge v0, v5, :cond_0

    aget-byte v5, v2, v0

    aput-byte v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    array-length v0, v2

    const/16 v5, 0x5f

    aput-byte v5, v4, v0

    :goto_1
    array-length v0, v3

    if-ge v1, v0, :cond_1

    array-length v0, v2

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v1

    aget-byte v5, v3, v1

    aput-byte v5, v4, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-object v4
.end method

.method public static a([B[B)[B
    .locals 8

    .prologue
    const/16 v7, 0x100

    const/4 v0, 0x0

    .line 0
    array-length v1, p1

    new-array v2, v1, [B

    new-instance v3, Lcom/xiaomi/push/service/W;

    invoke-direct {v3}, Lcom/xiaomi/push/service/W;-><init>()V

    .line 2000
    array-length v4, p0

    move v1, v0

    :goto_0
    if-ge v1, v7, :cond_0

    iget-object v5, v3, Lcom/xiaomi/push/service/W;->a:[B

    int-to-byte v6, v1

    aput-byte v6, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput v0, v3, Lcom/xiaomi/push/service/W;->c:I

    iput v0, v3, Lcom/xiaomi/push/service/W;->b:I

    :goto_1
    iget v1, v3, Lcom/xiaomi/push/service/W;->b:I

    if-ge v1, v7, :cond_1

    iget v1, v3, Lcom/xiaomi/push/service/W;->c:I

    iget-object v5, v3, Lcom/xiaomi/push/service/W;->a:[B

    iget v6, v3, Lcom/xiaomi/push/service/W;->b:I

    aget-byte v5, v5, v6

    invoke-static {v5}, Lcom/xiaomi/push/service/W;->a(B)I

    move-result v5

    add-int/2addr v1, v5

    iget v5, v3, Lcom/xiaomi/push/service/W;->b:I

    rem-int/2addr v5, v4

    aget-byte v5, p0, v5

    invoke-static {v5}, Lcom/xiaomi/push/service/W;->a(B)I

    move-result v5

    add-int/2addr v1, v5

    rem-int/lit16 v1, v1, 0x100

    iput v1, v3, Lcom/xiaomi/push/service/W;->c:I

    iget-object v1, v3, Lcom/xiaomi/push/service/W;->a:[B

    iget v5, v3, Lcom/xiaomi/push/service/W;->b:I

    iget v6, v3, Lcom/xiaomi/push/service/W;->c:I

    invoke-static {v1, v5, v6}, Lcom/xiaomi/push/service/W;->a([BII)V

    iget v1, v3, Lcom/xiaomi/push/service/W;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v3, Lcom/xiaomi/push/service/W;->b:I

    goto :goto_1

    .line 3000
    :cond_1
    iput v0, v3, Lcom/xiaomi/push/service/W;->c:I

    iput v0, v3, Lcom/xiaomi/push/service/W;->b:I

    .line 0
    :goto_2
    array-length v1, p1

    if-ge v0, v1, :cond_2

    aget-byte v1, p1, v0

    .line 4000
    iget v4, v3, Lcom/xiaomi/push/service/W;->b:I

    add-int/lit8 v4, v4, 0x1

    rem-int/lit16 v4, v4, 0x100

    iput v4, v3, Lcom/xiaomi/push/service/W;->b:I

    iget v4, v3, Lcom/xiaomi/push/service/W;->c:I

    iget-object v5, v3, Lcom/xiaomi/push/service/W;->a:[B

    iget v6, v3, Lcom/xiaomi/push/service/W;->b:I

    aget-byte v5, v5, v6

    invoke-static {v5}, Lcom/xiaomi/push/service/W;->a(B)I

    move-result v5

    add-int/2addr v4, v5

    rem-int/lit16 v4, v4, 0x100

    iput v4, v3, Lcom/xiaomi/push/service/W;->c:I

    iget-object v4, v3, Lcom/xiaomi/push/service/W;->a:[B

    iget v5, v3, Lcom/xiaomi/push/service/W;->b:I

    iget v6, v3, Lcom/xiaomi/push/service/W;->c:I

    invoke-static {v4, v5, v6}, Lcom/xiaomi/push/service/W;->a([BII)V

    iget-object v4, v3, Lcom/xiaomi/push/service/W;->a:[B

    iget-object v5, v3, Lcom/xiaomi/push/service/W;->a:[B

    iget v6, v3, Lcom/xiaomi/push/service/W;->b:I

    aget-byte v5, v5, v6

    invoke-static {v5}, Lcom/xiaomi/push/service/W;->a(B)I

    move-result v5

    iget-object v6, v3, Lcom/xiaomi/push/service/W;->a:[B

    iget v7, v3, Lcom/xiaomi/push/service/W;->c:I

    aget-byte v6, v6, v7

    invoke-static {v6}, Lcom/xiaomi/push/service/W;->a(B)I

    move-result v6

    add-int/2addr v5, v6

    rem-int/lit16 v5, v5, 0x100

    aget-byte v4, v4, v5

    .line 0
    xor-int/2addr v1, v4

    int-to-byte v1, v1

    aput-byte v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-object v2
.end method

.method public static b([BLjava/lang/String;)[B
    .locals 1

    invoke-static {p1}, Lcom/xiaomi/a/a/d/a;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p0, v0}, Lcom/xiaomi/push/service/W;->a([B[B)[B

    move-result-object v0

    return-object v0
.end method
