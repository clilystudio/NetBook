.class final Lcom/squareup/okhttp/internal/spdy/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/squareup/okhttp/internal/spdy/a;


# instance fields
.field private final a:Lokio/i;

.field private final b:Lcom/squareup/okhttp/internal/spdy/i;

.field private final c:Z

.field private d:Lcom/squareup/okhttp/internal/spdy/f;


# direct methods
.method constructor <init>(Lokio/i;IZ)V
    .locals 3

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Lcom/squareup/okhttp/internal/spdy/k;->a:Lokio/i;

    .line 97
    iput-boolean p3, p0, Lcom/squareup/okhttp/internal/spdy/k;->c:Z

    .line 98
    new-instance v0, Lcom/squareup/okhttp/internal/spdy/i;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/k;->a:Lokio/i;

    invoke-direct {v0, v1}, Lcom/squareup/okhttp/internal/spdy/i;-><init>(Lokio/i;)V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/k;->b:Lcom/squareup/okhttp/internal/spdy/i;

    .line 99
    new-instance v0, Lcom/squareup/okhttp/internal/spdy/f;

    const/16 v1, 0x1000

    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/k;->b:Lcom/squareup/okhttp/internal/spdy/i;

    invoke-direct {v0, v1, v2}, Lcom/squareup/okhttp/internal/spdy/f;-><init>(ILokio/y;)V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/k;->d:Lcom/squareup/okhttp/internal/spdy/f;

    .line 100
    return-void
.end method

.method private a(ISBI)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ISBI)",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/internal/spdy/d;",
            ">;"
        }
    .end annotation

    .prologue
    .line 205
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/k;->b:Lcom/squareup/okhttp/internal/spdy/i;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/k;->b:Lcom/squareup/okhttp/internal/spdy/i;

    iput p1, v1, Lcom/squareup/okhttp/internal/spdy/i;->d:I

    iput p1, v0, Lcom/squareup/okhttp/internal/spdy/i;->a:I

    .line 206
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/k;->b:Lcom/squareup/okhttp/internal/spdy/i;

    iput-short p2, v0, Lcom/squareup/okhttp/internal/spdy/i;->e:S

    .line 207
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/k;->b:Lcom/squareup/okhttp/internal/spdy/i;

    iput-byte p3, v0, Lcom/squareup/okhttp/internal/spdy/i;->b:B

    .line 208
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/k;->b:Lcom/squareup/okhttp/internal/spdy/i;

    iput p4, v0, Lcom/squareup/okhttp/internal/spdy/i;->c:I

    .line 212
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/k;->d:Lcom/squareup/okhttp/internal/spdy/f;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/spdy/f;->a()V

    .line 213
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/k;->d:Lcom/squareup/okhttp/internal/spdy/f;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/spdy/f;->b()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/squareup/okhttp/internal/spdy/b;I)V
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/k;->a:Lokio/i;

    invoke-interface {v0}, Lokio/i;->h()I

    .line 243
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/k;->a:Lokio/i;

    invoke-interface {v0}, Lokio/i;->f()B

    .line 245
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 103
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/spdy/k;->c:Z

    if-eqz v0, :cond_1

    .line 109
    :cond_0
    return-void

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/k;->a:Lokio/i;

    invoke-static {}, Lcom/squareup/okhttp/internal/spdy/h;->a()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lokio/ByteString;->size()I

    move-result v1

    int-to-long v2, v1

    invoke-interface {v0, v2, v3}, Lokio/i;->c(J)Lokio/ByteString;

    move-result-object v0

    .line 105
    invoke-static {}, Lcom/squareup/okhttp/internal/spdy/h;->b()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/squareup/okhttp/internal/spdy/h;->b()Ljava/util/logging/Logger;

    move-result-object v1

    const-string v2, "<< CONNECTION %s"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 106
    :cond_2
    invoke-static {}, Lcom/squareup/okhttp/internal/spdy/h;->a()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v1, v0}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 107
    const-string v1, "Expected a connection header but was %s"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Lcom/squareup/okhttp/internal/spdy/h;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public final a(Lcom/squareup/okhttp/internal/spdy/b;)Z
    .locals 11

    .prologue
    const/16 v10, 0x4000

    const/16 v9, 0x8

    const/4 v4, 0x4

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/k;->a:Lokio/i;

    const-wide/16 v2, 0x9

    invoke-interface {v0, v2, v3}, Lokio/i;->a(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/k;->a:Lokio/i;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/h;->a(Lokio/i;)I

    move-result v0

    .line 131
    if-ltz v0, :cond_0

    if-le v0, v10, :cond_2

    .line 132
    :cond_0
    const-string v2, "FRAME_SIZE_ERROR: %s"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Lcom/squareup/okhttp/internal/spdy/h;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 115
    :catch_0
    move-exception v0

    move v6, v1

    .line 180
    :cond_1
    :goto_0
    return v6

    .line 134
    :cond_2
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/k;->a:Lokio/i;

    invoke-interface {v2}, Lokio/i;->f()B

    move-result v2

    int-to-byte v2, v2

    .line 135
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/k;->a:Lokio/i;

    invoke-interface {v3}, Lokio/i;->f()B

    move-result v3

    int-to-byte v5, v3

    .line 136
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/k;->a:Lokio/i;

    invoke-interface {v3}, Lokio/i;->h()I

    move-result v3

    const v7, 0x7fffffff

    and-int/2addr v3, v7

    .line 137
    invoke-static {}, Lcom/squareup/okhttp/internal/spdy/h;->b()Ljava/util/logging/Logger;

    move-result-object v7

    sget-object v8, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-static {}, Lcom/squareup/okhttp/internal/spdy/h;->b()Ljava/util/logging/Logger;

    move-result-object v7

    invoke-static {v6, v3, v0, v2, v5}, Lcom/squareup/okhttp/internal/spdy/j;->a(ZIIBB)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 139
    :cond_3
    packed-switch v2, :pswitch_data_0

    .line 178
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/k;->a:Lokio/i;

    int-to-long v2, v0

    invoke-interface {v1, v2, v3}, Lokio/i;->f(J)V

    goto :goto_0

    .line 1219
    :pswitch_0
    and-int/lit8 v2, v5, 0x1

    if-eqz v2, :cond_4

    move v4, v6

    .line 1220
    :goto_1
    and-int/lit8 v2, v5, 0x20

    if-eqz v2, :cond_5

    move v2, v6

    .line 1221
    :goto_2
    if-eqz v2, :cond_6

    .line 1222
    const-string v0, "PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/spdy/h;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_4
    move v4, v1

    .line 1219
    goto :goto_1

    :cond_5
    move v2, v1

    .line 1220
    goto :goto_2

    .line 1225
    :cond_6
    and-int/lit8 v2, v5, 0x8

    if-eqz v2, :cond_7

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/k;->a:Lokio/i;

    invoke-interface {v1}, Lokio/i;->f()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    int-to-short v1, v1

    .line 1226
    :cond_7
    invoke-static {v0, v5, v1}, Lcom/squareup/okhttp/internal/spdy/h;->a(IBS)I

    move-result v0

    .line 1228
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/k;->a:Lokio/i;

    invoke-interface {p1, v4, v3, v2, v0}, Lcom/squareup/okhttp/internal/spdy/b;->a(ZILokio/i;I)V

    .line 1229
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/k;->a:Lokio/i;

    int-to-long v2, v1

    invoke-interface {v0, v2, v3}, Lokio/i;->f(J)V

    goto :goto_0

    .line 2185
    :pswitch_1
    if-nez v3, :cond_8

    const-string v0, "PROTOCOL_ERROR: TYPE_HEADERS streamId == 0"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/spdy/h;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 2187
    :cond_8
    and-int/lit8 v2, v5, 0x1

    if-eqz v2, :cond_a

    move v2, v6

    .line 2189
    :goto_3
    and-int/lit8 v4, v5, 0x8

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/k;->a:Lokio/i;

    invoke-interface {v4}, Lokio/i;->f()B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-short v4, v4

    .line 2191
    :goto_4
    and-int/lit8 v7, v5, 0x20

    if-eqz v7, :cond_9

    .line 2192
    invoke-direct {p0, p1, v3}, Lcom/squareup/okhttp/internal/spdy/k;->a(Lcom/squareup/okhttp/internal/spdy/b;I)V

    .line 2193
    add-int/lit8 v0, v0, -0x5

    .line 2196
    :cond_9
    invoke-static {v0, v5, v4}, Lcom/squareup/okhttp/internal/spdy/h;->a(IBS)I

    move-result v0

    .line 2198
    invoke-direct {p0, v0, v4, v5, v3}, Lcom/squareup/okhttp/internal/spdy/k;->a(ISBI)Ljava/util/List;

    move-result-object v4

    .line 2200
    sget-object v5, Lcom/squareup/okhttp/internal/spdy/HeadersMode;->HTTP_20_HEADERS:Lcom/squareup/okhttp/internal/spdy/HeadersMode;

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/squareup/okhttp/internal/spdy/b;->a(ZZILjava/util/List;Lcom/squareup/okhttp/internal/spdy/HeadersMode;)V

    goto/16 :goto_0

    :cond_a
    move v2, v1

    .line 2187
    goto :goto_3

    :cond_b
    move v4, v1

    .line 2189
    goto :goto_4

    .line 2234
    :pswitch_2
    const/4 v2, 0x5

    if-eq v0, v2, :cond_c

    const-string v2, "TYPE_PRIORITY length: %d != 5"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Lcom/squareup/okhttp/internal/spdy/h;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 2235
    :cond_c
    if-nez v3, :cond_d

    const-string v0, "TYPE_PRIORITY streamId == 0"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/spdy/h;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 2236
    :cond_d
    invoke-direct {p0, p1, v3}, Lcom/squareup/okhttp/internal/spdy/k;->a(Lcom/squareup/okhttp/internal/spdy/b;I)V

    goto/16 :goto_0

    .line 2249
    :pswitch_3
    if-eq v0, v4, :cond_e

    const-string v2, "TYPE_RST_STREAM length: %d != 4"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Lcom/squareup/okhttp/internal/spdy/h;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 2250
    :cond_e
    if-nez v3, :cond_f

    const-string v0, "TYPE_RST_STREAM streamId == 0"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/spdy/h;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 2251
    :cond_f
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/k;->a:Lokio/i;

    invoke-interface {v0}, Lokio/i;->h()I

    move-result v0

    .line 2252
    invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->fromHttp2(I)Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    move-result-object v2

    .line 2253
    if-nez v2, :cond_10

    .line 2254
    const-string v2, "TYPE_RST_STREAM unexpected error code: %d"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Lcom/squareup/okhttp/internal/spdy/h;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 2256
    :cond_10
    invoke-interface {p1, v3, v2}, Lcom/squareup/okhttp/internal/spdy/b;->a(ILcom/squareup/okhttp/internal/spdy/ErrorCode;)V

    goto/16 :goto_0

    .line 2261
    :pswitch_4
    if-eqz v3, :cond_11

    const-string v0, "TYPE_SETTINGS streamId != 0"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/spdy/h;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 2262
    :cond_11
    and-int/lit8 v2, v5, 0x1

    if-eqz v2, :cond_12

    .line 2263
    if-eqz v0, :cond_1

    const-string v0, "FRAME_SIZE_ERROR ack frame should be empty!"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/spdy/h;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 2268
    :cond_12
    rem-int/lit8 v2, v0, 0x6

    if-eqz v2, :cond_13

    const-string v2, "TYPE_SETTINGS length %% 6 != 0: %s"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Lcom/squareup/okhttp/internal/spdy/h;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 2269
    :cond_13
    new-instance v5, Lcom/squareup/okhttp/internal/spdy/w;

    invoke-direct {v5}, Lcom/squareup/okhttp/internal/spdy/w;-><init>()V

    move v3, v1

    .line 2270
    :goto_5
    if-ge v3, v0, :cond_16

    .line 2271
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/k;->a:Lokio/i;

    invoke-interface {v2}, Lokio/i;->g()S

    move-result v2

    .line 2272
    iget-object v7, p0, Lcom/squareup/okhttp/internal/spdy/k;->a:Lokio/i;

    invoke-interface {v7}, Lokio/i;->h()I

    move-result v7

    .line 2274
    packed-switch v2, :pswitch_data_1

    .line 2299
    const-string v0, "PROTOCOL_ERROR invalid settings id: %s"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-static {v0, v3}, Lcom/squareup/okhttp/internal/spdy/h;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 2278
    :pswitch_5
    if-eqz v7, :cond_14

    if-eq v7, v6, :cond_14

    .line 2279
    const-string v0, "PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/spdy/h;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :pswitch_6
    move v2, v4

    .line 2301
    :cond_14
    :pswitch_7
    invoke-virtual {v5, v2, v1, v7}, Lcom/squareup/okhttp/internal/spdy/w;->a(III)Lcom/squareup/okhttp/internal/spdy/w;

    .line 2270
    add-int/lit8 v2, v3, 0x6

    move v3, v2

    goto :goto_5

    .line 2286
    :pswitch_8
    const/4 v2, 0x7

    .line 2287
    if-gez v7, :cond_14

    .line 2288
    const-string v0, "PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/spdy/h;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 2292
    :pswitch_9
    if-lt v7, v10, :cond_15

    const v8, 0xffffff

    if-le v7, v8, :cond_14

    .line 2293
    :cond_15
    const-string v0, "PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: %s"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lcom/squareup/okhttp/internal/spdy/h;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 2303
    :cond_16
    invoke-interface {p1, v1, v5}, Lcom/squareup/okhttp/internal/spdy/b;->a(ZLcom/squareup/okhttp/internal/spdy/w;)V

    .line 2304
    invoke-virtual {v5}, Lcom/squareup/okhttp/internal/spdy/w;->c()I

    move-result v0

    if-ltz v0, :cond_1

    .line 2305
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/k;->d:Lcom/squareup/okhttp/internal/spdy/f;

    invoke-virtual {v5}, Lcom/squareup/okhttp/internal/spdy/w;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/spdy/f;->a(I)V

    goto/16 :goto_0

    .line 2311
    :pswitch_a
    if-nez v3, :cond_17

    .line 2312
    const-string v0, "PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/spdy/h;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 2314
    :cond_17
    and-int/lit8 v2, v5, 0x8

    if-eqz v2, :cond_18

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/k;->a:Lokio/i;

    invoke-interface {v1}, Lokio/i;->f()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    int-to-short v1, v1

    .line 2315
    :cond_18
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/k;->a:Lokio/i;

    invoke-interface {v2}, Lokio/i;->h()I

    move-result v2

    const v4, 0x7fffffff

    and-int/2addr v2, v4

    .line 2316
    add-int/lit8 v0, v0, -0x4

    .line 2317
    invoke-static {v0, v5, v1}, Lcom/squareup/okhttp/internal/spdy/h;->a(IBS)I

    move-result v0

    .line 2318
    invoke-direct {p0, v0, v1, v5, v3}, Lcom/squareup/okhttp/internal/spdy/k;->a(ISBI)Ljava/util/List;

    move-result-object v0

    .line 2319
    invoke-interface {p1, v2, v0}, Lcom/squareup/okhttp/internal/spdy/b;->a(ILjava/util/List;)V

    goto/16 :goto_0

    .line 2324
    :pswitch_b
    if-eq v0, v9, :cond_19

    const-string v2, "TYPE_PING length != 8: %s"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Lcom/squareup/okhttp/internal/spdy/h;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 2325
    :cond_19
    if-eqz v3, :cond_1a

    const-string v0, "TYPE_PING streamId != 0"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/spdy/h;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 2326
    :cond_1a
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/k;->a:Lokio/i;

    invoke-interface {v0}, Lokio/i;->h()I

    move-result v0

    .line 2327
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/k;->a:Lokio/i;

    invoke-interface {v2}, Lokio/i;->h()I

    move-result v2

    .line 2328
    and-int/lit8 v3, v5, 0x1

    if-eqz v3, :cond_1b

    move v1, v6

    .line 2329
    :cond_1b
    invoke-interface {p1, v1, v0, v2}, Lcom/squareup/okhttp/internal/spdy/b;->a(ZII)V

    goto/16 :goto_0

    .line 2334
    :pswitch_c
    if-ge v0, v9, :cond_1c

    const-string v2, "TYPE_GOAWAY length < 8: %s"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Lcom/squareup/okhttp/internal/spdy/h;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 2335
    :cond_1c
    if-eqz v3, :cond_1d

    const-string v0, "TYPE_GOAWAY streamId != 0"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/spdy/h;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 2336
    :cond_1d
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/k;->a:Lokio/i;

    invoke-interface {v2}, Lokio/i;->h()I

    move-result v2

    .line 2337
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/k;->a:Lokio/i;

    invoke-interface {v3}, Lokio/i;->h()I

    move-result v3

    .line 2338
    add-int/lit8 v4, v0, -0x8

    .line 2339
    invoke-static {v3}, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->fromHttp2(I)Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    move-result-object v0

    .line 2340
    if-nez v0, :cond_1e

    .line 2341
    const-string v0, "TYPE_GOAWAY unexpected error code: %d"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lcom/squareup/okhttp/internal/spdy/h;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 2343
    :cond_1e
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    .line 2344
    if-lez v4, :cond_1f

    .line 2345
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/k;->a:Lokio/i;

    int-to-long v4, v4

    invoke-interface {v0, v4, v5}, Lokio/i;->c(J)Lokio/ByteString;

    move-result-object v0

    .line 2347
    :cond_1f
    invoke-interface {p1, v2, v0}, Lcom/squareup/okhttp/internal/spdy/b;->a(ILokio/ByteString;)V

    goto/16 :goto_0

    .line 2352
    :pswitch_d
    if-eq v0, v4, :cond_20

    const-string v2, "TYPE_WINDOW_UPDATE length !=4: %s"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Lcom/squareup/okhttp/internal/spdy/h;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 2353
    :cond_20
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/k;->a:Lokio/i;

    invoke-interface {v0}, Lokio/i;->h()I

    move-result v0

    int-to-long v4, v0

    const-wide/32 v8, 0x7fffffff

    and-long/2addr v4, v8

    .line 2354
    const-wide/16 v8, 0x0

    cmp-long v0, v4, v8

    if-nez v0, :cond_21

    const-string v0, "windowSizeIncrement was 0"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lcom/squareup/okhttp/internal/spdy/h;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 2355
    :cond_21
    invoke-interface {p1, v3, v4, v5}, Lcom/squareup/okhttp/internal/spdy/b;->a(IJ)V

    goto/16 :goto_0

    .line 139
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch

    .line 2274
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_5
        :pswitch_6
        :pswitch_8
        :pswitch_9
        :pswitch_7
    .end packed-switch
.end method

.method public final close()V
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/k;->a:Lokio/i;

    invoke-interface {v0}, Lokio/i;->close()V

    .line 360
    return-void
.end method
