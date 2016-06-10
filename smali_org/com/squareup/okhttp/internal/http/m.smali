.class public final Lcom/squareup/okhttp/internal/http/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final b:Lcom/squareup/okhttp/K;


# instance fields
.field final a:Lcom/squareup/okhttp/A;

.field private c:Lcom/squareup/okhttp/m;

.field private d:Lcom/squareup/okhttp/a;

.field private e:Lcom/squareup/okhttp/internal/http/v;

.field private f:Lcom/squareup/okhttp/L;

.field private final g:Lcom/squareup/okhttp/I;

.field private h:Lcom/squareup/okhttp/internal/http/A;

.field private i:J

.field private j:Z

.field private k:Z

.field private final l:Lcom/squareup/okhttp/C;

.field private m:Lcom/squareup/okhttp/C;

.field private n:Lcom/squareup/okhttp/I;

.field private o:Lcom/squareup/okhttp/I;

.field private p:Lokio/x;

.field private final q:Z

.field private final r:Z

.field private s:Landroid/support/design/widget/K;

.field private t:Lcom/squareup/okhttp/internal/http/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 102
    new-instance v0, Lcom/squareup/okhttp/internal/http/n;

    invoke-direct {v0}, Lcom/squareup/okhttp/internal/http/n;-><init>()V

    sput-object v0, Lcom/squareup/okhttp/internal/http/m;->b:Lcom/squareup/okhttp/K;

    return-void
.end method

.method public constructor <init>(Lcom/squareup/okhttp/A;Lcom/squareup/okhttp/C;ZZZLcom/squareup/okhttp/m;Lcom/squareup/okhttp/internal/http/v;Lcom/squareup/okhttp/internal/http/u;Lcom/squareup/okhttp/I;)V
    .locals 2

    .prologue
    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/squareup/okhttp/internal/http/m;->i:J

    .line 191
    iput-object p1, p0, Lcom/squareup/okhttp/internal/http/m;->a:Lcom/squareup/okhttp/A;

    .line 192
    iput-object p2, p0, Lcom/squareup/okhttp/internal/http/m;->l:Lcom/squareup/okhttp/C;

    .line 193
    iput-boolean p3, p0, Lcom/squareup/okhttp/internal/http/m;->k:Z

    .line 194
    iput-boolean p4, p0, Lcom/squareup/okhttp/internal/http/m;->q:Z

    .line 195
    iput-boolean p5, p0, Lcom/squareup/okhttp/internal/http/m;->r:Z

    .line 196
    iput-object p6, p0, Lcom/squareup/okhttp/internal/http/m;->c:Lcom/squareup/okhttp/m;

    .line 197
    iput-object p7, p0, Lcom/squareup/okhttp/internal/http/m;->e:Lcom/squareup/okhttp/internal/http/v;

    .line 198
    iput-object p8, p0, Lcom/squareup/okhttp/internal/http/m;->p:Lokio/x;

    .line 199
    iput-object p9, p0, Lcom/squareup/okhttp/internal/http/m;->g:Lcom/squareup/okhttp/I;

    .line 201
    if-eqz p6, :cond_0

    .line 202
    sget-object v0, Lcom/squareup/okhttp/internal/b;->b:Lcom/squareup/okhttp/internal/b;

    invoke-virtual {v0, p6, p0}, Lcom/squareup/okhttp/internal/b;->b(Lcom/squareup/okhttp/m;Lcom/squareup/okhttp/internal/http/m;)V

    .line 203
    invoke-virtual {p6}, Lcom/squareup/okhttp/m;->b()Lcom/squareup/okhttp/L;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/m;->f:Lcom/squareup/okhttp/L;

    .line 207
    :goto_0
    return-void

    .line 205
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/m;->f:Lcom/squareup/okhttp/L;

    goto :goto_0
.end method

.method static synthetic a(Lcom/squareup/okhttp/internal/http/m;Lcom/squareup/okhttp/C;)Lcom/squareup/okhttp/C;
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/squareup/okhttp/internal/http/m;->m:Lcom/squareup/okhttp/C;

    return-object p1
.end method

.method static synthetic a(Lcom/squareup/okhttp/internal/http/m;)Lcom/squareup/okhttp/m;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/m;->c:Lcom/squareup/okhttp/m;

    return-object v0
.end method

.method private static a(Lcom/squareup/okhttp/u;Lcom/squareup/okhttp/u;)Lcom/squareup/okhttp/u;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 1025
    new-instance v2, Lcom/squareup/okhttp/v;

    invoke-direct {v2}, Lcom/squareup/okhttp/v;-><init>()V

    .line 1027
    invoke-virtual {p0}, Lcom/squareup/okhttp/u;->a()I

    move-result v3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_3

    .line 1028
    invoke-virtual {p0, v1}, Lcom/squareup/okhttp/u;->a(I)Ljava/lang/String;

    move-result-object v4

    .line 1029
    invoke-virtual {p0, v1}, Lcom/squareup/okhttp/u;->b(I)Ljava/lang/String;

    move-result-object v5

    .line 1030
    const-string v6, "Warning"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1033
    :cond_0
    invoke-static {v4}, Lcom/squareup/okhttp/internal/http/r;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p1, v4}, Lcom/squareup/okhttp/u;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_2

    .line 1034
    :cond_1
    invoke-virtual {v2, v4, v5}, Lcom/squareup/okhttp/v;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/v;

    .line 1027
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1038
    :cond_3
    invoke-virtual {p1}, Lcom/squareup/okhttp/u;->a()I

    move-result v1

    :goto_1
    if-ge v0, v1, :cond_5

    .line 1039
    invoke-virtual {p1, v0}, Lcom/squareup/okhttp/u;->a(I)Ljava/lang/String;

    move-result-object v3

    .line 1040
    const-string v4, "Content-Length"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1043
    invoke-static {v3}, Lcom/squareup/okhttp/internal/http/r;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1044
    invoke-virtual {p1, v0}, Lcom/squareup/okhttp/u;->b(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/squareup/okhttp/v;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/v;

    .line 1038
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1048
    :cond_5
    invoke-virtual {v2}, Lcom/squareup/okhttp/v;->a()Lcom/squareup/okhttp/u;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/net/URL;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 733
    invoke-static {p0}, Lcom/squareup/okhttp/internal/l;->a(Ljava/net/URL;)I

    move-result v0

    invoke-virtual {p0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/squareup/okhttp/internal/l;->a(Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 734
    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/net/URL;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 735
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Lcom/squareup/okhttp/internal/http/v;Ljava/io/IOException;)V
    .locals 2

    .prologue
    .line 506
    sget-object v0, Lcom/squareup/okhttp/internal/b;->b:Lcom/squareup/okhttp/internal/b;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/m;->c:Lcom/squareup/okhttp/m;

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/b;->b(Lcom/squareup/okhttp/m;)I

    move-result v0

    if-lez v0, :cond_0

    .line 509
    :goto_0
    return-void

    .line 507
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/m;->c:Lcom/squareup/okhttp/m;

    invoke-virtual {v0}, Lcom/squareup/okhttp/m;->b()Lcom/squareup/okhttp/L;

    move-result-object v0

    .line 508
    invoke-virtual {p1, v0, p2}, Lcom/squareup/okhttp/internal/http/v;->a(Lcom/squareup/okhttp/L;Ljava/io/IOException;)V

    goto :goto_0
.end method

.method public static a(Lcom/squareup/okhttp/I;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 667
    invoke-virtual {p0}, Lcom/squareup/okhttp/I;->a()Lcom/squareup/okhttp/C;

    move-result-object v2

    invoke-virtual {v2}, Lcom/squareup/okhttp/C;->d()Ljava/lang/String;

    move-result-object v2

    const-string v3, "HEAD"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 686
    :cond_0
    :goto_0
    return v0

    .line 671
    :cond_1
    invoke-virtual {p0}, Lcom/squareup/okhttp/I;->c()I

    move-result v2

    .line 672
    const/16 v3, 0x64

    if-lt v2, v3, :cond_2

    const/16 v3, 0xc8

    if-lt v2, v3, :cond_3

    :cond_2
    const/16 v3, 0xcc

    if-eq v2, v3, :cond_3

    const/16 v3, 0x130

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 675
    goto :goto_0

    .line 681
    :cond_3
    invoke-static {p0}, Lcom/squareup/okhttp/internal/http/r;->a(Lcom/squareup/okhttp/I;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    const-string v2, "chunked"

    const-string v3, "Transfer-Encoding"

    .line 682
    invoke-virtual {p0, v3}, Lcom/squareup/okhttp/I;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_4
    move v0, v1

    .line 683
    goto :goto_0
.end method

.method private static b(Lcom/squareup/okhttp/I;)Lcom/squareup/okhttp/I;
    .locals 2

    .prologue
    .line 312
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/squareup/okhttp/I;->g()Lcom/squareup/okhttp/K;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 313
    invoke-virtual {p0}, Lcom/squareup/okhttp/I;->h()Lcom/squareup/okhttp/J;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/J;->a(Lcom/squareup/okhttp/K;)Lcom/squareup/okhttp/J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/J;->a()Lcom/squareup/okhttp/I;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method static synthetic b(Lcom/squareup/okhttp/internal/http/m;)Lcom/squareup/okhttp/internal/http/A;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/m;->h:Lcom/squareup/okhttp/internal/http/A;

    return-object v0
.end method

.method private c(Lcom/squareup/okhttp/I;)Lcom/squareup/okhttp/I;
    .locals 4

    .prologue
    .line 642
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/http/m;->j:Z

    if-eqz v0, :cond_0

    const-string v0, "gzip"

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/m;->o:Lcom/squareup/okhttp/I;

    const-string v2, "Content-Encoding"

    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/I;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 658
    :cond_0
    :goto_0
    return-object p1

    .line 646
    :cond_1
    invoke-virtual {p1}, Lcom/squareup/okhttp/I;->g()Lcom/squareup/okhttp/K;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 650
    new-instance v0, Lokio/m;

    invoke-virtual {p1}, Lcom/squareup/okhttp/I;->g()Lcom/squareup/okhttp/K;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/okhttp/K;->d()Lokio/i;

    move-result-object v1

    invoke-direct {v0, v1}, Lokio/m;-><init>(Lokio/y;)V

    .line 651
    invoke-virtual {p1}, Lcom/squareup/okhttp/I;->f()Lcom/squareup/okhttp/u;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/okhttp/u;->b()Lcom/squareup/okhttp/v;

    move-result-object v1

    const-string v2, "Content-Encoding"

    .line 652
    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/v;->b(Ljava/lang/String;)Lcom/squareup/okhttp/v;

    move-result-object v1

    const-string v2, "Content-Length"

    .line 653
    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/v;->b(Ljava/lang/String;)Lcom/squareup/okhttp/v;

    move-result-object v1

    .line 654
    invoke-virtual {v1}, Lcom/squareup/okhttp/v;->a()Lcom/squareup/okhttp/u;

    move-result-object v1

    .line 655
    invoke-virtual {p1}, Lcom/squareup/okhttp/I;->h()Lcom/squareup/okhttp/J;

    move-result-object v2

    .line 656
    invoke-virtual {v2, v1}, Lcom/squareup/okhttp/J;->a(Lcom/squareup/okhttp/u;)Lcom/squareup/okhttp/J;

    move-result-object v2

    new-instance v3, Lcom/squareup/okhttp/internal/http/t;

    .line 657
    invoke-static {v0}, Lokio/o;->a(Lokio/y;)Lokio/i;

    move-result-object v0

    invoke-direct {v3, v1, v0}, Lcom/squareup/okhttp/internal/http/t;-><init>(Lcom/squareup/okhttp/u;Lokio/i;)V

    invoke-virtual {v2, v3}, Lcom/squareup/okhttp/J;->a(Lcom/squareup/okhttp/K;)Lcom/squareup/okhttp/J;

    move-result-object v0

    .line 658
    invoke-virtual {v0}, Lcom/squareup/okhttp/J;->a()Lcom/squareup/okhttp/I;

    move-result-object p1

    goto :goto_0
.end method

.method static synthetic c(Lcom/squareup/okhttp/internal/http/m;)Lcom/squareup/okhttp/I;
    .locals 1

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/m;->l()Lcom/squareup/okhttp/I;

    move-result-object v0

    return-object v0
.end method

.method private k()Lcom/squareup/okhttp/m;
    .locals 4

    .prologue
    .line 346
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/m;->a:Lcom/squareup/okhttp/A;

    invoke-virtual {v0}, Lcom/squareup/okhttp/A;->m()Lcom/squareup/okhttp/n;

    move-result-object v1

    .line 349
    :goto_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/m;->d:Lcom/squareup/okhttp/a;

    invoke-virtual {v1, v0}, Lcom/squareup/okhttp/n;->a(Lcom/squareup/okhttp/a;)Lcom/squareup/okhttp/m;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 350
    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/m;->m:Lcom/squareup/okhttp/C;

    invoke-virtual {v2}, Lcom/squareup/okhttp/C;->d()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GET"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/squareup/okhttp/internal/b;->b:Lcom/squareup/okhttp/internal/b;

    invoke-virtual {v2, v0}, Lcom/squareup/okhttp/internal/b;->c(Lcom/squareup/okhttp/m;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 358
    :cond_0
    :goto_1
    return-object v0

    .line 353
    :cond_1
    invoke-virtual {v0}, Lcom/squareup/okhttp/m;->c()Ljava/net/Socket;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/okhttp/internal/l;->a(Ljava/net/Socket;)V

    goto :goto_0

    .line 357
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/m;->e:Lcom/squareup/okhttp/internal/http/v;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/v;->b()Lcom/squareup/okhttp/L;

    move-result-object v2

    .line 358
    new-instance v0, Lcom/squareup/okhttp/m;

    invoke-direct {v0, v1, v2}, Lcom/squareup/okhttp/m;-><init>(Lcom/squareup/okhttp/n;Lcom/squareup/okhttp/L;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 359
    :catch_0
    move-exception v0

    .line 360
    new-instance v1, Lcom/squareup/okhttp/internal/http/RouteException;

    invoke-direct {v1, v0}, Lcom/squareup/okhttp/internal/http/RouteException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method private l()Lcom/squareup/okhttp/I;
    .locals 4

    .prologue
    .line 915
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/m;->h:Lcom/squareup/okhttp/internal/http/A;

    invoke-interface {v0}, Lcom/squareup/okhttp/internal/http/A;->a()V

    .line 917
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/m;->h:Lcom/squareup/okhttp/internal/http/A;

    invoke-interface {v0}, Lcom/squareup/okhttp/internal/http/A;->b()Lcom/squareup/okhttp/J;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/m;->m:Lcom/squareup/okhttp/C;

    .line 918
    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/J;->a(Lcom/squareup/okhttp/C;)Lcom/squareup/okhttp/J;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/m;->c:Lcom/squareup/okhttp/m;

    .line 919
    invoke-virtual {v1}, Lcom/squareup/okhttp/m;->i()Lcom/squareup/okhttp/t;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/J;->a(Lcom/squareup/okhttp/t;)Lcom/squareup/okhttp/J;

    move-result-object v0

    sget-object v1, Lcom/squareup/okhttp/internal/http/r;->a:Ljava/lang/String;

    iget-wide v2, p0, Lcom/squareup/okhttp/internal/http/m;->i:J

    .line 920
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/squareup/okhttp/J;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/J;

    move-result-object v0

    sget-object v1, Lcom/squareup/okhttp/internal/http/r;->b:Ljava/lang/String;

    .line 921
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/squareup/okhttp/J;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/J;

    move-result-object v0

    .line 922
    invoke-virtual {v0}, Lcom/squareup/okhttp/J;->a()Lcom/squareup/okhttp/I;

    move-result-object v0

    .line 924
    iget-boolean v1, p0, Lcom/squareup/okhttp/internal/http/m;->r:Z

    if-nez v1, :cond_0

    .line 925
    invoke-virtual {v0}, Lcom/squareup/okhttp/I;->h()Lcom/squareup/okhttp/J;

    move-result-object v1

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/m;->h:Lcom/squareup/okhttp/internal/http/A;

    .line 926
    invoke-interface {v2, v0}, Lcom/squareup/okhttp/internal/http/A;->a(Lcom/squareup/okhttp/I;)Lcom/squareup/okhttp/K;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/squareup/okhttp/J;->a(Lcom/squareup/okhttp/K;)Lcom/squareup/okhttp/J;

    move-result-object v0

    .line 927
    invoke-virtual {v0}, Lcom/squareup/okhttp/J;->a()Lcom/squareup/okhttp/I;

    move-result-object v0

    .line 930
    :cond_0
    sget-object v1, Lcom/squareup/okhttp/internal/b;->b:Lcom/squareup/okhttp/internal/b;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/m;->c:Lcom/squareup/okhttp/m;

    invoke-virtual {v0}, Lcom/squareup/okhttp/I;->b()Lcom/squareup/okhttp/Protocol;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/squareup/okhttp/internal/b;->a(Lcom/squareup/okhttp/m;Lcom/squareup/okhttp/Protocol;)V

    .line 931
    return-object v0
.end method


# virtual methods
.method public final a(Lcom/squareup/okhttp/internal/http/RouteException;)Lcom/squareup/okhttp/internal/http/m;
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 417
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/m;->e:Lcom/squareup/okhttp/internal/http/v;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/m;->c:Lcom/squareup/okhttp/m;

    if-eqz v1, :cond_0

    .line 418
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/m;->e:Lcom/squareup/okhttp/internal/http/v;

    invoke-virtual {p1}, Lcom/squareup/okhttp/internal/http/RouteException;->getLastConnectException()Ljava/io/IOException;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/squareup/okhttp/internal/http/m;->a(Lcom/squareup/okhttp/internal/http/v;Ljava/io/IOException;)V

    .line 421
    :cond_0
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/m;->e:Lcom/squareup/okhttp/internal/http/v;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/m;->c:Lcom/squareup/okhttp/m;

    if-eqz v1, :cond_4

    :cond_1
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/m;->e:Lcom/squareup/okhttp/internal/http/v;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/m;->e:Lcom/squareup/okhttp/internal/http/v;

    .line 422
    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/http/v;->a()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3436
    :cond_2
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/m;->a:Lcom/squareup/okhttp/A;

    invoke-virtual {v1}, Lcom/squareup/okhttp/A;->p()Z

    move-result v1

    if-nez v1, :cond_5

    .line 423
    :cond_3
    :goto_0
    if-nez v0, :cond_7

    .line 424
    :cond_4
    const/4 v0, 0x0

    .line 430
    :goto_1
    return-object v0

    .line 3444
    :cond_5
    invoke-virtual {p1}, Lcom/squareup/okhttp/internal/http/RouteException;->getLastConnectException()Ljava/io/IOException;

    move-result-object v1

    .line 3448
    instance-of v2, v1, Ljava/net/ProtocolException;

    if-nez v2, :cond_3

    .line 3453
    instance-of v2, v1, Ljava/io/InterruptedIOException;

    if-nez v2, :cond_3

    .line 3459
    instance-of v2, v1, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v2, :cond_6

    .line 3462
    invoke-virtual {v1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/security/cert/CertificateException;

    if-nez v2, :cond_3

    .line 3466
    :cond_6
    instance-of v1, v1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-nez v1, :cond_3

    .line 3475
    const/4 v0, 0x1

    goto :goto_0

    .line 427
    :cond_7
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/m;->h()Lcom/squareup/okhttp/m;

    move-result-object v6

    .line 430
    new-instance v0, Lcom/squareup/okhttp/internal/http/m;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/m;->a:Lcom/squareup/okhttp/A;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/m;->l:Lcom/squareup/okhttp/C;

    iget-boolean v3, p0, Lcom/squareup/okhttp/internal/http/m;->k:Z

    iget-boolean v4, p0, Lcom/squareup/okhttp/internal/http/m;->q:Z

    iget-boolean v5, p0, Lcom/squareup/okhttp/internal/http/m;->r:Z

    iget-object v7, p0, Lcom/squareup/okhttp/internal/http/m;->e:Lcom/squareup/okhttp/internal/http/v;

    iget-object v8, p0, Lcom/squareup/okhttp/internal/http/m;->p:Lokio/x;

    check-cast v8, Lcom/squareup/okhttp/internal/http/u;

    iget-object v9, p0, Lcom/squareup/okhttp/internal/http/m;->g:Lcom/squareup/okhttp/I;

    invoke-direct/range {v0 .. v9}, Lcom/squareup/okhttp/internal/http/m;-><init>(Lcom/squareup/okhttp/A;Lcom/squareup/okhttp/C;ZZZLcom/squareup/okhttp/m;Lcom/squareup/okhttp/internal/http/v;Lcom/squareup/okhttp/internal/http/u;Lcom/squareup/okhttp/I;)V

    goto :goto_1
.end method

.method public final a(Ljava/io/IOException;Lokio/x;)Lcom/squareup/okhttp/internal/http/m;
    .locals 10

    .prologue
    const/4 v8, 0x0

    const/4 v0, 0x0

    .line 485
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/m;->e:Lcom/squareup/okhttp/internal/http/v;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/m;->c:Lcom/squareup/okhttp/m;

    if-eqz v1, :cond_0

    .line 486
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/m;->e:Lcom/squareup/okhttp/internal/http/v;

    invoke-direct {p0, v1, p1}, Lcom/squareup/okhttp/internal/http/m;->a(Lcom/squareup/okhttp/internal/http/v;Ljava/io/IOException;)V

    .line 490
    :cond_0
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/m;->e:Lcom/squareup/okhttp/internal/http/v;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/m;->c:Lcom/squareup/okhttp/m;

    if-eqz v1, :cond_4

    :cond_1
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/m;->e:Lcom/squareup/okhttp/internal/http/v;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/m;->e:Lcom/squareup/okhttp/internal/http/v;

    .line 491
    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/http/v;->a()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3517
    :cond_2
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/m;->a:Lcom/squareup/okhttp/A;

    invoke-virtual {v1}, Lcom/squareup/okhttp/A;->p()Z

    move-result v1

    if-nez v1, :cond_5

    .line 492
    :cond_3
    :goto_0
    if-nez v0, :cond_6

    :cond_4
    move-object v0, v8

    .line 500
    :goto_1
    return-object v0

    .line 3522
    :cond_5
    instance-of v1, p1, Ljava/net/ProtocolException;

    if-nez v1, :cond_3

    .line 3527
    instance-of v1, p1, Ljava/io/InterruptedIOException;

    if-nez v1, :cond_3

    .line 3531
    const/4 v0, 0x1

    goto :goto_0

    .line 497
    :cond_6
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/m;->h()Lcom/squareup/okhttp/m;

    move-result-object v6

    .line 500
    new-instance v0, Lcom/squareup/okhttp/internal/http/m;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/m;->a:Lcom/squareup/okhttp/A;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/m;->l:Lcom/squareup/okhttp/C;

    iget-boolean v3, p0, Lcom/squareup/okhttp/internal/http/m;->k:Z

    iget-boolean v4, p0, Lcom/squareup/okhttp/internal/http/m;->q:Z

    iget-boolean v5, p0, Lcom/squareup/okhttp/internal/http/m;->r:Z

    iget-object v7, p0, Lcom/squareup/okhttp/internal/http/m;->e:Lcom/squareup/okhttp/internal/http/v;

    iget-object v9, p0, Lcom/squareup/okhttp/internal/http/m;->g:Lcom/squareup/okhttp/I;

    invoke-direct/range {v0 .. v9}, Lcom/squareup/okhttp/internal/http/m;-><init>(Lcom/squareup/okhttp/A;Lcom/squareup/okhttp/C;ZZZLcom/squareup/okhttp/m;Lcom/squareup/okhttp/internal/http/v;Lcom/squareup/okhttp/internal/http/u;Lcom/squareup/okhttp/I;)V

    goto :goto_1
.end method

.method public final a()V
    .locals 13

    .prologue
    const/4 v2, 0x0

    .line 222
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/m;->t:Lcom/squareup/okhttp/internal/http/b;

    if-eqz v0, :cond_1

    .line 309
    :cond_0
    :goto_0
    return-void

    .line 223
    :cond_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/m;->h:Lcom/squareup/okhttp/internal/http/A;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 225
    :cond_2
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/m;->l:Lcom/squareup/okhttp/C;

    .line 1696
    invoke-virtual {v0}, Lcom/squareup/okhttp/C;->g()Lcom/squareup/okhttp/D;

    move-result-object v1

    .line 1698
    const-string v3, "Host"

    invoke-virtual {v0, v3}, Lcom/squareup/okhttp/C;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    .line 1699
    const-string v3, "Host"

    invoke-virtual {v0}, Lcom/squareup/okhttp/C;->a()Ljava/net/URL;

    move-result-object v4

    invoke-static {v4}, Lcom/squareup/okhttp/internal/http/m;->a(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/squareup/okhttp/D;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/D;

    .line 1702
    :cond_3
    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/m;->c:Lcom/squareup/okhttp/m;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/m;->c:Lcom/squareup/okhttp/m;

    invoke-virtual {v3}, Lcom/squareup/okhttp/m;->k()Lcom/squareup/okhttp/Protocol;

    move-result-object v3

    sget-object v4, Lcom/squareup/okhttp/Protocol;->HTTP_1_0:Lcom/squareup/okhttp/Protocol;

    if-eq v3, v4, :cond_5

    :cond_4
    const-string v3, "Connection"

    .line 1703
    invoke-virtual {v0, v3}, Lcom/squareup/okhttp/C;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_5

    .line 1704
    const-string v3, "Connection"

    const-string v4, "Keep-Alive"

    invoke-virtual {v1, v3, v4}, Lcom/squareup/okhttp/D;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/D;

    .line 1707
    :cond_5
    const-string v3, "Accept-Encoding"

    invoke-virtual {v0, v3}, Lcom/squareup/okhttp/C;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_6

    .line 1708
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/squareup/okhttp/internal/http/m;->j:Z

    .line 1709
    const-string v3, "Accept-Encoding"

    const-string v4, "gzip"

    invoke-virtual {v1, v3, v4}, Lcom/squareup/okhttp/D;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/D;

    .line 1712
    :cond_6
    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/m;->a:Lcom/squareup/okhttp/A;

    invoke-virtual {v3}, Lcom/squareup/okhttp/A;->f()Ljava/net/CookieHandler;

    move-result-object v3

    .line 1713
    if-eqz v3, :cond_7

    .line 1717
    invoke-virtual {v1}, Lcom/squareup/okhttp/D;->a()Lcom/squareup/okhttp/C;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/okhttp/C;->e()Lcom/squareup/okhttp/u;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/squareup/okhttp/internal/http/r;->a(Lcom/squareup/okhttp/u;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    .line 1719
    invoke-virtual {v0}, Lcom/squareup/okhttp/C;->b()Ljava/net/URI;

    move-result-object v5

    invoke-virtual {v3, v5, v4}, Ljava/net/CookieHandler;->get(Ljava/net/URI;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    .line 1722
    invoke-static {v1, v3}, Lcom/squareup/okhttp/internal/http/r;->a(Lcom/squareup/okhttp/D;Ljava/util/Map;)V

    .line 1725
    :cond_7
    const-string v3, "User-Agent"

    invoke-virtual {v0, v3}, Lcom/squareup/okhttp/C;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    .line 1726
    const-string v0, "User-Agent"

    .line 2020
    const-string v3, "okhttp/2.4.0"

    .line 1726
    invoke-virtual {v1, v0, v3}, Lcom/squareup/okhttp/D;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/D;

    .line 1729
    :cond_8
    invoke-virtual {v1}, Lcom/squareup/okhttp/D;->a()Lcom/squareup/okhttp/C;

    move-result-object v12

    .line 227
    sget-object v0, Lcom/squareup/okhttp/internal/b;->b:Lcom/squareup/okhttp/internal/b;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/m;->a:Lcom/squareup/okhttp/A;

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/b;->a(Lcom/squareup/okhttp/A;)Landroid/support/design/widget/K;

    move-result-object v0

    .line 228
    if-eqz v0, :cond_a

    .line 229
    invoke-interface {v0}, Landroid/support/design/widget/K;->k()Lcom/squareup/okhttp/I;

    move-result-object v0

    .line 232
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 233
    new-instance v1, Lcom/squareup/okhttp/internal/http/c;

    invoke-direct {v1, v4, v5, v12, v0}, Lcom/squareup/okhttp/internal/http/c;-><init>(JLcom/squareup/okhttp/C;Lcom/squareup/okhttp/I;)V

    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/http/c;->a()Lcom/squareup/okhttp/internal/http/b;

    move-result-object v1

    iput-object v1, p0, Lcom/squareup/okhttp/internal/http/m;->t:Lcom/squareup/okhttp/internal/http/b;

    .line 234
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/m;->t:Lcom/squareup/okhttp/internal/http/b;

    iget-object v1, v1, Lcom/squareup/okhttp/internal/http/b;->a:Lcom/squareup/okhttp/C;

    iput-object v1, p0, Lcom/squareup/okhttp/internal/http/m;->m:Lcom/squareup/okhttp/C;

    .line 235
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/m;->t:Lcom/squareup/okhttp/internal/http/b;

    iget-object v1, v1, Lcom/squareup/okhttp/internal/http/b;->b:Lcom/squareup/okhttp/I;

    iput-object v1, p0, Lcom/squareup/okhttp/internal/http/m;->n:Lcom/squareup/okhttp/I;

    .line 241
    if-eqz v0, :cond_9

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/m;->n:Lcom/squareup/okhttp/I;

    if-nez v1, :cond_9

    .line 242
    invoke-virtual {v0}, Lcom/squareup/okhttp/I;->g()Lcom/squareup/okhttp/K;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/okhttp/internal/l;->a(Ljava/io/Closeable;)V

    .line 245
    :cond_9
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/m;->m:Lcom/squareup/okhttp/C;

    if-eqz v0, :cond_13

    .line 247
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/m;->c:Lcom/squareup/okhttp/m;

    if-nez v0, :cond_f

    .line 2319
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/m;->c:Lcom/squareup/okhttp/m;

    if-eqz v0, :cond_b

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_a
    move-object v0, v2

    .line 229
    goto :goto_1

    .line 2321
    :cond_b
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/m;->e:Lcom/squareup/okhttp/internal/http/v;

    if-nez v0, :cond_e

    .line 2322
    iget-object v11, p0, Lcom/squareup/okhttp/internal/http/m;->a:Lcom/squareup/okhttp/A;

    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/m;->m:Lcom/squareup/okhttp/C;

    .line 3141
    invoke-virtual {v3}, Lcom/squareup/okhttp/C;->a()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 3142
    if-eqz v1, :cond_c

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_d

    .line 3143
    :cond_c
    new-instance v0, Lcom/squareup/okhttp/internal/http/RequestException;

    new-instance v1, Ljava/net/UnknownHostException;

    invoke-virtual {v3}, Lcom/squareup/okhttp/C;->a()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/squareup/okhttp/internal/http/RequestException;-><init>(Ljava/io/IOException;)V

    throw v0

    .line 3149
    :cond_d
    invoke-virtual {v3}, Lcom/squareup/okhttp/C;->i()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 3150
    invoke-virtual {v11}, Lcom/squareup/okhttp/A;->i()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v4

    .line 3151
    invoke-virtual {v11}, Lcom/squareup/okhttp/A;->j()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v5

    .line 3152
    invoke-virtual {v11}, Lcom/squareup/okhttp/A;->k()Lcom/squareup/okhttp/j;

    move-result-object v6

    .line 3155
    :goto_2
    new-instance v0, Lcom/squareup/okhttp/a;

    invoke-virtual {v3}, Lcom/squareup/okhttp/C;->a()Ljava/net/URL;

    move-result-object v2

    invoke-static {v2}, Lcom/squareup/okhttp/internal/l;->a(Ljava/net/URL;)I

    move-result v2

    .line 3156
    invoke-virtual {v11}, Lcom/squareup/okhttp/A;->h()Ljavax/net/SocketFactory;

    move-result-object v3

    .line 3157
    invoke-virtual {v11}, Lcom/squareup/okhttp/A;->l()Lcom/squareup/okhttp/b;

    move-result-object v7

    invoke-virtual {v11}, Lcom/squareup/okhttp/A;->d()Ljava/net/Proxy;

    move-result-object v8

    invoke-virtual {v11}, Lcom/squareup/okhttp/A;->s()Ljava/util/List;

    move-result-object v9

    .line 3158
    invoke-virtual {v11}, Lcom/squareup/okhttp/A;->t()Ljava/util/List;

    move-result-object v10

    invoke-virtual {v11}, Lcom/squareup/okhttp/A;->e()Ljava/net/ProxySelector;

    move-result-object v11

    invoke-direct/range {v0 .. v11}, Lcom/squareup/okhttp/a;-><init>(Ljava/lang/String;ILjavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lcom/squareup/okhttp/j;Lcom/squareup/okhttp/b;Ljava/net/Proxy;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V

    .line 2322
    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/m;->d:Lcom/squareup/okhttp/a;

    .line 2324
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/m;->d:Lcom/squareup/okhttp/a;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/m;->m:Lcom/squareup/okhttp/C;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/m;->a:Lcom/squareup/okhttp/A;

    invoke-static {v0, v1, v2}, Lcom/squareup/okhttp/internal/http/v;->a(Lcom/squareup/okhttp/a;Lcom/squareup/okhttp/C;Lcom/squareup/okhttp/A;)Lcom/squareup/okhttp/internal/http/v;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/m;->e:Lcom/squareup/okhttp/internal/http/v;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3340
    :cond_e
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/m;->k()Lcom/squareup/okhttp/m;

    move-result-object v0

    .line 3341
    sget-object v1, Lcom/squareup/okhttp/internal/b;->b:Lcom/squareup/okhttp/internal/b;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/m;->a:Lcom/squareup/okhttp/A;

    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/m;->m:Lcom/squareup/okhttp/C;

    invoke-virtual {v1, v2, v0, p0, v3}, Lcom/squareup/okhttp/internal/b;->a(Lcom/squareup/okhttp/A;Lcom/squareup/okhttp/m;Lcom/squareup/okhttp/internal/http/m;Lcom/squareup/okhttp/C;)V

    .line 2330
    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/m;->c:Lcom/squareup/okhttp/m;

    .line 2331
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/m;->c:Lcom/squareup/okhttp/m;

    invoke-virtual {v0}, Lcom/squareup/okhttp/m;->b()Lcom/squareup/okhttp/L;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/m;->f:Lcom/squareup/okhttp/L;

    .line 251
    :cond_f
    sget-object v0, Lcom/squareup/okhttp/internal/b;->b:Lcom/squareup/okhttp/internal/b;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/m;->c:Lcom/squareup/okhttp/m;

    invoke-virtual {v0, v1, p0}, Lcom/squareup/okhttp/internal/b;->a(Lcom/squareup/okhttp/m;Lcom/squareup/okhttp/internal/http/m;)Lcom/squareup/okhttp/internal/http/A;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/m;->h:Lcom/squareup/okhttp/internal/http/A;

    .line 257
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/http/m;->q:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/m;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/m;->p:Lokio/x;

    if-nez v0, :cond_0

    .line 258
    invoke-static {v12}, Lcom/squareup/okhttp/internal/http/r;->a(Lcom/squareup/okhttp/C;)J

    move-result-wide v0

    .line 259
    iget-boolean v2, p0, Lcom/squareup/okhttp/internal/http/m;->k:Z

    if-eqz v2, :cond_12

    .line 260
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_10

    .line 261
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Use setFixedLengthStreamingMode() or setChunkedStreamingMode() for requests larger than 2 GiB."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2325
    :catch_0
    move-exception v0

    .line 2326
    new-instance v1, Lcom/squareup/okhttp/internal/http/RequestException;

    invoke-direct {v1, v0}, Lcom/squareup/okhttp/internal/http/RequestException;-><init>(Ljava/io/IOException;)V

    throw v1

    .line 265
    :cond_10
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_11

    .line 267
    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/m;->h:Lcom/squareup/okhttp/internal/http/A;

    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/m;->m:Lcom/squareup/okhttp/C;

    invoke-interface {v2, v3}, Lcom/squareup/okhttp/internal/http/A;->a(Lcom/squareup/okhttp/C;)V

    .line 268
    new-instance v2, Lcom/squareup/okhttp/internal/http/u;

    long-to-int v0, v0

    invoke-direct {v2, v0}, Lcom/squareup/okhttp/internal/http/u;-><init>(I)V

    iput-object v2, p0, Lcom/squareup/okhttp/internal/http/m;->p:Lokio/x;

    goto/16 :goto_0

    .line 273
    :cond_11
    new-instance v0, Lcom/squareup/okhttp/internal/http/u;

    invoke-direct {v0}, Lcom/squareup/okhttp/internal/http/u;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/m;->p:Lokio/x;

    goto/16 :goto_0

    .line 276
    :cond_12
    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/m;->h:Lcom/squareup/okhttp/internal/http/A;

    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/m;->m:Lcom/squareup/okhttp/C;

    invoke-interface {v2, v3}, Lcom/squareup/okhttp/internal/http/A;->a(Lcom/squareup/okhttp/C;)V

    .line 277
    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/m;->h:Lcom/squareup/okhttp/internal/http/A;

    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/m;->m:Lcom/squareup/okhttp/C;

    invoke-interface {v2, v3, v0, v1}, Lcom/squareup/okhttp/internal/http/A;->a(Lcom/squareup/okhttp/C;J)Lokio/x;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/m;->p:Lokio/x;

    goto/16 :goto_0

    .line 283
    :cond_13
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/m;->c:Lcom/squareup/okhttp/m;

    if-eqz v0, :cond_14

    .line 284
    sget-object v0, Lcom/squareup/okhttp/internal/b;->b:Lcom/squareup/okhttp/internal/b;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/m;->a:Lcom/squareup/okhttp/A;

    invoke-virtual {v1}, Lcom/squareup/okhttp/A;->m()Lcom/squareup/okhttp/n;

    move-result-object v1

    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/m;->c:Lcom/squareup/okhttp/m;

    invoke-virtual {v0, v1, v3}, Lcom/squareup/okhttp/internal/b;->a(Lcom/squareup/okhttp/n;Lcom/squareup/okhttp/m;)V

    .line 285
    iput-object v2, p0, Lcom/squareup/okhttp/internal/http/m;->c:Lcom/squareup/okhttp/m;

    .line 288
    :cond_14
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/m;->n:Lcom/squareup/okhttp/I;

    if-eqz v0, :cond_15

    .line 290
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/m;->n:Lcom/squareup/okhttp/I;

    invoke-virtual {v0}, Lcom/squareup/okhttp/I;->h()Lcom/squareup/okhttp/J;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/m;->l:Lcom/squareup/okhttp/C;

    .line 291
    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/J;->a(Lcom/squareup/okhttp/C;)Lcom/squareup/okhttp/J;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/m;->g:Lcom/squareup/okhttp/I;

    .line 292
    invoke-static {v1}, Lcom/squareup/okhttp/internal/http/m;->b(Lcom/squareup/okhttp/I;)Lcom/squareup/okhttp/I;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/J;->c(Lcom/squareup/okhttp/I;)Lcom/squareup/okhttp/J;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/m;->n:Lcom/squareup/okhttp/I;

    .line 293
    invoke-static {v1}, Lcom/squareup/okhttp/internal/http/m;->b(Lcom/squareup/okhttp/I;)Lcom/squareup/okhttp/I;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/J;->b(Lcom/squareup/okhttp/I;)Lcom/squareup/okhttp/J;

    move-result-object v0

    .line 294
    invoke-virtual {v0}, Lcom/squareup/okhttp/J;->a()Lcom/squareup/okhttp/I;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/m;->o:Lcom/squareup/okhttp/I;

    .line 307
    :goto_3
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/m;->o:Lcom/squareup/okhttp/I;

    invoke-direct {p0, v0}, Lcom/squareup/okhttp/internal/http/m;->c(Lcom/squareup/okhttp/I;)Lcom/squareup/okhttp/I;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/m;->o:Lcom/squareup/okhttp/I;

    goto/16 :goto_0

    .line 297
    :cond_15
    new-instance v0, Lcom/squareup/okhttp/J;

    invoke-direct {v0}, Lcom/squareup/okhttp/J;-><init>()V

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/m;->l:Lcom/squareup/okhttp/C;

    .line 298
    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/J;->a(Lcom/squareup/okhttp/C;)Lcom/squareup/okhttp/J;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/m;->g:Lcom/squareup/okhttp/I;

    .line 299
    invoke-static {v1}, Lcom/squareup/okhttp/internal/http/m;->b(Lcom/squareup/okhttp/I;)Lcom/squareup/okhttp/I;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/J;->c(Lcom/squareup/okhttp/I;)Lcom/squareup/okhttp/J;

    move-result-object v0

    sget-object v1, Lcom/squareup/okhttp/Protocol;->HTTP_1_1:Lcom/squareup/okhttp/Protocol;

    .line 300
    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/J;->a(Lcom/squareup/okhttp/Protocol;)Lcom/squareup/okhttp/J;

    move-result-object v0

    const/16 v1, 0x1f8

    .line 301
    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/J;->a(I)Lcom/squareup/okhttp/J;

    move-result-object v0

    const-string v1, "Unsatisfiable Request (only-if-cached)"

    .line 302
    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/J;->a(Ljava/lang/String;)Lcom/squareup/okhttp/J;

    move-result-object v0

    sget-object v1, Lcom/squareup/okhttp/internal/http/m;->b:Lcom/squareup/okhttp/K;

    .line 303
    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/J;->a(Lcom/squareup/okhttp/K;)Lcom/squareup/okhttp/J;

    move-result-object v0

    .line 304
    invoke-virtual {v0}, Lcom/squareup/okhttp/J;->a()Lcom/squareup/okhttp/I;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/m;->o:Lcom/squareup/okhttp/I;

    goto :goto_3

    :cond_16
    move-object v6, v2

    move-object v5, v2

    move-object v4, v2

    goto/16 :goto_2
.end method

.method public final a(Lcom/squareup/okhttp/u;)V
    .locals 3

    .prologue
    .line 1052
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/m;->a:Lcom/squareup/okhttp/A;

    invoke-virtual {v0}, Lcom/squareup/okhttp/A;->f()Ljava/net/CookieHandler;

    move-result-object v0

    .line 1053
    if-eqz v0, :cond_0

    .line 1054
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/m;->l:Lcom/squareup/okhttp/C;

    invoke-virtual {v1}, Lcom/squareup/okhttp/C;->b()Ljava/net/URI;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1, v2}, Lcom/squareup/okhttp/internal/http/r;->a(Lcom/squareup/okhttp/u;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/CookieHandler;->put(Ljava/net/URI;Ljava/util/Map;)V

    .line 1056
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 4

    .prologue
    .line 369
    iget-wide v0, p0, Lcom/squareup/okhttp/internal/http/m;->i:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 370
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/squareup/okhttp/internal/http/m;->i:J

    .line 371
    return-void
.end method

.method public final b(Ljava/net/URL;)Z
    .locals 3

    .prologue
    .line 1133
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/m;->l:Lcom/squareup/okhttp/C;

    invoke-virtual {v0}, Lcom/squareup/okhttp/C;->a()Ljava/net/URL;

    move-result-object v0

    .line 1134
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1135
    invoke-static {v0}, Lcom/squareup/okhttp/internal/l;->a(Ljava/net/URL;)I

    move-result v1

    invoke-static {p1}, Lcom/squareup/okhttp/internal/l;->a(Ljava/net/URL;)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 1136
    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final c()Z
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/m;->l:Lcom/squareup/okhttp/C;

    invoke-virtual {v0}, Lcom/squareup/okhttp/C;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->q(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final d()Lcom/squareup/okhttp/C;
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/m;->l:Lcom/squareup/okhttp/C;

    return-object v0
.end method

.method public final e()Lcom/squareup/okhttp/I;
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/m;->o:Lcom/squareup/okhttp/I;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 404
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/m;->o:Lcom/squareup/okhttp/I;

    return-object v0
.end method

.method public final f()Lcom/squareup/okhttp/m;
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/m;->c:Lcom/squareup/okhttp/m;

    return-object v0
.end method

.method public final g()V
    .locals 1

    .prologue
    .line 568
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/m;->h:Lcom/squareup/okhttp/internal/http/A;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/m;->c:Lcom/squareup/okhttp/m;

    if-eqz v0, :cond_0

    .line 569
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/m;->h:Lcom/squareup/okhttp/internal/http/A;

    invoke-interface {v0}, Lcom/squareup/okhttp/internal/http/A;->c()V

    .line 571
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/m;->c:Lcom/squareup/okhttp/m;

    .line 572
    return-void
.end method

.method public final h()Lcom/squareup/okhttp/m;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 597
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/m;->p:Lokio/x;

    if-eqz v1, :cond_0

    .line 598
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/m;->p:Lokio/x;

    invoke-static {v1}, Lcom/squareup/okhttp/internal/l;->a(Ljava/io/Closeable;)V

    .line 602
    :cond_0
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/m;->o:Lcom/squareup/okhttp/I;

    if-nez v1, :cond_2

    .line 603
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/m;->c:Lcom/squareup/okhttp/m;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/m;->c:Lcom/squareup/okhttp/m;

    invoke-virtual {v1}, Lcom/squareup/okhttp/m;->c()Ljava/net/Socket;

    move-result-object v1

    invoke-static {v1}, Lcom/squareup/okhttp/internal/l;->a(Ljava/net/Socket;)V

    .line 604
    :cond_1
    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/m;->c:Lcom/squareup/okhttp/m;

    .line 625
    :goto_0
    return-object v0

    .line 609
    :cond_2
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/m;->o:Lcom/squareup/okhttp/I;

    invoke-virtual {v1}, Lcom/squareup/okhttp/I;->g()Lcom/squareup/okhttp/K;

    move-result-object v1

    invoke-static {v1}, Lcom/squareup/okhttp/internal/l;->a(Ljava/io/Closeable;)V

    .line 612
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/m;->h:Lcom/squareup/okhttp/internal/http/A;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/m;->c:Lcom/squareup/okhttp/m;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/m;->h:Lcom/squareup/okhttp/internal/http/A;

    invoke-interface {v1}, Lcom/squareup/okhttp/internal/http/A;->d()Z

    move-result v1

    if-nez v1, :cond_3

    .line 613
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/m;->c:Lcom/squareup/okhttp/m;

    invoke-virtual {v1}, Lcom/squareup/okhttp/m;->c()Ljava/net/Socket;

    move-result-object v1

    invoke-static {v1}, Lcom/squareup/okhttp/internal/l;->a(Ljava/net/Socket;)V

    .line 614
    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/m;->c:Lcom/squareup/okhttp/m;

    goto :goto_0

    .line 619
    :cond_3
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/m;->c:Lcom/squareup/okhttp/m;

    if-eqz v1, :cond_4

    sget-object v1, Lcom/squareup/okhttp/internal/b;->b:Lcom/squareup/okhttp/internal/b;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/m;->c:Lcom/squareup/okhttp/m;

    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/internal/b;->a(Lcom/squareup/okhttp/m;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 620
    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/m;->c:Lcom/squareup/okhttp/m;

    .line 623
    :cond_4
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/m;->c:Lcom/squareup/okhttp/m;

    .line 624
    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/m;->c:Lcom/squareup/okhttp/m;

    move-object v0, v1

    .line 625
    goto :goto_0
.end method

.method public final i()V
    .locals 8

    .prologue
    const-wide/16 v6, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 743
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/m;->o:Lcom/squareup/okhttp/I;

    if-eqz v0, :cond_1

    .line 834
    :cond_0
    :goto_0
    return-void

    .line 746
    :cond_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/m;->m:Lcom/squareup/okhttp/C;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/m;->n:Lcom/squareup/okhttp/I;

    if-nez v0, :cond_2

    .line 747
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call sendRequest() first!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 749
    :cond_2
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/m;->m:Lcom/squareup/okhttp/C;

    if-eqz v0, :cond_0

    .line 755
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/http/m;->r:Z

    if-eqz v0, :cond_5

    .line 756
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/m;->h:Lcom/squareup/okhttp/internal/http/A;

    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/m;->m:Lcom/squareup/okhttp/C;

    invoke-interface {v0, v3}, Lcom/squareup/okhttp/internal/http/A;->a(Lcom/squareup/okhttp/C;)V

    .line 793
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/m;->l()Lcom/squareup/okhttp/I;

    move-result-object v0

    .line 796
    :goto_2
    invoke-virtual {v0}, Lcom/squareup/okhttp/I;->f()Lcom/squareup/okhttp/u;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/squareup/okhttp/internal/http/m;->a(Lcom/squareup/okhttp/u;)V

    .line 799
    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/m;->n:Lcom/squareup/okhttp/I;

    if-eqz v3, :cond_c

    .line 800
    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/m;->n:Lcom/squareup/okhttp/I;

    .line 4001
    invoke-virtual {v0}, Lcom/squareup/okhttp/I;->c()I

    move-result v4

    const/16 v5, 0x130

    if-ne v4, v5, :cond_9

    .line 800
    :cond_4
    :goto_3
    if-eqz v1, :cond_b

    .line 801
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/m;->n:Lcom/squareup/okhttp/I;

    invoke-virtual {v1}, Lcom/squareup/okhttp/I;->h()Lcom/squareup/okhttp/J;

    move-result-object v1

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/m;->l:Lcom/squareup/okhttp/C;

    .line 802
    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/J;->a(Lcom/squareup/okhttp/C;)Lcom/squareup/okhttp/J;

    move-result-object v1

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/m;->g:Lcom/squareup/okhttp/I;

    .line 803
    invoke-static {v2}, Lcom/squareup/okhttp/internal/http/m;->b(Lcom/squareup/okhttp/I;)Lcom/squareup/okhttp/I;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/J;->c(Lcom/squareup/okhttp/I;)Lcom/squareup/okhttp/J;

    move-result-object v1

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/m;->n:Lcom/squareup/okhttp/I;

    .line 804
    invoke-virtual {v2}, Lcom/squareup/okhttp/I;->f()Lcom/squareup/okhttp/u;

    move-result-object v2

    invoke-virtual {v0}, Lcom/squareup/okhttp/I;->f()Lcom/squareup/okhttp/u;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/squareup/okhttp/internal/http/m;->a(Lcom/squareup/okhttp/u;Lcom/squareup/okhttp/u;)Lcom/squareup/okhttp/u;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/J;->a(Lcom/squareup/okhttp/u;)Lcom/squareup/okhttp/J;

    move-result-object v1

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/m;->n:Lcom/squareup/okhttp/I;

    .line 805
    invoke-static {v2}, Lcom/squareup/okhttp/internal/http/m;->b(Lcom/squareup/okhttp/I;)Lcom/squareup/okhttp/I;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/J;->b(Lcom/squareup/okhttp/I;)Lcom/squareup/okhttp/J;

    move-result-object v1

    .line 806
    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/m;->b(Lcom/squareup/okhttp/I;)Lcom/squareup/okhttp/I;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/J;->a(Lcom/squareup/okhttp/I;)Lcom/squareup/okhttp/J;

    move-result-object v1

    .line 807
    invoke-virtual {v1}, Lcom/squareup/okhttp/J;->a()Lcom/squareup/okhttp/I;

    move-result-object v1

    iput-object v1, p0, Lcom/squareup/okhttp/internal/http/m;->o:Lcom/squareup/okhttp/I;

    .line 808
    invoke-virtual {v0}, Lcom/squareup/okhttp/I;->g()Lcom/squareup/okhttp/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/K;->close()V

    .line 809
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/m;->g()V

    .line 813
    sget-object v0, Lcom/squareup/okhttp/internal/b;->b:Lcom/squareup/okhttp/internal/b;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/m;->a:Lcom/squareup/okhttp/A;

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/b;->a(Lcom/squareup/okhttp/A;)Landroid/support/design/widget/K;

    .line 815
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/m;->o:Lcom/squareup/okhttp/I;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/m;->b(Lcom/squareup/okhttp/I;)Lcom/squareup/okhttp/I;

    .line 816
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/m;->o:Lcom/squareup/okhttp/I;

    invoke-direct {p0, v0}, Lcom/squareup/okhttp/internal/http/m;->c(Lcom/squareup/okhttp/I;)Lcom/squareup/okhttp/I;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/m;->o:Lcom/squareup/okhttp/I;

    goto/16 :goto_0

    .line 759
    :cond_5
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/http/m;->q:Z

    if-nez v0, :cond_6

    .line 760
    new-instance v0, Lcom/squareup/okhttp/internal/http/p;

    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/m;->m:Lcom/squareup/okhttp/C;

    invoke-direct {v0, p0, v2, v3}, Lcom/squareup/okhttp/internal/http/p;-><init>(Lcom/squareup/okhttp/internal/http/m;ILcom/squareup/okhttp/C;)V

    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/m;->m:Lcom/squareup/okhttp/C;

    invoke-virtual {v0, v3}, Lcom/squareup/okhttp/internal/http/p;->a(Lcom/squareup/okhttp/C;)Lcom/squareup/okhttp/I;

    move-result-object v0

    goto/16 :goto_2

    .line 769
    :cond_6
    iget-wide v4, p0, Lcom/squareup/okhttp/internal/http/m;->i:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_8

    .line 770
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/m;->m:Lcom/squareup/okhttp/C;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/r;->a(Lcom/squareup/okhttp/C;)J

    move-result-wide v4

    cmp-long v0, v4, v6

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/m;->p:Lokio/x;

    instance-of v0, v0, Lcom/squareup/okhttp/internal/http/u;

    if-eqz v0, :cond_7

    .line 772
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/m;->p:Lokio/x;

    check-cast v0, Lcom/squareup/okhttp/internal/http/u;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/u;->b()J

    move-result-wide v4

    .line 773
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/m;->m:Lcom/squareup/okhttp/C;

    invoke-virtual {v0}, Lcom/squareup/okhttp/C;->g()Lcom/squareup/okhttp/D;

    move-result-object v0

    const-string v3, "Content-Length"

    .line 774
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/squareup/okhttp/D;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/D;

    move-result-object v0

    .line 775
    invoke-virtual {v0}, Lcom/squareup/okhttp/D;->a()Lcom/squareup/okhttp/C;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/m;->m:Lcom/squareup/okhttp/C;

    .line 777
    :cond_7
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/m;->h:Lcom/squareup/okhttp/internal/http/A;

    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/m;->m:Lcom/squareup/okhttp/C;

    invoke-interface {v0, v3}, Lcom/squareup/okhttp/internal/http/A;->a(Lcom/squareup/okhttp/C;)V

    .line 781
    :cond_8
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/m;->p:Lokio/x;

    if-eqz v0, :cond_3

    .line 786
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/m;->p:Lokio/x;

    invoke-interface {v0}, Lokio/x;->close()V

    .line 788
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/m;->p:Lokio/x;

    instance-of v0, v0, Lcom/squareup/okhttp/internal/http/u;

    if-eqz v0, :cond_3

    .line 789
    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/m;->h:Lcom/squareup/okhttp/internal/http/A;

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/m;->p:Lokio/x;

    check-cast v0, Lcom/squareup/okhttp/internal/http/u;

    invoke-interface {v3, v0}, Lcom/squareup/okhttp/internal/http/A;->a(Lcom/squareup/okhttp/internal/http/u;)V

    goto/16 :goto_1

    .line 4008
    :cond_9
    invoke-virtual {v3}, Lcom/squareup/okhttp/I;->f()Lcom/squareup/okhttp/u;

    move-result-object v3

    const-string v4, "Last-Modified"

    invoke-virtual {v3, v4}, Lcom/squareup/okhttp/u;->b(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    .line 4009
    if-eqz v3, :cond_a

    .line 4010
    invoke-virtual {v0}, Lcom/squareup/okhttp/I;->f()Lcom/squareup/okhttp/u;

    move-result-object v4

    const-string v5, "Last-Modified"

    invoke-virtual {v4, v5}, Lcom/squareup/okhttp/u;->b(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    .line 4011
    if-eqz v4, :cond_a

    .line 4012
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-ltz v3, :cond_4

    :cond_a
    move v1, v2

    .line 4017
    goto/16 :goto_3

    .line 819
    :cond_b
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/m;->n:Lcom/squareup/okhttp/I;

    invoke-virtual {v1}, Lcom/squareup/okhttp/I;->g()Lcom/squareup/okhttp/K;

    move-result-object v1

    invoke-static {v1}, Lcom/squareup/okhttp/internal/l;->a(Ljava/io/Closeable;)V

    .line 823
    :cond_c
    invoke-virtual {v0}, Lcom/squareup/okhttp/I;->h()Lcom/squareup/okhttp/J;

    move-result-object v1

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/m;->l:Lcom/squareup/okhttp/C;

    .line 824
    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/J;->a(Lcom/squareup/okhttp/C;)Lcom/squareup/okhttp/J;

    move-result-object v1

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/m;->g:Lcom/squareup/okhttp/I;

    .line 825
    invoke-static {v2}, Lcom/squareup/okhttp/internal/http/m;->b(Lcom/squareup/okhttp/I;)Lcom/squareup/okhttp/I;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/J;->c(Lcom/squareup/okhttp/I;)Lcom/squareup/okhttp/J;

    move-result-object v1

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/m;->n:Lcom/squareup/okhttp/I;

    .line 826
    invoke-static {v2}, Lcom/squareup/okhttp/internal/http/m;->b(Lcom/squareup/okhttp/I;)Lcom/squareup/okhttp/I;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/J;->b(Lcom/squareup/okhttp/I;)Lcom/squareup/okhttp/J;

    move-result-object v1

    .line 827
    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/m;->b(Lcom/squareup/okhttp/I;)Lcom/squareup/okhttp/I;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/squareup/okhttp/J;->a(Lcom/squareup/okhttp/I;)Lcom/squareup/okhttp/J;

    move-result-object v0

    .line 828
    invoke-virtual {v0}, Lcom/squareup/okhttp/J;->a()Lcom/squareup/okhttp/I;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/m;->o:Lcom/squareup/okhttp/I;

    .line 830
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/m;->o:Lcom/squareup/okhttp/I;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/m;->a(Lcom/squareup/okhttp/I;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4543
    sget-object v0, Lcom/squareup/okhttp/internal/b;->b:Lcom/squareup/okhttp/internal/b;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/m;->a:Lcom/squareup/okhttp/A;

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/b;->a(Lcom/squareup/okhttp/A;)Landroid/support/design/widget/K;

    move-result-object v0

    .line 4544
    if-eqz v0, :cond_d

    .line 4547
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/m;->o:Lcom/squareup/okhttp/I;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/m;->m:Lcom/squareup/okhttp/C;

    invoke-static {v1, v2}, Lcom/squareup/okhttp/internal/http/b;->a(Lcom/squareup/okhttp/I;Lcom/squareup/okhttp/C;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 4548
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/m;->m:Lcom/squareup/okhttp/C;

    invoke-virtual {v0}, Lcom/squareup/okhttp/C;->d()Ljava/lang/String;

    move-result-object v0

    .line 5020
    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    const-string v1, "PATCH"

    .line 5021
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    const-string v1, "PUT"

    .line 5022
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    const-string v1, "DELETE"

    .line 5023
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 832
    :cond_d
    :goto_4
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/m;->s:Landroid/support/design/widget/K;

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/m;->o:Lcom/squareup/okhttp/I;

    .line 5942
    if-nez v1, :cond_10

    .line 832
    :cond_e
    :goto_5
    invoke-direct {p0, v0}, Lcom/squareup/okhttp/internal/http/m;->c(Lcom/squareup/okhttp/I;)Lcom/squareup/okhttp/I;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/m;->o:Lcom/squareup/okhttp/I;

    goto/16 :goto_0

    .line 4559
    :cond_f
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/m;->o:Lcom/squareup/okhttp/I;

    invoke-static {v1}, Lcom/squareup/okhttp/internal/http/m;->b(Lcom/squareup/okhttp/I;)Lcom/squareup/okhttp/I;

    invoke-interface {v0}, Landroid/support/design/widget/K;->l()Landroid/support/design/widget/K;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/m;->s:Landroid/support/design/widget/K;

    goto :goto_4

    .line 5943
    :cond_10
    invoke-interface {v1}, Landroid/support/design/widget/K;->m()Lokio/x;

    move-result-object v2

    .line 5944
    if-eqz v2, :cond_e

    .line 5946
    invoke-virtual {v0}, Lcom/squareup/okhttp/I;->g()Lcom/squareup/okhttp/K;

    move-result-object v3

    invoke-virtual {v3}, Lcom/squareup/okhttp/K;->d()Lokio/i;

    move-result-object v3

    .line 5947
    invoke-static {v2}, Lokio/o;->a(Lokio/x;)Lokio/h;

    move-result-object v2

    .line 5949
    new-instance v4, Lcom/squareup/okhttp/internal/http/o;

    invoke-direct {v4, p0, v3, v1, v2}, Lcom/squareup/okhttp/internal/http/o;-><init>(Lcom/squareup/okhttp/internal/http/m;Lokio/i;Landroid/support/design/widget/K;Lokio/h;)V

    .line 5991
    invoke-virtual {v0}, Lcom/squareup/okhttp/I;->h()Lcom/squareup/okhttp/J;

    move-result-object v1

    new-instance v2, Lcom/squareup/okhttp/internal/http/t;

    .line 5992
    invoke-virtual {v0}, Lcom/squareup/okhttp/I;->f()Lcom/squareup/okhttp/u;

    move-result-object v0

    invoke-static {v4}, Lokio/o;->a(Lokio/y;)Lokio/i;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/squareup/okhttp/internal/http/t;-><init>(Lcom/squareup/okhttp/u;Lokio/i;)V

    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/J;->a(Lcom/squareup/okhttp/K;)Lcom/squareup/okhttp/J;

    move-result-object v0

    .line 5993
    invoke-virtual {v0}, Lcom/squareup/okhttp/J;->a()Lcom/squareup/okhttp/I;

    move-result-object v0

    goto :goto_5
.end method

.method public final j()Lcom/squareup/okhttp/C;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1064
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/m;->o:Lcom/squareup/okhttp/I;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 6539
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/m;->f:Lcom/squareup/okhttp/L;

    .line 1065
    if-eqz v0, :cond_1

    .line 7539
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/m;->f:Lcom/squareup/okhttp/L;

    .line 1066
    invoke-virtual {v0}, Lcom/squareup/okhttp/L;->b()Ljava/net/Proxy;

    move-result-object v0

    .line 1068
    :goto_0
    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/m;->o:Lcom/squareup/okhttp/I;

    invoke-virtual {v2}, Lcom/squareup/okhttp/I;->c()I

    move-result v2

    .line 1070
    sparse-switch v2, :sswitch_data_0

    move-object v0, v1

    .line 1124
    :goto_1
    return-object v0

    .line 1066
    :cond_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/m;->a:Lcom/squareup/okhttp/A;

    .line 1067
    invoke-virtual {v0}, Lcom/squareup/okhttp/A;->d()Ljava/net/Proxy;

    move-result-object v0

    goto :goto_0

    .line 1072
    :sswitch_0
    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v1

    sget-object v2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-eq v1, v2, :cond_2

    .line 1073
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Received HTTP_PROXY_AUTH (407) code while not using proxy"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1077
    :cond_2
    :sswitch_1
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/m;->a:Lcom/squareup/okhttp/A;

    invoke-virtual {v1}, Lcom/squareup/okhttp/A;->l()Lcom/squareup/okhttp/b;

    move-result-object v1

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/m;->o:Lcom/squareup/okhttp/I;

    invoke-static {v1, v2, v0}, Lcom/squareup/okhttp/internal/http/r;->a(Lcom/squareup/okhttp/b;Lcom/squareup/okhttp/I;Ljava/net/Proxy;)Lcom/squareup/okhttp/C;

    move-result-object v0

    goto :goto_1

    .line 1083
    :sswitch_2
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/m;->l:Lcom/squareup/okhttp/C;

    invoke-virtual {v0}, Lcom/squareup/okhttp/C;->d()Ljava/lang/String;

    move-result-object v0

    const-string v2, "GET"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/m;->l:Lcom/squareup/okhttp/C;

    invoke-virtual {v0}, Lcom/squareup/okhttp/C;->d()Ljava/lang/String;

    move-result-object v0

    const-string v2, "HEAD"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    move-object v0, v1

    .line 1084
    goto :goto_1

    .line 1092
    :cond_3
    :sswitch_3
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/m;->a:Lcom/squareup/okhttp/A;

    invoke-virtual {v0}, Lcom/squareup/okhttp/A;->o()Z

    move-result v0

    if-nez v0, :cond_4

    move-object v0, v1

    goto :goto_1

    .line 1094
    :cond_4
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/m;->o:Lcom/squareup/okhttp/I;

    const-string v2, "Location"

    invoke-virtual {v0, v2}, Lcom/squareup/okhttp/I;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1095
    if-nez v0, :cond_5

    move-object v0, v1

    goto :goto_1

    .line 1096
    :cond_5
    new-instance v2, Ljava/net/URL;

    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/m;->l:Lcom/squareup/okhttp/C;

    invoke-virtual {v3}, Lcom/squareup/okhttp/C;->a()Ljava/net/URL;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 1099
    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string v3, "https"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string v3, "http"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    move-object v0, v1

    goto :goto_1

    .line 1102
    :cond_6
    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/m;->l:Lcom/squareup/okhttp/C;

    invoke-virtual {v3}, Lcom/squareup/okhttp/C;->a()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1103
    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/m;->a:Lcom/squareup/okhttp/A;

    invoke-virtual {v0}, Lcom/squareup/okhttp/A;->n()Z

    move-result v0

    if-nez v0, :cond_7

    move-object v0, v1

    goto/16 :goto_1

    .line 1106
    :cond_7
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/m;->l:Lcom/squareup/okhttp/C;

    invoke-virtual {v0}, Lcom/squareup/okhttp/C;->g()Lcom/squareup/okhttp/D;

    move-result-object v0

    .line 1107
    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/m;->l:Lcom/squareup/okhttp/C;

    invoke-virtual {v3}, Lcom/squareup/okhttp/C;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/arcsoft/hpay100/a/a;->q(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1108
    const-string v3, "GET"

    invoke-virtual {v0, v3, v1}, Lcom/squareup/okhttp/D;->a(Ljava/lang/String;Lcom/squareup/okhttp/E;)Lcom/squareup/okhttp/D;

    .line 1109
    const-string v1, "Transfer-Encoding"

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/D;->b(Ljava/lang/String;)Lcom/squareup/okhttp/D;

    .line 1110
    const-string v1, "Content-Length"

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/D;->b(Ljava/lang/String;)Lcom/squareup/okhttp/D;

    .line 1111
    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/D;->b(Ljava/lang/String;)Lcom/squareup/okhttp/D;

    .line 1117
    :cond_8
    invoke-virtual {p0, v2}, Lcom/squareup/okhttp/internal/http/m;->b(Ljava/net/URL;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 1118
    const-string v1, "Authorization"

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/D;->b(Ljava/lang/String;)Lcom/squareup/okhttp/D;

    .line 1121
    :cond_9
    invoke-virtual {v0, v2}, Lcom/squareup/okhttp/D;->a(Ljava/net/URL;)Lcom/squareup/okhttp/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/D;->a()Lcom/squareup/okhttp/C;

    move-result-object v0

    goto/16 :goto_1

    .line 1070
    nop

    :sswitch_data_0
    .sparse-switch
        0x12c -> :sswitch_3
        0x12d -> :sswitch_3
        0x12e -> :sswitch_3
        0x12f -> :sswitch_3
        0x133 -> :sswitch_2
        0x134 -> :sswitch_2
        0x191 -> :sswitch_1
        0x197 -> :sswitch_0
    .end sparse-switch
.end method
