.class public final Lcom/squareup/okhttp/J;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/squareup/okhttp/C;

.field private b:Lcom/squareup/okhttp/Protocol;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Lcom/squareup/okhttp/t;

.field private f:Lcom/squareup/okhttp/v;

.field private g:Lcom/squareup/okhttp/K;

.field private h:Lcom/squareup/okhttp/I;

.field private i:Lcom/squareup/okhttp/I;

.field private j:Lcom/squareup/okhttp/I;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    const/4 v0, -0x1

    iput v0, p0, Lcom/squareup/okhttp/J;->c:I

    .line 234
    new-instance v0, Lcom/squareup/okhttp/v;

    invoke-direct {v0}, Lcom/squareup/okhttp/v;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/J;->f:Lcom/squareup/okhttp/v;

    .line 235
    return-void
.end method

.method private constructor <init>(Lcom/squareup/okhttp/I;)V
    .locals 1

    .prologue
    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    const/4 v0, -0x1

    iput v0, p0, Lcom/squareup/okhttp/J;->c:I

    .line 238
    invoke-static {p1}, Lcom/squareup/okhttp/I;->a(Lcom/squareup/okhttp/I;)Lcom/squareup/okhttp/C;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/J;->a:Lcom/squareup/okhttp/C;

    .line 239
    invoke-static {p1}, Lcom/squareup/okhttp/I;->b(Lcom/squareup/okhttp/I;)Lcom/squareup/okhttp/Protocol;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/J;->b:Lcom/squareup/okhttp/Protocol;

    .line 240
    invoke-static {p1}, Lcom/squareup/okhttp/I;->c(Lcom/squareup/okhttp/I;)I

    move-result v0

    iput v0, p0, Lcom/squareup/okhttp/J;->c:I

    .line 241
    invoke-static {p1}, Lcom/squareup/okhttp/I;->d(Lcom/squareup/okhttp/I;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/J;->d:Ljava/lang/String;

    .line 242
    invoke-static {p1}, Lcom/squareup/okhttp/I;->e(Lcom/squareup/okhttp/I;)Lcom/squareup/okhttp/t;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/J;->e:Lcom/squareup/okhttp/t;

    .line 243
    invoke-static {p1}, Lcom/squareup/okhttp/I;->f(Lcom/squareup/okhttp/I;)Lcom/squareup/okhttp/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/u;->b()Lcom/squareup/okhttp/v;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/J;->f:Lcom/squareup/okhttp/v;

    .line 244
    invoke-static {p1}, Lcom/squareup/okhttp/I;->g(Lcom/squareup/okhttp/I;)Lcom/squareup/okhttp/K;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/J;->g:Lcom/squareup/okhttp/K;

    .line 245
    invoke-static {p1}, Lcom/squareup/okhttp/I;->h(Lcom/squareup/okhttp/I;)Lcom/squareup/okhttp/I;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/J;->h:Lcom/squareup/okhttp/I;

    .line 246
    invoke-static {p1}, Lcom/squareup/okhttp/I;->i(Lcom/squareup/okhttp/I;)Lcom/squareup/okhttp/I;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/J;->i:Lcom/squareup/okhttp/I;

    .line 247
    invoke-static {p1}, Lcom/squareup/okhttp/I;->j(Lcom/squareup/okhttp/I;)Lcom/squareup/okhttp/I;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/J;->j:Lcom/squareup/okhttp/I;

    .line 248
    return-void
.end method

.method synthetic constructor <init>(Lcom/squareup/okhttp/I;B)V
    .locals 0

    .prologue
    .line 221
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/J;-><init>(Lcom/squareup/okhttp/I;)V

    return-void
.end method

.method static synthetic a(Lcom/squareup/okhttp/J;)Lcom/squareup/okhttp/C;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/squareup/okhttp/J;->a:Lcom/squareup/okhttp/C;

    return-object v0
.end method

.method private static a(Ljava/lang/String;Lcom/squareup/okhttp/I;)V
    .locals 3

    .prologue
    .line 322
    invoke-static {p1}, Lcom/squareup/okhttp/I;->g(Lcom/squareup/okhttp/I;)Lcom/squareup/okhttp/K;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 323
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".body != null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 324
    :cond_0
    invoke-static {p1}, Lcom/squareup/okhttp/I;->h(Lcom/squareup/okhttp/I;)Lcom/squareup/okhttp/I;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 325
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".networkResponse != null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 326
    :cond_1
    invoke-static {p1}, Lcom/squareup/okhttp/I;->i(Lcom/squareup/okhttp/I;)Lcom/squareup/okhttp/I;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 327
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".cacheResponse != null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 328
    :cond_2
    invoke-static {p1}, Lcom/squareup/okhttp/I;->j(Lcom/squareup/okhttp/I;)Lcom/squareup/okhttp/I;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 329
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".priorResponse != null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 331
    :cond_3
    return-void
.end method

.method static synthetic b(Lcom/squareup/okhttp/J;)Lcom/squareup/okhttp/Protocol;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/squareup/okhttp/J;->b:Lcom/squareup/okhttp/Protocol;

    return-object v0
.end method

.method static synthetic c(Lcom/squareup/okhttp/J;)I
    .locals 1

    .prologue
    .line 221
    iget v0, p0, Lcom/squareup/okhttp/J;->c:I

    return v0
.end method

.method static synthetic d(Lcom/squareup/okhttp/J;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/squareup/okhttp/J;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/squareup/okhttp/J;)Lcom/squareup/okhttp/t;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/squareup/okhttp/J;->e:Lcom/squareup/okhttp/t;

    return-object v0
.end method

.method static synthetic f(Lcom/squareup/okhttp/J;)Lcom/squareup/okhttp/v;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/squareup/okhttp/J;->f:Lcom/squareup/okhttp/v;

    return-object v0
.end method

.method static synthetic g(Lcom/squareup/okhttp/J;)Lcom/squareup/okhttp/K;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/squareup/okhttp/J;->g:Lcom/squareup/okhttp/K;

    return-object v0
.end method

.method static synthetic h(Lcom/squareup/okhttp/J;)Lcom/squareup/okhttp/I;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/squareup/okhttp/J;->h:Lcom/squareup/okhttp/I;

    return-object v0
.end method

.method static synthetic i(Lcom/squareup/okhttp/J;)Lcom/squareup/okhttp/I;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/squareup/okhttp/J;->i:Lcom/squareup/okhttp/I;

    return-object v0
.end method

.method static synthetic j(Lcom/squareup/okhttp/J;)Lcom/squareup/okhttp/I;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/squareup/okhttp/J;->j:Lcom/squareup/okhttp/I;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/squareup/okhttp/I;
    .locals 3

    .prologue
    .line 346
    iget-object v0, p0, Lcom/squareup/okhttp/J;->a:Lcom/squareup/okhttp/C;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "request == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 347
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/J;->b:Lcom/squareup/okhttp/Protocol;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "protocol == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 348
    :cond_1
    iget v0, p0, Lcom/squareup/okhttp/J;->c:I

    if-gez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "code < 0: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/squareup/okhttp/J;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 349
    :cond_2
    new-instance v0, Lcom/squareup/okhttp/I;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/squareup/okhttp/I;-><init>(Lcom/squareup/okhttp/J;B)V

    return-object v0
.end method

.method public final a(I)Lcom/squareup/okhttp/J;
    .locals 0

    .prologue
    .line 261
    iput p1, p0, Lcom/squareup/okhttp/J;->c:I

    .line 262
    return-object p0
.end method

.method public final a(Lcom/squareup/okhttp/C;)Lcom/squareup/okhttp/J;
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lcom/squareup/okhttp/J;->a:Lcom/squareup/okhttp/C;

    .line 252
    return-object p0
.end method

.method public final a(Lcom/squareup/okhttp/I;)Lcom/squareup/okhttp/J;
    .locals 1

    .prologue
    .line 310
    if-eqz p1, :cond_0

    const-string v0, "networkResponse"

    invoke-static {v0, p1}, Lcom/squareup/okhttp/J;->a(Ljava/lang/String;Lcom/squareup/okhttp/I;)V

    .line 311
    :cond_0
    iput-object p1, p0, Lcom/squareup/okhttp/J;->h:Lcom/squareup/okhttp/I;

    .line 312
    return-object p0
.end method

.method public final a(Lcom/squareup/okhttp/K;)Lcom/squareup/okhttp/J;
    .locals 0

    .prologue
    .line 305
    iput-object p1, p0, Lcom/squareup/okhttp/J;->g:Lcom/squareup/okhttp/K;

    .line 306
    return-object p0
.end method

.method public final a(Lcom/squareup/okhttp/Protocol;)Lcom/squareup/okhttp/J;
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, Lcom/squareup/okhttp/J;->b:Lcom/squareup/okhttp/Protocol;

    .line 257
    return-object p0
.end method

.method public final a(Lcom/squareup/okhttp/t;)Lcom/squareup/okhttp/J;
    .locals 0

    .prologue
    .line 271
    iput-object p1, p0, Lcom/squareup/okhttp/J;->e:Lcom/squareup/okhttp/t;

    .line 272
    return-object p0
.end method

.method public final a(Lcom/squareup/okhttp/u;)Lcom/squareup/okhttp/J;
    .locals 1

    .prologue
    .line 300
    invoke-virtual {p1}, Lcom/squareup/okhttp/u;->b()Lcom/squareup/okhttp/v;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/J;->f:Lcom/squareup/okhttp/v;

    .line 301
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/squareup/okhttp/J;
    .locals 0

    .prologue
    .line 266
    iput-object p1, p0, Lcom/squareup/okhttp/J;->d:Ljava/lang/String;

    .line 267
    return-object p0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/J;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/squareup/okhttp/J;->f:Lcom/squareup/okhttp/v;

    invoke-virtual {v0, p1, p2}, Lcom/squareup/okhttp/v;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/v;

    .line 281
    return-object p0
.end method

.method public final b(Lcom/squareup/okhttp/I;)Lcom/squareup/okhttp/J;
    .locals 1

    .prologue
    .line 316
    if-eqz p1, :cond_0

    const-string v0, "cacheResponse"

    invoke-static {v0, p1}, Lcom/squareup/okhttp/J;->a(Ljava/lang/String;Lcom/squareup/okhttp/I;)V

    .line 317
    :cond_0
    iput-object p1, p0, Lcom/squareup/okhttp/J;->i:Lcom/squareup/okhttp/I;

    .line 318
    return-object p0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/J;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/squareup/okhttp/J;->f:Lcom/squareup/okhttp/v;

    invoke-virtual {v0, p1, p2}, Lcom/squareup/okhttp/v;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/v;

    .line 290
    return-object p0
.end method

.method public final c(Lcom/squareup/okhttp/I;)Lcom/squareup/okhttp/J;
    .locals 2

    .prologue
    .line 334
    if-eqz p1, :cond_0

    .line 1340
    invoke-static {p1}, Lcom/squareup/okhttp/I;->g(Lcom/squareup/okhttp/I;)Lcom/squareup/okhttp/K;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1341
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "priorResponse.body != null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 335
    :cond_0
    iput-object p1, p0, Lcom/squareup/okhttp/J;->j:Lcom/squareup/okhttp/I;

    .line 336
    return-object p0
.end method
