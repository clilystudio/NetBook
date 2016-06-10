.class public final Lcom/squareup/okhttp/x;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field g:Ljava/lang/String;

.field private h:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 622
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 614
    const-string v0, ""

    iput-object v0, p0, Lcom/squareup/okhttp/x;->b:Ljava/lang/String;

    .line 615
    const-string v0, ""

    iput-object v0, p0, Lcom/squareup/okhttp/x;->c:Ljava/lang/String;

    .line 617
    const/4 v0, -0x1

    iput v0, p0, Lcom/squareup/okhttp/x;->h:I

    .line 618
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/x;->e:Ljava/util/List;

    .line 623
    iget-object v0, p0, Lcom/squareup/okhttp/x;->e:Ljava/util/List;

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 624
    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1315
    :try_start_0
    invoke-static {p0}, Ljava/net/IDN;->toASCII(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 1316
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    .line 1320
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    .line 1318
    goto :goto_0

    .line 1320
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private a(Ljava/lang/String;II)V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1004
    if-ne p2, p3, :cond_1

    .line 1027
    :cond_0
    return-void

    .line 1008
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1009
    const/16 v1, 0x2f

    if-eq v0, v1, :cond_2

    const/16 v1, 0x5c

    if-ne v0, v1, :cond_7

    .line 1011
    :cond_2
    iget-object v0, p0, Lcom/squareup/okhttp/x;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1012
    iget-object v0, p0, Lcom/squareup/okhttp/x;->e:Ljava/util/List;

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1013
    add-int/lit8 p2, p2, 0x1

    :goto_0
    move v1, p2

    .line 1020
    :goto_1
    if-ge v1, p3, :cond_0

    .line 1021
    const-string v0, "/\\"

    invoke-static {p1, v1, p3, v0}, Lcom/squareup/okhttp/w;->a(Ljava/lang/String;IILjava/lang/String;)I

    move-result v2

    .line 1022
    if-ge v2, p3, :cond_8

    move v6, v4

    .line 3032
    :goto_2
    const-string v3, " \"<>^`{}|/\\?#"

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/squareup/okhttp/w;->a(Ljava/lang/String;IILjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    .line 3052
    const-string v0, "."

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "%2e"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_3
    move v0, v4

    .line 3034
    :goto_3
    if-nez v0, :cond_5

    .line 3056
    const-string v0, ".."

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "%2e."

    .line 3057
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, ".%2e"

    .line 3058
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "%2e%2e"

    .line 3059
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_4
    move v0, v4

    .line 3037
    :goto_4
    if-eqz v0, :cond_c

    .line 3073
    iget-object v0, p0, Lcom/squareup/okhttp/x;->e:Ljava/util/List;

    iget-object v1, p0, Lcom/squareup/okhttp/x;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3076
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/squareup/okhttp/x;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 3077
    iget-object v0, p0, Lcom/squareup/okhttp/x;->e:Ljava/util/List;

    iget-object v1, p0, Lcom/squareup/okhttp/x;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const-string v3, ""

    invoke-interface {v0, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1025
    :cond_5
    :goto_5
    if-eqz v6, :cond_6

    add-int/lit8 v2, v2, 0x1

    :cond_6
    move v1, v2

    .line 1026
    goto :goto_1

    .line 1016
    :cond_7
    iget-object v0, p0, Lcom/squareup/okhttp/x;->e:Ljava/util/List;

    iget-object v1, p0, Lcom/squareup/okhttp/x;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_8
    move v6, v5

    .line 1022
    goto/16 :goto_2

    :cond_9
    move v0, v5

    .line 3052
    goto :goto_3

    :cond_a
    move v0, v5

    .line 3059
    goto :goto_4

    .line 3079
    :cond_b
    iget-object v0, p0, Lcom/squareup/okhttp/x;->e:Ljava/util/List;

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 3041
    :cond_c
    iget-object v0, p0, Lcom/squareup/okhttp/x;->e:Ljava/util/List;

    iget-object v3, p0, Lcom/squareup/okhttp/x;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 3042
    iget-object v0, p0, Lcom/squareup/okhttp/x;->e:Ljava/util/List;

    iget-object v3, p0, Lcom/squareup/okhttp/x;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3046
    :goto_6
    if-eqz v6, :cond_5

    .line 3047
    iget-object v0, p0, Lcom/squareup/okhttp/x;->e:Ljava/util/List;

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 3044
    :cond_d
    iget-object v0, p0, Lcom/squareup/okhttp/x;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6
.end method

.method private static b(Ljava/lang/String;II)I
    .locals 3

    .prologue
    .line 1169
    move v0, p1

    :goto_0
    if-ge v0, p2, :cond_2

    .line 1170
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 1169
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1172
    :cond_1
    :sswitch_0
    add-int/lit8 v0, v0, 0x1

    if-ge v0, p2, :cond_0

    .line 1173
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5d

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_2
    move v0, p2

    .line 1180
    :sswitch_1
    return v0

    .line 1170
    :sswitch_data_0
    .sparse-switch
        0x3a -> :sswitch_1
        0x5b -> :sswitch_0
    .end sparse-switch
.end method

.method private static c(Ljava/lang/String;II)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1186
    invoke-static {p0, p1, p2}, Lcom/squareup/okhttp/w;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    .line 1189
    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1190
    const/4 v2, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v1, v2, v3}, Lcom/squareup/okhttp/x;->d(Ljava/lang/String;II)Ljava/net/InetAddress;

    move-result-object v1

    .line 1191
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    .line 1204
    :cond_0
    :goto_0
    return-object v0

    .line 1195
    :cond_1
    invoke-static {v1}, Lcom/squareup/okhttp/x;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1196
    if-eqz v1, :cond_0

    .line 1199
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 1200
    const/4 v3, 0x0

    const-string v4, "\u0000\t\n\r #%/:?@[\\]"

    invoke-static {v1, v3, v2, v4}, Lcom/squareup/okhttp/w;->a(Ljava/lang/String;IILjava/lang/String;)I

    move-result v3

    if-ne v3, v2, :cond_0

    move-object v0, v1

    .line 1204
    goto :goto_0
.end method

.method private static d(Ljava/lang/String;II)Ljava/net/InetAddress;
    .locals 11

    .prologue
    .line 1209
    const/16 v0, 0x10

    new-array v7, v0, [B

    .line 1210
    const/4 v2, 0x0

    .line 1211
    const/4 v1, -0x1

    .line 1212
    const/4 v4, -0x1

    .line 1214
    const/4 v0, 0x1

    :goto_0
    if-ge v0, p2, :cond_2

    .line 1215
    const/16 v3, 0x10

    if-ne v2, v3, :cond_0

    const/4 v0, 0x0

    .line 1272
    :goto_1
    return-object v0

    .line 1218
    :cond_0
    add-int/lit8 v3, v0, 0x2

    if-gt v3, p2, :cond_3

    const-string v3, "::"

    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-virtual {p0, v0, v3, v5, v6}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1220
    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    .line 1221
    :cond_1
    add-int/lit8 v0, v0, 0x2

    .line 1222
    add-int/lit8 v1, v2, 0x2

    .line 1224
    if-ne v0, p2, :cond_16

    move v2, v1

    .line 1265
    :cond_2
    :goto_2
    const/16 v0, 0x10

    if-eq v2, v0, :cond_15

    .line 1266
    const/4 v0, -0x1

    if-ne v1, v0, :cond_14

    const/4 v0, 0x0

    goto :goto_1

    .line 1225
    :cond_3
    if-eqz v2, :cond_4

    .line 1227
    const-string v3, ":"

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {p0, v0, v3, v5, v6}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1228
    add-int/lit8 v0, v0, 0x1

    .line 1240
    :cond_4
    :goto_3
    const/4 v3, 0x0

    move v4, v0

    .line 1242
    :goto_4
    if-ge v4, p2, :cond_11

    .line 1243
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 1244
    invoke-static {v5}, Lcom/squareup/okhttp/w;->a(C)I

    move-result v5

    .line 1245
    const/4 v6, -0x1

    if-eq v5, v6, :cond_11

    .line 1246
    shl-int/lit8 v3, v3, 0x4

    add-int/2addr v3, v5

    .line 1242
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 1229
    :cond_5
    const-string v3, "."

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {p0, v0, v3, v5, v6}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1231
    add-int/lit8 v6, v2, -0x2

    move v5, v6

    move v0, v4

    .line 3283
    :goto_5
    if-ge v0, p2, :cond_d

    .line 3284
    const/16 v3, 0x10

    if-ne v5, v3, :cond_6

    const/4 v0, 0x0

    .line 1231
    :goto_6
    if-nez v0, :cond_f

    const/4 v0, 0x0

    goto :goto_1

    .line 3287
    :cond_6
    if-eq v5, v6, :cond_8

    .line 3288
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2e

    if-eq v3, v4, :cond_7

    const/4 v0, 0x0

    goto :goto_6

    .line 3289
    :cond_7
    add-int/lit8 v0, v0, 0x1

    .line 3293
    :cond_8
    const/4 v3, 0x0

    move v4, v0

    .line 3295
    :goto_7
    if-ge v4, p2, :cond_b

    .line 3296
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 3297
    const/16 v9, 0x30

    if-lt v8, v9, :cond_b

    const/16 v9, 0x39

    if-gt v8, v9, :cond_b

    .line 3298
    if-nez v3, :cond_9

    if-eq v0, v4, :cond_9

    const/4 v0, 0x0

    goto :goto_6

    .line 3299
    :cond_9
    mul-int/lit8 v3, v3, 0xa

    add-int/2addr v3, v8

    add-int/lit8 v3, v3, -0x30

    .line 3300
    const/16 v8, 0xff

    if-le v3, v8, :cond_a

    const/4 v0, 0x0

    goto :goto_6

    .line 3295
    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 3302
    :cond_b
    sub-int v0, v4, v0

    .line 3303
    if-nez v0, :cond_c

    const/4 v0, 0x0

    goto :goto_6

    .line 3306
    :cond_c
    add-int/lit8 v0, v5, 0x1

    int-to-byte v3, v3

    aput-byte v3, v7, v5

    move v5, v0

    move v0, v4

    .line 3307
    goto :goto_5

    .line 3309
    :cond_d
    add-int/lit8 v0, v6, 0x4

    if-eq v5, v0, :cond_e

    const/4 v0, 0x0

    goto :goto_6

    .line 3310
    :cond_e
    const/4 v0, 0x1

    goto :goto_6

    .line 1232
    :cond_f
    add-int/lit8 v2, v2, 0x2

    .line 1233
    goto/16 :goto_2

    .line 1235
    :cond_10
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 1248
    :cond_11
    sub-int v5, v4, v0

    .line 1249
    if-eqz v5, :cond_12

    const/4 v6, 0x4

    if-le v5, v6, :cond_13

    :cond_12
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 1252
    :cond_13
    add-int/lit8 v5, v2, 0x1

    ushr-int/lit8 v6, v3, 0x8

    int-to-byte v6, v6

    aput-byte v6, v7, v2

    .line 1253
    add-int/lit8 v2, v5, 0x1

    int-to-byte v3, v3

    aput-byte v3, v7, v5

    move v10, v4

    move v4, v0

    move v0, v10

    .line 1254
    goto/16 :goto_0

    .line 1267
    :cond_14
    sub-int v0, v2, v1

    rsub-int/lit8 v0, v0, 0x10

    sub-int v3, v2, v1

    invoke-static {v7, v1, v7, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1268
    rsub-int/lit8 v0, v2, 0x10

    add-int/2addr v0, v1

    const/4 v2, 0x0

    invoke-static {v7, v1, v0, v2}, Ljava/util/Arrays;->fill([BIIB)V

    .line 1272
    :cond_15
    :try_start_0
    invoke-static {v7}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto/16 :goto_1

    .line 1274
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_16
    move v2, v1

    goto/16 :goto_3
.end method

.method private static e(Ljava/lang/String;II)I
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 1327
    :try_start_0
    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-static/range {v0 .. v5}, Lcom/squareup/okhttp/w;->a(Ljava/lang/String;IILjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    .line 1328
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1329
    if-lez v0, :cond_0

    const v1, 0xffff

    if-gt v0, v1, :cond_0

    .line 1332
    :goto_0
    return v0

    :cond_0
    move v0, v6

    .line 1330
    goto :goto_0

    .line 1332
    :catch_0
    move-exception v0

    move v0, v6

    goto :goto_0
.end method


# virtual methods
.method final a()I
    .locals 2

    .prologue
    .line 682
    iget v0, p0, Lcom/squareup/okhttp/x;->h:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/squareup/okhttp/x;->h:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/x;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/squareup/okhttp/w;->a(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method final a(Lcom/squareup/okhttp/w;Ljava/lang/String;)Lcom/squareup/okhttp/w;
    .locals 11

    .prologue
    .line 881
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 2088
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    .line 2089
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 882
    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 2108
    add-int/lit8 v0, v0, -0x1

    :goto_2
    if-lt v0, v2, :cond_5

    .line 2109
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_1

    .line 2117
    add-int/lit8 v0, v0, 0x1

    move v8, v0

    .line 2128
    :goto_3
    sub-int v0, v8, v2

    const/4 v1, 0x2

    if-lt v0, v1, :cond_a

    .line 2130
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2131
    const/16 v1, 0x61

    if-lt v0, v1, :cond_0

    const/16 v1, 0x7a

    if-le v0, v1, :cond_6

    :cond_0
    const/16 v1, 0x41

    if-lt v0, v1, :cond_1

    const/16 v1, 0x5a

    if-le v0, v1, :cond_6

    :cond_1
    const/4 v0, -0x1

    .line 886
    :cond_2
    :goto_4
    const/4 v1, -0x1

    if-eq v0, v1, :cond_d

    .line 887
    const/4 v1, 0x1

    const-string v3, "https:"

    const/4 v4, 0x0

    const/4 v5, 0x6

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 888
    const-string v0, "https"

    iput-object v0, p0, Lcom/squareup/okhttp/x;->a:Ljava/lang/String;

    .line 889
    add-int/lit8 v0, v2, 0x6

    .line 903
    :goto_5
    const/4 v2, 0x0

    .line 904
    const/4 v1, 0x0

    .line 2154
    const/4 v3, 0x0

    move v4, v0

    .line 2155
    :goto_6
    if-ge v4, v8, :cond_e

    .line 2156
    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 2157
    const/16 v6, 0x5c

    if-eq v5, v6, :cond_3

    const/16 v6, 0x2f

    if-ne v5, v6, :cond_e

    .line 2158
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 2159
    add-int/lit8 v4, v4, 0x1

    .line 2163
    goto :goto_6

    .line 2088
    :sswitch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    move v2, v0

    .line 2100
    goto :goto_1

    .line 2108
    :sswitch_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_5
    move v8, v2

    .line 2120
    goto :goto_3

    .line 2133
    :cond_6
    add-int/lit8 v0, v2, 0x1

    :goto_7
    if-ge v0, v8, :cond_a

    .line 2134
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 2136
    const/16 v3, 0x61

    if-lt v1, v3, :cond_7

    const/16 v3, 0x7a

    if-le v1, v3, :cond_9

    :cond_7
    const/16 v3, 0x41

    if-lt v1, v3, :cond_8

    const/16 v3, 0x5a

    if-le v1, v3, :cond_9

    :cond_8
    const/16 v3, 0x2b

    if-eq v1, v3, :cond_9

    const/16 v3, 0x2d

    if-eq v1, v3, :cond_9

    const/16 v3, 0x2e

    if-eq v1, v3, :cond_9

    .line 2142
    const/16 v3, 0x3a

    if-eq v1, v3, :cond_2

    .line 2145
    const/4 v0, -0x1

    goto :goto_4

    .line 2133
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 2149
    :cond_a
    const/4 v0, -0x1

    goto :goto_4

    .line 890
    :cond_b
    const/4 v1, 0x1

    const-string v3, "http:"

    const/4 v4, 0x0

    const/4 v5, 0x5

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 891
    const-string v0, "http"

    iput-object v0, p0, Lcom/squareup/okhttp/x;->a:Ljava/lang/String;

    .line 892
    add-int/lit8 v0, v2, 0x5

    goto :goto_5

    .line 894
    :cond_c
    const/4 v0, 0x0

    .line 999
    :goto_8
    return-object v0

    .line 899
    :cond_d
    const/4 v0, 0x0

    goto :goto_8

    .line 916
    :cond_e
    add-int/2addr v0, v3

    move v6, v1

    move v7, v2

    move v1, v0

    .line 919
    :goto_9
    const-string v0, "@/\\?#"

    invoke-static {p2, v1, v8, v0}, Lcom/squareup/okhttp/w;->a(Ljava/lang/String;IILjava/lang/String;)I

    move-result v9

    .line 920
    if-eq v9, v8, :cond_f

    .line 921
    invoke-virtual {p2, v9}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 923
    :goto_a
    sparse-switch v0, :sswitch_data_2

    goto :goto_9

    .line 953
    :sswitch_2
    invoke-static {p2, v1, v9}, Lcom/squareup/okhttp/x;->b(Ljava/lang/String;II)I

    move-result v0

    .line 954
    add-int/lit8 v2, v0, 0x1

    if-ge v2, v9, :cond_13

    .line 955
    invoke-static {p2, v1, v0}, Lcom/squareup/okhttp/x;->c(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/squareup/okhttp/x;->d:Ljava/lang/String;

    .line 956
    add-int/lit8 v0, v0, 0x1

    invoke-static {p2, v0, v9}, Lcom/squareup/okhttp/x;->e(Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/squareup/okhttp/x;->h:I

    .line 957
    iget v0, p0, Lcom/squareup/okhttp/x;->h:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_14

    const/4 v0, 0x0

    goto :goto_8

    .line 921
    :cond_f
    const/4 v0, -0x1

    goto :goto_a

    .line 926
    :sswitch_3
    if-nez v6, :cond_12

    .line 927
    const-string v0, ":"

    invoke-static {p2, v1, v9, v0}, Lcom/squareup/okhttp/w;->a(Ljava/lang/String;IILjava/lang/String;)I

    move-result v2

    .line 929
    const-string v3, " \"\':;<=>@[]^`{}|/\\?#"

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p2

    invoke-static/range {v0 .. v5}, Lcom/squareup/okhttp/w;->a(Ljava/lang/String;IILjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    .line 931
    if-eqz v7, :cond_10

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/squareup/okhttp/x;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "%40"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_10
    iput-object v0, p0, Lcom/squareup/okhttp/x;->b:Ljava/lang/String;

    .line 934
    if-eq v2, v9, :cond_11

    .line 935
    const/4 v6, 0x1

    .line 936
    add-int/lit8 v1, v2, 0x1

    const-string v3, " \"\':;<=>@[]\\^`{}|/\\?#"

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p2

    move v2, v9

    invoke-static/range {v0 .. v5}, Lcom/squareup/okhttp/w;->a(Ljava/lang/String;IILjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/x;->c:Ljava/lang/String;

    .line 939
    :cond_11
    const/4 v1, 0x1

    move v0, v6

    .line 944
    :goto_b
    add-int/lit8 v2, v9, 0x1

    move v6, v0

    move v7, v1

    move v1, v2

    .line 945
    goto :goto_9

    .line 941
    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/squareup/okhttp/x;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "%40"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v3, " \"\':;<=>@[]\\^`{}|/\\?#"

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p2

    move v2, v9

    invoke-static/range {v0 .. v5}, Lcom/squareup/okhttp/w;->a(Ljava/lang/String;IILjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/x;->c:Ljava/lang/String;

    move v0, v6

    move v1, v7

    goto :goto_b

    .line 959
    :cond_13
    invoke-static {p2, v1, v0}, Lcom/squareup/okhttp/x;->c(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/x;->d:Ljava/lang/String;

    .line 960
    iget-object v0, p0, Lcom/squareup/okhttp/x;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/squareup/okhttp/w;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/squareup/okhttp/x;->h:I

    .line 962
    :cond_14
    iget-object v0, p0, Lcom/squareup/okhttp/x;->d:Ljava/lang/String;

    if-nez v0, :cond_15

    const/4 v0, 0x0

    goto/16 :goto_8

    .line 981
    :cond_15
    const-string v0, "?#"

    invoke-static {p2, v9, v8, v0}, Lcom/squareup/okhttp/w;->a(Ljava/lang/String;IILjava/lang/String;)I

    move-result v0

    .line 982
    invoke-direct {p0, p2, v9, v0}, Lcom/squareup/okhttp/x;->a(Ljava/lang/String;II)V

    .line 986
    if-ge v0, v8, :cond_19

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x3f

    if-ne v1, v2, :cond_19

    .line 987
    const-string v1, "#"

    invoke-static {p2, v0, v8, v1}, Lcom/squareup/okhttp/w;->a(Ljava/lang/String;IILjava/lang/String;)I

    move-result v2

    .line 988
    add-int/lit8 v1, v0, 0x1

    const-string v3, " \"\'<>#"

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p2

    invoke-static/range {v0 .. v5}, Lcom/squareup/okhttp/w;->a(Ljava/lang/String;IILjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/okhttp/w;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/x;->f:Ljava/util/List;

    .line 994
    :goto_c
    if-ge v2, v8, :cond_16

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x23

    if-ne v0, v1, :cond_16

    .line 995
    add-int/lit8 v1, v2, 0x1

    const-string v3, ""

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p2

    move v2, v8

    invoke-static/range {v0 .. v5}, Lcom/squareup/okhttp/w;->a(Ljava/lang/String;IILjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/x;->g:Ljava/lang/String;

    .line 2831
    :cond_16
    iget-object v0, p0, Lcom/squareup/okhttp/x;->a:Ljava/lang/String;

    if-nez v0, :cond_17

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "scheme == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2832
    :cond_17
    iget-object v0, p0, Lcom/squareup/okhttp/x;->d:Ljava/lang/String;

    if-nez v0, :cond_18

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "host == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2833
    :cond_18
    new-instance v0, Lcom/squareup/okhttp/w;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/squareup/okhttp/w;-><init>(Lcom/squareup/okhttp/x;B)V

    goto/16 :goto_8

    :cond_19
    move v2, v0

    goto :goto_c

    .line 2089
    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch

    .line 2109
    :sswitch_data_1
    .sparse-switch
        0x9 -> :sswitch_1
        0xa -> :sswitch_1
        0xc -> :sswitch_1
        0xd -> :sswitch_1
        0x20 -> :sswitch_1
    .end sparse-switch

    .line 923
    :sswitch_data_2
    .sparse-switch
        -0x1 -> :sswitch_2
        0x23 -> :sswitch_2
        0x2f -> :sswitch_2
        0x3f -> :sswitch_2
        0x40 -> :sswitch_3
        0x5c -> :sswitch_2
    .end sparse-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x3a

    .line 837
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 838
    iget-object v1, p0, Lcom/squareup/okhttp/x;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 839
    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 841
    iget-object v1, p0, Lcom/squareup/okhttp/x;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/squareup/okhttp/x;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 842
    :cond_0
    iget-object v1, p0, Lcom/squareup/okhttp/x;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 843
    iget-object v1, p0, Lcom/squareup/okhttp/x;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 844
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 845
    iget-object v1, p0, Lcom/squareup/okhttp/x;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 847
    :cond_1
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 850
    :cond_2
    iget-object v1, p0, Lcom/squareup/okhttp/x;->d:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_6

    .line 852
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 853
    iget-object v1, p0, Lcom/squareup/okhttp/x;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 854
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 859
    :goto_0
    invoke-virtual {p0}, Lcom/squareup/okhttp/x;->a()I

    move-result v1

    .line 860
    iget-object v2, p0, Lcom/squareup/okhttp/x;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/squareup/okhttp/w;->a(Ljava/lang/String;)I

    move-result v2

    if-eq v1, v2, :cond_3

    .line 861
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 862
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 865
    :cond_3
    iget-object v1, p0, Lcom/squareup/okhttp/x;->e:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/squareup/okhttp/w;->a(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 867
    iget-object v1, p0, Lcom/squareup/okhttp/x;->f:Ljava/util/List;

    if-eqz v1, :cond_4

    .line 868
    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 869
    iget-object v1, p0, Lcom/squareup/okhttp/x;->f:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/squareup/okhttp/w;->b(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 872
    :cond_4
    iget-object v1, p0, Lcom/squareup/okhttp/x;->g:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 873
    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 874
    iget-object v1, p0, Lcom/squareup/okhttp/x;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 877
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 856
    :cond_6
    iget-object v1, p0, Lcom/squareup/okhttp/x;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
