.class public final Lcom/integralblue/httpresponsecache/compat/b;
.super Ljava/security/MessageDigest;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private a:J

.field private b:I

.field private c:[B

.field private d:I

.field private e:I

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 106
    const-string v0, "MD5"

    invoke-direct {p0, v0}, Ljava/security/MessageDigest;-><init>(Ljava/lang/String;)V

    .line 107
    const/16 v0, 0x40

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/integralblue/httpresponsecache/compat/b;->c:[B

    .line 108
    invoke-direct {p0}, Lcom/integralblue/httpresponsecache/compat/b;->a()V

    .line 109
    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 151
    const v0, 0x67452301

    iput v0, p0, Lcom/integralblue/httpresponsecache/compat/b;->d:I

    .line 152
    const v0, -0x10325477

    iput v0, p0, Lcom/integralblue/httpresponsecache/compat/b;->e:I

    .line 153
    const v0, -0x67452302

    iput v0, p0, Lcom/integralblue/httpresponsecache/compat/b;->f:I

    .line 154
    const v0, 0x10325476

    iput v0, p0, Lcom/integralblue/httpresponsecache/compat/b;->g:I

    .line 155
    return-void
.end method

.method private final a([BI)V
    .locals 25

    .prologue
    .line 457
    move-object/from16 v0, p0

    iget v1, v0, Lcom/integralblue/httpresponsecache/compat/b;->e:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/integralblue/httpresponsecache/compat/b;->f:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/integralblue/httpresponsecache/compat/b;->g:I

    xor-int v4, v2, v3

    and-int/2addr v4, v1

    xor-int/2addr v4, v3

    aget-byte v5, p1, p2

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v6, p2, 0x1

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    add-int/lit8 v6, p2, 0x2

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    add-int/lit8 v6, p2, 0x3

    aget-byte v6, p1, v6

    shl-int/lit8 v6, v6, 0x18

    or-int/2addr v5, v6

    add-int/2addr v4, v5

    const v6, -0x28955b88

    add-int/2addr v4, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/integralblue/httpresponsecache/compat/b;->d:I

    add-int/2addr v4, v6

    shl-int/lit8 v6, v4, 0x7

    ushr-int/lit8 v4, v4, 0x19

    or-int/2addr v4, v6

    add-int/2addr v4, v1

    xor-int v6, v1, v2

    and-int/2addr v6, v4

    xor-int/2addr v6, v2

    add-int/lit8 v7, p2, 0x4

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    add-int/lit8 v8, p2, 0x5

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v7, v8

    add-int/lit8 v8, p2, 0xa

    add-int/lit8 v9, v8, -0x4

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x10

    or-int/2addr v7, v9

    add-int/lit8 v9, v8, -0x3

    aget-byte v9, p1, v9

    shl-int/lit8 v9, v9, 0x18

    or-int/2addr v7, v9

    add-int/2addr v6, v7

    const v9, -0x173848aa

    add-int/2addr v6, v9

    add-int/2addr v3, v6

    shl-int/lit8 v6, v3, 0xc

    ushr-int/lit8 v3, v3, 0x14

    or-int/2addr v3, v6

    add-int/2addr v3, v4

    xor-int v6, v4, v1

    and-int/2addr v6, v3

    xor-int/2addr v6, v1

    add-int/lit8 v9, v8, -0x2

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    add-int/lit8 v10, v8, -0x1

    aget-byte v10, p1, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    or-int/2addr v9, v10

    aget-byte v10, p1, v8

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x10

    or-int/2addr v9, v10

    add-int/lit8 v10, v8, 0x1

    aget-byte v10, p1, v10

    shl-int/lit8 v10, v10, 0x18

    or-int/2addr v9, v10

    add-int/2addr v6, v9

    const v10, 0x242070db

    add-int/2addr v6, v10

    add-int/2addr v2, v6

    shl-int/lit8 v6, v2, 0x11

    ushr-int/lit8 v2, v2, 0xf

    or-int/2addr v2, v6

    add-int/2addr v2, v3

    xor-int v6, v3, v4

    and-int/2addr v6, v2

    xor-int/2addr v6, v4

    add-int/lit8 v10, v8, 0x2

    aget-byte v10, p1, v10

    and-int/lit16 v10, v10, 0xff

    add-int/lit8 v11, v8, 0x3

    aget-byte v11, p1, v11

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x8

    or-int/2addr v10, v11

    add-int/lit8 v11, v8, 0x4

    aget-byte v11, p1, v11

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x10

    or-int/2addr v10, v11

    add-int/lit8 v11, v8, 0x5

    aget-byte v11, p1, v11

    shl-int/lit8 v11, v11, 0x18

    or-int/2addr v10, v11

    add-int/2addr v6, v10

    const v11, -0x3e423112

    add-int/2addr v6, v11

    add-int/2addr v6, v1

    shl-int/lit8 v11, v6, 0x16

    ushr-int/lit8 v6, v6, 0xa

    or-int/2addr v6, v11

    add-int/2addr v6, v2

    xor-int v11, v2, v3

    and-int/2addr v11, v6

    xor-int/2addr v11, v3

    add-int/lit8 v8, v8, 0xa

    add-int/lit8 v12, v8, -0x4

    aget-byte v12, p1, v12

    and-int/lit16 v12, v12, 0xff

    add-int/lit8 v13, v8, -0x3

    aget-byte v13, p1, v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x8

    or-int/2addr v12, v13

    add-int/lit8 v13, v8, -0x2

    aget-byte v13, p1, v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x10

    or-int/2addr v12, v13

    add-int/lit8 v13, v8, -0x1

    aget-byte v13, p1, v13

    shl-int/lit8 v13, v13, 0x18

    or-int/2addr v12, v13

    add-int/2addr v11, v12

    const v13, -0xa83f051

    add-int/2addr v11, v13

    add-int/2addr v4, v11

    shl-int/lit8 v11, v4, 0x7

    ushr-int/lit8 v4, v4, 0x19

    or-int/2addr v4, v11

    add-int/2addr v4, v6

    xor-int v11, v6, v2

    and-int/2addr v11, v4

    xor-int/2addr v11, v2

    aget-byte v13, p1, v8

    and-int/lit16 v13, v13, 0xff

    add-int/lit8 v14, v8, 0x1

    aget-byte v14, p1, v14

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0x8

    or-int/2addr v13, v14

    add-int/lit8 v14, v8, 0x2

    aget-byte v14, p1, v14

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0x10

    or-int/2addr v13, v14

    add-int/lit8 v14, v8, 0x3

    aget-byte v14, p1, v14

    shl-int/lit8 v14, v14, 0x18

    or-int/2addr v13, v14

    add-int/2addr v11, v13

    const v14, 0x4787c62a

    add-int/2addr v11, v14

    add-int/2addr v3, v11

    shl-int/lit8 v11, v3, 0xc

    ushr-int/lit8 v3, v3, 0x14

    or-int/2addr v3, v11

    add-int/2addr v3, v4

    xor-int v11, v4, v6

    and-int/2addr v11, v3

    xor-int/2addr v11, v6

    add-int/lit8 v14, v8, 0x4

    aget-byte v14, p1, v14

    and-int/lit16 v14, v14, 0xff

    add-int/lit8 v15, v8, 0x5

    aget-byte v15, p1, v15

    and-int/lit16 v15, v15, 0xff

    shl-int/lit8 v15, v15, 0x8

    or-int/2addr v14, v15

    add-int/lit8 v8, v8, 0xa

    add-int/lit8 v15, v8, -0x4

    aget-byte v15, p1, v15

    and-int/lit16 v15, v15, 0xff

    shl-int/lit8 v15, v15, 0x10

    or-int/2addr v14, v15

    add-int/lit8 v15, v8, -0x3

    aget-byte v15, p1, v15

    shl-int/lit8 v15, v15, 0x18

    or-int/2addr v14, v15

    add-int/2addr v11, v14

    const v15, -0x57cfb9ed

    add-int/2addr v11, v15

    add-int/2addr v2, v11

    shl-int/lit8 v11, v2, 0x11

    ushr-int/lit8 v2, v2, 0xf

    or-int/2addr v2, v11

    add-int/2addr v2, v3

    xor-int v11, v3, v4

    and-int/2addr v11, v2

    xor-int/2addr v11, v4

    add-int/lit8 v15, v8, -0x2

    aget-byte v15, p1, v15

    and-int/lit16 v15, v15, 0xff

    add-int/lit8 v16, v8, -0x1

    aget-byte v16, p1, v16

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    shl-int/lit8 v16, v16, 0x8

    or-int v15, v15, v16

    aget-byte v16, p1, v8

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    shl-int/lit8 v16, v16, 0x10

    or-int v15, v15, v16

    add-int/lit8 v16, v8, 0x1

    aget-byte v16, p1, v16

    shl-int/lit8 v16, v16, 0x18

    or-int v15, v15, v16

    add-int/2addr v11, v15

    const v16, -0x2b96aff

    add-int v11, v11, v16

    add-int/2addr v6, v11

    shl-int/lit8 v11, v6, 0x16

    ushr-int/lit8 v6, v6, 0xa

    or-int/2addr v6, v11

    add-int/2addr v6, v2

    xor-int v11, v2, v3

    and-int/2addr v11, v6

    xor-int/2addr v11, v3

    add-int/lit8 v16, v8, 0x2

    aget-byte v16, p1, v16

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    add-int/lit8 v17, v8, 0x3

    aget-byte v17, p1, v17

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    shl-int/lit8 v17, v17, 0x8

    or-int v16, v16, v17

    add-int/lit8 v17, v8, 0x4

    aget-byte v17, p1, v17

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    shl-int/lit8 v17, v17, 0x10

    or-int v16, v16, v17

    add-int/lit8 v17, v8, 0x5

    aget-byte v17, p1, v17

    shl-int/lit8 v17, v17, 0x18

    or-int v16, v16, v17

    add-int v11, v11, v16

    const v17, 0x698098d8

    add-int v11, v11, v17

    add-int/2addr v4, v11

    shl-int/lit8 v11, v4, 0x7

    ushr-int/lit8 v4, v4, 0x19

    or-int/2addr v4, v11

    add-int/2addr v4, v6

    xor-int v11, v6, v2

    and-int/2addr v11, v4

    xor-int/2addr v11, v2

    add-int/lit8 v8, v8, 0xa

    add-int/lit8 v17, v8, -0x4

    aget-byte v17, p1, v17

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    add-int/lit8 v18, v8, -0x3

    aget-byte v18, p1, v18

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    shl-int/lit8 v18, v18, 0x8

    or-int v17, v17, v18

    add-int/lit8 v18, v8, -0x2

    aget-byte v18, p1, v18

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    shl-int/lit8 v18, v18, 0x10

    or-int v17, v17, v18

    add-int/lit8 v18, v8, -0x1

    aget-byte v18, p1, v18

    shl-int/lit8 v18, v18, 0x18

    or-int v17, v17, v18

    add-int v11, v11, v17

    const v18, -0x74bb0851

    add-int v11, v11, v18

    add-int/2addr v3, v11

    shl-int/lit8 v11, v3, 0xc

    ushr-int/lit8 v3, v3, 0x14

    or-int/2addr v3, v11

    add-int/2addr v3, v4

    xor-int v11, v4, v6

    and-int/2addr v11, v3

    xor-int/2addr v11, v6

    aget-byte v18, p1, v8

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    add-int/lit8 v19, v8, 0x1

    aget-byte v19, p1, v19

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    shl-int/lit8 v19, v19, 0x8

    or-int v18, v18, v19

    add-int/lit8 v19, v8, 0x2

    aget-byte v19, p1, v19

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    shl-int/lit8 v19, v19, 0x10

    or-int v18, v18, v19

    add-int/lit8 v19, v8, 0x3

    aget-byte v19, p1, v19

    shl-int/lit8 v19, v19, 0x18

    or-int v18, v18, v19

    add-int v11, v11, v18

    const v19, -0xa44f

    add-int v11, v11, v19

    add-int/2addr v2, v11

    shl-int/lit8 v11, v2, 0x11

    ushr-int/lit8 v2, v2, 0xf

    or-int/2addr v2, v11

    add-int/2addr v2, v3

    xor-int v11, v3, v4

    and-int/2addr v11, v2

    xor-int/2addr v11, v4

    add-int/lit8 v19, v8, 0x4

    aget-byte v19, p1, v19

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    add-int/lit8 v20, v8, 0x5

    aget-byte v20, p1, v20

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    shl-int/lit8 v20, v20, 0x8

    or-int v19, v19, v20

    add-int/lit8 v8, v8, 0xa

    add-int/lit8 v20, v8, -0x4

    aget-byte v20, p1, v20

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    shl-int/lit8 v20, v20, 0x10

    or-int v19, v19, v20

    add-int/lit8 v20, v8, -0x3

    aget-byte v20, p1, v20

    shl-int/lit8 v20, v20, 0x18

    or-int v19, v19, v20

    add-int v11, v11, v19

    const v20, -0x76a32842

    add-int v11, v11, v20

    add-int/2addr v6, v11

    shl-int/lit8 v11, v6, 0x16

    ushr-int/lit8 v6, v6, 0xa

    or-int/2addr v6, v11

    add-int/2addr v6, v2

    xor-int v11, v2, v3

    and-int/2addr v11, v6

    xor-int/2addr v11, v3

    add-int/lit8 v20, v8, -0x2

    aget-byte v20, p1, v20

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    add-int/lit8 v21, v8, -0x1

    aget-byte v21, p1, v21

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    shl-int/lit8 v21, v21, 0x8

    or-int v20, v20, v21

    aget-byte v21, p1, v8

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    shl-int/lit8 v21, v21, 0x10

    or-int v20, v20, v21

    add-int/lit8 v21, v8, 0x1

    aget-byte v21, p1, v21

    shl-int/lit8 v21, v21, 0x18

    or-int v20, v20, v21

    add-int v11, v11, v20

    const v21, 0x6b901122

    add-int v11, v11, v21

    add-int/2addr v4, v11

    shl-int/lit8 v11, v4, 0x7

    ushr-int/lit8 v4, v4, 0x19

    or-int/2addr v4, v11

    add-int/2addr v4, v6

    xor-int v11, v6, v2

    and-int/2addr v11, v4

    xor-int/2addr v11, v2

    add-int/lit8 v21, v8, 0x2

    aget-byte v21, p1, v21

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    add-int/lit8 v22, v8, 0x3

    aget-byte v22, p1, v22

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    shl-int/lit8 v22, v22, 0x8

    or-int v21, v21, v22

    add-int/lit8 v22, v8, 0x4

    aget-byte v22, p1, v22

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    shl-int/lit8 v22, v22, 0x10

    or-int v21, v21, v22

    add-int/lit8 v22, v8, 0x5

    aget-byte v22, p1, v22

    shl-int/lit8 v22, v22, 0x18

    or-int v21, v21, v22

    add-int v11, v11, v21

    const v22, -0x2678e6d

    add-int v11, v11, v22

    add-int/2addr v3, v11

    shl-int/lit8 v11, v3, 0xc

    ushr-int/lit8 v3, v3, 0x14

    or-int/2addr v3, v11

    add-int/2addr v3, v4

    xor-int v11, v4, v6

    and-int/2addr v11, v3

    xor-int/2addr v11, v6

    add-int/lit8 v8, v8, 0xa

    add-int/lit8 v22, v8, -0x4

    aget-byte v22, p1, v22

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    add-int/lit8 v23, v8, -0x3

    aget-byte v23, p1, v23

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    shl-int/lit8 v23, v23, 0x8

    or-int v22, v22, v23

    add-int/lit8 v23, v8, -0x2

    aget-byte v23, p1, v23

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    shl-int/lit8 v23, v23, 0x10

    or-int v22, v22, v23

    add-int/lit8 v23, v8, -0x1

    aget-byte v23, p1, v23

    shl-int/lit8 v23, v23, 0x18

    or-int v22, v22, v23

    add-int v11, v11, v22

    const v23, -0x5986bc72

    add-int v11, v11, v23

    add-int/2addr v2, v11

    shl-int/lit8 v11, v2, 0x11

    ushr-int/lit8 v2, v2, 0xf

    or-int/2addr v2, v11

    add-int/2addr v2, v3

    xor-int v11, v3, v4

    and-int/2addr v11, v2

    xor-int/2addr v11, v4

    aget-byte v23, p1, v8

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    add-int/lit8 v24, v8, 0x1

    aget-byte v24, p1, v24

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xff

    move/from16 v24, v0

    shl-int/lit8 v24, v24, 0x8

    or-int v23, v23, v24

    add-int/lit8 v24, v8, 0x2

    aget-byte v24, p1, v24

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xff

    move/from16 v24, v0

    shl-int/lit8 v24, v24, 0x10

    or-int v23, v23, v24

    add-int/lit8 v8, v8, 0x3

    aget-byte v8, p1, v8

    shl-int/lit8 v8, v8, 0x18

    or-int v8, v8, v23

    add-int/2addr v11, v8

    const v23, 0x49b40821

    add-int v11, v11, v23

    add-int/2addr v6, v11

    shl-int/lit8 v11, v6, 0x16

    ushr-int/lit8 v6, v6, 0xa

    or-int/2addr v6, v11

    add-int/2addr v6, v2

    xor-int v11, v2, v6

    and-int/2addr v11, v3

    xor-int/2addr v11, v2

    add-int/2addr v11, v7

    const v23, -0x9e1da9e

    add-int v11, v11, v23

    add-int/2addr v4, v11

    shl-int/lit8 v11, v4, 0x5

    ushr-int/lit8 v4, v4, 0x1b

    or-int/2addr v4, v11

    add-int/2addr v4, v6

    xor-int v11, v6, v4

    and-int/2addr v11, v2

    xor-int/2addr v11, v6

    add-int/2addr v11, v14

    const v23, -0x3fbf4cc0

    add-int v11, v11, v23

    add-int/2addr v3, v11

    shl-int/lit8 v11, v3, 0x9

    ushr-int/lit8 v3, v3, 0x17

    or-int/2addr v3, v11

    add-int/2addr v3, v4

    xor-int v11, v4, v3

    and-int/2addr v11, v6

    xor-int/2addr v11, v4

    add-int v11, v11, v19

    const v23, 0x265e5a51

    add-int v11, v11, v23

    add-int/2addr v2, v11

    shl-int/lit8 v11, v2, 0xe

    ushr-int/lit8 v2, v2, 0x12

    or-int/2addr v2, v11

    add-int/2addr v2, v3

    xor-int v11, v3, v2

    and-int/2addr v11, v4

    xor-int/2addr v11, v3

    add-int/2addr v11, v5

    const v23, -0x16493856

    add-int v11, v11, v23

    add-int/2addr v6, v11

    shl-int/lit8 v11, v6, 0x14

    ushr-int/lit8 v6, v6, 0xc

    or-int/2addr v6, v11

    add-int/2addr v6, v2

    xor-int v11, v2, v6

    and-int/2addr v11, v3

    xor-int/2addr v11, v2

    add-int/2addr v11, v13

    const v23, -0x29d0efa3

    add-int v11, v11, v23

    add-int/2addr v4, v11

    shl-int/lit8 v11, v4, 0x5

    ushr-int/lit8 v4, v4, 0x1b

    or-int/2addr v4, v11

    add-int/2addr v4, v6

    xor-int v11, v6, v4

    and-int/2addr v11, v2

    xor-int/2addr v11, v6

    add-int v11, v11, v18

    const v23, 0x2441453

    add-int v11, v11, v23

    add-int/2addr v3, v11

    shl-int/lit8 v11, v3, 0x9

    ushr-int/lit8 v3, v3, 0x17

    or-int/2addr v3, v11

    add-int/2addr v3, v4

    xor-int v11, v4, v3

    and-int/2addr v11, v6

    xor-int/2addr v11, v4

    add-int/2addr v11, v8

    const v23, -0x275e197f

    add-int v11, v11, v23

    add-int/2addr v2, v11

    shl-int/lit8 v11, v2, 0xe

    ushr-int/lit8 v2, v2, 0x12

    or-int/2addr v2, v11

    add-int/2addr v2, v3

    xor-int v11, v3, v2

    and-int/2addr v11, v4

    xor-int/2addr v11, v3

    add-int/2addr v11, v12

    const v23, -0x182c0438

    add-int v11, v11, v23

    add-int/2addr v6, v11

    shl-int/lit8 v11, v6, 0x14

    ushr-int/lit8 v6, v6, 0xc

    or-int/2addr v6, v11

    add-int/2addr v6, v2

    xor-int v11, v2, v6

    and-int/2addr v11, v3

    xor-int/2addr v11, v2

    add-int v11, v11, v17

    const v23, 0x21e1cde6

    add-int v11, v11, v23

    add-int/2addr v4, v11

    shl-int/lit8 v11, v4, 0x5

    ushr-int/lit8 v4, v4, 0x1b

    or-int/2addr v4, v11

    add-int/2addr v4, v6

    xor-int v11, v6, v4

    and-int/2addr v11, v2

    xor-int/2addr v11, v6

    add-int v11, v11, v22

    const v23, -0x3cc8f82a

    add-int v11, v11, v23

    add-int/2addr v3, v11

    shl-int/lit8 v11, v3, 0x9

    ushr-int/lit8 v3, v3, 0x17

    or-int/2addr v3, v11

    add-int/2addr v3, v4

    xor-int v11, v4, v3

    and-int/2addr v11, v6

    xor-int/2addr v11, v4

    add-int/2addr v11, v10

    const v23, -0xb2af279

    add-int v11, v11, v23

    add-int/2addr v2, v11

    shl-int/lit8 v11, v2, 0xe

    ushr-int/lit8 v2, v2, 0x12

    or-int/2addr v2, v11

    add-int/2addr v2, v3

    xor-int v11, v3, v2

    and-int/2addr v11, v4

    xor-int/2addr v11, v3

    add-int v11, v11, v16

    const v23, 0x455a14ed

    add-int v11, v11, v23

    add-int/2addr v6, v11

    shl-int/lit8 v11, v6, 0x14

    ushr-int/lit8 v6, v6, 0xc

    or-int/2addr v6, v11

    add-int/2addr v6, v2

    xor-int v11, v2, v6

    and-int/2addr v11, v3

    xor-int/2addr v11, v2

    add-int v11, v11, v21

    const v23, -0x561c16fb

    add-int v11, v11, v23

    add-int/2addr v4, v11

    shl-int/lit8 v11, v4, 0x5

    ushr-int/lit8 v4, v4, 0x1b

    or-int/2addr v4, v11

    add-int/2addr v4, v6

    xor-int v11, v6, v4

    and-int/2addr v11, v2

    xor-int/2addr v11, v6

    add-int/2addr v11, v9

    const v23, -0x3105c08

    add-int v11, v11, v23

    add-int/2addr v3, v11

    shl-int/lit8 v11, v3, 0x9

    ushr-int/lit8 v3, v3, 0x17

    or-int/2addr v3, v11

    add-int/2addr v3, v4

    xor-int v11, v4, v3

    and-int/2addr v11, v6

    xor-int/2addr v11, v4

    add-int/2addr v11, v15

    const v23, 0x676f02d9

    add-int v11, v11, v23

    add-int/2addr v2, v11

    shl-int/lit8 v11, v2, 0xe

    ushr-int/lit8 v2, v2, 0x12

    or-int/2addr v2, v11

    add-int/2addr v2, v3

    xor-int v11, v3, v2

    and-int/2addr v11, v4

    xor-int/2addr v11, v3

    add-int v11, v11, v20

    const v23, -0x72d5b376

    add-int v11, v11, v23

    add-int/2addr v6, v11

    shl-int/lit8 v11, v6, 0x14

    ushr-int/lit8 v6, v6, 0xc

    or-int/2addr v6, v11

    add-int/2addr v6, v2

    xor-int v11, v2, v6

    xor-int/2addr v11, v3

    add-int/2addr v11, v13

    const v23, -0x5c6be

    add-int v11, v11, v23

    add-int/2addr v4, v11

    shl-int/lit8 v11, v4, 0x4

    ushr-int/lit8 v4, v4, 0x1c

    or-int/2addr v4, v11

    add-int/2addr v4, v6

    xor-int v11, v6, v4

    xor-int/2addr v11, v2

    add-int v11, v11, v16

    const v23, -0x788e097f

    add-int v11, v11, v23

    add-int/2addr v3, v11

    shl-int/lit8 v11, v3, 0xb

    ushr-int/lit8 v3, v3, 0x15

    or-int/2addr v3, v11

    add-int/2addr v3, v4

    xor-int v11, v4, v3

    xor-int/2addr v11, v6

    add-int v11, v11, v19

    const v23, 0x6d9d6122

    add-int v11, v11, v23

    add-int/2addr v2, v11

    shl-int/lit8 v11, v2, 0x10

    ushr-int/lit8 v2, v2, 0x10

    or-int/2addr v2, v11

    add-int/2addr v2, v3

    xor-int v11, v3, v2

    xor-int/2addr v11, v4

    add-int v11, v11, v22

    const v23, -0x21ac7f4

    add-int v11, v11, v23

    add-int/2addr v6, v11

    shl-int/lit8 v11, v6, 0x17

    ushr-int/lit8 v6, v6, 0x9

    or-int/2addr v6, v11

    add-int/2addr v6, v2

    xor-int v11, v2, v6

    xor-int/2addr v11, v3

    add-int/2addr v11, v7

    const v23, -0x5b4115bc

    add-int v11, v11, v23

    add-int/2addr v4, v11

    shl-int/lit8 v11, v4, 0x4

    ushr-int/lit8 v4, v4, 0x1c

    or-int/2addr v4, v11

    add-int/2addr v4, v6

    xor-int v11, v6, v4

    xor-int/2addr v11, v2

    add-int/2addr v11, v12

    const v23, 0x4bdecfa9

    add-int v11, v11, v23

    add-int/2addr v3, v11

    shl-int/lit8 v11, v3, 0xb

    ushr-int/lit8 v3, v3, 0x15

    or-int/2addr v3, v11

    add-int/2addr v3, v4

    xor-int v11, v4, v3

    xor-int/2addr v11, v6

    add-int/2addr v11, v15

    const v23, -0x944b4a0

    add-int v11, v11, v23

    add-int/2addr v2, v11

    shl-int/lit8 v11, v2, 0x10

    ushr-int/lit8 v2, v2, 0x10

    or-int/2addr v2, v11

    add-int/2addr v2, v3

    xor-int v11, v3, v2

    xor-int/2addr v11, v4

    add-int v11, v11, v18

    const v23, -0x41404390

    add-int v11, v11, v23

    add-int/2addr v6, v11

    shl-int/lit8 v11, v6, 0x17

    ushr-int/lit8 v6, v6, 0x9

    or-int/2addr v6, v11

    add-int/2addr v6, v2

    xor-int v11, v2, v6

    xor-int/2addr v11, v3

    add-int v11, v11, v21

    const v23, 0x289b7ec6

    add-int v11, v11, v23

    add-int/2addr v4, v11

    shl-int/lit8 v11, v4, 0x4

    ushr-int/lit8 v4, v4, 0x1c

    or-int/2addr v4, v11

    add-int/2addr v4, v6

    xor-int v11, v6, v4

    xor-int/2addr v11, v2

    add-int/2addr v11, v5

    const v23, -0x155ed806

    add-int v11, v11, v23

    add-int/2addr v3, v11

    shl-int/lit8 v11, v3, 0xb

    ushr-int/lit8 v3, v3, 0x15

    or-int/2addr v3, v11

    add-int/2addr v3, v4

    xor-int v11, v4, v3

    xor-int/2addr v11, v6

    add-int/2addr v11, v10

    const v23, -0x2b10cf7b

    add-int v11, v11, v23

    add-int/2addr v2, v11

    shl-int/lit8 v11, v2, 0x10

    ushr-int/lit8 v2, v2, 0x10

    or-int/2addr v2, v11

    add-int/2addr v2, v3

    xor-int v11, v3, v2

    xor-int/2addr v11, v4

    add-int/2addr v11, v14

    const v23, 0x4881d05

    add-int v11, v11, v23

    add-int/2addr v6, v11

    shl-int/lit8 v11, v6, 0x17

    ushr-int/lit8 v6, v6, 0x9

    or-int/2addr v6, v11

    add-int/2addr v6, v2

    xor-int v11, v2, v6

    xor-int/2addr v11, v3

    add-int v11, v11, v17

    const v23, -0x262b2fc7

    add-int v11, v11, v23

    add-int/2addr v4, v11

    shl-int/lit8 v11, v4, 0x4

    ushr-int/lit8 v4, v4, 0x1c

    or-int/2addr v4, v11

    add-int/2addr v4, v6

    xor-int v11, v6, v4

    xor-int/2addr v11, v2

    add-int v11, v11, v20

    const v23, -0x1924661b

    add-int v11, v11, v23

    add-int/2addr v3, v11

    shl-int/lit8 v11, v3, 0xb

    ushr-int/lit8 v3, v3, 0x15

    or-int/2addr v3, v11

    add-int/2addr v3, v4

    xor-int v11, v4, v3

    xor-int/2addr v11, v6

    add-int/2addr v11, v8

    const v23, 0x1fa27cf8

    add-int v11, v11, v23

    add-int/2addr v2, v11

    shl-int/lit8 v11, v2, 0x10

    ushr-int/lit8 v2, v2, 0x10

    or-int/2addr v2, v11

    add-int/2addr v2, v3

    xor-int v11, v3, v2

    xor-int/2addr v11, v4

    add-int/2addr v11, v9

    const v23, -0x3b53a99b

    add-int v11, v11, v23

    add-int/2addr v6, v11

    shl-int/lit8 v11, v6, 0x17

    ushr-int/lit8 v6, v6, 0x9

    or-int/2addr v6, v11

    add-int/2addr v6, v2

    xor-int/lit8 v11, v3, -0x1

    or-int/2addr v11, v6

    xor-int/2addr v11, v2

    add-int/2addr v5, v11

    const v11, -0xbd6ddbc

    add-int/2addr v5, v11

    add-int/2addr v4, v5

    shl-int/lit8 v5, v4, 0x6

    ushr-int/lit8 v4, v4, 0x1a

    or-int/2addr v4, v5

    add-int/2addr v4, v6

    xor-int/lit8 v5, v2, -0x1

    or-int/2addr v5, v4

    xor-int/2addr v5, v6

    add-int/2addr v5, v15

    const v11, 0x432aff97

    add-int/2addr v5, v11

    add-int/2addr v3, v5

    shl-int/lit8 v5, v3, 0xa

    ushr-int/lit8 v3, v3, 0x16

    or-int/2addr v3, v5

    add-int/2addr v3, v4

    xor-int/lit8 v5, v6, -0x1

    or-int/2addr v5, v3

    xor-int/2addr v5, v4

    add-int v5, v5, v22

    const v11, -0x546bdc59

    add-int/2addr v5, v11

    add-int/2addr v2, v5

    shl-int/lit8 v5, v2, 0xf

    ushr-int/lit8 v2, v2, 0x11

    or-int/2addr v2, v5

    add-int/2addr v2, v3

    xor-int/lit8 v5, v4, -0x1

    or-int/2addr v5, v2

    xor-int/2addr v5, v3

    add-int/2addr v5, v13

    const v11, -0x36c5fc7

    add-int/2addr v5, v11

    add-int/2addr v5, v6

    shl-int/lit8 v6, v5, 0x15

    ushr-int/lit8 v5, v5, 0xb

    or-int/2addr v5, v6

    add-int/2addr v5, v2

    xor-int/lit8 v6, v3, -0x1

    or-int/2addr v6, v5

    xor-int/2addr v6, v2

    add-int v6, v6, v20

    const v11, 0x655b59c3

    add-int/2addr v6, v11

    add-int/2addr v4, v6

    shl-int/lit8 v6, v4, 0x6

    ushr-int/lit8 v4, v4, 0x1a

    or-int/2addr v4, v6

    add-int/2addr v4, v5

    xor-int/lit8 v6, v2, -0x1

    or-int/2addr v6, v4

    xor-int/2addr v6, v5

    add-int/2addr v6, v10

    const v10, -0x70f3336e

    add-int/2addr v6, v10

    add-int/2addr v3, v6

    shl-int/lit8 v6, v3, 0xa

    ushr-int/lit8 v3, v3, 0x16

    or-int/2addr v3, v6

    add-int/2addr v3, v4

    xor-int/lit8 v6, v5, -0x1

    or-int/2addr v6, v3

    xor-int/2addr v6, v4

    add-int v6, v6, v18

    const v10, -0x100b83

    add-int/2addr v6, v10

    add-int/2addr v2, v6

    shl-int/lit8 v6, v2, 0xf

    ushr-int/lit8 v2, v2, 0x11

    or-int/2addr v2, v6

    add-int/2addr v2, v3

    xor-int/lit8 v6, v4, -0x1

    or-int/2addr v6, v2

    xor-int/2addr v6, v3

    add-int/2addr v6, v7

    const v7, -0x7a7ba22f

    add-int/2addr v6, v7

    add-int/2addr v5, v6

    shl-int/lit8 v6, v5, 0x15

    ushr-int/lit8 v5, v5, 0xb

    or-int/2addr v5, v6

    add-int/2addr v5, v2

    xor-int/lit8 v6, v3, -0x1

    or-int/2addr v6, v5

    xor-int/2addr v6, v2

    add-int v6, v6, v16

    const v7, 0x6fa87e4f

    add-int/2addr v6, v7

    add-int/2addr v4, v6

    shl-int/lit8 v6, v4, 0x6

    ushr-int/lit8 v4, v4, 0x1a

    or-int/2addr v4, v6

    add-int/2addr v4, v5

    xor-int/lit8 v6, v2, -0x1

    or-int/2addr v6, v4

    xor-int/2addr v6, v5

    add-int/2addr v6, v8

    const v7, -0x1d31920

    add-int/2addr v6, v7

    add-int/2addr v3, v6

    shl-int/lit8 v6, v3, 0xa

    ushr-int/lit8 v3, v3, 0x16

    or-int/2addr v3, v6

    add-int/2addr v3, v4

    xor-int/lit8 v6, v5, -0x1

    or-int/2addr v6, v3

    xor-int/2addr v6, v4

    add-int/2addr v6, v14

    const v7, -0x5cfebcec

    add-int/2addr v6, v7

    add-int/2addr v2, v6

    shl-int/lit8 v6, v2, 0xf

    ushr-int/lit8 v2, v2, 0x11

    or-int/2addr v2, v6

    add-int/2addr v2, v3

    xor-int/lit8 v6, v4, -0x1

    or-int/2addr v6, v2

    xor-int/2addr v6, v3

    add-int v6, v6, v21

    const v7, 0x4e0811a1

    add-int/2addr v6, v7

    add-int/2addr v5, v6

    shl-int/lit8 v6, v5, 0x15

    ushr-int/lit8 v5, v5, 0xb

    or-int/2addr v5, v6

    add-int/2addr v5, v2

    xor-int/lit8 v6, v3, -0x1

    or-int/2addr v6, v5

    xor-int/2addr v6, v2

    add-int/2addr v6, v12

    const v7, -0x8ac817e

    add-int/2addr v6, v7

    add-int/2addr v4, v6

    shl-int/lit8 v6, v4, 0x6

    ushr-int/lit8 v4, v4, 0x1a

    or-int/2addr v4, v6

    add-int/2addr v4, v5

    xor-int/lit8 v6, v2, -0x1

    or-int/2addr v6, v4

    xor-int/2addr v6, v5

    add-int v6, v6, v19

    const v7, -0x42c50dcb

    add-int/2addr v6, v7

    add-int/2addr v3, v6

    shl-int/lit8 v6, v3, 0xa

    ushr-int/lit8 v3, v3, 0x16

    or-int/2addr v3, v6

    add-int/2addr v3, v4

    xor-int/lit8 v6, v5, -0x1

    or-int/2addr v6, v3

    xor-int/2addr v6, v4

    add-int/2addr v6, v9

    const v7, 0x2ad7d2bb

    add-int/2addr v6, v7

    add-int/2addr v2, v6

    shl-int/lit8 v6, v2, 0xf

    ushr-int/lit8 v2, v2, 0x11

    or-int/2addr v2, v6

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    xor-int/lit8 v6, v4, -0x1

    or-int/2addr v6, v2

    xor-int/2addr v6, v3

    add-int v6, v6, v17

    const v7, -0x14792c6f

    add-int/2addr v6, v7

    add-int/2addr v5, v6

    shl-int/lit8 v6, v5, 0x15

    ushr-int/lit8 v5, v5, 0xb

    or-int/2addr v5, v6

    add-int/2addr v1, v5

    move-object/from16 v0, p0

    iput v1, v0, Lcom/integralblue/httpresponsecache/compat/b;->e:I

    .line 614
    move-object/from16 v0, p0

    iget v1, v0, Lcom/integralblue/httpresponsecache/compat/b;->f:I

    add-int/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/integralblue/httpresponsecache/compat/b;->f:I

    .line 615
    move-object/from16 v0, p0

    iget v1, v0, Lcom/integralblue/httpresponsecache/compat/b;->g:I

    add-int/2addr v1, v3

    move-object/from16 v0, p0

    iput v1, v0, Lcom/integralblue/httpresponsecache/compat/b;->g:I

    .line 616
    move-object/from16 v0, p0

    iget v1, v0, Lcom/integralblue/httpresponsecache/compat/b;->d:I

    add-int/2addr v1, v4

    move-object/from16 v0, p0

    iput v1, v0, Lcom/integralblue/httpresponsecache/compat/b;->d:I

    .line 617
    return-void
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 115
    invoke-super {p0}, Ljava/security/MessageDigest;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/integralblue/httpresponsecache/compat/b;

    .line 116
    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/b;->c:[B

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iput-object v1, v0, Lcom/integralblue/httpresponsecache/compat/b;->c:[B

    .line 117
    return-object v0
.end method

.method public final engineDigest([BII)I
    .locals 9

    .prologue
    const/16 v8, 0x3b

    const/16 v7, 0x3a

    const/16 v4, 0x39

    const/16 v6, 0x10

    const/4 v5, 0x0

    .line 292
    if-lt p3, v6, :cond_2

    .line 293
    array-length v0, p1

    sub-int/2addr v0, p2

    if-lt v0, v6, :cond_1

    .line 300
    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/b;->c:[B

    iget v0, p0, Lcom/integralblue/httpresponsecache/compat/b;->b:I

    const/16 v2, -0x80

    aput-byte v2, v1, v0

    .line 303
    packed-switch v0, :pswitch_data_0

    .line 315
    :goto_0
    and-int/lit8 v2, v0, 0x7

    packed-switch v2, :pswitch_data_1

    .line 354
    :goto_1
    add-int/lit8 v0, v0, 0x8

    const/16 v2, 0x34

    if-gt v0, v2, :cond_0

    .line 355
    add-int/lit8 v2, v0, -0x4

    aput-byte v5, v1, v2

    .line 356
    add-int/lit8 v2, v0, -0x3

    aput-byte v5, v1, v2

    .line 357
    add-int/lit8 v2, v0, -0x2

    aput-byte v5, v1, v2

    .line 358
    add-int/lit8 v2, v0, -0x1

    aput-byte v5, v1, v2

    .line 359
    aput-byte v5, v1, v0

    .line 360
    add-int/lit8 v2, v0, 0x1

    aput-byte v5, v1, v2

    .line 361
    add-int/lit8 v2, v0, 0x2

    aput-byte v5, v1, v2

    .line 362
    add-int/lit8 v2, v0, 0x3

    aput-byte v5, v1, v2

    goto :goto_1

    .line 304
    :pswitch_0
    aput-byte v5, v1, v4

    .line 305
    :pswitch_1
    aput-byte v5, v1, v7

    .line 306
    :pswitch_2
    aput-byte v5, v1, v8

    .line 307
    :pswitch_3
    const/16 v0, 0x3c

    aput-byte v5, v1, v0

    .line 308
    :pswitch_4
    const/16 v0, 0x3d

    aput-byte v5, v1, v0

    .line 309
    :pswitch_5
    const/16 v0, 0x3e

    aput-byte v5, v1, v0

    .line 310
    :pswitch_6
    const/16 v0, 0x3f

    aput-byte v5, v1, v0

    .line 311
    :pswitch_7
    invoke-direct {p0, v1, v5}, Lcom/integralblue/httpresponsecache/compat/b;->a([BI)V

    .line 312
    const/4 v0, -0x1

    goto :goto_0

    .line 316
    :pswitch_8
    add-int/lit8 v0, v0, -0x3

    .line 317
    goto :goto_1

    .line 318
    :pswitch_9
    add-int/lit8 v0, v0, -0x2

    add-int/lit8 v2, v0, 0x3

    aput-byte v5, v1, v2

    goto :goto_1

    .line 320
    :pswitch_a
    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v2, v0, 0x2

    aput-byte v5, v1, v2

    .line 321
    add-int/lit8 v2, v0, 0x3

    aput-byte v5, v1, v2

    goto :goto_1

    .line 323
    :pswitch_b
    add-int/lit8 v2, v0, 0x1

    aput-byte v5, v1, v2

    .line 324
    add-int/lit8 v2, v0, 0x2

    aput-byte v5, v1, v2

    .line 325
    add-int/lit8 v2, v0, 0x3

    aput-byte v5, v1, v2

    goto :goto_1

    .line 327
    :pswitch_c
    add-int/lit8 v0, v0, 0x1

    aput-byte v5, v1, v0

    .line 328
    add-int/lit8 v2, v0, 0x1

    aput-byte v5, v1, v2

    .line 329
    add-int/lit8 v2, v0, 0x2

    aput-byte v5, v1, v2

    .line 330
    add-int/lit8 v2, v0, 0x3

    aput-byte v5, v1, v2

    goto :goto_1

    .line 332
    :pswitch_d
    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v2, v0, -0x1

    aput-byte v5, v1, v2

    .line 333
    aput-byte v5, v1, v0

    .line 334
    add-int/lit8 v2, v0, 0x1

    aput-byte v5, v1, v2

    .line 335
    add-int/lit8 v2, v0, 0x2

    aput-byte v5, v1, v2

    .line 336
    add-int/lit8 v2, v0, 0x3

    aput-byte v5, v1, v2

    goto/16 :goto_1

    .line 338
    :pswitch_e
    add-int/lit8 v0, v0, 0x3

    add-int/lit8 v2, v0, -0x2

    aput-byte v5, v1, v2

    .line 339
    add-int/lit8 v2, v0, -0x1

    aput-byte v5, v1, v2

    .line 340
    aput-byte v5, v1, v0

    .line 341
    add-int/lit8 v2, v0, 0x1

    aput-byte v5, v1, v2

    .line 342
    add-int/lit8 v2, v0, 0x2

    aput-byte v5, v1, v2

    .line 343
    add-int/lit8 v2, v0, 0x3

    aput-byte v5, v1, v2

    goto/16 :goto_1

    .line 345
    :pswitch_f
    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v2, v0, -0x3

    aput-byte v5, v1, v2

    .line 346
    add-int/lit8 v2, v0, -0x2

    aput-byte v5, v1, v2

    .line 347
    add-int/lit8 v2, v0, -0x1

    aput-byte v5, v1, v2

    .line 348
    aput-byte v5, v1, v0

    .line 349
    add-int/lit8 v2, v0, 0x1

    aput-byte v5, v1, v2

    .line 350
    add-int/lit8 v2, v0, 0x2

    aput-byte v5, v1, v2

    .line 351
    add-int/lit8 v2, v0, 0x3

    aput-byte v5, v1, v2

    goto/16 :goto_1

    .line 365
    :cond_0
    const/16 v0, 0x38

    iget-wide v2, p0, Lcom/integralblue/httpresponsecache/compat/b;->a:J

    long-to-int v2, v2

    shl-int/lit8 v2, v2, 0x3

    int-to-byte v3, v2

    aput-byte v3, v1, v0

    .line 366
    ushr-int/lit8 v0, v2, 0x8

    int-to-byte v0, v0

    aput-byte v0, v1, v4

    .line 367
    ushr-int/lit8 v0, v2, 0x10

    int-to-byte v0, v0

    aput-byte v0, v1, v7

    .line 368
    shr-int/lit8 v0, v2, 0x18

    aput-byte v0, v1, v8

    .line 369
    const/16 v0, 0x3c

    iget-wide v2, p0, Lcom/integralblue/httpresponsecache/compat/b;->a:J

    const/16 v4, 0x1d

    ushr-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v3, v2

    aput-byte v3, v1, v0

    .line 370
    const/16 v0, 0x3d

    ushr-int/lit8 v3, v2, 0x8

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    .line 371
    const/16 v0, 0x3e

    ushr-int/lit8 v3, v2, 0x10

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    .line 372
    const/16 v0, 0x3f

    shr-int/lit8 v2, v2, 0x18

    aput-byte v2, v1, v0

    .line 373
    invoke-direct {p0, v1, v5}, Lcom/integralblue/httpresponsecache/compat/b;->a([BI)V

    .line 375
    iget v0, p0, Lcom/integralblue/httpresponsecache/compat/b;->d:I

    int-to-byte v1, v0

    aput-byte v1, p1, p2

    .line 376
    add-int/lit8 v1, p2, 0x1

    ushr-int/lit8 v2, v0, 0x8

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    .line 377
    add-int/lit8 v1, p2, 0x2

    ushr-int/lit8 v2, v0, 0x10

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    .line 378
    add-int/lit8 v1, p2, 0x3

    shr-int/lit8 v0, v0, 0x18

    aput-byte v0, p1, v1

    .line 379
    add-int/lit8 v0, p2, 0x4

    iget v1, p0, Lcom/integralblue/httpresponsecache/compat/b;->e:I

    int-to-byte v2, v1

    aput-byte v2, p1, v0

    .line 380
    add-int/lit8 v0, p2, 0x5

    ushr-int/lit8 v2, v1, 0x8

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    .line 381
    add-int/lit8 v0, p2, 0xa

    add-int/lit8 v2, v0, -0x4

    ushr-int/lit8 v3, v1, 0x10

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    .line 382
    add-int/lit8 v2, v0, -0x3

    shr-int/lit8 v1, v1, 0x18

    aput-byte v1, p1, v2

    .line 383
    add-int/lit8 v1, v0, -0x2

    iget v2, p0, Lcom/integralblue/httpresponsecache/compat/b;->f:I

    int-to-byte v3, v2

    aput-byte v3, p1, v1

    .line 384
    add-int/lit8 v1, v0, -0x1

    ushr-int/lit8 v3, v2, 0x8

    int-to-byte v3, v3

    aput-byte v3, p1, v1

    .line 385
    ushr-int/lit8 v1, v2, 0x10

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 386
    add-int/lit8 v1, v0, 0x1

    shr-int/lit8 v2, v2, 0x18

    aput-byte v2, p1, v1

    .line 387
    add-int/lit8 v1, v0, 0x2

    iget v2, p0, Lcom/integralblue/httpresponsecache/compat/b;->g:I

    int-to-byte v3, v2

    aput-byte v3, p1, v1

    .line 388
    add-int/lit8 v1, v0, 0x3

    ushr-int/lit8 v3, v2, 0x8

    int-to-byte v3, v3

    aput-byte v3, p1, v1

    .line 389
    add-int/lit8 v1, v0, 0x4

    ushr-int/lit8 v3, v2, 0x10

    int-to-byte v3, v3

    aput-byte v3, p1, v1

    .line 390
    add-int/lit8 v0, v0, 0x5

    shr-int/lit8 v1, v2, 0x18

    aput-byte v1, p1, v0

    .line 391
    invoke-virtual {p0}, Lcom/integralblue/httpresponsecache/compat/b;->engineReset()V

    .line 392
    return v6

    .line 394
    :cond_1
    new-instance v0, Ljava/security/DigestException;

    const-string v1, "insufficient space in output buffer to store the digest"

    invoke-direct {v0, v1}, Ljava/security/DigestException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 397
    :cond_2
    new-instance v0, Ljava/security/DigestException;

    const-string v1, "partial digests not returned"

    invoke-direct {v0, v1}, Ljava/security/DigestException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 303
    :pswitch_data_0
    .packed-switch 0x38
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 315
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method public final engineDigest()[B
    .locals 3

    .prologue
    .line 249
    const/16 v0, 0x10

    :try_start_0
    new-array v0, v0, [B

    .line 250
    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-virtual {p0, v0, v1, v2}, Lcom/integralblue/httpresponsecache/compat/b;->engineDigest([BII)I
    :try_end_0
    .catch Ljava/security/DigestException; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final engineGetDigestLength()I
    .locals 1

    .prologue
    .line 266
    const/16 v0, 0x10

    return v0
.end method

.method public final engineReset()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 128
    iput v3, p0, Lcom/integralblue/httpresponsecache/compat/b;->b:I

    .line 129
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/integralblue/httpresponsecache/compat/b;->a:J

    .line 130
    const/16 v0, 0x3c

    .line 131
    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/b;->c:[B

    .line 133
    :cond_0
    add-int/lit8 v2, v0, -0x4

    aput-byte v3, v1, v2

    .line 134
    add-int/lit8 v2, v0, -0x3

    aput-byte v3, v1, v2

    .line 135
    add-int/lit8 v2, v0, -0x2

    aput-byte v3, v1, v2

    .line 136
    add-int/lit8 v2, v0, -0x1

    aput-byte v3, v1, v2

    .line 137
    aput-byte v3, v1, v0

    .line 138
    add-int/lit8 v2, v0, 0x1

    aput-byte v3, v1, v2

    .line 139
    add-int/lit8 v2, v0, 0x2

    aput-byte v3, v1, v2

    .line 140
    add-int/lit8 v2, v0, 0x3

    aput-byte v3, v1, v2

    .line 141
    add-int/lit8 v0, v0, -0x8

    if-gez v0, :cond_0

    .line 142
    invoke-direct {p0}, Lcom/integralblue/httpresponsecache/compat/b;->a()V

    .line 143
    return-void
.end method

.method public final engineUpdate(B)V
    .locals 5

    .prologue
    const/16 v4, 0x3f

    .line 167
    iget-wide v0, p0, Lcom/integralblue/httpresponsecache/compat/b;->a:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/integralblue/httpresponsecache/compat/b;->a:J

    .line 168
    iget v0, p0, Lcom/integralblue/httpresponsecache/compat/b;->b:I

    if-ge v0, v4, :cond_0

    .line 169
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/b;->c:[B

    iget v1, p0, Lcom/integralblue/httpresponsecache/compat/b;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/integralblue/httpresponsecache/compat/b;->b:I

    aput-byte p1, v0, v1

    .line 175
    :goto_0
    return-void

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/b;->c:[B

    aput-byte p1, v0, v4

    .line 173
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/b;->c:[B

    iget v1, p0, Lcom/integralblue/httpresponsecache/compat/b;->b:I

    invoke-direct {p0, v0, v1}, Lcom/integralblue/httpresponsecache/compat/b;->a([BI)V

    .line 174
    const/4 v0, 0x0

    iput v0, p0, Lcom/integralblue/httpresponsecache/compat/b;->b:I

    goto :goto_0
.end method

.method public final engineUpdate([BII)V
    .locals 5

    .prologue
    const/16 v4, 0x40

    .line 192
    if-ltz p2, :cond_3

    if-ltz p3, :cond_3

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_3

    .line 193
    iget-wide v0, p0, Lcom/integralblue/httpresponsecache/compat/b;->a:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/integralblue/httpresponsecache/compat/b;->a:J

    .line 195
    iget v0, p0, Lcom/integralblue/httpresponsecache/compat/b;->b:I

    if-lez v0, :cond_4

    iget v0, p0, Lcom/integralblue/httpresponsecache/compat/b;->b:I

    add-int/2addr v0, p3

    if-lt v0, v4, :cond_4

    .line 197
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/b;->c:[B

    iget v1, p0, Lcom/integralblue/httpresponsecache/compat/b;->b:I

    iget v2, p0, Lcom/integralblue/httpresponsecache/compat/b;->b:I

    rsub-int/lit8 v2, v2, 0x40

    invoke-static {p1, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 199
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/b;->c:[B

    const/4 v1, 0x0

    iput v1, p0, Lcom/integralblue/httpresponsecache/compat/b;->b:I

    invoke-direct {p0, v0, v1}, Lcom/integralblue/httpresponsecache/compat/b;->a([BI)V

    .line 200
    add-int/2addr p2, v2

    .line 201
    sub-int/2addr p3, v2

    move v0, p3

    move v1, p2

    .line 204
    :goto_0
    const/16 v2, 0x200

    if-lt v0, v2, :cond_0

    .line 205
    invoke-direct {p0, p1, v1}, Lcom/integralblue/httpresponsecache/compat/b;->a([BI)V

    .line 206
    add-int/lit8 v2, v1, 0x40

    invoke-direct {p0, p1, v2}, Lcom/integralblue/httpresponsecache/compat/b;->a([BI)V

    .line 207
    add-int/lit16 v2, v1, 0x80

    invoke-direct {p0, p1, v2}, Lcom/integralblue/httpresponsecache/compat/b;->a([BI)V

    .line 208
    add-int/lit16 v2, v1, 0xc0

    invoke-direct {p0, p1, v2}, Lcom/integralblue/httpresponsecache/compat/b;->a([BI)V

    .line 209
    add-int/lit16 v2, v1, 0x100

    invoke-direct {p0, p1, v2}, Lcom/integralblue/httpresponsecache/compat/b;->a([BI)V

    .line 210
    add-int/lit16 v2, v1, 0x140

    invoke-direct {p0, p1, v2}, Lcom/integralblue/httpresponsecache/compat/b;->a([BI)V

    .line 211
    add-int/lit16 v2, v1, 0x180

    invoke-direct {p0, p1, v2}, Lcom/integralblue/httpresponsecache/compat/b;->a([BI)V

    .line 212
    add-int/lit16 v2, v1, 0x1c0

    invoke-direct {p0, p1, v2}, Lcom/integralblue/httpresponsecache/compat/b;->a([BI)V

    .line 213
    add-int/lit16 p2, v1, 0x200

    .line 214
    add-int/lit16 p3, v0, -0x200

    move v0, p3

    move v1, p2

    goto :goto_0

    .line 217
    :cond_0
    :goto_1
    if-lt v0, v4, :cond_1

    .line 218
    invoke-direct {p0, p1, v1}, Lcom/integralblue/httpresponsecache/compat/b;->a([BI)V

    .line 219
    add-int/lit8 v1, v1, 0x40

    .line 220
    add-int/lit8 v0, v0, -0x40

    goto :goto_1

    .line 223
    :cond_1
    if-lez v0, :cond_2

    .line 224
    iget-object v2, p0, Lcom/integralblue/httpresponsecache/compat/b;->c:[B

    iget v3, p0, Lcom/integralblue/httpresponsecache/compat/b;->b:I

    invoke-static {p1, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 225
    iget v1, p0, Lcom/integralblue/httpresponsecache/compat/b;->b:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/integralblue/httpresponsecache/compat/b;->b:I

    .line 227
    :cond_2
    return-void

    .line 229
    :cond_3
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    :cond_4
    move v0, p3

    move v1, p2

    goto :goto_0
.end method
