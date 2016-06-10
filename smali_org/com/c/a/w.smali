.class public final Lcom/c/a/w;
.super Lcom/c/a/a;
.source "SourceFile"


# static fields
.field private static d:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/c/a/C;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/c/a/w;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final f:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/c/a/w;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final g:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/c/a/w;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final h:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/c/a/w;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final i:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/c/a/w;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final j:Landroid/view/animation/Interpolator;

.field private static v:J


# instance fields
.field private A:[Lcom/c/a/s;

.field private B:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/c/a/s;",
            ">;"
        }
    .end annotation
.end field

.field private b:J

.field private c:J

.field private k:Z

.field private l:I

.field private m:F

.field private n:Z

.field private o:J

.field private p:I

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:J

.field private u:J

.field private w:I

.field private x:I

.field private y:Landroid/view/animation/Interpolator;

.field private z:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/c/a/D;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 94
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/c/a/w;->d:Ljava/lang/ThreadLocal;

    .line 98
    new-instance v0, Lcom/c/a/x;

    invoke-direct {v0}, Lcom/c/a/x;-><init>()V

    sput-object v0, Lcom/c/a/w;->e:Ljava/lang/ThreadLocal;

    .line 107
    new-instance v0, Lcom/c/a/y;

    invoke-direct {v0}, Lcom/c/a/y;-><init>()V

    sput-object v0, Lcom/c/a/w;->f:Ljava/lang/ThreadLocal;

    .line 119
    new-instance v0, Lcom/c/a/z;

    invoke-direct {v0}, Lcom/c/a/z;-><init>()V

    sput-object v0, Lcom/c/a/w;->g:Ljava/lang/ThreadLocal;

    .line 127
    new-instance v0, Lcom/c/a/A;

    invoke-direct {v0}, Lcom/c/a/A;-><init>()V

    sput-object v0, Lcom/c/a/w;->h:Ljava/lang/ThreadLocal;

    .line 135
    new-instance v0, Lcom/c/a/B;

    invoke-direct {v0}, Lcom/c/a/B;-><init>()V

    sput-object v0, Lcom/c/a/w;->i:Ljava/lang/ThreadLocal;

    .line 144
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/c/a/w;->j:Landroid/view/animation/Interpolator;

    .line 148
    new-instance v0, Lcom/c/a/m;

    invoke-direct {v0}, Lcom/c/a/m;-><init>()V

    .line 149
    new-instance v0, Lcom/c/a/k;

    invoke-direct {v0}, Lcom/c/a/k;-><init>()V

    .line 222
    const-wide/16 v0, 0xa

    sput-wide v0, Lcom/c/a/w;->v:J

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 283
    invoke-direct {p0}, Lcom/c/a/a;-><init>()V

    .line 85
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/c/a/w;->c:J

    .line 155
    iput-boolean v2, p0, Lcom/c/a/w;->k:Z

    .line 161
    iput v2, p0, Lcom/c/a/w;->l:I

    .line 166
    const/4 v0, 0x0

    iput v0, p0, Lcom/c/a/w;->m:F

    .line 171
    iput-boolean v2, p0, Lcom/c/a/w;->n:Z

    .line 187
    iput v2, p0, Lcom/c/a/w;->p:I

    .line 197
    iput-boolean v2, p0, Lcom/c/a/w;->q:Z

    .line 203
    iput-boolean v2, p0, Lcom/c/a/w;->r:Z

    .line 209
    iput-boolean v2, p0, Lcom/c/a/w;->s:Z

    .line 216
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/c/a/w;->t:J

    .line 219
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/c/a/w;->u:J

    .line 226
    iput v2, p0, Lcom/c/a/w;->w:I

    .line 233
    const/4 v0, 0x1

    iput v0, p0, Lcom/c/a/w;->x:I

    .line 240
    sget-object v0, Lcom/c/a/w;->j:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lcom/c/a/w;->y:Landroid/view/animation/Interpolator;

    .line 245
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/c/a/w;->z:Ljava/util/ArrayList;

    .line 284
    return-void
.end method

.method static synthetic a(Lcom/c/a/w;)J
    .locals 2

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/c/a/w;->u:J

    return-wide v0
.end method

.method public static varargs a([F)Lcom/c/a/w;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 315
    new-instance v0, Lcom/c/a/w;

    invoke-direct {v0}, Lcom/c/a/w;-><init>()V

    .line 1401
    if-eqz p0, :cond_0

    array-length v1, p0

    if-nez v1, :cond_1

    .line 317
    :cond_0
    :goto_0
    return-object v0

    .line 1404
    :cond_1
    iget-object v1, v0, Lcom/c/a/w;->A:[Lcom/c/a/s;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/c/a/w;->A:[Lcom/c/a/s;

    array-length v1, v1

    if-nez v1, :cond_3

    .line 1405
    :cond_2
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/c/a/s;

    const-string v2, ""

    invoke-static {v2, p0}, Lcom/c/a/s;->a(Ljava/lang/String;[F)Lcom/c/a/s;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lcom/c/a/w;->a([Lcom/c/a/s;)V

    .line 1411
    :goto_1
    iput-boolean v3, v0, Lcom/c/a/w;->s:Z

    goto :goto_0

    .line 1407
    :cond_3
    iget-object v1, v0, Lcom/c/a/w;->A:[Lcom/c/a/s;

    aget-object v1, v1, v3

    .line 1408
    invoke-virtual {v1, p0}, Lcom/c/a/s;->a([F)V

    goto :goto_1
.end method

.method public static varargs a([I)Lcom/c/a/w;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 298
    new-instance v0, Lcom/c/a/w;

    invoke-direct {v0}, Lcom/c/a/w;-><init>()V

    .line 1373
    if-eqz p0, :cond_0

    array-length v1, p0

    if-nez v1, :cond_1

    .line 300
    :cond_0
    :goto_0
    return-object v0

    .line 1376
    :cond_1
    iget-object v1, v0, Lcom/c/a/w;->A:[Lcom/c/a/s;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/c/a/w;->A:[Lcom/c/a/s;

    array-length v1, v1

    if-nez v1, :cond_3

    .line 1377
    :cond_2
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/c/a/s;

    const-string v2, ""

    invoke-static {v2, p0}, Lcom/c/a/s;->a(Ljava/lang/String;[I)Lcom/c/a/s;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lcom/c/a/w;->a([Lcom/c/a/s;)V

    .line 1383
    :goto_1
    iput-boolean v3, v0, Lcom/c/a/w;->s:Z

    goto :goto_0

    .line 1379
    :cond_3
    iget-object v1, v0, Lcom/c/a/w;->A:[Lcom/c/a/s;

    aget-object v1, v1, v3

    .line 1380
    invoke-virtual {v1, p0}, Lcom/c/a/s;->a([I)V

    goto :goto_1
.end method

.method private a(F)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1169
    iget-object v1, p0, Lcom/c/a/w;->y:Landroid/view/animation/Interpolator;

    invoke-interface {v1, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    .line 1170
    iput v2, p0, Lcom/c/a/w;->m:F

    .line 1171
    iget-object v1, p0, Lcom/c/a/w;->A:[Lcom/c/a/s;

    array-length v3, v1

    move v1, v0

    .line 1172
    :goto_0
    if-ge v1, v3, :cond_0

    .line 1173
    iget-object v4, p0, Lcom/c/a/w;->A:[Lcom/c/a/s;

    aget-object v4, v4, v1

    invoke-virtual {v4, v2}, Lcom/c/a/s;->a(F)V

    .line 1172
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1175
    :cond_0
    iget-object v1, p0, Lcom/c/a/w;->z:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 1176
    iget-object v1, p0, Lcom/c/a/w;->z:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v1, v0

    .line 1177
    :goto_1
    if-ge v1, v2, :cond_1

    .line 1178
    iget-object v0, p0, Lcom/c/a/w;->z:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/a/D;

    invoke-interface {v0, p0}, Lcom/c/a/D;->a(Lcom/c/a/w;)V

    .line 1177
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 1181
    :cond_1
    return-void
.end method

.method private varargs a([Lcom/c/a/s;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 457
    iput-object p1, p0, Lcom/c/a/w;->A:[Lcom/c/a/s;

    .line 458
    new-instance v0, Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/c/a/w;->B:Ljava/util/HashMap;

    move v0, v1

    .line 459
    :goto_0
    if-gtz v0, :cond_0

    .line 460
    aget-object v2, p1, v1

    .line 461
    iget-object v3, p0, Lcom/c/a/w;->B:Ljava/util/HashMap;

    .line 1713
    iget-object v4, v2, Lcom/c/a/s;->a:Ljava/lang/String;

    .line 461
    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 464
    :cond_0
    iput-boolean v1, p0, Lcom/c/a/w;->s:Z

    .line 465
    return-void
.end method

.method static synthetic a(Lcom/c/a/w;J)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    .line 43
    .line 3071
    iget-boolean v1, p0, Lcom/c/a/w;->n:Z

    if-nez v1, :cond_1

    .line 3072
    iput-boolean v0, p0, Lcom/c/a/w;->n:Z

    .line 3073
    iput-wide p1, p0, Lcom/c/a/w;->o:J

    .line 3084
    :cond_0
    const/4 v0, 0x0

    .line 3081
    :goto_0
    return v0

    .line 3075
    :cond_1
    iget-wide v2, p0, Lcom/c/a/w;->o:J

    sub-long v2, p1, v2

    .line 3076
    iget-wide v4, p0, Lcom/c/a/w;->u:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 3079
    iget-wide v4, p0, Lcom/c/a/w;->u:J

    sub-long/2addr v2, v4

    sub-long v2, p1, v2

    iput-wide v2, p0, Lcom/c/a/w;->b:J

    .line 3080
    iput v0, p0, Lcom/c/a/w;->p:I

    goto :goto_0
.end method

.method static synthetic a(Lcom/c/a/w;Z)Z
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/c/a/w;->q:Z

    return v0
.end method

.method static synthetic b(Lcom/c/a/w;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/c/a/w;->p()V

    return-void
.end method

.method static synthetic c(Lcom/c/a/w;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/c/a/w;->o()V

    return-void
.end method

.method private d(J)V
    .locals 5

    .prologue
    .line 538
    invoke-direct {p0}, Lcom/c/a/w;->n()V

    .line 539
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 540
    iget v2, p0, Lcom/c/a/w;->p:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 541
    iput-wide p1, p0, Lcom/c/a/w;->c:J

    .line 542
    const/4 v2, 0x2

    iput v2, p0, Lcom/c/a/w;->p:I

    .line 544
    :cond_0
    sub-long v2, v0, p1

    iput-wide v2, p0, Lcom/c/a/w;->b:J

    .line 545
    invoke-virtual {p0, v0, v1}, Lcom/c/a/w;->c(J)Z

    .line 546
    return-void
.end method

.method static synthetic h()Ljava/lang/ThreadLocal;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/c/a/w;->e:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic i()Ljava/lang/ThreadLocal;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/c/a/w;->g:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic j()Ljava/lang/ThreadLocal;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/c/a/w;->f:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic k()Ljava/lang/ThreadLocal;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/c/a/w;->i:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic l()Ljava/lang/ThreadLocal;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/c/a/w;->h:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic m()J
    .locals 2

    .prologue
    .line 43
    sget-wide v0, Lcom/c/a/w;->v:J

    return-wide v0
.end method

.method private n()V
    .locals 3

    .prologue
    .line 490
    iget-boolean v0, p0, Lcom/c/a/w;->s:Z

    if-nez v0, :cond_1

    .line 491
    iget-object v0, p0, Lcom/c/a/w;->A:[Lcom/c/a/s;

    array-length v1, v0

    .line 492
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 493
    iget-object v2, p0, Lcom/c/a/w;->A:[Lcom/c/a/s;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/c/a/s;->b()V

    .line 492
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 495
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/c/a/w;->s:Z

    .line 497
    :cond_1
    return-void
.end method

.method private o()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 1025
    sget-object v0, Lcom/c/a/w;->e:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1026
    sget-object v0, Lcom/c/a/w;->f:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1027
    sget-object v0, Lcom/c/a/w;->g:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1028
    iput v3, p0, Lcom/c/a/w;->p:I

    .line 1029
    iget-boolean v0, p0, Lcom/c/a/w;->q:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/c/a/w;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 1030
    iget-object v0, p0, Lcom/c/a/w;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1032
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v3

    .line 1033
    :goto_0
    if-ge v2, v4, :cond_0

    .line 1034
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/c/a/b;

    invoke-interface {v1, p0}, Lcom/c/a/b;->b(Lcom/c/a/a;)V

    .line 1033
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 1037
    :cond_0
    iput-boolean v3, p0, Lcom/c/a/w;->q:Z

    .line 1038
    iput-boolean v3, p0, Lcom/c/a/w;->r:Z

    .line 1039
    return-void
.end method

.method private p()V
    .locals 4

    .prologue
    .line 1046
    invoke-direct {p0}, Lcom/c/a/w;->n()V

    .line 1047
    sget-object v0, Lcom/c/a/w;->e:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1048
    iget-wide v0, p0, Lcom/c/a/w;->u:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/c/a/w;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 1051
    iget-object v0, p0, Lcom/c/a/w;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1053
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1054
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_0

    .line 1055
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/c/a/b;

    invoke-interface {v1, p0}, Lcom/c/a/b;->a(Lcom/c/a/a;)V

    .line 1054
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 1058
    :cond_0
    return-void
.end method

.method private q()Lcom/c/a/w;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 1185
    invoke-super {p0}, Lcom/c/a/a;->e()Lcom/c/a/a;

    move-result-object v0

    check-cast v0, Lcom/c/a/w;

    .line 1186
    iget-object v2, p0, Lcom/c/a/w;->z:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 1187
    iget-object v3, p0, Lcom/c/a/w;->z:Ljava/util/ArrayList;

    .line 1188
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/c/a/w;->z:Ljava/util/ArrayList;

    .line 1189
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v1

    .line 1190
    :goto_0
    if-ge v2, v4, :cond_0

    .line 1191
    iget-object v5, v0, Lcom/c/a/w;->z:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1190
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1194
    :cond_0
    const-wide/16 v2, -0x1

    iput-wide v2, v0, Lcom/c/a/w;->c:J

    .line 1195
    iput-boolean v1, v0, Lcom/c/a/w;->k:Z

    .line 1196
    iput v1, v0, Lcom/c/a/w;->l:I

    .line 1197
    iput-boolean v1, v0, Lcom/c/a/w;->s:Z

    .line 1198
    iput v1, v0, Lcom/c/a/w;->p:I

    .line 1199
    iput-boolean v1, v0, Lcom/c/a/w;->n:Z

    .line 1200
    iget-object v2, p0, Lcom/c/a/w;->A:[Lcom/c/a/s;

    .line 1201
    if-eqz v2, :cond_1

    .line 1202
    array-length v3, v2

    .line 1203
    new-array v4, v3, [Lcom/c/a/s;

    iput-object v4, v0, Lcom/c/a/w;->A:[Lcom/c/a/s;

    .line 1204
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v4, v0, Lcom/c/a/w;->B:Ljava/util/HashMap;

    .line 1205
    :goto_1
    if-ge v1, v3, :cond_1

    .line 1206
    aget-object v4, v2, v1

    invoke-virtual {v4}, Lcom/c/a/s;->a()Lcom/c/a/s;

    move-result-object v4

    .line 1207
    iget-object v5, v0, Lcom/c/a/w;->A:[Lcom/c/a/s;

    aput-object v4, v5, v1

    .line 1208
    iget-object v5, v0, Lcom/c/a/w;->B:Ljava/util/HashMap;

    .line 2713
    iget-object v6, v4, Lcom/c/a/s;->a:Ljava/lang/String;

    .line 1208
    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1205
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1211
    :cond_1
    return-object v0
.end method


# virtual methods
.method public final a(J)Lcom/c/a/w;
    .locals 3

    .prologue
    .line 510
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 511
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Animators cannot have negative duration: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 514
    :cond_0
    iput-wide p1, p0, Lcom/c/a/w;->t:J

    .line 515
    return-object p0
.end method

.method public final a()V
    .locals 6

    .prologue
    const-wide/16 v2, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 951
    .line 1917
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1918
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Animators may only be run on Looper threads"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1920
    :cond_0
    iput-boolean v4, p0, Lcom/c/a/w;->k:Z

    .line 1921
    iput v4, p0, Lcom/c/a/w;->l:I

    .line 1922
    iput v4, p0, Lcom/c/a/w;->p:I

    .line 1923
    iput-boolean v5, p0, Lcom/c/a/w;->r:Z

    .line 1924
    iput-boolean v4, p0, Lcom/c/a/w;->n:Z

    .line 1925
    sget-object v0, Lcom/c/a/w;->f:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1926
    iget-wide v0, p0, Lcom/c/a/w;->u:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 2556
    iget-boolean v0, p0, Lcom/c/a/w;->s:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/c/a/w;->p:I

    if-nez v0, :cond_2

    :cond_1
    move-wide v0, v2

    .line 1928
    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/c/a/w;->d(J)V

    .line 1929
    iput v4, p0, Lcom/c/a/w;->p:I

    .line 1930
    iput-boolean v5, p0, Lcom/c/a/w;->q:Z

    .line 1932
    iget-object v0, p0, Lcom/c/a/w;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 1933
    iget-object v0, p0, Lcom/c/a/w;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1935
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v4

    .line 1936
    :goto_1
    if-ge v2, v3, :cond_3

    .line 1937
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/c/a/b;

    invoke-interface {v1, p0}, Lcom/c/a/b;->a(Lcom/c/a/a;)V

    .line 1936
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 2559
    :cond_2
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/c/a/w;->b:J

    sub-long/2addr v0, v2

    goto :goto_0

    .line 1941
    :cond_3
    sget-object v0, Lcom/c/a/w;->d:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/a/C;

    .line 1942
    if-nez v0, :cond_4

    .line 1943
    new-instance v0, Lcom/c/a/C;

    invoke-direct {v0, v4}, Lcom/c/a/C;-><init>(B)V

    .line 1944
    sget-object v1, Lcom/c/a/w;->d:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 1946
    :cond_4
    invoke-virtual {v0, v4}, Lcom/c/a/C;->sendEmptyMessage(I)Z

    .line 952
    return-void
.end method

.method public final a(Landroid/view/animation/Interpolator;)V
    .locals 1

    .prologue
    .line 865
    if-eqz p1, :cond_0

    .line 866
    iput-object p1, p0, Lcom/c/a/w;->y:Landroid/view/animation/Interpolator;

    .line 870
    :goto_0
    return-void

    .line 868
    :cond_0
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/c/a/w;->y:Landroid/view/animation/Interpolator;

    goto :goto_0
.end method

.method public final a(Lcom/c/a/D;)V
    .locals 1

    .prologue
    .line 820
    iget-object v0, p0, Lcom/c/a/w;->z:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 821
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/c/a/w;->z:Ljava/util/ArrayList;

    .line 823
    :cond_0
    iget-object v0, p0, Lcom/c/a/w;->z:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 824
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 958
    iget v0, p0, Lcom/c/a/w;->p:I

    if-nez v0, :cond_0

    sget-object v0, Lcom/c/a/w;->f:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/c/a/w;->g:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 961
    :cond_0
    iget-boolean v0, p0, Lcom/c/a/w;->q:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/c/a/w;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 962
    iget-object v0, p0, Lcom/c/a/w;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 964
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/a/b;

    .line 965
    invoke-interface {v0, p0}, Lcom/c/a/b;->c(Lcom/c/a/a;)V

    goto :goto_0

    .line 968
    :cond_1
    invoke-direct {p0}, Lcom/c/a/w;->o()V

    .line 970
    :cond_2
    return-void
.end method

.method public final b(J)V
    .locals 1

    .prologue
    .line 702
    iput-wide p1, p0, Lcom/c/a/w;->u:J

    .line 703
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 974
    sget-object v0, Lcom/c/a/w;->e:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/c/a/w;->f:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 976
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/c/a/w;->n:Z

    .line 977
    invoke-direct {p0}, Lcom/c/a/w;->p()V

    .line 986
    :cond_0
    :goto_0
    const/high16 v0, 0x3f800000

    invoke-direct {p0, v0}, Lcom/c/a/w;->a(F)V

    .line 988
    invoke-direct {p0}, Lcom/c/a/w;->o()V

    .line 989
    return-void

    .line 978
    :cond_1
    iget-boolean v0, p0, Lcom/c/a/w;->s:Z

    if-nez v0, :cond_0

    .line 979
    invoke-direct {p0}, Lcom/c/a/w;->n()V

    goto :goto_0
.end method

.method final c(J)Z
    .locals 11

    .prologue
    const-wide/16 v8, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/high16 v5, 0x3f800000

    .line 1100
    .line 1102
    iget v0, p0, Lcom/c/a/w;->p:I

    if-nez v0, :cond_0

    .line 1103
    iput v2, p0, Lcom/c/a/w;->p:I

    .line 1104
    iget-wide v6, p0, Lcom/c/a/w;->c:J

    cmp-long v0, v6, v8

    if-gez v0, :cond_1

    .line 1105
    iput-wide p1, p0, Lcom/c/a/w;->b:J

    .line 1112
    :cond_0
    :goto_0
    iget v0, p0, Lcom/c/a/w;->p:I

    packed-switch v0, :pswitch_data_0

    .line 1143
    :goto_1
    return v1

    .line 1107
    :cond_1
    iget-wide v6, p0, Lcom/c/a/w;->c:J

    sub-long v6, p1, v6

    iput-wide v6, p0, Lcom/c/a/w;->b:J

    .line 1109
    const-wide/16 v6, -0x1

    iput-wide v6, p0, Lcom/c/a/w;->c:J

    goto :goto_0

    .line 1115
    :pswitch_0
    iget-wide v6, p0, Lcom/c/a/w;->t:J

    cmp-long v0, v6, v8

    if-lez v0, :cond_3

    iget-wide v6, p0, Lcom/c/a/w;->b:J

    sub-long v6, p1, v6

    long-to-float v0, v6

    iget-wide v6, p0, Lcom/c/a/w;->t:J

    long-to-float v3, v6

    div-float v3, v0, v3

    .line 1116
    :goto_2
    cmpl-float v0, v3, v5

    if-ltz v0, :cond_8

    .line 1117
    iget v0, p0, Lcom/c/a/w;->l:I

    if-ltz v0, :cond_4

    .line 1133
    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v0

    move v1, v2

    .line 1136
    :goto_3
    iget-boolean v2, p0, Lcom/c/a/w;->k:Z

    if-eqz v2, :cond_2

    .line 1137
    sub-float v0, v5, v0

    .line 1139
    :cond_2
    invoke-direct {p0, v0}, Lcom/c/a/w;->a(F)V

    goto :goto_1

    :cond_3
    move v3, v5

    .line 1115
    goto :goto_2

    .line 1119
    :cond_4
    iget-object v0, p0, Lcom/c/a/w;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 1120
    iget-object v0, p0, Lcom/c/a/w;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v4, v1

    .line 1121
    :goto_4
    if-ge v4, v6, :cond_5

    .line 1122
    iget-object v0, p0, Lcom/c/a/w;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/a/b;

    invoke-interface {v0, p0}, Lcom/c/a/b;->d(Lcom/c/a/a;)V

    .line 1121
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_4

    .line 1125
    :cond_5
    iget v0, p0, Lcom/c/a/w;->x:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_6

    .line 1126
    iget-boolean v0, p0, Lcom/c/a/w;->k:Z

    if-eqz v0, :cond_7

    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lcom/c/a/w;->k:Z

    .line 1128
    :cond_6
    iget v0, p0, Lcom/c/a/w;->l:I

    float-to-int v2, v3

    add-int/2addr v0, v2

    iput v0, p0, Lcom/c/a/w;->l:I

    .line 1129
    rem-float v0, v3, v5

    .line 1130
    iget-wide v2, p0, Lcom/c/a/w;->b:J

    iget-wide v6, p0, Lcom/c/a/w;->t:J

    add-long/2addr v2, v6

    iput-wide v2, p0, Lcom/c/a/w;->b:J

    goto :goto_3

    :cond_7
    move v0, v2

    .line 1126
    goto :goto_5

    :cond_8
    move v0, v3

    goto :goto_3

    .line 1112
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/c/a/w;->q()Lcom/c/a/w;

    move-result-object v0

    return-object v0
.end method

.method public final d()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 993
    iget v1, p0, Lcom/c/a/w;->p:I

    if-eq v1, v0, :cond_0

    iget-boolean v1, p0, Lcom/c/a/w;->q:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final synthetic e()Lcom/c/a/a;
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/c/a/w;->q()Lcom/c/a/w;

    move-result-object v0

    return-object v0
.end method

.method public final f()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 744
    iget-object v0, p0, Lcom/c/a/w;->A:[Lcom/c/a/s;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/c/a/w;->A:[Lcom/c/a/s;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 745
    iget-object v0, p0, Lcom/c/a/w;->A:[Lcom/c/a/s;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/c/a/s;->c()Ljava/lang/Object;

    move-result-object v0

    .line 748
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g()F
    .locals 1

    .prologue
    .line 1153
    iget v0, p0, Lcom/c/a/w;->m:F

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1256
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ValueAnimator@"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1257
    iget-object v0, p0, Lcom/c/a/w;->A:[Lcom/c/a/s;

    if-eqz v0, :cond_0

    .line 1258
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/c/a/w;->A:[Lcom/c/a/s;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 1259
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/c/a/w;->A:[Lcom/c/a/s;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/c/a/s;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1258
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1262
    :cond_0
    return-object v1
.end method
