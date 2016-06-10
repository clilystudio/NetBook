.class public final Lcom/squareup/okhttp/internal/http/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:J

.field private b:Lcom/squareup/okhttp/C;

.field private c:Lcom/squareup/okhttp/I;

.field private d:Ljava/util/Date;

.field private e:Ljava/lang/String;

.field private f:Ljava/util/Date;

.field private g:Ljava/lang/String;

.field private h:Ljava/util/Date;

.field private i:J

.field private j:J

.field private k:Ljava/lang/String;

.field private l:I


# direct methods
.method public constructor <init>(JLcom/squareup/okhttp/C;Lcom/squareup/okhttp/I;)V
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput v6, p0, Lcom/squareup/okhttp/internal/http/c;->l:I

    .line 127
    iput-wide p1, p0, Lcom/squareup/okhttp/internal/http/c;->a:J

    .line 128
    iput-object p3, p0, Lcom/squareup/okhttp/internal/http/c;->b:Lcom/squareup/okhttp/C;

    .line 129
    iput-object p4, p0, Lcom/squareup/okhttp/internal/http/c;->c:Lcom/squareup/okhttp/I;

    .line 131
    if-eqz p4, :cond_7

    .line 132
    invoke-virtual {p4}, Lcom/squareup/okhttp/I;->f()Lcom/squareup/okhttp/u;

    move-result-object v1

    .line 133
    const/4 v0, 0x0

    invoke-virtual {v1}, Lcom/squareup/okhttp/u;->a()I

    move-result v2

    :goto_0
    if-ge v0, v2, :cond_7

    .line 134
    invoke-virtual {v1, v0}, Lcom/squareup/okhttp/u;->a(I)Ljava/lang/String;

    move-result-object v3

    .line 135
    invoke-virtual {v1, v0}, Lcom/squareup/okhttp/u;->b(I)Ljava/lang/String;

    move-result-object v4

    .line 136
    const-string v5, "Date"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 137
    invoke-static {v4}, Lcom/squareup/okhttp/internal/http/k;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    iput-object v3, p0, Lcom/squareup/okhttp/internal/http/c;->d:Ljava/util/Date;

    .line 138
    iput-object v4, p0, Lcom/squareup/okhttp/internal/http/c;->e:Ljava/lang/String;

    .line 133
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 139
    :cond_1
    const-string v5, "Expires"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 140
    invoke-static {v4}, Lcom/squareup/okhttp/internal/http/k;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    iput-object v3, p0, Lcom/squareup/okhttp/internal/http/c;->h:Ljava/util/Date;

    goto :goto_1

    .line 141
    :cond_2
    const-string v5, "Last-Modified"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 142
    invoke-static {v4}, Lcom/squareup/okhttp/internal/http/k;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    iput-object v3, p0, Lcom/squareup/okhttp/internal/http/c;->f:Ljava/util/Date;

    .line 143
    iput-object v4, p0, Lcom/squareup/okhttp/internal/http/c;->g:Ljava/lang/String;

    goto :goto_1

    .line 144
    :cond_3
    const-string v5, "ETag"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 145
    iput-object v4, p0, Lcom/squareup/okhttp/internal/http/c;->k:Ljava/lang/String;

    goto :goto_1

    .line 146
    :cond_4
    const-string v5, "Age"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 147
    invoke-static {v4, v6}, Landroid/support/design/widget/am;->b(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/squareup/okhttp/internal/http/c;->l:I

    goto :goto_1

    .line 148
    :cond_5
    sget-object v5, Lcom/squareup/okhttp/internal/http/r;->a:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 149
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/squareup/okhttp/internal/http/c;->i:J

    goto :goto_1

    .line 150
    :cond_6
    sget-object v5, Lcom/squareup/okhttp/internal/http/r;->b:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 151
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/squareup/okhttp/internal/http/c;->j:J

    goto :goto_1

    .line 155
    :cond_7
    return-void
.end method

.method private static a(Lcom/squareup/okhttp/C;)Z
    .locals 1

    .prologue
    .line 302
    const-string v0, "If-Modified-Since"

    invoke-virtual {p0, v0}, Lcom/squareup/okhttp/C;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "If-None-Match"

    invoke-virtual {p0, v0}, Lcom/squareup/okhttp/C;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()Lcom/squareup/okhttp/internal/http/b;
    .locals 12

    .prologue
    .line 162
    .line 1175
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/c;->c:Lcom/squareup/okhttp/I;

    if-nez v0, :cond_1

    .line 1176
    new-instance v0, Lcom/squareup/okhttp/internal/http/b;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/c;->b:Lcom/squareup/okhttp/C;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/squareup/okhttp/internal/http/b;-><init>(Lcom/squareup/okhttp/C;Lcom/squareup/okhttp/I;B)V

    .line 164
    :goto_0
    iget-object v1, v0, Lcom/squareup/okhttp/internal/http/b;->a:Lcom/squareup/okhttp/C;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/c;->b:Lcom/squareup/okhttp/C;

    invoke-virtual {v1}, Lcom/squareup/okhttp/C;->h()Lcom/squareup/okhttp/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/okhttp/d;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    new-instance v0, Lcom/squareup/okhttp/internal/http/b;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/squareup/okhttp/internal/http/b;-><init>(Lcom/squareup/okhttp/C;Lcom/squareup/okhttp/I;B)V

    .line 169
    :cond_0
    return-object v0

    .line 1180
    :cond_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/c;->b:Lcom/squareup/okhttp/C;

    invoke-virtual {v0}, Lcom/squareup/okhttp/C;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/c;->c:Lcom/squareup/okhttp/I;

    invoke-virtual {v0}, Lcom/squareup/okhttp/I;->e()Lcom/squareup/okhttp/t;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1181
    new-instance v0, Lcom/squareup/okhttp/internal/http/b;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/c;->b:Lcom/squareup/okhttp/C;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/squareup/okhttp/internal/http/b;-><init>(Lcom/squareup/okhttp/C;Lcom/squareup/okhttp/I;B)V

    goto :goto_0

    .line 1187
    :cond_2
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/c;->c:Lcom/squareup/okhttp/I;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/c;->b:Lcom/squareup/okhttp/C;

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/http/b;->a(Lcom/squareup/okhttp/I;Lcom/squareup/okhttp/C;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1188
    new-instance v0, Lcom/squareup/okhttp/internal/http/b;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/c;->b:Lcom/squareup/okhttp/C;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/squareup/okhttp/internal/http/b;-><init>(Lcom/squareup/okhttp/C;Lcom/squareup/okhttp/I;B)V

    goto :goto_0

    .line 1191
    :cond_3
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/c;->b:Lcom/squareup/okhttp/C;

    invoke-virtual {v0}, Lcom/squareup/okhttp/C;->h()Lcom/squareup/okhttp/d;

    move-result-object v6

    .line 1192
    invoke-virtual {v6}, Lcom/squareup/okhttp/d;->a()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/c;->b:Lcom/squareup/okhttp/C;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/c;->a(Lcom/squareup/okhttp/C;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1193
    :cond_4
    new-instance v0, Lcom/squareup/okhttp/internal/http/b;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/c;->b:Lcom/squareup/okhttp/C;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/squareup/okhttp/internal/http/b;-><init>(Lcom/squareup/okhttp/C;Lcom/squareup/okhttp/I;B)V

    goto :goto_0

    .line 1276
    :cond_5
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/c;->d:Ljava/util/Date;

    if-eqz v0, :cond_d

    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lcom/squareup/okhttp/internal/http/c;->j:J

    iget-object v4, p0, Lcom/squareup/okhttp/internal/http/c;->d:Ljava/util/Date;

    .line 1277
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 1279
    :goto_1
    iget v2, p0, Lcom/squareup/okhttp/internal/http/c;->l:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_6

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v3, p0, Lcom/squareup/okhttp/internal/http/c;->l:I

    int-to-long v4, v3

    .line 1280
    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 1282
    :cond_6
    iget-wide v2, p0, Lcom/squareup/okhttp/internal/http/c;->j:J

    iget-wide v4, p0, Lcom/squareup/okhttp/internal/http/c;->i:J

    sub-long/2addr v2, v4

    .line 1283
    iget-wide v4, p0, Lcom/squareup/okhttp/internal/http/c;->a:J

    iget-wide v8, p0, Lcom/squareup/okhttp/internal/http/c;->j:J

    sub-long/2addr v4, v8

    .line 1284
    add-long/2addr v0, v2

    add-long v8, v0, v4

    .line 2247
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/c;->c:Lcom/squareup/okhttp/I;

    invoke-virtual {v0}, Lcom/squareup/okhttp/I;->j()Lcom/squareup/okhttp/d;

    move-result-object v0

    .line 2248
    invoke-virtual {v0}, Lcom/squareup/okhttp/d;->c()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_e

    .line 2249
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Lcom/squareup/okhttp/d;->c()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 1199
    :cond_7
    :goto_2
    invoke-virtual {v6}, Lcom/squareup/okhttp/d;->c()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_8

    .line 1200
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6}, Lcom/squareup/okhttp/d;->c()I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 1203
    :cond_8
    const-wide/16 v2, 0x0

    .line 1204
    invoke-virtual {v6}, Lcom/squareup/okhttp/d;->h()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_9

    .line 1205
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6}, Lcom/squareup/okhttp/d;->h()I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    .line 1208
    :cond_9
    const-wide/16 v4, 0x0

    .line 1209
    iget-object v7, p0, Lcom/squareup/okhttp/internal/http/c;->c:Lcom/squareup/okhttp/I;

    invoke-virtual {v7}, Lcom/squareup/okhttp/I;->j()Lcom/squareup/okhttp/d;

    move-result-object v7

    .line 1210
    invoke-virtual {v7}, Lcom/squareup/okhttp/d;->f()Z

    move-result v10

    if-nez v10, :cond_a

    invoke-virtual {v6}, Lcom/squareup/okhttp/d;->g()I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_a

    .line 1211
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6}, Lcom/squareup/okhttp/d;->g()I

    move-result v5

    int-to-long v10, v5

    invoke-virtual {v4, v10, v11}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    .line 1214
    :cond_a
    invoke-virtual {v7}, Lcom/squareup/okhttp/d;->a()Z

    move-result v6

    if-nez v6, :cond_15

    add-long v6, v8, v2

    add-long/2addr v4, v0

    cmp-long v4, v6, v4

    if-gez v4, :cond_15

    .line 1215
    iget-object v4, p0, Lcom/squareup/okhttp/internal/http/c;->c:Lcom/squareup/okhttp/I;

    invoke-virtual {v4}, Lcom/squareup/okhttp/I;->h()Lcom/squareup/okhttp/J;

    move-result-object v4

    .line 1216
    add-long/2addr v2, v8

    cmp-long v0, v2, v0

    if-ltz v0, :cond_b

    .line 1217
    const-string v0, "Warning"

    const-string v1, "110 HttpURLConnection \"Response is stale\""

    invoke-virtual {v4, v0, v1}, Lcom/squareup/okhttp/J;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/J;

    .line 1220
    :cond_b
    const-wide/32 v0, 0x5265c00

    cmp-long v0, v8, v0

    if-lez v0, :cond_c

    .line 2293
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/c;->c:Lcom/squareup/okhttp/I;

    invoke-virtual {v0}, Lcom/squareup/okhttp/I;->j()Lcom/squareup/okhttp/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/d;->c()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_14

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/c;->h:Ljava/util/Date;

    if-nez v0, :cond_14

    const/4 v0, 0x1

    .line 1220
    :goto_3
    if-eqz v0, :cond_c

    .line 1221
    const-string v0, "Warning"

    const-string v1, "113 HttpURLConnection \"Heuristic expiration\""

    invoke-virtual {v4, v0, v1}, Lcom/squareup/okhttp/J;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/J;

    .line 1223
    :cond_c
    new-instance v0, Lcom/squareup/okhttp/internal/http/b;

    const/4 v1, 0x0

    invoke-virtual {v4}, Lcom/squareup/okhttp/J;->a()Lcom/squareup/okhttp/I;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/squareup/okhttp/internal/http/b;-><init>(Lcom/squareup/okhttp/C;Lcom/squareup/okhttp/I;B)V

    goto/16 :goto_0

    .line 1277
    :cond_d
    const-wide/16 v0, 0x0

    goto/16 :goto_1

    .line 2250
    :cond_e
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/c;->h:Ljava/util/Date;

    if-eqz v0, :cond_10

    .line 2251
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/c;->d:Ljava/util/Date;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/c;->d:Ljava/util/Date;

    .line 2252
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 2254
    :goto_4
    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/c;->h:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long v0, v2, v0

    .line 2255
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_7

    const-wide/16 v0, 0x0

    goto/16 :goto_2

    .line 2252
    :cond_f
    iget-wide v0, p0, Lcom/squareup/okhttp/internal/http/c;->j:J

    goto :goto_4

    .line 2256
    :cond_10
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/c;->f:Ljava/util/Date;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/c;->c:Lcom/squareup/okhttp/I;

    .line 2257
    invoke-virtual {v0}, Lcom/squareup/okhttp/I;->a()Lcom/squareup/okhttp/C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/C;->a()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_13

    .line 2262
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/c;->d:Ljava/util/Date;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/c;->d:Ljava/util/Date;

    .line 2263
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 2265
    :goto_5
    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/c;->f:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 2266
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_12

    const-wide/16 v2, 0xa

    div-long/2addr v0, v2

    goto/16 :goto_2

    .line 2263
    :cond_11
    iget-wide v0, p0, Lcom/squareup/okhttp/internal/http/c;->i:J

    goto :goto_5

    .line 2266
    :cond_12
    const-wide/16 v0, 0x0

    goto/16 :goto_2

    .line 2268
    :cond_13
    const-wide/16 v0, 0x0

    goto/16 :goto_2

    .line 2293
    :cond_14
    const/4 v0, 0x0

    goto :goto_3

    .line 1226
    :cond_15
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/c;->b:Lcom/squareup/okhttp/C;

    invoke-virtual {v0}, Lcom/squareup/okhttp/C;->g()Lcom/squareup/okhttp/D;

    move-result-object v0

    .line 1228
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/c;->k:Ljava/lang/String;

    if-eqz v1, :cond_17

    .line 1229
    const-string v1, "If-None-Match"

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/c;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/squareup/okhttp/D;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/D;

    .line 1236
    :cond_16
    :goto_6
    invoke-virtual {v0}, Lcom/squareup/okhttp/D;->a()Lcom/squareup/okhttp/C;

    move-result-object v1

    .line 1237
    invoke-static {v1}, Lcom/squareup/okhttp/internal/http/c;->a(Lcom/squareup/okhttp/C;)Z

    move-result v0

    if-eqz v0, :cond_19

    new-instance v0, Lcom/squareup/okhttp/internal/http/b;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/c;->c:Lcom/squareup/okhttp/I;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/squareup/okhttp/internal/http/b;-><init>(Lcom/squareup/okhttp/C;Lcom/squareup/okhttp/I;B)V

    goto/16 :goto_0

    .line 1230
    :cond_17
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/c;->f:Ljava/util/Date;

    if-eqz v1, :cond_18

    .line 1231
    const-string v1, "If-Modified-Since"

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/c;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/squareup/okhttp/D;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/D;

    goto :goto_6

    .line 1232
    :cond_18
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/c;->d:Ljava/util/Date;

    if-eqz v1, :cond_16

    .line 1233
    const-string v1, "If-Modified-Since"

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/squareup/okhttp/D;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/D;

    goto :goto_6

    .line 1237
    :cond_19
    new-instance v0, Lcom/squareup/okhttp/internal/http/b;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/squareup/okhttp/internal/http/b;-><init>(Lcom/squareup/okhttp/C;Lcom/squareup/okhttp/I;B)V

    goto/16 :goto_0
.end method
