.class public final Lcom/nostra13/universalimageloader/core/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;


# instance fields
.field private b:Landroid/content/Context;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:Landroid/support/design/widget/K;

.field private h:Ljava/util/concurrent/Executor;

.field private i:Ljava/util/concurrent/Executor;

.field private j:Z

.field private k:Z

.field private l:I

.field private m:I

.field private n:Z

.field private o:Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

.field private p:I

.field private q:J

.field private r:I

.field private s:Lcom/nostra13/universalimageloader/a/b/a;

.field private t:Lcom/nostra13/universalimageloader/a/a/a;

.field private u:Lcom/nostra13/universalimageloader/a/a/b/a;

.field private v:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

.field private w:Lcom/nostra13/universalimageloader/core/a/d;

.field private x:Lcom/nostra13/universalimageloader/core/d;

.field private y:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 162
    sget-object v0, Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;->FIFO:Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

    sput-object v0, Lcom/nostra13/universalimageloader/core/i;->a:Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    iput v2, p0, Lcom/nostra13/universalimageloader/core/i;->c:I

    .line 167
    iput v2, p0, Lcom/nostra13/universalimageloader/core/i;->d:I

    .line 168
    iput v2, p0, Lcom/nostra13/universalimageloader/core/i;->e:I

    .line 169
    iput v2, p0, Lcom/nostra13/universalimageloader/core/i;->f:I

    .line 170
    iput-object v3, p0, Lcom/nostra13/universalimageloader/core/i;->g:Landroid/support/design/widget/K;

    .line 172
    iput-object v3, p0, Lcom/nostra13/universalimageloader/core/i;->h:Ljava/util/concurrent/Executor;

    .line 173
    iput-object v3, p0, Lcom/nostra13/universalimageloader/core/i;->i:Ljava/util/concurrent/Executor;

    .line 174
    iput-boolean v2, p0, Lcom/nostra13/universalimageloader/core/i;->j:Z

    .line 175
    iput-boolean v2, p0, Lcom/nostra13/universalimageloader/core/i;->k:Z

    .line 177
    const/4 v0, 0x3

    iput v0, p0, Lcom/nostra13/universalimageloader/core/i;->l:I

    .line 178
    const/4 v0, 0x4

    iput v0, p0, Lcom/nostra13/universalimageloader/core/i;->m:I

    .line 179
    iput-boolean v2, p0, Lcom/nostra13/universalimageloader/core/i;->n:Z

    .line 180
    sget-object v0, Lcom/nostra13/universalimageloader/core/i;->a:Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/i;->o:Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

    .line 182
    iput v2, p0, Lcom/nostra13/universalimageloader/core/i;->p:I

    .line 183
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nostra13/universalimageloader/core/i;->q:J

    .line 184
    iput v2, p0, Lcom/nostra13/universalimageloader/core/i;->r:I

    .line 186
    iput-object v3, p0, Lcom/nostra13/universalimageloader/core/i;->s:Lcom/nostra13/universalimageloader/a/b/a;

    .line 187
    iput-object v3, p0, Lcom/nostra13/universalimageloader/core/i;->t:Lcom/nostra13/universalimageloader/a/a/a;

    .line 188
    iput-object v3, p0, Lcom/nostra13/universalimageloader/core/i;->u:Lcom/nostra13/universalimageloader/a/a/b/a;

    .line 189
    iput-object v3, p0, Lcom/nostra13/universalimageloader/core/i;->v:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    .line 191
    iput-object v3, p0, Lcom/nostra13/universalimageloader/core/i;->x:Lcom/nostra13/universalimageloader/core/d;

    .line 193
    iput-boolean v2, p0, Lcom/nostra13/universalimageloader/core/i;->y:Z

    .line 196
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/i;->b:Landroid/content/Context;

    .line 197
    return-void
.end method

.method static synthetic a(Lcom/nostra13/universalimageloader/core/i;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/i;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/nostra13/universalimageloader/core/i;)I
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic c(Lcom/nostra13/universalimageloader/core/i;)I
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic d(Lcom/nostra13/universalimageloader/core/i;)I
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic e(Lcom/nostra13/universalimageloader/core/i;)I
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic f(Lcom/nostra13/universalimageloader/core/i;)Landroid/support/design/widget/K;
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic g(Lcom/nostra13/universalimageloader/core/i;)Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/i;->h:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static synthetic h(Lcom/nostra13/universalimageloader/core/i;)Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/i;->i:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static synthetic i(Lcom/nostra13/universalimageloader/core/i;)I
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lcom/nostra13/universalimageloader/core/i;->l:I

    return v0
.end method

.method static synthetic j(Lcom/nostra13/universalimageloader/core/i;)I
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lcom/nostra13/universalimageloader/core/i;->m:I

    return v0
.end method

.method static synthetic k(Lcom/nostra13/universalimageloader/core/i;)Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/i;->o:Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

    return-object v0
.end method

.method static synthetic l(Lcom/nostra13/universalimageloader/core/i;)Lcom/nostra13/universalimageloader/a/a/a;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/i;->t:Lcom/nostra13/universalimageloader/a/a/a;

    return-object v0
.end method

.method static synthetic m(Lcom/nostra13/universalimageloader/core/i;)Lcom/nostra13/universalimageloader/a/b/a;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/i;->s:Lcom/nostra13/universalimageloader/a/b/a;

    return-object v0
.end method

.method static synthetic n(Lcom/nostra13/universalimageloader/core/i;)Lcom/nostra13/universalimageloader/core/d;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/i;->x:Lcom/nostra13/universalimageloader/core/d;

    return-object v0
.end method

.method static synthetic o(Lcom/nostra13/universalimageloader/core/i;)Lcom/nostra13/universalimageloader/core/download/ImageDownloader;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/i;->v:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    return-object v0
.end method

.method static synthetic p(Lcom/nostra13/universalimageloader/core/i;)Lcom/nostra13/universalimageloader/core/a/d;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/i;->w:Lcom/nostra13/universalimageloader/core/a/d;

    return-object v0
.end method

.method static synthetic q(Lcom/nostra13/universalimageloader/core/i;)Z
    .locals 1

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/i;->j:Z

    return v0
.end method

.method static synthetic r(Lcom/nostra13/universalimageloader/core/i;)Z
    .locals 1

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/i;->k:Z

    return v0
.end method

.method static synthetic s(Lcom/nostra13/universalimageloader/core/i;)Z
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final a()Lcom/nostra13/universalimageloader/core/g;
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 559
    .line 1564
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/i;->h:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_6

    .line 1565
    iget v0, p0, Lcom/nostra13/universalimageloader/core/i;->l:I

    iget v2, p0, Lcom/nostra13/universalimageloader/core/i;->m:I

    iget-object v3, p0, Lcom/nostra13/universalimageloader/core/i;->o:Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

    invoke-static {v0, v2, v3}, Lcom/nostra13/universalimageloader/core/a;->a(IILcom/nostra13/universalimageloader/core/assist/QueueProcessingType;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/i;->h:Ljava/util/concurrent/Executor;

    .line 1570
    :goto_0
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/i;->i:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_7

    .line 1571
    iget v0, p0, Lcom/nostra13/universalimageloader/core/i;->l:I

    iget v2, p0, Lcom/nostra13/universalimageloader/core/i;->m:I

    iget-object v3, p0, Lcom/nostra13/universalimageloader/core/i;->o:Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

    invoke-static {v0, v2, v3}, Lcom/nostra13/universalimageloader/core/a;->a(IILcom/nostra13/universalimageloader/core/assist/QueueProcessingType;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/i;->i:Ljava/util/concurrent/Executor;

    .line 1576
    :goto_1
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/i;->t:Lcom/nostra13/universalimageloader/a/a/a;

    if-nez v0, :cond_1

    .line 1577
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/i;->u:Lcom/nostra13/universalimageloader/a/a/b/a;

    if-nez v0, :cond_0

    .line 2071
    new-instance v0, Lcom/nostra13/universalimageloader/a/a/b/a;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/a/a/b/a;-><init>()V

    .line 1578
    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/i;->u:Lcom/nostra13/universalimageloader/a/a/b/a;

    .line 1580
    :cond_0
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/i;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/i;->u:Lcom/nostra13/universalimageloader/a/a/b/a;

    const-wide/16 v4, 0x0

    invoke-static {v0, v2, v4, v5, v1}, Lcom/nostra13/universalimageloader/core/a;->a(Landroid/content/Context;Lcom/nostra13/universalimageloader/a/a/b/a;JI)Lcom/nostra13/universalimageloader/a/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/i;->t:Lcom/nostra13/universalimageloader/a/a/a;

    .line 1583
    :cond_1
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/i;->s:Lcom/nostra13/universalimageloader/a/b/a;

    if-nez v0, :cond_2

    .line 2108
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v2

    const-wide/16 v4, 0x8

    div-long/2addr v2, v4

    long-to-int v0, v2

    .line 2110
    new-instance v2, Lcom/nostra13/universalimageloader/a/b/a/a;

    invoke-direct {v2, v0}, Lcom/nostra13/universalimageloader/a/b/a/a;-><init>(I)V

    .line 1584
    iput-object v2, p0, Lcom/nostra13/universalimageloader/core/i;->s:Lcom/nostra13/universalimageloader/a/b/a;

    .line 1589
    :cond_2
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/i;->v:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    if-nez v0, :cond_3

    .line 1590
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/i;->b:Landroid/content/Context;

    .line 2115
    new-instance v2, Lcom/nostra13/universalimageloader/core/download/a;

    invoke-direct {v2, v0}, Lcom/nostra13/universalimageloader/core/download/a;-><init>(Landroid/content/Context;)V

    .line 1590
    iput-object v2, p0, Lcom/nostra13/universalimageloader/core/i;->v:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    .line 1592
    :cond_3
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/i;->w:Lcom/nostra13/universalimageloader/core/a/d;

    if-nez v0, :cond_4

    .line 2120
    new-instance v0, Lcom/nostra13/universalimageloader/core/a/a;

    invoke-direct {v0, v1}, Lcom/nostra13/universalimageloader/core/a/a;-><init>(Z)V

    .line 1593
    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/i;->w:Lcom/nostra13/universalimageloader/core/a/d;

    .line 1595
    :cond_4
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/i;->x:Lcom/nostra13/universalimageloader/core/d;

    if-nez v0, :cond_5

    .line 2507
    new-instance v0, Lcom/nostra13/universalimageloader/core/e;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/e;-><init>()V

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/e;->a()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v0

    .line 1596
    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/i;->x:Lcom/nostra13/universalimageloader/core/d;

    .line 560
    :cond_5
    new-instance v0, Lcom/nostra13/universalimageloader/core/g;

    invoke-direct {v0, p0, v1}, Lcom/nostra13/universalimageloader/core/g;-><init>(Lcom/nostra13/universalimageloader/core/i;B)V

    return-object v0

    .line 1568
    :cond_6
    iput-boolean v4, p0, Lcom/nostra13/universalimageloader/core/i;->j:Z

    goto :goto_0

    .line 1574
    :cond_7
    iput-boolean v4, p0, Lcom/nostra13/universalimageloader/core/i;->k:Z

    goto :goto_1
.end method
