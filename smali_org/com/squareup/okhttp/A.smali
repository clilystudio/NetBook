.class public Lcom/squareup/okhttp/A;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/Protocol;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/p;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Ljavax/net/ssl/SSLSocketFactory;


# instance fields
.field private A:I

.field private final d:Lcom/squareup/okhttp/internal/k;

.field private e:Lcom/squareup/okhttp/r;

.field private f:Ljava/net/Proxy;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/Protocol;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/p;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/design/widget/K;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/design/widget/K;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/net/ProxySelector;

.field private l:Ljava/net/CookieHandler;

.field private m:Landroid/support/design/widget/K;

.field private n:Lcom/squareup/okhttp/c;

.field private o:Ljavax/net/SocketFactory;

.field private p:Ljavax/net/ssl/SSLSocketFactory;

.field private q:Ljavax/net/ssl/HostnameVerifier;

.field private r:Lcom/squareup/okhttp/j;

.field private s:Lcom/squareup/okhttp/b;

.field private t:Lcom/squareup/okhttp/n;

.field private u:Lcom/squareup/okhttp/internal/d;

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 57
    new-array v0, v5, [Lcom/squareup/okhttp/Protocol;

    sget-object v1, Lcom/squareup/okhttp/Protocol;->HTTP_2:Lcom/squareup/okhttp/Protocol;

    aput-object v1, v0, v2

    sget-object v1, Lcom/squareup/okhttp/Protocol;->SPDY_3:Lcom/squareup/okhttp/Protocol;

    aput-object v1, v0, v3

    sget-object v1, Lcom/squareup/okhttp/Protocol;->HTTP_1_1:Lcom/squareup/okhttp/Protocol;

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/squareup/okhttp/internal/l;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/A;->a:Ljava/util/List;

    .line 60
    new-array v0, v5, [Lcom/squareup/okhttp/p;

    sget-object v1, Lcom/squareup/okhttp/p;->a:Lcom/squareup/okhttp/p;

    aput-object v1, v0, v2

    sget-object v1, Lcom/squareup/okhttp/p;->b:Lcom/squareup/okhttp/p;

    aput-object v1, v0, v3

    sget-object v1, Lcom/squareup/okhttp/p;->c:Lcom/squareup/okhttp/p;

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/squareup/okhttp/internal/l;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/A;->b:Ljava/util/List;

    .line 64
    new-instance v0, Lcom/squareup/okhttp/B;

    invoke-direct {v0}, Lcom/squareup/okhttp/B;-><init>()V

    sput-object v0, Lcom/squareup/okhttp/internal/b;->b:Lcom/squareup/okhttp/internal/b;

    .line 161
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/A;->i:Ljava/util/List;

    .line 172
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/A;->j:Ljava/util/List;

    .line 187
    iput-boolean v1, p0, Lcom/squareup/okhttp/A;->v:Z

    .line 188
    iput-boolean v1, p0, Lcom/squareup/okhttp/A;->w:Z

    .line 189
    iput-boolean v1, p0, Lcom/squareup/okhttp/A;->x:Z

    .line 195
    new-instance v0, Lcom/squareup/okhttp/internal/k;

    invoke-direct {v0}, Lcom/squareup/okhttp/internal/k;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/A;->d:Lcom/squareup/okhttp/internal/k;

    .line 196
    new-instance v0, Lcom/squareup/okhttp/r;

    invoke-direct {v0}, Lcom/squareup/okhttp/r;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/A;->e:Lcom/squareup/okhttp/r;

    .line 197
    return-void
.end method

.method private constructor <init>(Lcom/squareup/okhttp/A;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/A;->i:Ljava/util/List;

    .line 172
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/A;->j:Ljava/util/List;

    .line 187
    iput-boolean v1, p0, Lcom/squareup/okhttp/A;->v:Z

    .line 188
    iput-boolean v1, p0, Lcom/squareup/okhttp/A;->w:Z

    .line 189
    iput-boolean v1, p0, Lcom/squareup/okhttp/A;->x:Z

    .line 200
    iget-object v0, p1, Lcom/squareup/okhttp/A;->d:Lcom/squareup/okhttp/internal/k;

    iput-object v0, p0, Lcom/squareup/okhttp/A;->d:Lcom/squareup/okhttp/internal/k;

    .line 201
    iget-object v0, p1, Lcom/squareup/okhttp/A;->e:Lcom/squareup/okhttp/r;

    iput-object v0, p0, Lcom/squareup/okhttp/A;->e:Lcom/squareup/okhttp/r;

    .line 202
    iget-object v0, p1, Lcom/squareup/okhttp/A;->f:Ljava/net/Proxy;

    iput-object v0, p0, Lcom/squareup/okhttp/A;->f:Ljava/net/Proxy;

    .line 203
    iget-object v0, p1, Lcom/squareup/okhttp/A;->g:Ljava/util/List;

    iput-object v0, p0, Lcom/squareup/okhttp/A;->g:Ljava/util/List;

    .line 204
    iget-object v0, p1, Lcom/squareup/okhttp/A;->h:Ljava/util/List;

    iput-object v0, p0, Lcom/squareup/okhttp/A;->h:Ljava/util/List;

    .line 205
    iget-object v0, p0, Lcom/squareup/okhttp/A;->i:Ljava/util/List;

    iget-object v1, p1, Lcom/squareup/okhttp/A;->i:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 206
    iget-object v0, p0, Lcom/squareup/okhttp/A;->j:Ljava/util/List;

    iget-object v1, p1, Lcom/squareup/okhttp/A;->j:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 207
    iget-object v0, p1, Lcom/squareup/okhttp/A;->k:Ljava/net/ProxySelector;

    iput-object v0, p0, Lcom/squareup/okhttp/A;->k:Ljava/net/ProxySelector;

    .line 208
    iget-object v0, p1, Lcom/squareup/okhttp/A;->l:Ljava/net/CookieHandler;

    iput-object v0, p0, Lcom/squareup/okhttp/A;->l:Ljava/net/CookieHandler;

    .line 209
    iget-object v0, p1, Lcom/squareup/okhttp/A;->n:Lcom/squareup/okhttp/c;

    iput-object v0, p0, Lcom/squareup/okhttp/A;->n:Lcom/squareup/okhttp/c;

    .line 210
    iget-object v0, p0, Lcom/squareup/okhttp/A;->n:Lcom/squareup/okhttp/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/A;->n:Lcom/squareup/okhttp/c;

    iget-object v0, v0, Lcom/squareup/okhttp/c;->a:Landroid/support/design/widget/K;

    :goto_0
    iput-object v0, p0, Lcom/squareup/okhttp/A;->m:Landroid/support/design/widget/K;

    .line 211
    iget-object v0, p1, Lcom/squareup/okhttp/A;->o:Ljavax/net/SocketFactory;

    iput-object v0, p0, Lcom/squareup/okhttp/A;->o:Ljavax/net/SocketFactory;

    .line 212
    iget-object v0, p1, Lcom/squareup/okhttp/A;->p:Ljavax/net/ssl/SSLSocketFactory;

    iput-object v0, p0, Lcom/squareup/okhttp/A;->p:Ljavax/net/ssl/SSLSocketFactory;

    .line 213
    iget-object v0, p1, Lcom/squareup/okhttp/A;->q:Ljavax/net/ssl/HostnameVerifier;

    iput-object v0, p0, Lcom/squareup/okhttp/A;->q:Ljavax/net/ssl/HostnameVerifier;

    .line 214
    iget-object v0, p1, Lcom/squareup/okhttp/A;->r:Lcom/squareup/okhttp/j;

    iput-object v0, p0, Lcom/squareup/okhttp/A;->r:Lcom/squareup/okhttp/j;

    .line 215
    iget-object v0, p1, Lcom/squareup/okhttp/A;->s:Lcom/squareup/okhttp/b;

    iput-object v0, p0, Lcom/squareup/okhttp/A;->s:Lcom/squareup/okhttp/b;

    .line 216
    iget-object v0, p1, Lcom/squareup/okhttp/A;->t:Lcom/squareup/okhttp/n;

    iput-object v0, p0, Lcom/squareup/okhttp/A;->t:Lcom/squareup/okhttp/n;

    .line 217
    iget-object v0, p1, Lcom/squareup/okhttp/A;->u:Lcom/squareup/okhttp/internal/d;

    iput-object v0, p0, Lcom/squareup/okhttp/A;->u:Lcom/squareup/okhttp/internal/d;

    .line 218
    iget-boolean v0, p1, Lcom/squareup/okhttp/A;->v:Z

    iput-boolean v0, p0, Lcom/squareup/okhttp/A;->v:Z

    .line 219
    iget-boolean v0, p1, Lcom/squareup/okhttp/A;->w:Z

    iput-boolean v0, p0, Lcom/squareup/okhttp/A;->w:Z

    .line 220
    iget-boolean v0, p1, Lcom/squareup/okhttp/A;->x:Z

    iput-boolean v0, p0, Lcom/squareup/okhttp/A;->x:Z

    .line 221
    iget v0, p1, Lcom/squareup/okhttp/A;->y:I

    iput v0, p0, Lcom/squareup/okhttp/A;->y:I

    .line 222
    iget v0, p1, Lcom/squareup/okhttp/A;->z:I

    iput v0, p0, Lcom/squareup/okhttp/A;->z:I

    .line 223
    iget v0, p1, Lcom/squareup/okhttp/A;->A:I

    iput v0, p0, Lcom/squareup/okhttp/A;->A:I

    .line 224
    return-void

    .line 210
    :cond_0
    iget-object v0, p1, Lcom/squareup/okhttp/A;->m:Landroid/support/design/widget/K;

    goto :goto_0
.end method

.method static synthetic a(Lcom/squareup/okhttp/A;)Lcom/squareup/okhttp/internal/d;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/squareup/okhttp/A;->u:Lcom/squareup/okhttp/internal/d;

    return-object v0
.end method

.method private declared-synchronized x()Ljavax/net/ssl/SSLSocketFactory;
    .locals 4

    .prologue
    .line 661
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/squareup/okhttp/A;->c:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 663
    :try_start_1
    const-string v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 664
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 665
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/A;->c:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 670
    :cond_0
    :try_start_2
    sget-object v0, Lcom/squareup/okhttp/A;->c:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 667
    :catch_0
    move-exception v0

    :try_start_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 661
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 243
    iget v0, p0, Lcom/squareup/okhttp/A;->y:I

    return v0
.end method

.method public final a(Lcom/squareup/okhttp/C;)Lcom/squareup/okhttp/f;
    .locals 1

    .prologue
    .line 595
    new-instance v0, Lcom/squareup/okhttp/f;

    invoke-direct {v0, p0, p1}, Lcom/squareup/okhttp/f;-><init>(Lcom/squareup/okhttp/A;Lcom/squareup/okhttp/C;)V

    return-object v0
.end method

.method public final a(JLjava/util/concurrent/TimeUnit;)V
    .locals 8

    .prologue
    const-wide/16 v6, 0xbb8

    const-wide/16 v4, 0x0

    .line 233
    cmp-long v0, v6, v4

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeout < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 234
    :cond_0
    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unit == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    :cond_1
    invoke-virtual {p3, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 236
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Timeout too large."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 237
    :cond_2
    cmp-long v2, v0, v4

    if-nez v2, :cond_3

    cmp-long v2, v6, v4

    if-lez v2, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Timeout too small."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :cond_3
    long-to-int v0, v0

    iput v0, p0, Lcom/squareup/okhttp/A;->y:I

    .line 239
    return-void
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 263
    iget v0, p0, Lcom/squareup/okhttp/A;->z:I

    return v0
.end method

.method public final b(JLjava/util/concurrent/TimeUnit;)V
    .locals 8

    .prologue
    const-wide/16 v6, 0xbb8

    const-wide/16 v4, 0x0

    .line 253
    cmp-long v0, v6, v4

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeout < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 254
    :cond_0
    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unit == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 255
    :cond_1
    invoke-virtual {p3, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 256
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Timeout too large."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 257
    :cond_2
    cmp-long v2, v0, v4

    if-nez v2, :cond_3

    cmp-long v2, v6, v4

    if-lez v2, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Timeout too small."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 258
    :cond_3
    long-to-int v0, v0

    iput v0, p0, Lcom/squareup/okhttp/A;->z:I

    .line 259
    return-void
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 281
    iget v0, p0, Lcom/squareup/okhttp/A;->A:I

    return v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 56
    .line 1675
    new-instance v0, Lcom/squareup/okhttp/A;

    invoke-direct {v0, p0}, Lcom/squareup/okhttp/A;-><init>(Lcom/squareup/okhttp/A;)V

    .line 56
    return-object v0
.end method

.method public final d()Ljava/net/Proxy;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/squareup/okhttp/A;->f:Ljava/net/Proxy;

    return-object v0
.end method

.method public final e()Ljava/net/ProxySelector;
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/squareup/okhttp/A;->k:Ljava/net/ProxySelector;

    return-object v0
.end method

.method public final f()Ljava/net/CookieHandler;
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/squareup/okhttp/A;->l:Ljava/net/CookieHandler;

    return-object v0
.end method

.method final g()Landroid/support/design/widget/K;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/squareup/okhttp/A;->m:Landroid/support/design/widget/K;

    return-object v0
.end method

.method public final h()Ljavax/net/SocketFactory;
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/squareup/okhttp/A;->o:Ljavax/net/SocketFactory;

    return-object v0
.end method

.method public final i()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/squareup/okhttp/A;->p:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public final j()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcom/squareup/okhttp/A;->q:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public final k()Lcom/squareup/okhttp/j;
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lcom/squareup/okhttp/A;->r:Lcom/squareup/okhttp/j;

    return-object v0
.end method

.method public final l()Lcom/squareup/okhttp/b;
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lcom/squareup/okhttp/A;->s:Lcom/squareup/okhttp/b;

    return-object v0
.end method

.method public final m()Lcom/squareup/okhttp/n;
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lcom/squareup/okhttp/A;->t:Lcom/squareup/okhttp/n;

    return-object v0
.end method

.method public final n()Z
    .locals 1

    .prologue
    .line 459
    iget-boolean v0, p0, Lcom/squareup/okhttp/A;->v:Z

    return v0
.end method

.method public final o()Z
    .locals 1

    .prologue
    .line 468
    iget-boolean v0, p0, Lcom/squareup/okhttp/A;->w:Z

    return v0
.end method

.method public final p()Z
    .locals 1

    .prologue
    .line 494
    iget-boolean v0, p0, Lcom/squareup/okhttp/A;->x:Z

    return v0
.end method

.method final q()Lcom/squareup/okhttp/internal/k;
    .locals 1

    .prologue
    .line 498
    iget-object v0, p0, Lcom/squareup/okhttp/A;->d:Lcom/squareup/okhttp/internal/k;

    return-object v0
.end method

.method public final r()Lcom/squareup/okhttp/r;
    .locals 1

    .prologue
    .line 512
    iget-object v0, p0, Lcom/squareup/okhttp/A;->e:Lcom/squareup/okhttp/r;

    return-object v0
.end method

.method public final s()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/Protocol;",
            ">;"
        }
    .end annotation

    .prologue
    .line 561
    iget-object v0, p0, Lcom/squareup/okhttp/A;->g:Ljava/util/List;

    return-object v0
.end method

.method public final t()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/p;",
            ">;"
        }
    .end annotation

    .prologue
    .line 570
    iget-object v0, p0, Lcom/squareup/okhttp/A;->h:Ljava/util/List;

    return-object v0
.end method

.method public final u()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/support/design/widget/K;",
            ">;"
        }
    .end annotation

    .prologue
    .line 579
    iget-object v0, p0, Lcom/squareup/okhttp/A;->i:Ljava/util/List;

    return-object v0
.end method

.method public final v()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/support/design/widget/K;",
            ">;"
        }
    .end annotation

    .prologue
    .line 588
    iget-object v0, p0, Lcom/squareup/okhttp/A;->j:Ljava/util/List;

    return-object v0
.end method

.method final w()Lcom/squareup/okhttp/A;
    .locals 2

    .prologue
    .line 612
    new-instance v0, Lcom/squareup/okhttp/A;

    invoke-direct {v0, p0}, Lcom/squareup/okhttp/A;-><init>(Lcom/squareup/okhttp/A;)V

    .line 613
    iget-object v1, v0, Lcom/squareup/okhttp/A;->k:Ljava/net/ProxySelector;

    if-nez v1, :cond_0

    .line 614
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v1

    iput-object v1, v0, Lcom/squareup/okhttp/A;->k:Ljava/net/ProxySelector;

    .line 616
    :cond_0
    iget-object v1, v0, Lcom/squareup/okhttp/A;->l:Ljava/net/CookieHandler;

    if-nez v1, :cond_1

    .line 617
    invoke-static {}, Ljava/net/CookieHandler;->getDefault()Ljava/net/CookieHandler;

    move-result-object v1

    iput-object v1, v0, Lcom/squareup/okhttp/A;->l:Ljava/net/CookieHandler;

    .line 619
    :cond_1
    iget-object v1, v0, Lcom/squareup/okhttp/A;->o:Ljavax/net/SocketFactory;

    if-nez v1, :cond_2

    .line 620
    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v1

    iput-object v1, v0, Lcom/squareup/okhttp/A;->o:Ljavax/net/SocketFactory;

    .line 622
    :cond_2
    iget-object v1, v0, Lcom/squareup/okhttp/A;->p:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v1, :cond_3

    .line 623
    invoke-direct {p0}, Lcom/squareup/okhttp/A;->x()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    iput-object v1, v0, Lcom/squareup/okhttp/A;->p:Ljavax/net/ssl/SSLSocketFactory;

    .line 625
    :cond_3
    iget-object v1, v0, Lcom/squareup/okhttp/A;->q:Ljavax/net/ssl/HostnameVerifier;

    if-nez v1, :cond_4

    .line 626
    sget-object v1, Lcom/squareup/okhttp/internal/a/b;->a:Lcom/squareup/okhttp/internal/a/b;

    iput-object v1, v0, Lcom/squareup/okhttp/A;->q:Ljavax/net/ssl/HostnameVerifier;

    .line 628
    :cond_4
    iget-object v1, v0, Lcom/squareup/okhttp/A;->r:Lcom/squareup/okhttp/j;

    if-nez v1, :cond_5

    .line 629
    sget-object v1, Lcom/squareup/okhttp/j;->a:Lcom/squareup/okhttp/j;

    iput-object v1, v0, Lcom/squareup/okhttp/A;->r:Lcom/squareup/okhttp/j;

    .line 631
    :cond_5
    iget-object v1, v0, Lcom/squareup/okhttp/A;->s:Lcom/squareup/okhttp/b;

    if-nez v1, :cond_6

    .line 632
    sget-object v1, Lcom/squareup/okhttp/internal/http/a;->a:Lcom/squareup/okhttp/b;

    iput-object v1, v0, Lcom/squareup/okhttp/A;->s:Lcom/squareup/okhttp/b;

    .line 634
    :cond_6
    iget-object v1, v0, Lcom/squareup/okhttp/A;->t:Lcom/squareup/okhttp/n;

    if-nez v1, :cond_7

    .line 635
    invoke-static {}, Lcom/squareup/okhttp/n;->a()Lcom/squareup/okhttp/n;

    move-result-object v1

    iput-object v1, v0, Lcom/squareup/okhttp/A;->t:Lcom/squareup/okhttp/n;

    .line 637
    :cond_7
    iget-object v1, v0, Lcom/squareup/okhttp/A;->g:Ljava/util/List;

    if-nez v1, :cond_8

    .line 638
    sget-object v1, Lcom/squareup/okhttp/A;->a:Ljava/util/List;

    iput-object v1, v0, Lcom/squareup/okhttp/A;->g:Ljava/util/List;

    .line 640
    :cond_8
    iget-object v1, v0, Lcom/squareup/okhttp/A;->h:Ljava/util/List;

    if-nez v1, :cond_9

    .line 641
    sget-object v1, Lcom/squareup/okhttp/A;->b:Ljava/util/List;

    iput-object v1, v0, Lcom/squareup/okhttp/A;->h:Ljava/util/List;

    .line 643
    :cond_9
    iget-object v1, v0, Lcom/squareup/okhttp/A;->u:Lcom/squareup/okhttp/internal/d;

    if-nez v1, :cond_a

    .line 644
    sget-object v1, Lcom/squareup/okhttp/internal/d;->a:Lcom/squareup/okhttp/internal/d;

    iput-object v1, v0, Lcom/squareup/okhttp/A;->u:Lcom/squareup/okhttp/internal/d;

    .line 646
    :cond_a
    return-object v0
.end method
