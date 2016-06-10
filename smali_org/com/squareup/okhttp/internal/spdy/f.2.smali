.class Lcom/squareup/okhttp/internal/spdy/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/internal/spdy/d;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lokio/i;

.field private c:I

.field private d:I

.field private e:[Lcom/squareup/okhttp/internal/spdy/d;

.field private f:I

.field private g:I

.field private h:I


# direct methods
.method constructor <init>(ILokio/y;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/f;->a:Ljava/util/List;

    .line 122
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/squareup/okhttp/internal/spdy/d;

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/f;->e:[Lcom/squareup/okhttp/internal/spdy/d;

    .line 124
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/f;->e:[Lcom/squareup/okhttp/internal/spdy/d;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/squareup/okhttp/internal/spdy/f;->f:I

    .line 125
    iput v1, p0, Lcom/squareup/okhttp/internal/spdy/f;->g:I

    .line 126
    iput v1, p0, Lcom/squareup/okhttp/internal/spdy/f;->h:I

    .line 129
    iput p1, p0, Lcom/squareup/okhttp/internal/spdy/f;->c:I

    .line 130
    iput p1, p0, Lcom/squareup/okhttp/internal/spdy/f;->d:I

    .line 131
    invoke-static {p2}, Lokio/o;->a(Lokio/y;)Lokio/i;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/f;->b:Lokio/i;

    .line 132
    return-void
.end method

.method private a(II)I
    .locals 3

    .prologue
    .line 322
    and-int v0, p1, p2

    .line 323
    if-ge v0, p2, :cond_0

    .line 340
    :goto_0
    return v0

    .line 329
    :cond_0
    const/4 v0, 0x0

    .line 331
    :goto_1
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/spdy/f;->e()I

    move-result v1

    .line 332
    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_1

    .line 333
    and-int/lit8 v1, v1, 0x7f

    shl-int/2addr v1, v0

    add-int/2addr p2, v1

    .line 334
    add-int/lit8 v0, v0, 0x7

    goto :goto_1

    .line 336
    :cond_1
    shl-int v0, v1, v0

    add-int/2addr v0, p2

    .line 337
    goto :goto_0
.end method

.method private a(ILcom/squareup/okhttp/internal/spdy/d;)V
    .locals 6

    .prologue
    .line 283
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/f;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 285
    iget v0, p2, Lcom/squareup/okhttp/internal/spdy/d;->j:I

    .line 291
    iget v1, p0, Lcom/squareup/okhttp/internal/spdy/f;->d:I

    if-le v0, v1, :cond_0

    .line 292
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/spdy/f;->d()V

    .line 315
    :goto_0
    return-void

    .line 297
    :cond_0
    iget v1, p0, Lcom/squareup/okhttp/internal/spdy/f;->h:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/squareup/okhttp/internal/spdy/f;->d:I

    sub-int/2addr v1, v2

    .line 298
    invoke-direct {p0, v1}, Lcom/squareup/okhttp/internal/spdy/f;->b(I)I

    .line 301
    iget v1, p0, Lcom/squareup/okhttp/internal/spdy/f;->g:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/f;->e:[Lcom/squareup/okhttp/internal/spdy/d;

    array-length v2, v2

    if-le v1, v2, :cond_1

    .line 302
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/f;->e:[Lcom/squareup/okhttp/internal/spdy/d;

    array-length v1, v1

    shl-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Lcom/squareup/okhttp/internal/spdy/d;

    .line 303
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/f;->e:[Lcom/squareup/okhttp/internal/spdy/d;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/f;->e:[Lcom/squareup/okhttp/internal/spdy/d;

    array-length v4, v4

    iget-object v5, p0, Lcom/squareup/okhttp/internal/spdy/f;->e:[Lcom/squareup/okhttp/internal/spdy/d;

    array-length v5, v5

    invoke-static {v2, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 304
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/f;->e:[Lcom/squareup/okhttp/internal/spdy/d;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/squareup/okhttp/internal/spdy/f;->f:I

    .line 305
    iput-object v1, p0, Lcom/squareup/okhttp/internal/spdy/f;->e:[Lcom/squareup/okhttp/internal/spdy/d;

    .line 307
    :cond_1
    iget v1, p0, Lcom/squareup/okhttp/internal/spdy/f;->f:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/squareup/okhttp/internal/spdy/f;->f:I

    .line 308
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/f;->e:[Lcom/squareup/okhttp/internal/spdy/d;

    aput-object p2, v2, v1

    .line 309
    iget v1, p0, Lcom/squareup/okhttp/internal/spdy/f;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/squareup/okhttp/internal/spdy/f;->g:I

    .line 314
    iget v1, p0, Lcom/squareup/okhttp/internal/spdy/f;->h:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/squareup/okhttp/internal/spdy/f;->h:I

    goto :goto_0
.end method

.method private b(I)I
    .locals 6

    .prologue
    .line 171
    const/4 v1, 0x0

    .line 172
    if-lez p1, :cond_1

    .line 174
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/f;->e:[Lcom/squareup/okhttp/internal/spdy/d;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    iget v2, p0, Lcom/squareup/okhttp/internal/spdy/f;->f:I

    if-lt v0, v2, :cond_0

    if-lez p1, :cond_0

    .line 175
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/f;->e:[Lcom/squareup/okhttp/internal/spdy/d;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/squareup/okhttp/internal/spdy/d;->j:I

    sub-int/2addr p1, v2

    .line 176
    iget v2, p0, Lcom/squareup/okhttp/internal/spdy/f;->h:I

    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/f;->e:[Lcom/squareup/okhttp/internal/spdy/d;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/squareup/okhttp/internal/spdy/d;->j:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/squareup/okhttp/internal/spdy/f;->h:I

    .line 177
    iget v2, p0, Lcom/squareup/okhttp/internal/spdy/f;->g:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/squareup/okhttp/internal/spdy/f;->g:I

    .line 178
    add-int/lit8 v1, v1, 0x1

    .line 174
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/f;->e:[Lcom/squareup/okhttp/internal/spdy/d;

    iget v2, p0, Lcom/squareup/okhttp/internal/spdy/f;->f:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/f;->e:[Lcom/squareup/okhttp/internal/spdy/d;

    iget v4, p0, Lcom/squareup/okhttp/internal/spdy/f;->f:I

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v4, v1

    iget v5, p0, Lcom/squareup/okhttp/internal/spdy/f;->g:I

    invoke-static {v0, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 182
    iget v0, p0, Lcom/squareup/okhttp/internal/spdy/f;->f:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/squareup/okhttp/internal/spdy/f;->f:I

    .line 184
    :cond_1
    return v1
.end method

.method private c(I)I
    .locals 1

    .prologue
    .line 241
    iget v0, p0, Lcom/squareup/okhttp/internal/spdy/f;->f:I

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, p1

    return v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 152
    iget v0, p0, Lcom/squareup/okhttp/internal/spdy/f;->d:I

    iget v1, p0, Lcom/squareup/okhttp/internal/spdy/f;->h:I

    if-ge v0, v1, :cond_0

    .line 153
    iget v0, p0, Lcom/squareup/okhttp/internal/spdy/f;->d:I

    if-nez v0, :cond_1

    .line 154
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/spdy/f;->d()V

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    iget v0, p0, Lcom/squareup/okhttp/internal/spdy/f;->h:I

    iget v1, p0, Lcom/squareup/okhttp/internal/spdy/f;->d:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/squareup/okhttp/internal/spdy/f;->b(I)I

    goto :goto_0
.end method

.method private d(I)Lokio/ByteString;
    .locals 2

    .prologue
    .line 270
    invoke-static {p1}, Lcom/squareup/okhttp/internal/spdy/f;->e(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    invoke-static {}, Lcom/squareup/okhttp/internal/spdy/e;->a()[Lcom/squareup/okhttp/internal/spdy/d;

    move-result-object v0

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/squareup/okhttp/internal/spdy/d;->h:Lokio/ByteString;

    .line 273
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/f;->e:[Lcom/squareup/okhttp/internal/spdy/d;

    invoke-static {}, Lcom/squareup/okhttp/internal/spdy/e;->a()[Lcom/squareup/okhttp/internal/spdy/d;

    move-result-object v1

    array-length v1, v1

    sub-int v1, p1, v1

    invoke-direct {p0, v1}, Lcom/squareup/okhttp/internal/spdy/f;->c(I)I

    move-result v1

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/squareup/okhttp/internal/spdy/d;->h:Lokio/ByteString;

    goto :goto_0
.end method

.method private d()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 162
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/f;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 163
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/f;->e:[Lcom/squareup/okhttp/internal/spdy/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 164
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/f;->e:[Lcom/squareup/okhttp/internal/spdy/d;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/squareup/okhttp/internal/spdy/f;->f:I

    .line 165
    iput v2, p0, Lcom/squareup/okhttp/internal/spdy/f;->g:I

    .line 166
    iput v2, p0, Lcom/squareup/okhttp/internal/spdy/f;->h:I

    .line 167
    return-void
.end method

.method private e()I
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/f;->b:Lokio/i;

    invoke-interface {v0}, Lokio/i;->f()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private static e(I)Z
    .locals 1

    .prologue
    .line 278
    if-ltz p0, :cond_0

    invoke-static {}, Lcom/squareup/okhttp/internal/spdy/e;->a()[Lcom/squareup/okhttp/internal/spdy/d;

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f()Lokio/ByteString;
    .locals 6

    .prologue
    .line 345
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/spdy/f;->e()I

    move-result v1

    .line 346
    and-int/lit16 v0, v1, 0x80

    const/16 v2, 0x80

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    .line 347
    :goto_0
    const/16 v2, 0x7f

    invoke-direct {p0, v1, v2}, Lcom/squareup/okhttp/internal/spdy/f;->a(II)I

    move-result v1

    .line 349
    if-eqz v0, :cond_1

    .line 350
    invoke-static {}, Lcom/squareup/okhttp/internal/spdy/m;->a()Lcom/squareup/okhttp/internal/spdy/m;

    move-result-object v0

    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/f;->b:Lokio/i;

    int-to-long v4, v1

    invoke-interface {v2, v4, v5}, Lokio/i;->e(J)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/spdy/m;->a([B)[B

    move-result-object v0

    invoke-static {v0}, Lokio/ByteString;->of([B)Lokio/ByteString;

    move-result-object v0

    .line 352
    :goto_1
    return-object v0

    .line 346
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 352
    :cond_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/f;->b:Lokio/i;

    int-to-long v2, v1

    invoke-interface {v0, v2, v3}, Lokio/i;->c(J)Lokio/ByteString;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method final a()V
    .locals 7

    .prologue
    const/16 v6, 0x80

    const/16 v5, 0x40

    const/4 v4, -0x1

    .line 192
    :goto_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/f;->b:Lokio/i;

    invoke-interface {v0}, Lokio/i;->d()Z

    move-result v0

    if-nez v0, :cond_c

    .line 193
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/f;->b:Lokio/i;

    invoke-interface {v0}, Lokio/i;->f()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 194
    if-ne v0, v6, :cond_0

    .line 195
    new-instance v0, Ljava/io/IOException;

    const-string v1, "index == 0"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :cond_0
    and-int/lit16 v1, v0, 0x80

    if-ne v1, v6, :cond_4

    .line 197
    const/16 v1, 0x7f

    invoke-direct {p0, v0, v1}, Lcom/squareup/okhttp/internal/spdy/f;->a(II)I

    move-result v0

    .line 198
    add-int/lit8 v0, v0, -0x1

    .line 1227
    invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/f;->e(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1228
    invoke-static {}, Lcom/squareup/okhttp/internal/spdy/e;->a()[Lcom/squareup/okhttp/internal/spdy/d;

    move-result-object v1

    aget-object v0, v1, v0

    .line 1229
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/f;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1231
    :cond_1
    invoke-static {}, Lcom/squareup/okhttp/internal/spdy/e;->a()[Lcom/squareup/okhttp/internal/spdy/d;

    move-result-object v1

    array-length v1, v1

    sub-int v1, v0, v1

    invoke-direct {p0, v1}, Lcom/squareup/okhttp/internal/spdy/f;->c(I)I

    move-result v1

    .line 1232
    if-ltz v1, :cond_2

    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/f;->e:[Lcom/squareup/okhttp/internal/spdy/d;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-le v1, v2, :cond_3

    .line 1233
    :cond_2
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Header index too large "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1235
    :cond_3
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/f;->a:Ljava/util/List;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/f;->e:[Lcom/squareup/okhttp/internal/spdy/d;

    aget-object v1, v2, v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 199
    :cond_4
    if-ne v0, v5, :cond_5

    .line 1264
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/spdy/f;->f()Lokio/ByteString;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/e;->a(Lokio/ByteString;)Lokio/ByteString;

    move-result-object v0

    .line 1265
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/spdy/f;->f()Lokio/ByteString;

    move-result-object v1

    .line 1266
    new-instance v2, Lcom/squareup/okhttp/internal/spdy/d;

    invoke-direct {v2, v0, v1}, Lcom/squareup/okhttp/internal/spdy/d;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    invoke-direct {p0, v4, v2}, Lcom/squareup/okhttp/internal/spdy/f;->a(ILcom/squareup/okhttp/internal/spdy/d;)V

    goto/16 :goto_0

    .line 201
    :cond_5
    and-int/lit8 v1, v0, 0x40

    if-ne v1, v5, :cond_6

    .line 202
    const/16 v1, 0x3f

    invoke-direct {p0, v0, v1}, Lcom/squareup/okhttp/internal/spdy/f;->a(II)I

    move-result v0

    .line 203
    add-int/lit8 v0, v0, -0x1

    .line 2258
    invoke-direct {p0, v0}, Lcom/squareup/okhttp/internal/spdy/f;->d(I)Lokio/ByteString;

    move-result-object v0

    .line 2259
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/spdy/f;->f()Lokio/ByteString;

    move-result-object v1

    .line 2260
    new-instance v2, Lcom/squareup/okhttp/internal/spdy/d;

    invoke-direct {v2, v0, v1}, Lcom/squareup/okhttp/internal/spdy/d;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    invoke-direct {p0, v4, v2}, Lcom/squareup/okhttp/internal/spdy/f;->a(ILcom/squareup/okhttp/internal/spdy/d;)V

    goto/16 :goto_0

    .line 204
    :cond_6
    and-int/lit8 v1, v0, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_9

    .line 205
    const/16 v1, 0x1f

    invoke-direct {p0, v0, v1}, Lcom/squareup/okhttp/internal/spdy/f;->a(II)I

    move-result v0

    iput v0, p0, Lcom/squareup/okhttp/internal/spdy/f;->d:I

    .line 206
    iget v0, p0, Lcom/squareup/okhttp/internal/spdy/f;->d:I

    if-ltz v0, :cond_7

    iget v0, p0, Lcom/squareup/okhttp/internal/spdy/f;->d:I

    iget v1, p0, Lcom/squareup/okhttp/internal/spdy/f;->c:I

    if-le v0, v1, :cond_8

    .line 208
    :cond_7
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid dynamic table size update "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/squareup/okhttp/internal/spdy/f;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 210
    :cond_8
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/spdy/f;->c()V

    goto/16 :goto_0

    .line 211
    :cond_9
    const/16 v1, 0x10

    if-eq v0, v1, :cond_a

    if-nez v0, :cond_b

    .line 3251
    :cond_a
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/spdy/f;->f()Lokio/ByteString;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/e;->a(Lokio/ByteString;)Lokio/ByteString;

    move-result-object v0

    .line 3252
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/spdy/f;->f()Lokio/ByteString;

    move-result-object v1

    .line 3253
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/f;->a:Ljava/util/List;

    new-instance v3, Lcom/squareup/okhttp/internal/spdy/d;

    invoke-direct {v3, v0, v1}, Lcom/squareup/okhttp/internal/spdy/d;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 214
    :cond_b
    const/16 v1, 0xf

    invoke-direct {p0, v0, v1}, Lcom/squareup/okhttp/internal/spdy/f;->a(II)I

    move-result v0

    .line 215
    add-int/lit8 v0, v0, -0x1

    .line 4245
    invoke-direct {p0, v0}, Lcom/squareup/okhttp/internal/spdy/f;->d(I)Lokio/ByteString;

    move-result-object v0

    .line 4246
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/spdy/f;->f()Lokio/ByteString;

    move-result-object v1

    .line 4247
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/f;->a:Ljava/util/List;

    new-instance v3, Lcom/squareup/okhttp/internal/spdy/d;

    invoke-direct {v3, v0, v1}, Lcom/squareup/okhttp/internal/spdy/d;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 218
    :cond_c
    return-void
.end method

.method final a(I)V
    .locals 0

    .prologue
    .line 146
    iput p1, p0, Lcom/squareup/okhttp/internal/spdy/f;->c:I

    .line 147
    iput p1, p0, Lcom/squareup/okhttp/internal/spdy/f;->d:I

    .line 148
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/spdy/f;->c()V

    .line 149
    return-void
.end method

.method public final b()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/internal/spdy/d;",
            ">;"
        }
    .end annotation

    .prologue
    .line 221
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/f;->a:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 222
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/f;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 223
    return-object v0
.end method
