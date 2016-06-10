.class public Lm/framework/utils/HEX;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DIGITS:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 4
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lm/framework/utils/HEX;->DIGITS:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeHex([C)[B
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 43
    array-length v2, p0

    .line 45
    and-int/lit8 v1, v2, 0x1

    if-eqz v1, :cond_0

    .line 46
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Odd number of characters."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_0
    shr-int/lit8 v1, v2, 0x1

    new-array v3, v1, [B

    move v1, v0

    .line 52
    :goto_0
    if-lt v0, v2, :cond_1

    .line 60
    return-object v3

    .line 53
    :cond_1
    aget-char v4, p0, v0

    invoke-static {v4, v0}, Lm/framework/utils/HEX;->toDigit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    .line 54
    add-int/lit8 v0, v0, 0x1

    .line 55
    aget-char v5, p0, v0

    invoke-static {v5, v0}, Lm/framework/utils/HEX;->toDigit(CI)I

    move-result v5

    or-int/2addr v4, v5

    .line 56
    add-int/lit8 v0, v0, 0x1

    .line 57
    int-to-byte v4, v4

    aput-byte v4, v3, v1

    .line 52
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static decodeHexString(Ljava/lang/String;)[B
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0}, Lm/framework/utils/HEX;->decodeHex([C)[B

    move-result-object v0

    return-object v0
.end method

.method public static encodeHex([B)[C
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 72
    array-length v2, p0

    .line 74
    shl-int/lit8 v1, v2, 0x1

    new-array v3, v1, [C

    move v1, v0

    .line 77
    :goto_0
    if-lt v1, v2, :cond_0

    .line 82
    return-object v3

    .line 78
    :cond_0
    add-int/lit8 v4, v0, 0x1

    sget-object v5, Lm/framework/utils/HEX;->DIGITS:[C

    aget-byte v6, p0, v1

    and-int/lit16 v6, v6, 0xf0

    ushr-int/lit8 v6, v6, 0x4

    aget-char v5, v5, v6

    aput-char v5, v3, v0

    .line 79
    add-int/lit8 v0, v4, 0x1

    sget-object v5, Lm/framework/utils/HEX;->DIGITS:[C

    aget-byte v6, p0, v1

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    aput-char v5, v3, v4

    .line 77
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static encodeHexString([B)Ljava/lang/String;
    .locals 2

    .prologue
    .line 34
    invoke-static {p0}, Lm/framework/utils/HEX;->encodeHex([B)[C

    move-result-object v0

    .line 35
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method public static toByte(Ljava/lang/String;)[B
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 15
    if-nez p0, :cond_1

    .line 30
    :cond_0
    return-object v0

    .line 19
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 20
    rem-int/lit8 v2, v1, 0x2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 24
    div-int/lit8 v2, v1, 0x2

    .line 25
    new-array v0, v2, [B

    .line 26
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 28
    shl-int/lit8 v3, v1, 0x1

    shl-int/lit8 v4, v1, 0x1

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 26
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected static toDigit(CI)I
    .locals 3

    .prologue
    .line 64
    const/16 v0, 0x10

    invoke-static {p0, v0}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    .line 65
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 66
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Illegal hexadecimal charcter "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_0
    return v0
.end method

.method public static toHex([B)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 7
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    move v0, v1

    .line 8
    :goto_0
    array-length v3, p0

    if-lt v0, v3, :cond_0

    .line 11
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 9
    :cond_0
    const-string v3, "%02x"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aget-byte v5, p0, v0

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 8
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public decode(Ljava/lang/Object;)[B
    .locals 2

    .prologue
    .line 91
    :try_start_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    .line 92
    :goto_0
    invoke-static {p1}, Lm/framework/utils/HEX;->decodeHex([C)[B

    move-result-object v0

    return-object v0

    .line 91
    :cond_0
    check-cast p1, [C
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 93
    :catch_0
    move-exception v0

    .line 95
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public decode([B)[B
    .locals 1

    .prologue
    .line 86
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0}, Lm/framework/utils/HEX;->decodeHex([C)[B

    move-result-object v0

    return-object v0
.end method

.method public encode([B)[B
    .locals 2

    .prologue
    .line 100
    new-instance v0, Ljava/lang/String;

    invoke-static {p1}, Lm/framework/utils/HEX;->encodeHex([B)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/Object;)[C
    .locals 2

    .prologue
    .line 105
    :try_start_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 106
    :goto_0
    invoke-static {p1}, Lm/framework/utils/HEX;->encodeHex([B)[C

    move-result-object v0

    return-object v0

    .line 105
    :cond_0
    check-cast p1, [B
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 107
    :catch_0
    move-exception v0

    .line 109
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
