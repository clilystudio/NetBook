.class public Lcom/koushikdutta/async/http/server/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/http/server/l;


# static fields
.field private static synthetic j:Z


# instance fields
.field a:Lcom/koushikdutta/async/s;

.field b:Lcom/koushikdutta/async/A;

.field private c:Lcom/koushikdutta/async/http/b/e;

.field private d:J

.field private e:Lcom/koushikdutta/async/http/b/h;

.field private f:Lcom/koushikdutta/async/http/server/i;

.field private g:Z

.field private h:Z

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/koushikdutta/async/http/server/m;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/koushikdutta/async/http/server/m;->j:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/koushikdutta/async/s;Lcom/koushikdutta/async/http/server/i;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lcom/koushikdutta/async/http/b/e;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/b/e;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/server/m;->c:Lcom/koushikdutta/async/http/b/e;

    .line 31
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/koushikdutta/async/http/server/m;->d:J

    .line 32
    new-instance v0, Lcom/koushikdutta/async/http/b/h;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/koushikdutta/async/http/server/m;->c:Lcom/koushikdutta/async/http/b/e;

    invoke-direct {v0, v1, v2}, Lcom/koushikdutta/async/http/b/h;-><init>(Landroid/net/Uri;Lcom/koushikdutta/async/http/b/e;)V

    iput-object v0, p0, Lcom/koushikdutta/async/http/server/m;->e:Lcom/koushikdutta/async/http/b/h;

    .line 84
    iput-boolean v3, p0, Lcom/koushikdutta/async/http/server/m;->g:Z

    .line 142
    iput-boolean v3, p0, Lcom/koushikdutta/async/http/server/m;->h:Z

    .line 46
    iput-object p1, p0, Lcom/koushikdutta/async/http/server/m;->a:Lcom/koushikdutta/async/s;

    .line 47
    iput-object p2, p0, Lcom/koushikdutta/async/http/server/m;->f:Lcom/koushikdutta/async/http/server/i;

    .line 48
    invoke-virtual {p2}, Lcom/koushikdutta/async/http/server/i;->m()Lcom/koushikdutta/async/http/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/b/a;->a()Lcom/koushikdutta/async/http/b/e;

    move-result-object v0

    invoke-static {v0}, Lcom/koushikdutta/async/http/a;->a(Lcom/koushikdutta/async/http/b/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/m;->c:Lcom/koushikdutta/async/http/b/e;

    const-string v1, "Connection"

    const-string v2, "Keep-Alive"

    invoke-virtual {v0, v1, v2}, Lcom/koushikdutta/async/http/b/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :cond_0
    return-void
.end method

.method private d()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x1

    .line 87
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/server/m;->g:Z

    if-eqz v0, :cond_0

    .line 110
    :goto_0
    return-void

    .line 90
    :cond_0
    iput-boolean v1, p0, Lcom/koushikdutta/async/http/server/m;->g:Z

    .line 91
    sget-boolean v0, Lcom/koushikdutta/async/http/server/m;->j:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/koushikdutta/async/http/server/m;->c:Lcom/koushikdutta/async/http/b/e;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/b/e;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/m;->c:Lcom/koushikdutta/async/http/b/e;

    const-string v2, "Transfer-Encoding"

    invoke-virtual {v0, v2}, Lcom/koushikdutta/async/http/b/e;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 93
    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 94
    iget-object v2, p0, Lcom/koushikdutta/async/http/server/m;->c:Lcom/koushikdutta/async/http/b/e;

    const-string v3, "Transfer-Encoding"

    invoke-virtual {v2, v3}, Lcom/koushikdutta/async/http/b/e;->c(Ljava/lang/String;)V

    .line 95
    :cond_2
    const-string v2, "Chunked"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    if-nez v0, :cond_5

    :cond_3
    const-string v0, "close"

    iget-object v2, p0, Lcom/koushikdutta/async/http/server/m;->c:Lcom/koushikdutta/async/http/b/e;

    const-string v3, "Connection"

    invoke-virtual {v2, v3}, Lcom/koushikdutta/async/http/b/e;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    .line 97
    :goto_1
    iget-wide v2, p0, Lcom/koushikdutta/async/http/server/m;->d:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_4

    .line 98
    iget-object v2, p0, Lcom/koushikdutta/async/http/server/m;->c:Lcom/koushikdutta/async/http/b/e;

    const-string v3, "Content-Length"

    invoke-virtual {v2, v3}, Lcom/koushikdutta/async/http/b/e;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 99
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 100
    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/koushikdutta/async/http/server/m;->d:J

    .line 102
    :cond_4
    iget-wide v2, p0, Lcom/koushikdutta/async/http/server/m;->d:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_6

    if-eqz v0, :cond_6

    .line 103
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/m;->c:Lcom/koushikdutta/async/http/b/e;

    const-string v2, "Transfer-Encoding"

    const-string v3, "Chunked"

    invoke-virtual {v0, v2, v3}, Lcom/koushikdutta/async/http/b/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    new-instance v0, Lcom/koushikdutta/async/http/filter/b;

    iget-object v2, p0, Lcom/koushikdutta/async/http/server/m;->a:Lcom/koushikdutta/async/s;

    invoke-direct {v0, v2}, Lcom/koushikdutta/async/http/filter/b;-><init>(Lcom/koushikdutta/async/A;)V

    iput-object v0, p0, Lcom/koushikdutta/async/http/server/m;->b:Lcom/koushikdutta/async/A;

    .line 1149
    :goto_2
    sget-boolean v0, Lcom/koushikdutta/async/http/server/m;->j:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/koushikdutta/async/http/server/m;->h:Z

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 95
    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    .line 107
    :cond_6
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/m;->a:Lcom/koushikdutta/async/s;

    iput-object v0, p0, Lcom/koushikdutta/async/http/server/m;->b:Lcom/koushikdutta/async/A;

    goto :goto_2

    .line 1150
    :cond_7
    iput-boolean v1, p0, Lcom/koushikdutta/async/http/server/m;->h:Z

    .line 1151
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/m;->a:Lcom/koushikdutta/async/s;

    iget-object v1, p0, Lcom/koushikdutta/async/http/server/m;->c:Lcom/koushikdutta/async/http/b/e;

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/b/e;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    new-instance v2, Lcom/koushikdutta/async/http/server/n;

    invoke-direct {v2, p0}, Lcom/koushikdutta/async/http/server/n;-><init>(Lcom/koushikdutta/async/http/server/m;)V

    invoke-static {v0, v1, v2}, Lcom/koushikdutta/async/Y;->a(Lcom/koushikdutta/async/A;[BLcom/koushikdutta/async/a/a;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 126
    const-string v0, "Chunked"

    iget-object v1, p0, Lcom/koushikdutta/async/http/server/m;->c:Lcom/koushikdutta/async/http/b/e;

    const-string v2, "Transfer-Encoding"

    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/http/b/e;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    invoke-direct {p0}, Lcom/koushikdutta/async/http/server/m;->d()V

    .line 128
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/m;->b:Lcom/koushikdutta/async/A;

    check-cast v0, Lcom/koushikdutta/async/http/filter/b;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/filter/b;->a(I)V

    .line 129
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/m;->b:Lcom/koushikdutta/async/A;

    new-instance v1, Lcom/koushikdutta/async/v;

    invoke-direct {v1}, Lcom/koushikdutta/async/v;-><init>()V

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/A;->a(Lcom/koushikdutta/async/v;)V

    .line 130
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/server/m;->b()V

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/server/m;->g:Z

    if-nez v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/m;->f:Lcom/koushikdutta/async/http/server/i;

    .line 2088
    iget-object v0, v0, Lcom/koushikdutta/async/http/server/i;->e:Ljava/lang/String;

    .line 133
    const-string v1, "HEAD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 134
    const-string v0, "text/html"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/koushikdutta/async/http/server/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2145
    :cond_2
    invoke-direct {p0}, Lcom/koushikdutta/async/http/server/m;->d()V

    .line 137
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/server/m;->b()V

    goto :goto_0
.end method

.method public final a(I)V
    .locals 6

    .prologue
    .line 296
    invoke-static {p1}, Lcom/koushikdutta/async/http/server/a;->b(I)Ljava/lang/String;

    move-result-object v0

    .line 297
    iget-object v1, p0, Lcom/koushikdutta/async/http/server/m;->c:Lcom/koushikdutta/async/http/b/e;

    const-string v2, "HTTP/1.1 %d %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/http/b/e;->a(Ljava/lang/String;)V

    .line 298
    return-void
.end method

.method public final a(Lcom/koushikdutta/async/a/a;)V
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/m;->b:Lcom/koushikdutta/async/A;

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/A;->a(Lcom/koushikdutta/async/a/a;)V

    .line 327
    return-void
.end method

.method public final a(Lcom/koushikdutta/async/a/d;)V
    .locals 1

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/koushikdutta/async/http/server/m;->d()V

    .line 115
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/m;->b:Lcom/koushikdutta/async/A;

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/A;->a(Lcom/koushikdutta/async/a/d;)V

    .line 116
    return-void
.end method

.method public final a(Lcom/koushikdutta/async/v;)V
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p1}, Lcom/koushikdutta/async/v;->c()I

    move-result v0

    if-nez v0, :cond_0

    .line 1079
    :goto_0
    return-void

    .line 1076
    :cond_0
    sget-boolean v0, Lcom/koushikdutta/async/http/server/m;->j:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/koushikdutta/async/http/server/m;->i:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1077
    :cond_1
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/server/m;->g:Z

    if-nez v0, :cond_2

    .line 1078
    invoke-direct {p0}, Lcom/koushikdutta/async/http/server/m;->d()V

    goto :goto_0

    .line 1081
    :cond_2
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/m;->b:Lcom/koushikdutta/async/A;

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/A;->a(Lcom/koushikdutta/async/v;)V

    goto :goto_0
.end method

.method public final a(Ljava/io/File;)V
    .locals 4

    .prologue
    .line 283
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/m;->c:Lcom/koushikdutta/async/http/b/e;

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/b/e;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/m;->c:Lcom/koushikdutta/async/http/b/e;

    const-string v1, "Content-Type"

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/koushikdutta/async/http/server/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/koushikdutta/async/http/b/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    :cond_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 286
    new-instance v1, Ljava/io/BufferedInputStream;

    const v2, 0xfa00

    invoke-direct {v1, v0, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/koushikdutta/async/http/server/m;->a(Ljava/io/InputStream;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    :goto_0
    return-void

    .line 289
    :catch_0
    move-exception v0

    const/16 v0, 0x194

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/server/m;->a(I)V

    .line 290
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/server/m;->a()V

    goto :goto_0
.end method

.method public final a(Ljava/io/InputStream;J)V
    .locals 10

    .prologue
    .line 220
    const-wide/16 v2, 0x0

    .line 221
    const-wide/16 v0, 0x1

    sub-long v0, p2, v0

    .line 223
    iget-object v4, p0, Lcom/koushikdutta/async/http/server/m;->f:Lcom/koushikdutta/async/http/server/i;

    invoke-virtual {v4}, Lcom/koushikdutta/async/http/server/i;->m()Lcom/koushikdutta/async/http/b/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/koushikdutta/async/http/b/a;->a()Lcom/koushikdutta/async/http/b/e;

    move-result-object v4

    const-string v5, "Range"

    invoke-virtual {v4, v5}, Lcom/koushikdutta/async/http/b/e;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 224
    if-eqz v4, :cond_4

    .line 225
    const-string v0, "="

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 226
    array-length v1, v0

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    const-string v1, "bytes"

    const/4 v4, 0x0

    aget-object v4, v0, v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 228
    :cond_0
    const/16 v0, 0x1a0

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/server/m;->a(I)V

    .line 229
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/server/m;->a()V

    .line 278
    :goto_0
    return-void

    .line 233
    :cond_1
    const/4 v1, 0x1

    aget-object v0, v0, v1

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 235
    :try_start_0
    array-length v1, v0

    const/4 v4, 0x2

    if-le v1, v4, :cond_2

    .line 236
    new-instance v0, Lcom/koushikdutta/async/http/server/MalformedRangeException;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/server/MalformedRangeException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    :catch_0
    move-exception v0

    const/16 v0, 0x1a0

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/server/m;->a(I)V

    .line 249
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/server/m;->a()V

    goto :goto_0

    .line 237
    :cond_2
    const/4 v1, 0x0

    :try_start_1
    aget-object v1, v0, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 238
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 239
    :cond_3
    array-length v1, v0

    const/4 v4, 0x2

    if-ne v1, v4, :cond_5

    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 240
    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 244
    :goto_1
    const/16 v4, 0xce

    invoke-virtual {p0, v4}, Lcom/koushikdutta/async/http/server/m;->a(I)V

    .line 3036
    iget-object v4, p0, Lcom/koushikdutta/async/http/server/m;->e:Lcom/koushikdutta/async/http/b/h;

    .line 245
    invoke-virtual {v4}, Lcom/koushikdutta/async/http/b/h;->a()Lcom/koushikdutta/async/http/b/e;

    move-result-object v4

    const-string v5, "Content-Range"

    const-string v6, "bytes %d-%d/%d"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/koushikdutta/async/http/b/e;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 254
    :cond_4
    :try_start_2
    invoke-virtual {p1, v2, v3}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-eqz v4, :cond_6

    .line 255
    new-instance v0, Lcom/koushikdutta/async/http/server/StreamSkipException;

    const-string v1, "skip failed to skip requested amount"

    invoke-direct {v0, v1}, Lcom/koushikdutta/async/http/server/StreamSkipException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 275
    :catch_1
    move-exception v0

    const/16 v0, 0x194

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/server/m;->a(I)V

    .line 276
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/server/m;->a()V

    goto/16 :goto_0

    .line 242
    :cond_5
    const-wide/16 v0, 0x1

    sub-long v0, p2, v0

    goto :goto_1

    .line 256
    :cond_6
    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    :try_start_3
    iput-wide v0, p0, Lcom/koushikdutta/async/http/server/m;->d:J

    .line 257
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/m;->c:Lcom/koushikdutta/async/http/b/e;

    const-string v1, "Content-Length"

    iget-wide v2, p0, Lcom/koushikdutta/async/http/server/m;->d:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/koushikdutta/async/http/b/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/m;->c:Lcom/koushikdutta/async/http/b/e;

    const-string v1, "Accept-Ranges"

    const-string v2, "bytes"

    invoke-virtual {v0, v1, v2}, Lcom/koushikdutta/async/http/b/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4036
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/m;->e:Lcom/koushikdutta/async/http/b/h;

    .line 259
    invoke-virtual {v0}, Lcom/koushikdutta/async/http/b/h;->a()Lcom/koushikdutta/async/http/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/b/e;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    .line 260
    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/server/m;->a(I)V

    .line 261
    :cond_7
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/m;->f:Lcom/koushikdutta/async/http/server/i;

    .line 4088
    iget-object v0, v0, Lcom/koushikdutta/async/http/server/i;->e:Ljava/lang/String;

    .line 261
    const-string v1, "HEAD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 4145
    invoke-direct {p0}, Lcom/koushikdutta/async/http/server/m;->d()V

    .line 263
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/server/m;->b()V

    goto/16 :goto_0

    .line 266
    :cond_8
    iget-wide v0, p0, Lcom/koushikdutta/async/http/server/m;->d:J

    new-instance v2, Lcom/koushikdutta/async/http/server/p;

    invoke-direct {v2, p0, p1}, Lcom/koushikdutta/async/http/server/p;-><init>(Lcom/koushikdutta/async/http/server/m;Ljava/io/InputStream;)V

    invoke-static {p1, v0, v1, p0, v2}, Lcom/koushikdutta/async/Y;->a(Ljava/io/InputStream;JLcom/koushikdutta/async/A;Lcom/koushikdutta/async/a/a;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0
.end method

.method public final a(Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 309
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/server/m;->a()V

    .line 310
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 206
    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/server/m;->a(I)V

    .line 207
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/m;->c:Lcom/koushikdutta/async/http/b/e;

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/b/e;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 208
    if-nez v0, :cond_0

    .line 209
    const-string v0, "text/html; charset=utf8"

    .line 210
    :cond_0
    invoke-virtual {p0, v0, p1}, Lcom/koushikdutta/async/http/server/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 175
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/m;->c:Lcom/koushikdutta/async/http/b/e;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/b/e;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 176
    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/server/m;->a(I)V

    .line 177
    :cond_0
    sget-boolean v0, Lcom/koushikdutta/async/http/server/m;->j:Z

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/koushikdutta/async/http/server/m;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    :catch_0
    move-exception v0

    sget-boolean v0, Lcom/koushikdutta/async/http/server/m;->j:Z

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 178
    :cond_1
    :try_start_1
    const-string v0, "UTF-8"

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 179
    array-length v1, v0

    int-to-long v2, v1

    iput-wide v2, p0, Lcom/koushikdutta/async/http/server/m;->d:J

    .line 180
    iget-object v1, p0, Lcom/koushikdutta/async/http/server/m;->c:Lcom/koushikdutta/async/http/b/e;

    const-string v2, "Content-Length"

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/koushikdutta/async/http/b/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/m;->c:Lcom/koushikdutta/async/http/b/e;

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1, p1}, Lcom/koushikdutta/async/http/b/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    new-instance v1, Lcom/koushikdutta/async/http/server/o;

    invoke-direct {v1, p0}, Lcom/koushikdutta/async/http/server/o;-><init>(Lcom/koushikdutta/async/http/server/m;)V

    invoke-static {p0, v0, v1}, Lcom/koushikdutta/async/Y;->a(Lcom/koushikdutta/async/A;[BLcom/koushikdutta/async/a/a;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    .line 193
    :cond_2
    return-void
.end method

.method public final a(Ljava/nio/ByteBuffer;)V
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-nez v0, :cond_0

    .line 1070
    :goto_0
    return-void

    .line 1067
    :cond_0
    sget-boolean v0, Lcom/koushikdutta/async/http/server/m;->j:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/koushikdutta/async/http/server/m;->i:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1068
    :cond_1
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/server/m;->g:Z

    if-nez v0, :cond_2

    .line 1069
    invoke-direct {p0}, Lcom/koushikdutta/async/http/server/m;->d()V

    goto :goto_0

    .line 1072
    :cond_2
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/m;->b:Lcom/koushikdutta/async/A;

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/A;->a(Ljava/nio/ByteBuffer;)V

    goto :goto_0
.end method

.method protected b()V
    .locals 1

    .prologue
    .line 197
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/koushikdutta/async/http/server/m;->i:Z

    .line 198
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 168
    sget-boolean v0, Lcom/koushikdutta/async/http/server/m;->j:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/koushikdutta/async/http/server/m;->h:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/m;->c:Lcom/koushikdutta/async/http/b/e;

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1, p1}, Lcom/koushikdutta/async/http/b/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    return-void
.end method

.method public final c()Lcom/koushikdutta/async/http/b/h;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/m;->e:Lcom/koushikdutta/async/http/b/h;

    return-object v0
.end method

.method public final e()Lcom/koushikdutta/async/a/d;
    .locals 1

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/koushikdutta/async/http/server/m;->d()V

    .line 121
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/m;->b:Lcom/koushikdutta/async/A;

    invoke-interface {v0}, Lcom/koushikdutta/async/A;->e()Lcom/koushikdutta/async/a/d;

    move-result-object v0

    return-object v0
.end method
