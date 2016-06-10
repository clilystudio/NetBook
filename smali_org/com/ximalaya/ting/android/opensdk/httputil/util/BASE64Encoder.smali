.class public Lcom/ximalaya/ting/android/opensdk/httputil/util/BASE64Encoder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEFAULT_ENCODING:Ljava/lang/String; = "UTF-8"

.field private static final ENCODE_TABLE:[C

.field private static final LAST2BYTE:C

.field private static final LAST4BYTE:C

.field private static final LAST6BYTE:C

.field private static final LEAD2BYTE:C

.field private static final LEAD4BYTE:C

.field private static final LEAD6BYTE:C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 19
    const-string v0, "00000011"

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    int-to-char v0, v0

    .line 18
    sput-char v0, Lcom/ximalaya/ting/android/opensdk/httputil/util/BASE64Encoder;->LAST2BYTE:C

    .line 21
    const-string v0, "00001111"

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    int-to-char v0, v0

    .line 20
    sput-char v0, Lcom/ximalaya/ting/android/opensdk/httputil/util/BASE64Encoder;->LAST4BYTE:C

    .line 23
    const-string v0, "00111111"

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    int-to-char v0, v0

    .line 22
    sput-char v0, Lcom/ximalaya/ting/android/opensdk/httputil/util/BASE64Encoder;->LAST6BYTE:C

    .line 25
    const-string v0, "11111100"

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    int-to-char v0, v0

    .line 24
    sput-char v0, Lcom/ximalaya/ting/android/opensdk/httputil/util/BASE64Encoder;->LEAD6BYTE:C

    .line 27
    const-string v0, "11110000"

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    int-to-char v0, v0

    .line 26
    sput-char v0, Lcom/ximalaya/ting/android/opensdk/httputil/util/BASE64Encoder;->LEAD4BYTE:C

    .line 29
    const-string v0, "11000000"

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    int-to-char v0, v0

    .line 28
    sput-char v0, Lcom/ximalaya/ting/android/opensdk/httputil/util/BASE64Encoder;->LEAD2BYTE:C

    .line 30
    const/16 v0, 0x40

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/ximalaya/ting/android/opensdk/httputil/util/BASE64Encoder;->ENCODE_TABLE:[C

    .line 36
    return-void

    .line 30
    nop

    :array_0
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
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
        0x2bs
        0x2fs
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public static encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/httputil/util/BASE64Encoder;->encode([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encode([B)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 58
    new-instance v3, Ljava/lang/StringBuffer;

    array-length v1, p0

    int-to-double v4, v1

    const-wide v6, 0x3ff570a3d70a3d71L

    mul-double/2addr v4, v6

    double-to-int v1, v4

    add-int/lit8 v1, v1, 0x3

    invoke-direct {v3, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    move v1, v0

    move v2, v0

    .line 61
    :goto_0
    array-length v4, p0

    if-lt v0, v4, :cond_1

    .line 96
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x4

    rsub-int/lit8 v0, v0, 0x4

    :goto_1
    if-gtz v0, :cond_4

    .line 103
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 63
    :cond_1
    rem-int/lit8 v2, v2, 0x8

    .line 64
    :goto_2
    const/16 v4, 0x8

    if-lt v2, v4, :cond_2

    .line 61
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 66
    :cond_2
    packed-switch v2, :pswitch_data_0

    .line 92
    :cond_3
    :goto_3
    :pswitch_0
    sget-object v4, Lcom/ximalaya/ting/android/opensdk/httputil/util/BASE64Encoder;->ENCODE_TABLE:[C

    aget-char v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 93
    add-int/lit8 v2, v2, 0x6

    goto :goto_2

    .line 69
    :pswitch_1
    aget-byte v1, p0, v0

    sget-char v4, Lcom/ximalaya/ting/android/opensdk/httputil/util/BASE64Encoder;->LEAD6BYTE:C

    and-int/2addr v1, v4

    int-to-char v1, v1

    .line 70
    ushr-int/lit8 v1, v1, 0x2

    int-to-char v1, v1

    .line 71
    goto :goto_3

    .line 73
    :pswitch_2
    aget-byte v1, p0, v0

    sget-char v4, Lcom/ximalaya/ting/android/opensdk/httputil/util/BASE64Encoder;->LAST6BYTE:C

    and-int/2addr v1, v4

    int-to-char v1, v1

    .line 74
    goto :goto_3

    .line 76
    :pswitch_3
    aget-byte v1, p0, v0

    sget-char v4, Lcom/ximalaya/ting/android/opensdk/httputil/util/BASE64Encoder;->LAST4BYTE:C

    and-int/2addr v1, v4

    int-to-char v1, v1

    .line 77
    shl-int/lit8 v1, v1, 0x2

    int-to-char v1, v1

    .line 78
    add-int/lit8 v4, v0, 0x1

    array-length v5, p0

    if-ge v4, v5, :cond_3

    .line 80
    add-int/lit8 v4, v0, 0x1

    aget-byte v4, p0, v4

    sget-char v5, Lcom/ximalaya/ting/android/opensdk/httputil/util/BASE64Encoder;->LEAD2BYTE:C

    and-int/2addr v4, v5

    ushr-int/lit8 v4, v4, 0x6

    or-int/2addr v1, v4

    int-to-char v1, v1

    .line 82
    goto :goto_3

    .line 84
    :pswitch_4
    aget-byte v1, p0, v0

    sget-char v4, Lcom/ximalaya/ting/android/opensdk/httputil/util/BASE64Encoder;->LAST2BYTE:C

    and-int/2addr v1, v4

    int-to-char v1, v1

    .line 85
    shl-int/lit8 v1, v1, 0x4

    int-to-char v1, v1

    .line 86
    add-int/lit8 v4, v0, 0x1

    array-length v5, p0

    if-ge v4, v5, :cond_3

    .line 88
    add-int/lit8 v4, v0, 0x1

    aget-byte v4, p0, v4

    sget-char v5, Lcom/ximalaya/ting/android/opensdk/httputil/util/BASE64Encoder;->LEAD4BYTE:C

    and-int/2addr v4, v5

    ushr-int/lit8 v4, v4, 0x4

    or-int/2addr v1, v4

    int-to-char v1, v1

    goto :goto_3

    .line 100
    :cond_4
    const-string v1, "="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 98
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 66
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
