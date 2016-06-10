.class public final Lcom/integralblue/httpresponsecache/compat/libcore/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 131
    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/integralblue/httpresponsecache/compat/libcore/a/a;->a:[B

    return-void

    :array_0
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data
.end method

.method public static a([B)[B
    .locals 15

    .prologue
    const/16 v13, 0x20

    const/16 v12, 0xd

    const/16 v11, 0xa

    const/16 v10, 0x9

    const/4 v1, 0x0

    .line 39
    array-length v0, p0

    .line 1044
    div-int/lit8 v2, v0, 0x4

    mul-int/lit8 v2, v2, 0x3

    .line 1046
    if-nez v2, :cond_0

    .line 1047
    sget-object v0, Lcom/integralblue/httpresponsecache/compat/libcore/b/a;->a:[B

    .line 1104
    :goto_0
    return-object v0

    .line 1050
    :cond_0
    new-array v8, v2, [B

    move v2, v0

    move v0, v1

    .line 1057
    :goto_1
    add-int/lit8 v3, v2, -0x1

    aget-byte v3, p0, v3

    .line 1059
    if-eq v3, v11, :cond_1

    if-eq v3, v12, :cond_1

    if-eq v3, v13, :cond_1

    if-eq v3, v10, :cond_1

    .line 1063
    const/16 v4, 0x3d

    if-ne v3, v4, :cond_2

    .line 1064
    add-int/lit8 v0, v0, 0x1

    .line 1056
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_2
    move v7, v1

    move v5, v1

    move v6, v1

    move v4, v1

    .line 1077
    :goto_2
    if-ge v7, v2, :cond_8

    .line 1078
    aget-byte v3, p0, v7

    .line 1080
    if-eq v3, v11, :cond_c

    if-eq v3, v12, :cond_c

    if-eq v3, v13, :cond_c

    if-eq v3, v10, :cond_c

    .line 1084
    const/16 v9, 0x41

    if-lt v3, v9, :cond_3

    const/16 v9, 0x5a

    if-gt v3, v9, :cond_3

    .line 1088
    add-int/lit8 v3, v3, -0x41

    .line 1107
    :goto_3
    shl-int/lit8 v5, v5, 0x6

    int-to-byte v3, v3

    or-int/2addr v5, v3

    .line 1108
    rem-int/lit8 v3, v6, 0x4

    const/4 v9, 0x3

    if-ne v3, v9, :cond_b

    .line 1110
    add-int/lit8 v3, v4, 0x1

    shr-int/lit8 v9, v5, 0x10

    int-to-byte v9, v9

    aput-byte v9, v8, v4

    .line 1111
    add-int/lit8 v4, v3, 0x1

    shr-int/lit8 v9, v5, 0x8

    int-to-byte v9, v9

    aput-byte v9, v8, v3

    .line 1112
    add-int/lit8 v3, v4, 0x1

    int-to-byte v9, v5

    aput-byte v9, v8, v4

    .line 1114
    :goto_4
    add-int/lit8 v4, v6, 0x1

    move v14, v5

    move v5, v3

    move v3, v14

    .line 1077
    :goto_5
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    move v6, v4

    move v4, v5

    move v5, v3

    goto :goto_2

    .line 1089
    :cond_3
    const/16 v9, 0x61

    if-lt v3, v9, :cond_4

    const/16 v9, 0x7a

    if-gt v3, v9, :cond_4

    .line 1093
    add-int/lit8 v3, v3, -0x47

    goto :goto_3

    .line 1094
    :cond_4
    const/16 v9, 0x30

    if-lt v3, v9, :cond_5

    const/16 v9, 0x39

    if-gt v3, v9, :cond_5

    .line 1098
    add-int/lit8 v3, v3, 0x4

    goto :goto_3

    .line 1099
    :cond_5
    const/16 v9, 0x2b

    if-ne v3, v9, :cond_6

    .line 1100
    const/16 v3, 0x3e

    goto :goto_3

    .line 1101
    :cond_6
    const/16 v9, 0x2f

    if-ne v3, v9, :cond_7

    .line 1102
    const/16 v3, 0x3f

    goto :goto_3

    .line 1104
    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1116
    :cond_8
    if-lez v0, :cond_9

    .line 1118
    mul-int/lit8 v2, v0, 0x6

    shl-int v3, v5, v2

    .line 1120
    add-int/lit8 v2, v4, 0x1

    shr-int/lit8 v5, v3, 0x10

    int-to-byte v5, v5

    aput-byte v5, v8, v4

    .line 1121
    const/4 v4, 0x1

    if-ne v0, v4, :cond_a

    .line 1122
    add-int/lit8 v4, v2, 0x1

    shr-int/lit8 v0, v3, 0x8

    int-to-byte v0, v0

    aput-byte v0, v8, v2

    .line 1126
    :cond_9
    :goto_6
    new-array v0, v4, [B

    .line 1127
    invoke-static {v8, v1, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_0

    :cond_a
    move v4, v2

    goto :goto_6

    :cond_b
    move v3, v4

    goto :goto_4

    :cond_c
    move v3, v5

    move v5, v4

    move v4, v6

    goto :goto_5
.end method

.method public static b([B)Ljava/lang/String;
    .locals 10

    .prologue
    const/16 v9, 0x3d

    const/4 v2, 0x0

    .line 139
    array-length v0, p0

    add-int/lit8 v0, v0, 0x2

    shl-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    .line 140
    new-array v4, v0, [B

    .line 141
    array-length v0, p0

    array-length v1, p0

    rem-int/lit8 v1, v1, 0x3

    sub-int v5, v0, v1

    move v1, v2

    move v0, v2

    .line 142
    :goto_0
    if-ge v1, v5, :cond_0

    .line 143
    add-int/lit8 v3, v0, 0x1

    sget-object v6, Lcom/integralblue/httpresponsecache/compat/libcore/a/a;->a:[B

    aget-byte v7, p0, v1

    and-int/lit16 v7, v7, 0xff

    shr-int/lit8 v7, v7, 0x2

    aget-byte v6, v6, v7

    aput-byte v6, v4, v0

    .line 144
    add-int/lit8 v0, v3, 0x1

    sget-object v6, Lcom/integralblue/httpresponsecache/compat/libcore/a/a;->a:[B

    aget-byte v7, p0, v1

    and-int/lit8 v7, v7, 0x3

    shl-int/lit8 v7, v7, 0x4

    add-int/lit8 v8, v1, 0x1

    aget-byte v8, p0, v8

    and-int/lit16 v8, v8, 0xff

    shr-int/lit8 v8, v8, 0x4

    or-int/2addr v7, v8

    aget-byte v6, v6, v7

    aput-byte v6, v4, v3

    .line 145
    add-int/lit8 v6, v0, 0x1

    sget-object v3, Lcom/integralblue/httpresponsecache/compat/libcore/a/a;->a:[B

    add-int/lit8 v7, v1, 0x1

    aget-byte v7, p0, v7

    and-int/lit8 v7, v7, 0xf

    shl-int/lit8 v7, v7, 0x2

    add-int/lit8 v8, v1, 0x2

    aget-byte v8, p0, v8

    and-int/lit16 v8, v8, 0xff

    shr-int/lit8 v8, v8, 0x6

    or-int/2addr v7, v8

    aget-byte v3, v3, v7

    aput-byte v3, v4, v0

    .line 146
    add-int/lit8 v3, v6, 0x1

    sget-object v0, Lcom/integralblue/httpresponsecache/compat/libcore/a/a;->a:[B

    add-int/lit8 v7, v1, 0x2

    aget-byte v7, p0, v7

    and-int/lit8 v7, v7, 0x3f

    aget-byte v0, v0, v7

    aput-byte v0, v4, v6

    .line 142
    add-int/lit8 v0, v1, 0x3

    move v1, v0

    move v0, v3

    goto :goto_0

    .line 148
    :cond_0
    array-length v1, p0

    rem-int/lit8 v1, v1, 0x3

    packed-switch v1, :pswitch_data_0

    .line 162
    :goto_1
    sget-object v1, Lcom/integralblue/httpresponsecache/compat/a;->b:Ljava/nio/charset/Charset;

    invoke-static {v4, v2, v0, v1}, Lcom/integralblue/httpresponsecache/compat/c;->a([BIILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 150
    :pswitch_0
    add-int/lit8 v1, v0, 0x1

    sget-object v3, Lcom/integralblue/httpresponsecache/compat/libcore/a/a;->a:[B

    aget-byte v6, p0, v5

    and-int/lit16 v6, v6, 0xff

    shr-int/lit8 v6, v6, 0x2

    aget-byte v3, v3, v6

    aput-byte v3, v4, v0

    .line 151
    add-int/lit8 v0, v1, 0x1

    sget-object v3, Lcom/integralblue/httpresponsecache/compat/libcore/a/a;->a:[B

    aget-byte v5, p0, v5

    and-int/lit8 v5, v5, 0x3

    shl-int/lit8 v5, v5, 0x4

    aget-byte v3, v3, v5

    aput-byte v3, v4, v1

    .line 152
    add-int/lit8 v1, v0, 0x1

    aput-byte v9, v4, v0

    .line 153
    add-int/lit8 v0, v1, 0x1

    aput-byte v9, v4, v1

    goto :goto_1

    .line 156
    :pswitch_1
    add-int/lit8 v1, v0, 0x1

    sget-object v3, Lcom/integralblue/httpresponsecache/compat/libcore/a/a;->a:[B

    aget-byte v6, p0, v5

    and-int/lit16 v6, v6, 0xff

    shr-int/lit8 v6, v6, 0x2

    aget-byte v3, v3, v6

    aput-byte v3, v4, v0

    .line 157
    add-int/lit8 v0, v1, 0x1

    sget-object v3, Lcom/integralblue/httpresponsecache/compat/libcore/a/a;->a:[B

    aget-byte v6, p0, v5

    and-int/lit8 v6, v6, 0x3

    shl-int/lit8 v6, v6, 0x4

    add-int/lit8 v7, v5, 0x1

    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    shr-int/lit8 v7, v7, 0x4

    or-int/2addr v6, v7

    aget-byte v3, v3, v6

    aput-byte v3, v4, v1

    .line 158
    add-int/lit8 v1, v0, 0x1

    sget-object v3, Lcom/integralblue/httpresponsecache/compat/libcore/a/a;->a:[B

    add-int/lit8 v5, v5, 0x1

    aget-byte v5, p0, v5

    and-int/lit8 v5, v5, 0xf

    shl-int/lit8 v5, v5, 0x2

    aget-byte v3, v3, v5

    aput-byte v3, v4, v0

    .line 159
    add-int/lit8 v0, v1, 0x1

    aput-byte v9, v4, v1

    goto :goto_1

    .line 148
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
