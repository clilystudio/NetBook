.class public final Lcom/nostra13/universalimageloader/core/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Landroid/content/res/Resources;

.field final b:I

.field final c:I

.field final d:Landroid/support/design/widget/K;

.field final e:Ljava/util/concurrent/Executor;

.field final f:Ljava/util/concurrent/Executor;

.field final g:Z

.field final h:Z

.field final i:I

.field final j:I

.field final k:Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

.field final l:Lcom/nostra13/universalimageloader/a/b/a;

.field final m:Lcom/nostra13/universalimageloader/a/a/a;

.field final n:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

.field final o:Lcom/nostra13/universalimageloader/core/a/d;

.field final p:Lcom/nostra13/universalimageloader/core/d;

.field final q:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

.field final r:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

.field private s:I

.field private t:I


# direct methods
.method private constructor <init>(Lcom/nostra13/universalimageloader/core/i;)V
    .locals 2

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/i;->a(Lcom/nostra13/universalimageloader/core/i;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/g;->a:Landroid/content/res/Resources;

    .line 80
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/i;->b(Lcom/nostra13/universalimageloader/core/i;)I

    move-result v0

    iput v0, p0, Lcom/nostra13/universalimageloader/core/g;->s:I

    .line 81
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/i;->c(Lcom/nostra13/universalimageloader/core/i;)I

    move-result v0

    iput v0, p0, Lcom/nostra13/universalimageloader/core/g;->t:I

    .line 82
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/i;->d(Lcom/nostra13/universalimageloader/core/i;)I

    move-result v0

    iput v0, p0, Lcom/nostra13/universalimageloader/core/g;->b:I

    .line 83
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/i;->e(Lcom/nostra13/universalimageloader/core/i;)I

    move-result v0

    iput v0, p0, Lcom/nostra13/universalimageloader/core/g;->c:I

    .line 84
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/i;->f(Lcom/nostra13/universalimageloader/core/i;)Landroid/support/design/widget/K;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/g;->d:Landroid/support/design/widget/K;

    .line 85
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/i;->g(Lcom/nostra13/universalimageloader/core/i;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/g;->e:Ljava/util/concurrent/Executor;

    .line 86
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/i;->h(Lcom/nostra13/universalimageloader/core/i;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/g;->f:Ljava/util/concurrent/Executor;

    .line 87
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/i;->i(Lcom/nostra13/universalimageloader/core/i;)I

    move-result v0

    iput v0, p0, Lcom/nostra13/universalimageloader/core/g;->i:I

    .line 88
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/i;->j(Lcom/nostra13/universalimageloader/core/i;)I

    move-result v0

    iput v0, p0, Lcom/nostra13/universalimageloader/core/g;->j:I

    .line 89
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/i;->k(Lcom/nostra13/universalimageloader/core/i;)Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/g;->k:Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

    .line 90
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/i;->l(Lcom/nostra13/universalimageloader/core/i;)Lcom/nostra13/universalimageloader/a/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/g;->m:Lcom/nostra13/universalimageloader/a/a/a;

    .line 91
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/i;->m(Lcom/nostra13/universalimageloader/core/i;)Lcom/nostra13/universalimageloader/a/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/g;->l:Lcom/nostra13/universalimageloader/a/b/a;

    .line 92
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/i;->n(Lcom/nostra13/universalimageloader/core/i;)Lcom/nostra13/universalimageloader/core/d;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/g;->p:Lcom/nostra13/universalimageloader/core/d;

    .line 93
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/i;->o(Lcom/nostra13/universalimageloader/core/i;)Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/g;->n:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    .line 94
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/i;->p(Lcom/nostra13/universalimageloader/core/i;)Lcom/nostra13/universalimageloader/core/a/d;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/g;->o:Lcom/nostra13/universalimageloader/core/a/d;

    .line 96
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/i;->q(Lcom/nostra13/universalimageloader/core/i;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nostra13/universalimageloader/core/g;->g:Z

    .line 97
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/i;->r(Lcom/nostra13/universalimageloader/core/i;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nostra13/universalimageloader/core/g;->h:Z

    .line 99
    new-instance v0, Lcom/nostra13/universalimageloader/core/j;

    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/g;->n:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    invoke-direct {v0, v1}, Lcom/nostra13/universalimageloader/core/j;-><init>(Lcom/nostra13/universalimageloader/core/download/ImageDownloader;)V

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/g;->q:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    .line 100
    new-instance v0, Lcom/nostra13/universalimageloader/core/k;

    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/g;->n:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    invoke-direct {v0, v1}, Lcom/nostra13/universalimageloader/core/k;-><init>(Lcom/nostra13/universalimageloader/core/download/ImageDownloader;)V

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/g;->r:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    .line 102
    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/i;->s(Lcom/nostra13/universalimageloader/core/i;)Z

    move-result v0

    invoke-static {v0}, Lcom/nostra13/universalimageloader/b/d;->a(Z)V

    .line 103
    return-void
.end method

.method synthetic constructor <init>(Lcom/nostra13/universalimageloader/core/i;B)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/nostra13/universalimageloader/core/g;-><init>(Lcom/nostra13/universalimageloader/core/i;)V

    return-void
.end method


# virtual methods
.method final a()Lcom/nostra13/universalimageloader/core/assist/c;
    .locals 3

    .prologue
    .line 131
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/g;->a:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 133
    iget v0, p0, Lcom/nostra13/universalimageloader/core/g;->s:I

    .line 134
    if-gtz v0, :cond_0

    .line 135
    iget v0, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 137
    :cond_0
    iget v1, p0, Lcom/nostra13/universalimageloader/core/g;->t:I

    .line 138
    if-gtz v1, :cond_1

    .line 139
    iget v1, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 141
    :cond_1
    new-instance v2, Lcom/nostra13/universalimageloader/core/assist/c;

    invoke-direct {v2, v0, v1}, Lcom/nostra13/universalimageloader/core/assist/c;-><init>(II)V

    return-object v2
.end method
