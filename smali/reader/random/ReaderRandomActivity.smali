.class public Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "SourceFile"


# instance fields
.field private A:Landroid/content/BroadcastReceiver;

.field private B:Landroid/content/BroadcastReceiver;

.field private a:[Lcom/ushaqi/zhuishushenqi/reader/o;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lcom/ushaqi/zhuishushenqi/reader/Reader;

.field private f:Lcom/ushaqi/zhuishushenqi/reader/bZ;

.field private g:Lcom/ushaqi/zhuishushenqi/reader/bH;

.field private h:Lcom/ushaqi/zhuishushenqi/reader/K;

.field private i:Landroid/os/Handler;

.field private j:Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;

.field private k:I

.field private l:Z

.field private m:Z

.field private n:Landroid/view/View;

.field private o:Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActionBar;

.field private p:I

.field private q:Z

.field private r:Z

.field private s:Landroid/view/View;

.field private t:Landroid/widget/TextView;

.field private u:Landroid/view/View;

.field private v:Z

.field private w:Landroid/view/View;

.field private x:Landroid/app/ProgressDialog;

.field private y:I

.field private z:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 60
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 66
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/ushaqi/zhuishushenqi/reader/o;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->a:[Lcom/ushaqi/zhuishushenqi/reader/o;

    .line 79
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->i:Landroid/os/Handler;

    .line 83
    iput-boolean v1, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->l:Z

    .line 84
    iput-boolean v1, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->m:Z

    .line 87
    const/4 v0, -0x1

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->p:I

    .line 101
    iput v1, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->y:I

    .line 935
    new-instance v0, Lcom/ushaqi/zhuishushenqi/reader/random/D;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/reader/random/D;-><init>(Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->z:Ljava/lang/Runnable;

    .line 965
    new-instance v0, Lcom/ushaqi/zhuishushenqi/reader/random/E;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/reader/random/E;-><init>(Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->A:Landroid/content/BroadcastReceiver;

    .line 981
    new-instance v0, Lcom/ushaqi/zhuishushenqi/reader/random/F;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/reader/random/F;-><init>(Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->B:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;I)I
    .locals 0

    .prologue
    .line 60
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->y:I

    return p1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 133
    new-instance v0, Lcom/ushaqi/zhuishushenqi/d;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/d;-><init>()V

    const-class v1, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;

    invoke-virtual {v0, p0, v1}, Lcom/ushaqi/zhuishushenqi/d;->a(Landroid/content/Context;Ljava/lang/Class;)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    const-string v1, "BOOK_ID"

    .line 134
    invoke-virtual {v0, v1, p1}, Lcom/ushaqi/zhuishushenqi/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    const-string v1, "BOOK_TITLE"

    invoke-virtual {v0, v1, p2}, Lcom/ushaqi/zhuishushenqi/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    const-string v1, "TOC_ID"

    invoke-virtual {v0, v1, p3}, Lcom/ushaqi/zhuishushenqi/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    .line 135
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/d;->a()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 932
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a()V
    .locals 3

    .prologue
    .line 362
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->e:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/reader/random/f;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/reader/random/f;-><init>(Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->a(Lcom/ushaqi/zhuishushenqi/reader/ad;Z)V

    .line 373
    return-void
.end method

.method private a(I)V
    .locals 3

    .prologue
    .line 667
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->h:Lcom/ushaqi/zhuishushenqi/reader/K;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/reader/random/q;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/reader/random/q;-><init>(Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;)V

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lcom/ushaqi/zhuishushenqi/reader/K;->b(ILcom/ushaqi/zhuishushenqi/reader/e;Z)V

    .line 673
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;Lcom/ushaqi/zhuishushenqi/reader/n;)V
    .locals 2

    .prologue
    .line 60
    .line 11823
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/reader/n;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 11824
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->a:[Lcom/ushaqi/zhuishushenqi/reader/o;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/ushaqi/zhuishushenqi/reader/o;->a(Lcom/ushaqi/zhuishushenqi/reader/n;)V

    .line 11825
    new-instance v0, Lcom/ushaqi/zhuishushenqi/reader/random/u;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/reader/random/u;-><init>(Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;)V

    invoke-virtual {p1, v0}, Lcom/ushaqi/zhuishushenqi/reader/n;->a(Lcom/ushaqi/zhuishushenqi/reader/e;)V

    .line 11844
    :goto_0
    return-void

    .line 11842
    :cond_0
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/reader/n;->e()Z

    move-result v0

    if-nez v0, :cond_1

    .line 11843
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->a:[Lcom/ushaqi/zhuishushenqi/reader/o;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/ushaqi/zhuishushenqi/reader/o;->a(Lcom/ushaqi/zhuishushenqi/reader/n;)V

    .line 11844
    new-instance v0, Lcom/ushaqi/zhuishushenqi/reader/random/w;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/reader/random/w;-><init>(Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;)V

    invoke-virtual {p1, v0}, Lcom/ushaqi/zhuishushenqi/reader/n;->b(Lcom/ushaqi/zhuishushenqi/reader/e;)V

    goto :goto_0

    .line 11860
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->a:[Lcom/ushaqi/zhuishushenqi/reader/o;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/ushaqi/zhuishushenqi/reader/o;->a(Lcom/ushaqi/zhuishushenqi/reader/n;)V

    .line 11861
    new-instance v0, Lcom/ushaqi/zhuishushenqi/reader/random/y;

    invoke-direct {v0, p0, p1}, Lcom/ushaqi/zhuishushenqi/reader/random/y;-><init>(Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;Lcom/ushaqi/zhuishushenqi/reader/n;)V

    invoke-virtual {p1, v0}, Lcom/ushaqi/zhuishushenqi/reader/n;->a(Lcom/ushaqi/zhuishushenqi/reader/e;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;)Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->r:Z

    return v0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;Z)Z
    .locals 0

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->r:Z

    return p1
.end method

.method private b()V
    .locals 3

    .prologue
    .line 379
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 380
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->f:Lcom/ushaqi/zhuishushenqi/reader/bZ;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/bZ;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, -0x40800000

    :goto_0
    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 381
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 382
    return-void

    .line 380
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->f:Lcom/ushaqi/zhuishushenqi/reader/bZ;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/bZ;->f()I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x437f0000

    div-float/2addr v0, v2

    goto :goto_0
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;)V
    .locals 4

    .prologue
    .line 60
    .line 7926
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->deleteAndSync(Ljava/lang/String;)V

    .line 7927
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050163

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->c:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 7928
    invoke-static {p0, v0}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;I)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->a(I)V

    return-void
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;Z)Z
    .locals 0

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->m:Z

    return p1
.end method

.method static synthetic c(Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;I)I
    .locals 0

    .prologue
    .line 60
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->k:I

    return p1
.end method

.method static synthetic c(Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->t:Landroid/widget/TextView;

    return-object v0
.end method

.method private c()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 477
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->a:[Lcom/ushaqi/zhuishushenqi/reader/o;

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->k:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/o;->j()Lcom/ushaqi/zhuishushenqi/reader/n;

    move-result-object v0

    .line 478
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/n;->p()Z

    move-result v1

    if-nez v1, :cond_1

    .line 479
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/n;->n()I

    move-result v1

    if-ne v1, v7, :cond_0

    .line 480
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/n;->l()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->a(I)V

    .line 530
    :goto_0
    return-void

    .line 482
    :cond_0
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/n;->l()I

    move-result v0

    .line 4809
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->h:Lcom/ushaqi/zhuishushenqi/reader/K;

    new-instance v2, Lcom/ushaqi/zhuishushenqi/reader/random/t;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/reader/random/t;-><init>(Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;)V

    invoke-virtual {v1, v0, v2, v7}, Lcom/ushaqi/zhuishushenqi/reader/K;->a(ILcom/ushaqi/zhuishushenqi/reader/e;Z)V

    goto :goto_0

    .line 487
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->a:[Lcom/ushaqi/zhuishushenqi/reader/o;

    aget-object v0, v0, v8

    .line 488
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->a:[Lcom/ushaqi/zhuishushenqi/reader/o;

    aget-object v1, v1, v7

    .line 489
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->a:[Lcom/ushaqi/zhuishushenqi/reader/o;

    aget-object v2, v2, v9

    .line 491
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/o;->j()Lcom/ushaqi/zhuishushenqi/reader/n;

    move-result-object v3

    .line 492
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/reader/o;->j()Lcom/ushaqi/zhuishushenqi/reader/n;

    move-result-object v4

    .line 493
    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/reader/o;->j()Lcom/ushaqi/zhuishushenqi/reader/n;

    move-result-object v5

    .line 496
    iget v6, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->k:I

    if-ne v6, v9, :cond_3

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/ushaqi/zhuishushenqi/reader/n;->e()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 499
    invoke-virtual {v0, v4}, Lcom/ushaqi/zhuishushenqi/reader/o;->a(Lcom/ushaqi/zhuishushenqi/reader/n;)V

    .line 500
    invoke-virtual {v1, v5}, Lcom/ushaqi/zhuishushenqi/reader/o;->a(Lcom/ushaqi/zhuishushenqi/reader/n;)V

    .line 502
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->j:Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;

    invoke-virtual {v0, v7, v8}, Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->setCurrentItem(IZ)V

    .line 504
    new-instance v0, Lcom/ushaqi/zhuishushenqi/reader/random/k;

    invoke-direct {v0, p0, v2}, Lcom/ushaqi/zhuishushenqi/reader/random/k;-><init>(Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;Lcom/ushaqi/zhuishushenqi/reader/o;)V

    invoke-virtual {v5, v0}, Lcom/ushaqi/zhuishushenqi/reader/n;->a(Lcom/ushaqi/zhuishushenqi/reader/e;)V

    .line 529
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->d()V

    goto :goto_0

    .line 517
    :cond_3
    iget v5, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->k:I

    if-nez v5, :cond_2

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/reader/n;->f()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 518
    invoke-virtual {v2, v4}, Lcom/ushaqi/zhuishushenqi/reader/o;->a(Lcom/ushaqi/zhuishushenqi/reader/n;)V

    .line 519
    invoke-virtual {v1, v3}, Lcom/ushaqi/zhuishushenqi/reader/o;->a(Lcom/ushaqi/zhuishushenqi/reader/n;)V

    .line 520
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->j:Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;

    invoke-virtual {v1, v7, v8}, Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->setCurrentItem(IZ)V

    .line 521
    new-instance v1, Lcom/ushaqi/zhuishushenqi/reader/random/l;

    invoke-direct {v1, p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/random/l;-><init>(Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;Lcom/ushaqi/zhuishushenqi/reader/o;)V

    invoke-virtual {v3, v1}, Lcom/ushaqi/zhuishushenqi/reader/n;->b(Lcom/ushaqi/zhuishushenqi/reader/e;)V

    goto :goto_1
.end method

.method static synthetic d(Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;I)I
    .locals 0

    .prologue
    .line 60
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->p:I

    return p1
.end method

.method static synthetic d(Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->u:Landroid/view/View;

    return-object v0
.end method

.method private d()V
    .locals 4

    .prologue
    .line 536
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->a:[Lcom/ushaqi/zhuishushenqi/reader/o;

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->k:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/o;->j()Lcom/ushaqi/zhuishushenqi/reader/n;

    move-result-object v0

    .line 537
    if-eqz v0, :cond_0

    .line 539
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->e:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/n;->l()I

    move-result v2

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/n;->m()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->a(II)V

    .line 541
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/n;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5548
    const-string v0, "\u5df2\u7ecf\u662f\u6700\u540e\u4e00\u9875\u5566"

    invoke-static {p0, v0}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 545
    :cond_0
    return-void
.end method

.method private e()V
    .locals 3

    .prologue
    .line 557
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->a:[Lcom/ushaqi/zhuishushenqi/reader/o;

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->k:I

    aget-object v0, v0, v1

    .line 558
    if-nez v0, :cond_1

    .line 580
    :cond_0
    :goto_0
    return-void

    .line 561
    :cond_1
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/o;->j()Lcom/ushaqi/zhuishushenqi/reader/n;

    move-result-object v0

    .line 562
    if-eqz v0, :cond_0

    .line 564
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/n;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 565
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->i()V

    .line 567
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->g:Lcom/ushaqi/zhuishushenqi/reader/bH;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/bH;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 568
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->j:Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->k:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->a(I)Z

    goto :goto_0

    .line 572
    :cond_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->j:Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->k:I

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->setCurrentItem(IZ)V

    .line 573
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->c()V

    goto :goto_0

    .line 6548
    :cond_3
    const-string v0, "\u5df2\u7ecf\u662f\u6700\u540e\u4e00\u9875\u5566"

    invoke-static {p0, v0}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic e(Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;)V
    .locals 4

    .prologue
    .line 60
    .line 8915
    invoke-static {}, Landroid/support/design/widget/am;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8916
    const v0, 0x7f0500d5

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    :goto_0
    return-void

    .line 8918
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->e:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->a()V

    .line 8920
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->u(Ljava/lang/String;)V

    .line 8921
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0500ab

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->c:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private f()V
    .locals 3

    .prologue
    .line 586
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->a:[Lcom/ushaqi/zhuishushenqi/reader/o;

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->k:I

    aget-object v0, v0, v1

    .line 587
    if-nez v0, :cond_1

    .line 605
    :cond_0
    :goto_0
    return-void

    .line 590
    :cond_1
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/o;->j()Lcom/ushaqi/zhuishushenqi/reader/n;

    move-result-object v0

    .line 591
    if-eqz v0, :cond_0

    .line 593
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/n;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 594
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->i()V

    .line 595
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->g:Lcom/ushaqi/zhuishushenqi/reader/bH;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/bH;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 596
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->j:Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->k:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->a(I)Z

    goto :goto_0

    .line 598
    :cond_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->j:Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->k:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->setCurrentItem(IZ)V

    .line 599
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->c()V

    goto :goto_0

    .line 602
    :cond_3
    const v0, 0x7f050127

    invoke-static {p0, v0}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;I)V

    goto :goto_0
.end method

.method static synthetic f(Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 60
    .line 9240
    const/4 v0, 0x0

    const v1, 0x7f05006a

    invoke-virtual {p0, v1}, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1, v2, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->x:Landroid/app/ProgressDialog;

    .line 9241
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a()Lcom/ushaqi/zhuishushenqi/MyApplication;

    move-result-object v0

    const-string v1, "rec_F184E6D9_7F75_01C9_CCA0_2336AEB54B2B"

    invoke-static {p0}, Lcom/arcsoft/hpay100/a/a;->o(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v2

    new-instance v3, Lcom/ushaqi/zhuishushenqi/reader/random/C;

    invoke-direct {v3, p0}, Lcom/ushaqi/zhuishushenqi/reader/random/C;-><init>(Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;)V

    invoke-static {v0, v1, v2, v3}, Lcom/a/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/a/a/c;)V

    .line 60
    return-void
.end method

.method static synthetic g(Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;)I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->y:I

    return v0
.end method

.method private g()V
    .locals 1

    .prologue
    .line 676
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->l:Z

    if-eqz v0, :cond_0

    .line 677
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->i()V

    .line 681
    :goto_0
    return-void

    .line 679
    :cond_0
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->h()V

    goto :goto_0
.end method

.method static synthetic h(Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->x:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private h()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 699
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->l:Z

    if-nez v0, :cond_0

    .line 700
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->o:Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActionBar;

    .line 7089
    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActionBar;->setVisibility(I)V

    .line 702
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->s:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 703
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 704
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 705
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->l:Z

    .line 707
    :cond_0
    invoke-static {}, Lcom/arcsoft/hpay100/a/a;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->m:Z

    if-nez v0, :cond_1

    .line 708
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->n:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 710
    :cond_1
    return-void
.end method

.method private i()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/16 v5, 0x800

    const/16 v4, 0x400

    const/16 v3, 0x200

    const/4 v2, 0x0

    .line 714
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->l:Z

    if-eqz v0, :cond_0

    .line 715
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->o:Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActionBar;

    .line 7093
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActionBar;->setVisibility(I)V

    .line 716
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/Window;->addFlags(I)V

    .line 717
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/Window;->clearFlags(I)V

    .line 718
    iput-boolean v2, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->l:Z

    .line 721
    :cond_0
    invoke-static {}, Lcom/arcsoft/hpay100/a/a;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->m:Z

    if-eqz v0, :cond_1

    .line 722
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->n:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 725
    :cond_1
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->q:Z

    if-eqz v0, :cond_3

    .line 726
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Window;->addFlags(I)V

    .line 731
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->s:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 734
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/view/View;)V

    .line 735
    return-void

    .line 7756
    :cond_3
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/Window;->addFlags(I)V

    .line 7757
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/Window;->clearFlags(I)V

    .line 7758
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 7760
    invoke-static {}, Lcom/arcsoft/hpay100/a/a;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->m:Z

    if-eqz v0, :cond_2

    .line 7761
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->n:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0
.end method

.method static synthetic i(Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;)[Lcom/ushaqi/zhuishushenqi/reader/o;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->a:[Lcom/ushaqi/zhuishushenqi/reader/o;

    return-object v0
.end method

.method private j()V
    .locals 4

    .prologue
    .line 943
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->z:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 944
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->g:Lcom/ushaqi/zhuishushenqi/reader/bH;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/bH;->d()I

    move-result v0

    if-eqz v0, :cond_0

    .line 945
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->z:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->g:Lcom/ushaqi/zhuishushenqi/reader/bH;

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/reader/bH;->d()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 947
    :cond_0
    return-void
.end method

.method static synthetic j(Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;)V
    .locals 2

    .prologue
    .line 60
    .line 9800
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->h:Lcom/ushaqi/zhuishushenqi/reader/K;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/reader/random/s;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/reader/random/s;-><init>(Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;)V

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/K;->a(Lcom/ushaqi/zhuishushenqi/reader/e;)V

    .line 60
    return-void
.end method

.method static synthetic k(Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->b()V

    return-void
.end method

.method static synthetic l(Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->w:Landroid/view/View;

    return-object v0
.end method

.method static synthetic m(Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 60
    .line 10651
    new-instance v0, Lcom/ushaqi/zhuishushenqi/reader/K;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->e:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->f:Lcom/ushaqi/zhuishushenqi/reader/bZ;

    invoke-direct {v0, v2, v3}, Lcom/ushaqi/zhuishushenqi/reader/K;-><init>(Lcom/ushaqi/zhuishushenqi/reader/Reader;Lcom/ushaqi/zhuishushenqi/reader/bZ;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->h:Lcom/ushaqi/zhuishushenqi/reader/K;

    .line 11388
    new-instance v2, Lcom/ushaqi/zhuishushenqi/reader/random/g;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/reader/random/g;-><init>(Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;)V

    .line 11394
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->a:[Lcom/ushaqi/zhuishushenqi/reader/o;

    array-length v3, v0

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_0

    .line 11395
    new-instance v4, Lcom/ushaqi/zhuishushenqi/reader/o;

    iget-object v5, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->f:Lcom/ushaqi/zhuishushenqi/reader/bZ;

    invoke-direct {v4, p0, v5}, Lcom/ushaqi/zhuishushenqi/reader/o;-><init>(Landroid/app/Activity;Lcom/ushaqi/zhuishushenqi/reader/bZ;)V

    .line 11396
    iget-object v5, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->a:[Lcom/ushaqi/zhuishushenqi/reader/o;

    aput-object v4, v5, v0

    .line 11397
    invoke-virtual {v4, v2}, Lcom/ushaqi/zhuishushenqi/reader/o;->a(Lcom/ushaqi/zhuishushenqi/reader/G;)V

    .line 11394
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 11399
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->A:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v2}, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 11400
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->B:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.TIME_TICK"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v2}, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 11407
    const v0, 0x7f0c0126

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->j:Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;

    .line 11408
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->j:Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;

    new-instance v2, Lcom/ushaqi/zhuishushenqi/reader/random/h;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/reader/random/h;-><init>(Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;)V

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 11432
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->j:Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;

    new-instance v2, Lcom/ushaqi/zhuishushenqi/reader/random/i;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/reader/random/i;-><init>(Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;)V

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->setOnPageChangeListener(Lcom/ushaqi/zhuishushenqi/reader/cw;)V

    .line 11455
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->j:Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;

    new-instance v2, Lcom/ushaqi/zhuishushenqi/reader/random/j;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/reader/random/j;-><init>(Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;)V

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->setOnClickListener$4b8a6d15(Lcom/umeng/update/a;)V

    .line 10656
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a()Lcom/ushaqi/zhuishushenqi/MyApplication;

    move-result-object v0

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->e:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a(Lcom/ushaqi/zhuishushenqi/reader/Reader;)V

    .line 10658
    invoke-direct {p0, v1}, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->a(I)V

    .line 60
    return-void
.end method

.method static synthetic n(Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;)V
    .locals 4

    .prologue
    .line 60
    .line 11612
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 11615
    new-instance v0, Luk/me/lewisdeane/ldialogs/h;

    invoke-direct {v0, p0}, Luk/me/lewisdeane/ldialogs/h;-><init>(Landroid/content/Context;)V

    .line 11616
    const v1, 0x7f0501a0

    invoke-virtual {v0, v1}, Luk/me/lewisdeane/ldialogs/h;->b(I)Luk/me/lewisdeane/ldialogs/h;

    .line 11617
    const v1, 0x7f050167

    new-instance v2, Lcom/ushaqi/zhuishushenqi/reader/random/n;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/reader/random/n;-><init>(Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;)V

    invoke-virtual {v0, v1, v2}, Luk/me/lewisdeane/ldialogs/h;->a(ILandroid/content/DialogInterface$OnClickListener;)Luk/me/lewisdeane/ldialogs/h;

    move-result-object v1

    const v2, 0x7f0500d1

    new-instance v3, Lcom/ushaqi/zhuishushenqi/reader/random/m;

    invoke-direct {v3, p0}, Lcom/ushaqi/zhuishushenqi/reader/random/m;-><init>(Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;)V

    .line 11623
    invoke-virtual {v1, v2, v3}, Luk/me/lewisdeane/ldialogs/h;->b(ILandroid/content/DialogInterface$OnClickListener;)Luk/me/lewisdeane/ldialogs/h;

    .line 11631
    invoke-virtual {v0}, Luk/me/lewisdeane/ldialogs/h;->a()Landroid/app/AlertDialog;

    move-result-object v0

    .line 11632
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 11633
    new-instance v1, Lcom/ushaqi/zhuishushenqi/reader/random/p;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/reader/random/p;-><init>(Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 11641
    :try_start_0
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11644
    :cond_0
    :goto_0
    return-void

    .line 11642
    :catch_0
    move-exception v0

    .line 11643
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic o(Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->i()V

    return-void
.end method

.method static synthetic p(Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->c()V

    return-void
.end method

.method static synthetic q(Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->f()V

    return-void
.end method

.method static synthetic r(Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->e()V

    return-void
.end method

.method static synthetic s(Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->g()V

    return-void
.end method

.method static synthetic t(Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->a()V

    return-void
.end method

.method static synthetic u(Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;)Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->j:Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;

    return-object v0
.end method

.method static synthetic v(Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->d()V

    return-void
.end method

.method static synthetic w(Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;)V
    .locals 2

    .prologue
    .line 60
    .line 11960
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 60
    return-void
.end method

.method static synthetic x(Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;)I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->p:I

    return v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    .prologue
    .line 881
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->e:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 882
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 886
    :goto_0
    return-void

    .line 7892
    :cond_0
    new-instance v0, Luk/me/lewisdeane/ldialogs/h;

    invoke-direct {v0, p0}, Luk/me/lewisdeane/ldialogs/h;-><init>(Landroid/content/Context;)V

    const v1, 0x7f050157

    invoke-virtual {v0, v1}, Luk/me/lewisdeane/ldialogs/h;->a(I)Luk/me/lewisdeane/ldialogs/h;

    move-result-object v0

    const v1, 0x7f0500af

    invoke-virtual {v0, v1}, Luk/me/lewisdeane/ldialogs/h;->b(I)Luk/me/lewisdeane/ldialogs/h;

    move-result-object v0

    const v1, 0x7f0500a8

    new-instance v2, Lcom/ushaqi/zhuishushenqi/reader/random/B;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/reader/random/B;-><init>(Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;)V

    .line 7893
    invoke-virtual {v0, v1, v2}, Luk/me/lewisdeane/ldialogs/h;->a(ILandroid/content/DialogInterface$OnClickListener;)Luk/me/lewisdeane/ldialogs/h;

    move-result-object v0

    const v1, 0x7f0500a9

    new-instance v2, Lcom/ushaqi/zhuishushenqi/reader/random/A;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/reader/random/A;-><init>(Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;)V

    .line 7903
    invoke-virtual {v0, v1, v2}, Luk/me/lewisdeane/ldialogs/h;->b(ILandroid/content/DialogInterface$OnClickListener;)Luk/me/lewisdeane/ldialogs/h;

    move-result-object v0

    .line 7911
    invoke-virtual {v0}, Luk/me/lewisdeane/ldialogs/h;->a()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 105
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 107
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 108
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 110
    const v0, 0x7f030052

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->setContentView(I)V

    .line 112
    const-string v0, "BOOK_ID"

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->b:Ljava/lang/String;

    .line 113
    const-string v0, "BOOK_TITLE"

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->c:Ljava/lang/String;

    .line 114
    const-string v0, "TOC_ID"

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->d:Ljava/lang/String;

    .line 117
    sput v5, Lcom/ushaqi/zhuishushenqi/util/I;->g:I

    .line 120
    if-eqz p1, :cond_0

    .line 121
    const-string v0, "SaveSelectedPageIndex"

    invoke-virtual {p1, v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->k:I

    .line 1174
    :cond_0
    const v0, 0x7f0c012f

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->w:Landroid/view/View;

    .line 1175
    const v0, 0x7f0c0132

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActionBar;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->o:Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActionBar;

    .line 1177
    new-instance v0, Lcom/ushaqi/zhuishushenqi/reader/bZ;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/reader/bZ;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->f:Lcom/ushaqi/zhuishushenqi/reader/bZ;

    .line 1178
    new-instance v0, Lcom/ushaqi/zhuishushenqi/reader/bH;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/reader/bH;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->g:Lcom/ushaqi/zhuishushenqi/reader/bH;

    .line 1180
    new-instance v0, Lcom/ushaqi/zhuishushenqi/reader/Reader;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->c:Ljava/lang/String;

    const/4 v4, 0x5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ushaqi/zhuishushenqi/reader/Reader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->e:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    .line 1272
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->f:Lcom/ushaqi/zhuishushenqi/reader/bZ;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/reader/random/G;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/reader/random/G;-><init>(Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;)V

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/bZ;->a(Lcom/ushaqi/zhuishushenqi/reader/cc;)V

    .line 1281
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->f:Lcom/ushaqi/zhuishushenqi/reader/bZ;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/reader/random/H;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/reader/random/H;-><init>(Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;)V

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/bZ;->a(Lcom/ushaqi/zhuishushenqi/reader/cb;)V

    .line 1289
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->f:Lcom/ushaqi/zhuishushenqi/reader/bZ;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/reader/random/I;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/reader/random/I;-><init>(Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;)V

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/bZ;->a(Lcom/ushaqi/zhuishushenqi/reader/ce;)V

    .line 1300
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->f:Lcom/ushaqi/zhuishushenqi/reader/bZ;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/reader/random/J;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/reader/random/J;-><init>(Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;)V

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/bZ;->a(Lcom/ushaqi/zhuishushenqi/reader/ca;)V

    .line 1307
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->f:Lcom/ushaqi/zhuishushenqi/reader/bZ;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/reader/random/K;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/reader/random/K;-><init>(Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;)V

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/bZ;->a(Lcom/ushaqi/zhuishushenqi/reader/cd;)V

    .line 1317
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->b()V

    .line 1324
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->o:Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActionBar;

    const-string v1, "\u4e66\u540d\u88ab\u5c01\u5370"

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActionBar;->setTitle(Ljava/lang/String;)V

    .line 1325
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->o:Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActionBar;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/reader/random/L;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/reader/random/L;-><init>(Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;)V

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActionBar;->setOnBtnClickListener$3ce42dcd(Lcom/umeng/update/a;)V

    .line 2189
    const v0, 0x7f0c0133

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->s:Landroid/view/View;

    .line 2190
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->s:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2191
    const v0, 0x7f0c0430

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 2192
    const v0, 0x7f0c0433

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 2193
    const v0, 0x7f0c0432

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->t:Landroid/widget/TextView;

    .line 2194
    const v0, 0x7f0c0431

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->u:Landroid/view/View;

    .line 2196
    const-string v0, "firstRandomBooks"

    invoke-static {p0, v0}, Lcom/arcsoft/hpay100/a/a;->l(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->v:Z

    .line 2198
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->e:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->m()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2200
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->u:Landroid/view/View;

    const v3, 0x7f020092

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2201
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->t:Landroid/widget/TextView;

    const v3, 0x7f020272

    invoke-virtual {v0, v3, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 2202
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->t:Landroid/widget/TextView;

    const-string v3, "\u5df2\u6dfb\u52a0"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2203
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->r:Z

    .line 2207
    :goto_0
    new-instance v0, Lcom/ushaqi/zhuishushenqi/reader/random/d;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/reader/random/d;-><init>(Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2226
    new-instance v0, Lcom/ushaqi/zhuishushenqi/reader/random/o;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/reader/random/o;-><init>(Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2685
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->n:Landroid/view/View;

    .line 2687
    invoke-static {}, Lcom/arcsoft/hpay100/a/a;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2688
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->n:Landroid/view/View;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/reader/random/r;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/reader/random/r;-><init>(Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 2741
    :cond_1
    const-string v0, "reader_opt_full_screen"

    invoke-static {p0, v0}, Lcom/arcsoft/hpay100/a/a;->l(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->q:Z

    .line 2742
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->o:Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActionBar;

    iget-boolean v1, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->q:Z

    .line 3069
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 3070
    if-eqz v1, :cond_4

    .line 3071
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActionBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/design/widget/am;->k(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v2, v5, v1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 3075
    :goto_1
    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActionBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2743
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->i()V

    .line 2745
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->v:Z

    if-eqz v0, :cond_2

    .line 2746
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->h()V

    .line 2747
    iput-boolean v5, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->v:Z

    .line 3343
    :cond_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->e:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/reader/random/e;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/reader/random/e;-><init>(Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;)V

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->c(Lcom/ushaqi/zhuishushenqi/reader/ae;)V

    .line 3355
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->a()V

    .line 130
    return-void

    .line 2205
    :cond_3
    iput-boolean v5, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->r:Z

    goto :goto_0

    .line 3073
    :cond_4
    invoke-virtual {v2, v5, v5, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 162
    :try_start_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->A:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 163
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->B:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    :goto_0
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 168
    return-void

    .line 164
    :catch_0
    move-exception v0

    .line 165
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 779
    packed-switch p1, :pswitch_data_0

    .line 795
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 782
    :pswitch_0
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->g:Lcom/ushaqi/zhuishushenqi/reader/bH;

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/reader/bH;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 783
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->e()V

    goto :goto_0

    :cond_0
    move v0, v1

    .line 786
    goto :goto_0

    .line 789
    :pswitch_1
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->g:Lcom/ushaqi/zhuishushenqi/reader/bH;

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/reader/bH;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 790
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->f()V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 793
    goto :goto_0

    .line 779
    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 767
    const/16 v1, 0x52

    if-ne p1, v1, :cond_1

    .line 768
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->g()V

    .line 773
    :cond_0
    :goto_0
    return v0

    .line 770
    :cond_1
    const/16 v1, 0x19

    if-eq p1, v1, :cond_0

    const/16 v1, 0x18

    if-eq p1, v1, :cond_0

    .line 773
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 154
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 155
    const-string v0, "firstRandomBooks"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/arcsoft/hpay100/a/a;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 156
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 147
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 3956
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 149
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->j()V

    .line 150
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 140
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 142
    const-string v0, "SaveSelectedPageIndex"

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->k:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 143
    return-void
.end method

.method public onUserInteraction()V
    .locals 0

    .prologue
    .line 951
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onUserInteraction()V

    .line 952
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->j()V

    .line 953
    return-void
.end method
