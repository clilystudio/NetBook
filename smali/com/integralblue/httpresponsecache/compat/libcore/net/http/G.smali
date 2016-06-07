.class public final Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/net/URI;

.field private final b:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;

.field private c:Ljava/util/Date;

.field private d:Ljava/util/Date;

.field private e:Ljava/util/Date;

.field private f:J

.field private g:J

.field private h:Z

.field private i:Z

.field private j:I

.field private k:I

.field private l:Z

.field private m:Z

.field private n:Ljava/lang/String;

.field private o:I

.field private p:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:I

.field private t:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/net/URI;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;->j:I

    .line 104
    iput v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;->k:I

    .line 116
    iput v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;->o:I

    .line 121
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;->p:Ljava/util/Set;

    .line 125
    iput v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;->s:I

    .line 129
    iput-object p1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;->a:Ljava/net/URI;

    .line 130
    iput-object p2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;->b:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;

    .line 132
    new-instance v3, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/H;

    invoke-direct {v3, p0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/H;-><init>(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;)V

    move v0, v1

    .line 150
    :goto_0
    invoke-virtual {p2}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;->e()I

    move-result v2

    if-ge v0, v2, :cond_f

    .line 151
    invoke-virtual {p2, v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;->a(I)Ljava/lang/String;

    move-result-object v2

    .line 152
    invoke-virtual {p2, v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;->b(I)Ljava/lang/String;

    move-result-object v4

    .line 153
    const-string v5, "Cache-Control"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 154
    invoke-static {v4, v3}, Lcom/arcsoft/hpay100/a/a;->a(Ljava/lang/String;Lcom/koushikdutta/async/http/b/b;)V

    .line 150
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 155
    :cond_1
    const-string v5, "Date"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 156
    invoke-static {v4}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/k;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    iput-object v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;->c:Ljava/util/Date;

    goto :goto_1

    .line 157
    :cond_2
    const-string v5, "Expires"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 158
    invoke-static {v4}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/k;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    iput-object v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;->e:Ljava/util/Date;

    goto :goto_1

    .line 159
    :cond_3
    const-string v5, "Last-Modified"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 160
    invoke-static {v4}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/k;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    iput-object v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;->d:Ljava/util/Date;

    goto :goto_1

    .line 161
    :cond_4
    const-string v5, "ETag"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 162
    iput-object v4, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;->n:Ljava/lang/String;

    goto :goto_1

    .line 163
    :cond_5
    const-string v5, "Pragma"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 164
    const-string v2, "no-cache"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 165
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;->h:Z

    goto :goto_1

    .line 167
    :cond_6
    const-string v5, "Age"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 168
    invoke-static {v4}, Lcom/arcsoft/hpay100/a/a;->e(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;->o:I

    goto :goto_1

    .line 169
    :cond_7
    const-string v5, "Vary"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 171
    iget-object v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;->p:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 172
    new-instance v2, Ljava/util/TreeSet;

    sget-object v5, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v2, v5}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;->p:Ljava/util/Set;

    .line 174
    :cond_8
    const-string v2, ","

    invoke-virtual {v4, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v2, v1

    :goto_2
    if-ge v2, v5, :cond_0

    aget-object v6, v4, v2

    .line 175
    iget-object v7, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;->p:Ljava/util/Set;

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v7, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 174
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 177
    :cond_9
    const-string v5, "Content-Encoding"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 178
    iput-object v4, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;->q:Ljava/lang/String;

    goto/16 :goto_1

    .line 179
    :cond_a
    const-string v5, "Transfer-Encoding"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 180
    iput-object v4, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;->r:Ljava/lang/String;

    goto/16 :goto_1

    .line 181
    :cond_b
    const-string v5, "Content-Length"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 183
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;->s:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 185
    :catch_0
    move-exception v2

    goto/16 :goto_1

    .line 186
    :cond_c
    const-string v5, "Connection"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 187
    iput-object v4, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;->t:Ljava/lang/String;

    goto/16 :goto_1

    .line 188
    :cond_d
    const-string v5, "X-Android-Sent-Millis"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 189
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;->f:J

    goto/16 :goto_1

    .line 190
    :cond_e
    const-string v5, "X-Android-Received-Millis"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 191
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;->g:J

    goto/16 :goto_1

    .line 194
    :cond_f
    return-void
.end method

.method static synthetic a(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;I)I
    .locals 0

    .prologue
    .line 37
    iput p1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;->j:I

    return p1
.end method

.method static synthetic a(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;Z)Z
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;->h:Z

    return v0
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 523
    const-string v0, "Connection"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Keep-Alive"

    .line 524
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Proxy-Authenticate"

    .line 525
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Proxy-Authorization"

    .line 526
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TE"

    .line 527
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Trailers"

    .line 528
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Transfer-Encoding"

    .line 529
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Upgrade"

    .line 530
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;I)I
    .locals 0

    .prologue
    .line 37
    iput p1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;->k:I

    return p1
.end method

.method static synthetic b(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;Z)Z
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;->i:Z

    return v0
.end method

.method static synthetic c(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;Z)Z
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;->l:Z

    return v0
.end method

.method static synthetic d(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;Z)Z
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;->m:Z

    return v0
.end method


# virtual methods
.method public final a(JLcom/integralblue/httpresponsecache/compat/libcore/net/http/E;)Lcom/integralblue/httpresponsecache/compat/java/net/ResponseSource;
    .locals 11

    .prologue
    const/4 v10, -0x1

    const-wide/16 v2, 0x0

    .line 401
    invoke-virtual {p0, p3}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;->a(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 402
    sget-object v0, Lcom/integralblue/httpresponsecache/compat/java/net/ResponseSource;->NETWORK:Lcom/integralblue/httpresponsecache/compat/java/net/ResponseSource;

    .line 447
    :goto_0
    return-object v0

    .line 405
    :cond_0
    invoke-virtual {p3}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;->d()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p3}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;->r()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 406
    :cond_1
    sget-object v0, Lcom/integralblue/httpresponsecache/compat/java/net/ResponseSource;->NETWORK:Lcom/integralblue/httpresponsecache/compat/java/net/ResponseSource;

    goto :goto_0

    .line 1289
    :cond_2
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;->c:Ljava/util/Date;

    if-eqz v0, :cond_9

    iget-wide v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;->g:J

    iget-object v4, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;->c:Ljava/util/Date;

    .line 1290
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v0, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 1292
    :goto_1
    iget v4, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;->o:I

    if-eq v4, v10, :cond_3

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v5, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;->o:I

    int-to-long v6, v5

    .line 1293
    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 1295
    :cond_3
    iget-wide v4, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;->g:J

    iget-wide v6, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;->f:J

    sub-long/2addr v4, v6

    .line 1296
    iget-wide v6, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;->g:J

    sub-long v6, p1, v6

    .line 1297
    add-long/2addr v0, v4

    add-long/2addr v6, v0

    .line 1305
    iget v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;->j:I

    if-eq v0, v10, :cond_a

    .line 1306
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;->j:I

    int-to-long v4, v1

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 412
    :cond_4
    :goto_2
    invoke-virtual {p3}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;->e()I

    move-result v4

    if-eq v4, v10, :cond_5

    .line 413
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 414
    invoke-virtual {p3}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;->e()I

    move-result v5

    int-to-long v8, v5

    invoke-virtual {v4, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    .line 413
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 418
    :cond_5
    invoke-virtual {p3}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;->g()I

    move-result v4

    if-eq v4, v10, :cond_16

    .line 419
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p3}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;->g()I

    move-result v5

    int-to-long v8, v5

    invoke-virtual {v4, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    .line 423
    :goto_3
    iget-boolean v8, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;->m:Z

    if-nez v8, :cond_6

    invoke-virtual {p3}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;->f()I

    move-result v8

    if-eq v8, v10, :cond_6

    .line 424
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p3}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;->f()I

    move-result v3

    int-to-long v8, v3

    invoke-virtual {v2, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    .line 427
    :cond_6
    iget-boolean v8, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;->h:Z

    if-nez v8, :cond_11

    add-long v8, v6, v4

    add-long/2addr v2, v0

    cmp-long v2, v8, v2

    if-gez v2, :cond_11

    .line 428
    add-long v2, v6, v4

    cmp-long v0, v2, v0

    if-ltz v0, :cond_7

    .line 429
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;->b:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;

    const-string v1, "Warning"

    const-string v2, "110 HttpURLConnection \"Response is stale\""

    invoke-virtual {v0, v1, v2}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    :cond_7
    sget-object v0, Lcom/integralblue/httpresponsecache/compat/java/util/concurrent/TimeUnit;->HOURS:Lcom/integralblue/httpresponsecache/compat/java/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x18

    invoke-virtual {v0, v2, v3}, Lcom/integralblue/httpresponsecache/compat/java/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    cmp-long v0, v6, v0

    if-lez v0, :cond_8

    .line 1331
    iget v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;->j:I

    if-ne v0, v10, :cond_10

    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;->e:Ljava/util/Date;

    if-nez v0, :cond_10

    const/4 v0, 0x1

    .line 431
    :goto_4
    if-eqz v0, :cond_8

    .line 432
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;->b:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;

    const-string v1, "Warning"

    const-string v2, "113 HttpURLConnection \"Heuristic expiration\""

    invoke-virtual {v0, v1, v2}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    :cond_8
    sget-object v0, Lcom/integralblue/httpresponsecache/compat/java/net/ResponseSource;->CACHE:Lcom/integralblue/httpresponsecache/compat/java/net/ResponseSource;

    goto/16 :goto_0

    :cond_9
    move-wide v0, v2

    .line 1290
    goto/16 :goto_1

    .line 1307
    :cond_a
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;->e:Ljava/util/Date;

    if-eqz v0, :cond_c

    .line 1308
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;->c:Ljava/util/Date;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;->c:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 1309
    :goto_5
    iget-object v4, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;->e:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long v0, v4, v0

    .line 1310
    cmp-long v4, v0, v2

    if-gtz v4, :cond_4

    move-wide v0, v2

    goto/16 :goto_2

    .line 1308
    :cond_b
    iget-wide v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;->g:J

    goto :goto_5

    .line 1311
    :cond_c
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;->d:Ljava/util/Date;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;->a:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_f

    .line 1318
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;->c:Ljava/util/Date;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;->c:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 1319
    :goto_6
    iget-object v4, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;->d:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v0, v4

    .line 1320
    cmp-long v4, v0, v2

    if-lez v4, :cond_e

    const-wide/16 v4, 0xa

    div-long/2addr v0, v4

    goto/16 :goto_2

    .line 1318
    :cond_d
    iget-wide v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;->f:J

    goto :goto_6

    :cond_e
    move-wide v0, v2

    .line 1320
    goto/16 :goto_2

    :cond_f
    move-wide v0, v2

    .line 1322
    goto/16 :goto_2

    .line 1331
    :cond_10
    const/4 v0, 0x0

    goto :goto_4

    .line 437
    :cond_11
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;->d:Ljava/util/Date;

    if-eqz v0, :cond_14

    .line 438
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;->d:Ljava/util/Date;

    invoke-virtual {p3, v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;->a(Ljava/util/Date;)V

    .line 443
    :cond_12
    :goto_7
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;->n:Ljava/lang/String;

    if-eqz v0, :cond_13

    .line 444
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;->n:Ljava/lang/String;

    invoke-virtual {p3, v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;->f(Ljava/lang/String;)V

    .line 447
    :cond_13
    invoke-virtual {p3}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;->r()Z

    move-result v0

    if-eqz v0, :cond_15

    sget-object v0, Lcom/integralblue/httpresponsecache/compat/java/net/ResponseSource;->CONDITIONAL_CACHE:Lcom/integralblue/httpresponsecache/compat/java/net/ResponseSource;

    goto/16 :goto_0

    .line 439
    :cond_14
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;->c:Ljava/util/Date;

    if-eqz v0, :cond_12

    .line 440
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;->c:Ljava/util/Date;

    invoke-virtual {p3, v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;->a(Ljava/util/Date;)V

    goto :goto_7

    .line 447
    :cond_15
    sget-object v0, Lcom/integralblue/httpresponsecache/compat/java/net/ResponseSource;->NETWORK:Lcom/integralblue/httpresponsecache/compat/java/net/ResponseSource;

    goto/16 :goto_0

    :cond_16
    move-wide v4, v2

    goto/16 :goto_3
.end method

.method public final a(JJ)V
    .locals 3

    .prologue
    .line 278
    iput-wide p1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;->f:J

    .line 279
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;->b:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;

    const-string v1, "X-Android-Sent-Millis"

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    iput-wide p3, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;->g:J

    .line 281
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;->b:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;

    const-string v1, "X-Android-Received-Millis"

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    return-void
.end method

.method public final a()Z
    .locals 2

    .prologue
    .line 197
    const-string v0, "gzip"

    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final a(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 343
    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;->b:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;

    invoke-virtual {v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;->c()I

    move-result v1

    .line 344
    const/16 v2, 0xc8

    if-eq v1, v2, :cond_1

    const/16 v2, 0xcb

    if-eq v1, v2, :cond_1

    const/16 v2, 0x12c

    if-eq v1, v2, :cond_1

    const/16 v2, 0x12d

    if-eq v1, v2, :cond_1

    const/16 v2, 0x19a

    if-eq v1, v2, :cond_1

    .line 367
    :cond_0
    :goto_0
    return v0

    .line 356
    :cond_1
    invoke-virtual {p1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/E;->i()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;->l:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;->m:Z

    if-nez v1, :cond_2

    iget v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;->k:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 363
    :cond_2
    iget-boolean v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;->i:Z

    if-nez v1, :cond_0

    .line 367
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final a(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 457
    iget-object v1, p1, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;->b:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;

    invoke-virtual {v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;->c()I

    move-result v1

    const/16 v2, 0x130

    if-ne v1, v2, :cond_1

    .line 472
    :cond_0
    :goto_0
    return v0

    .line 466
    :cond_1
    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;->d:Ljava/util/Date;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;->d:Ljava/util/Date;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;->d:Ljava/util/Date;

    .line 468
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;->d:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    .line 472
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/util/Map;Ljava/util/Map;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)Z"
        }
    .end annotation

    .prologue
    .line 384
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;->p:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 385
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/arcsoft/hpay100/a/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 386
    const/4 v0, 0x0

    .line 389
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final b(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;)Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 480
    new-instance v2, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;

    invoke-direct {v2}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;-><init>()V

    .line 481
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;->b:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;->a(Ljava/lang/String;)V

    .line 485
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;->b:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;

    const-string v3, "Content-Encoding"

    invoke-virtual {v0, v3}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2218
    iget-object v0, p1, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;->b:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;

    .line 487
    const-string v4, "Content-Encoding"

    invoke-virtual {v0, v4}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;->d(Ljava/lang/String;)Ljava/lang/String;

    move v0, v1

    .line 490
    :goto_0
    iget-object v4, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;->b:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;

    invoke-virtual {v4}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;->e()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 491
    iget-object v4, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;->b:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;

    invoke-virtual {v4, v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;->a(I)Ljava/lang/String;

    move-result-object v4

    .line 492
    iget-object v5, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;->b:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;

    invoke-virtual {v5, v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;->b(I)Ljava/lang/String;

    move-result-object v5

    .line 493
    const-string v6, "Warning"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 496
    :cond_0
    invoke-static {v4}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;->a(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 497
    invoke-virtual {v2, v4, v5}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 501
    :cond_2
    :goto_1
    iget-object v0, p1, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;->b:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;

    invoke-virtual {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;->e()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 502
    iget-object v0, p1, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;->b:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;

    invoke-virtual {v0, v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 503
    invoke-static {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 504
    iget-object v4, p1, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;->b:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;

    invoke-virtual {v4, v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;->b(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 509
    :cond_4
    if-nez v3, :cond_5

    .line 510
    const-string v0, "Content-Encoding"

    invoke-virtual {v2, v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;->c(Ljava/lang/String;)V

    .line 514
    :goto_2
    const-string v0, "Content-Encoding"

    invoke-virtual {v2, v0}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 515
    new-instance v0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;

    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;->a:Ljava/net/URI;

    invoke-direct {v0, v1, v2}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;-><init>(Ljava/net/URI;Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;)V

    return-object v0

    .line 512
    :cond_5
    const-string v0, "Content-Encoding"

    invoke-virtual {v2, v0, v3}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 201
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;->q:Ljava/lang/String;

    .line 202
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;->b:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;

    const-string v1, "Content-Encoding"

    invoke-virtual {v0, v1}, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;->c(Ljava/lang/String;)V

    .line 203
    return-void
.end method

.method public final c()Z
    .locals 2

    .prologue
    .line 206
    const-string v0, "chunked"

    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final d()Z
    .locals 2

    .prologue
    .line 210
    const-string v0, "close"

    iget-object v1, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final e()Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;->b:Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;

    return-object v0
.end method

.method public final f()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 262
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;->p:Ljava/util/Set;

    return-object v0
.end method

.method public final g()I
    .locals 1

    .prologue
    .line 270
    iget v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;->s:I

    return v0
.end method

.method public final h()Z
    .locals 2

    .prologue
    .line 375
    iget-object v0, p0, Lcom/integralblue/httpresponsecache/compat/libcore/net/http/G;->p:Ljava/util/Set;

    const-string v1, "*"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
