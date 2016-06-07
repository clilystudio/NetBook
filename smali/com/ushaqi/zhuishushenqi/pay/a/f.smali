.class public final Lcom/ushaqi/zhuishushenqi/pay/a/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:C

.field private static b:[B

.field private static c:[C


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v8, 0x3e

    const/16 v7, 0x3d

    const/16 v6, 0x2f

    const/16 v5, 0x2b

    const/4 v0, 0x0

    .line 12
    sput-char v7, Lcom/ushaqi/zhuishushenqi/pay/a/f;->a:C

    .line 13
    const/16 v1, 0x80

    new-array v1, v1, [B

    sput-object v1, Lcom/ushaqi/zhuishushenqi/pay/a/f;->b:[B

    .line 14
    const/16 v1, 0x40

    new-array v1, v1, [C

    sput-object v1, Lcom/ushaqi/zhuishushenqi/pay/a/f;->c:[C

    move v1, v0

    .line 17
    :goto_0
    const/16 v2, 0x80

    if-ge v1, v2, :cond_0

    .line 18
    sget-object v2, Lcom/ushaqi/zhuishushenqi/pay/a/f;->b:[B

    const/4 v3, -0x1

    aput-byte v3, v2, v1

    .line 17
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 20
    :cond_0
    const/16 v1, 0x5a

    :goto_1
    const/16 v2, 0x41

    if-lt v1, v2, :cond_1

    .line 21
    sget-object v2, Lcom/ushaqi/zhuishushenqi/pay/a/f;->b:[B

    add-int/lit8 v3, v1, -0x41

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 20
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 23
    :cond_1
    const/16 v1, 0x7a

    :goto_2
    const/16 v2, 0x61

    if-lt v1, v2, :cond_2

    .line 24
    sget-object v2, Lcom/ushaqi/zhuishushenqi/pay/a/f;->b:[B

    add-int/lit8 v3, v1, -0x61

    add-int/lit8 v3, v3, 0x1a

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 23
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 27
    :cond_2
    const/16 v1, 0x39

    :goto_3
    const/16 v2, 0x30

    if-lt v1, v2, :cond_3

    .line 28
    sget-object v2, Lcom/ushaqi/zhuishushenqi/pay/a/f;->b:[B

    add-int/lit8 v3, v1, -0x30

    add-int/lit8 v3, v3, 0x34

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 27
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 31
    :cond_3
    sget-object v1, Lcom/ushaqi/zhuishushenqi/pay/a/f;->b:[B

    aput-byte v8, v1, v5

    .line 32
    sget-object v1, Lcom/ushaqi/zhuishushenqi/pay/a/f;->b:[B

    const/16 v2, 0x3f

    aput-byte v2, v1, v6

    move v1, v0

    .line 34
    :goto_4
    const/16 v2, 0x19

    if-gt v1, v2, :cond_4

    .line 35
    sget-object v2, Lcom/ushaqi/zhuishushenqi/pay/a/f;->c:[C

    add-int/lit8 v3, v1, 0x41

    int-to-char v3, v3

    aput-char v3, v2, v1

    .line 34
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 38
    :cond_4
    const/16 v1, 0x1a

    move v2, v1

    move v1, v0

    :goto_5
    const/16 v3, 0x33

    if-gt v2, v3, :cond_5

    .line 39
    sget-object v3, Lcom/ushaqi/zhuishushenqi/pay/a/f;->c:[C

    add-int/lit8 v4, v1, 0x61

    int-to-char v4, v4

    aput-char v4, v3, v2

    .line 38
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 42
    :cond_5
    const/16 v1, 0x34

    :goto_6
    if-gt v1, v7, :cond_6

    .line 43
    sget-object v2, Lcom/ushaqi/zhuishushenqi/pay/a/f;->c:[C

    add-int/lit8 v3, v0, 0x30

    int-to-char v3, v3

    aput-char v3, v2, v1

    .line 42
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 45
    :cond_6
    sget-object v0, Lcom/ushaqi/zhuishushenqi/pay/a/f;->c:[C

    aput-char v5, v0, v8

    .line 46
    sget-object v0, Lcom/ushaqi/zhuishushenqi/pay/a/f;->c:[C

    const/16 v1, 0x3f

    aput-char v6, v0, v1

    .line 48
    return-void
.end method

.method private static a(C)Z
    .locals 1

    .prologue
    .line 55
    sget-char v0, Lcom/ushaqi/zhuishushenqi/pay/a/f;->a:C

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)[B
    .locals 14

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 154
    if-nez p0, :cond_0

    move-object v0, v3

    .line 243
    :goto_0
    return-object v0

    .line 158
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    .line 1254
    if-nez v6, :cond_2

    move v1, v2

    .line 162
    :cond_1
    rem-int/lit8 v0, v1, 0x4

    if-eqz v0, :cond_5

    move-object v0, v3

    .line 163
    goto :goto_0

    .line 1260
    :cond_2
    array-length v5, v6

    move v4, v2

    move v1, v2

    .line 1261
    :goto_1
    if-ge v4, v5, :cond_1

    .line 1262
    aget-char v0, v6, v4

    .line 2051
    const/16 v7, 0x20

    if-eq v0, v7, :cond_3

    const/16 v7, 0xd

    if-eq v0, v7, :cond_3

    const/16 v7, 0xa

    if-eq v0, v7, :cond_3

    const/16 v7, 0x9

    if-ne v0, v7, :cond_4

    :cond_3
    const/4 v0, 0x1

    .line 1262
    :goto_2
    if-nez v0, :cond_12

    .line 1263
    add-int/lit8 v0, v1, 0x1

    aget-char v7, v6, v4

    aput-char v7, v6, v1

    .line 1261
    :goto_3
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move v1, v0

    goto :goto_1

    :cond_4
    move v0, v2

    .line 2051
    goto :goto_2

    .line 166
    :cond_5
    div-int/lit8 v7, v1, 0x4

    .line 168
    if-nez v7, :cond_6

    .line 169
    new-array v0, v2, [B

    goto :goto_0

    .line 179
    :cond_6
    mul-int/lit8 v0, v7, 0x3

    new-array v0, v0, [B

    move v1, v2

    move v4, v2

    move v5, v2

    .line 181
    :goto_4
    add-int/lit8 v8, v7, -0x1

    if-ge v5, v8, :cond_9

    .line 183
    add-int/lit8 v8, v1, 0x1

    aget-char v9, v6, v1

    invoke-static {v9}, Lcom/ushaqi/zhuishushenqi/pay/a/f;->b(C)Z

    move-result v1

    if-eqz v1, :cond_7

    add-int/lit8 v1, v8, 0x1

    aget-char v8, v6, v8

    .line 184
    invoke-static {v8}, Lcom/ushaqi/zhuishushenqi/pay/a/f;->b(C)Z

    move-result v10

    if-eqz v10, :cond_7

    add-int/lit8 v10, v1, 0x1

    aget-char v11, v6, v1

    .line 185
    invoke-static {v11}, Lcom/ushaqi/zhuishushenqi/pay/a/f;->b(C)Z

    move-result v1

    if-eqz v1, :cond_7

    add-int/lit8 v1, v10, 0x1

    aget-char v10, v6, v10

    .line 186
    invoke-static {v10}, Lcom/ushaqi/zhuishushenqi/pay/a/f;->b(C)Z

    move-result v12

    if-nez v12, :cond_8

    :cond_7
    move-object v0, v3

    .line 187
    goto :goto_0

    .line 190
    :cond_8
    sget-object v12, Lcom/ushaqi/zhuishushenqi/pay/a/f;->b:[B

    aget-byte v9, v12, v9

    .line 191
    sget-object v12, Lcom/ushaqi/zhuishushenqi/pay/a/f;->b:[B

    aget-byte v8, v12, v8

    .line 192
    sget-object v12, Lcom/ushaqi/zhuishushenqi/pay/a/f;->b:[B

    aget-byte v11, v12, v11

    .line 193
    sget-object v12, Lcom/ushaqi/zhuishushenqi/pay/a/f;->b:[B

    aget-byte v10, v12, v10

    .line 195
    add-int/lit8 v12, v4, 0x1

    shl-int/lit8 v9, v9, 0x2

    shr-int/lit8 v13, v8, 0x4

    or-int/2addr v9, v13

    int-to-byte v9, v9

    aput-byte v9, v0, v4

    .line 196
    add-int/lit8 v9, v12, 0x1

    and-int/lit8 v4, v8, 0xf

    shl-int/lit8 v4, v4, 0x4

    shr-int/lit8 v8, v11, 0x2

    and-int/lit8 v8, v8, 0xf

    or-int/2addr v4, v8

    int-to-byte v4, v4

    aput-byte v4, v0, v12

    .line 197
    add-int/lit8 v4, v9, 0x1

    shl-int/lit8 v8, v11, 0x6

    or-int/2addr v8, v10

    int-to-byte v8, v8

    aput-byte v8, v0, v9

    .line 181
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 200
    :cond_9
    add-int/lit8 v7, v1, 0x1

    aget-char v1, v6, v1

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/pay/a/f;->b(C)Z

    move-result v8

    if-eqz v8, :cond_a

    add-int/lit8 v8, v7, 0x1

    aget-char v7, v6, v7

    .line 201
    invoke-static {v7}, Lcom/ushaqi/zhuishushenqi/pay/a/f;->b(C)Z

    move-result v9

    if-nez v9, :cond_b

    :cond_a
    move-object v0, v3

    .line 202
    goto/16 :goto_0

    .line 205
    :cond_b
    sget-object v9, Lcom/ushaqi/zhuishushenqi/pay/a/f;->b:[B

    aget-byte v9, v9, v1

    .line 206
    sget-object v1, Lcom/ushaqi/zhuishushenqi/pay/a/f;->b:[B

    aget-byte v7, v1, v7

    .line 208
    add-int/lit8 v1, v8, 0x1

    aget-char v8, v6, v8

    .line 209
    aget-char v1, v6, v1

    .line 210
    invoke-static {v8}, Lcom/ushaqi/zhuishushenqi/pay/a/f;->b(C)Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/pay/a/f;->b(C)Z

    move-result v6

    if-nez v6, :cond_11

    .line 211
    :cond_c
    invoke-static {v8}, Lcom/ushaqi/zhuishushenqi/pay/a/f;->a(C)Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/pay/a/f;->a(C)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 212
    and-int/lit8 v1, v7, 0xf

    if-eqz v1, :cond_d

    move-object v0, v3

    .line 214
    goto/16 :goto_0

    .line 216
    :cond_d
    mul-int/lit8 v1, v5, 0x3

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [B

    .line 217
    mul-int/lit8 v3, v5, 0x3

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 218
    shl-int/lit8 v0, v9, 0x2

    shr-int/lit8 v2, v7, 0x4

    or-int/2addr v0, v2

    int-to-byte v0, v0

    aput-byte v0, v1, v4

    move-object v0, v1

    .line 219
    goto/16 :goto_0

    .line 220
    :cond_e
    invoke-static {v8}, Lcom/ushaqi/zhuishushenqi/pay/a/f;->a(C)Z

    move-result v6

    if-nez v6, :cond_10

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/pay/a/f;->a(C)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 221
    sget-object v1, Lcom/ushaqi/zhuishushenqi/pay/a/f;->b:[B

    aget-byte v6, v1, v8

    .line 222
    and-int/lit8 v1, v6, 0x3

    if-eqz v1, :cond_f

    move-object v0, v3

    .line 224
    goto/16 :goto_0

    .line 226
    :cond_f
    mul-int/lit8 v1, v5, 0x3

    add-int/lit8 v1, v1, 0x2

    new-array v1, v1, [B

    .line 227
    mul-int/lit8 v3, v5, 0x3

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 228
    add-int/lit8 v0, v4, 0x1

    shl-int/lit8 v2, v9, 0x2

    shr-int/lit8 v3, v7, 0x4

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v4

    .line 229
    and-int/lit8 v2, v7, 0xf

    shl-int/lit8 v2, v2, 0x4

    shr-int/lit8 v3, v6, 0x2

    and-int/lit8 v3, v3, 0xf

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    move-object v0, v1

    .line 230
    goto/16 :goto_0

    :cond_10
    move-object v0, v3

    .line 232
    goto/16 :goto_0

    .line 235
    :cond_11
    sget-object v2, Lcom/ushaqi/zhuishushenqi/pay/a/f;->b:[B

    aget-byte v2, v2, v8

    .line 236
    sget-object v3, Lcom/ushaqi/zhuishushenqi/pay/a/f;->b:[B

    aget-byte v1, v3, v1

    .line 237
    add-int/lit8 v3, v4, 0x1

    shl-int/lit8 v5, v9, 0x2

    shr-int/lit8 v6, v7, 0x4

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 238
    add-int/lit8 v4, v3, 0x1

    and-int/lit8 v5, v7, 0xf

    shl-int/lit8 v5, v5, 0x4

    shr-int/lit8 v6, v2, 0x2

    and-int/lit8 v6, v6, 0xf

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v0, v3

    .line 239
    shl-int/lit8 v2, v2, 0x6

    or-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, v4

    goto/16 :goto_0

    :cond_12
    move v0, v1

    goto/16 :goto_3
.end method

.method private static b(C)Z
    .locals 2

    .prologue
    .line 59
    const/16 v0, 0x80

    if-ge p0, v0, :cond_0

    sget-object v0, Lcom/ushaqi/zhuishushenqi/pay/a/f;->b:[B

    aget-byte v0, v0, p0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
