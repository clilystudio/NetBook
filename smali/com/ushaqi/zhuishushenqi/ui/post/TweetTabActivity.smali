.class public Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;
.super Lcom/ushaqi/zhuishushenqi/ui/BaseTabActivity;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;
.implements Landroid/widget/TabHost$OnTabChangeListener;
.implements Landroid/widget/TabHost$TabContentFactory;


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/support/v4/view/ViewPager;

.field private e:Lcom/ushaqi/zhuishushenqi/ui/post/dV;

.field private f:Landroid/widget/RelativeLayout;

.field private g:Landroid/widget/RelativeLayout;

.field private h:Landroid/widget/LinearLayout;

.field private i:Landroid/widget/LinearLayout;

.field private j:Landroid/support/design/widget/FloatingActionButton;

.field private k:Landroid/support/design/widget/FloatingActionButton;

.field private l:Landroid/support/design/widget/FloatingActionButton;

.field private m:Landroid/support/design/widget/FloatingActionButton;

.field private n:Landroid/view/View;

.field private o:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseTabActivity;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;->b:Ljava/util/List;

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;->o:Z

    .line 205
    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 76
    new-instance v0, Lcom/ushaqi/zhuishushenqi/d;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/d;-><init>()V

    const-class v1, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;

    invoke-virtual {v0, p0, v1}, Lcom/ushaqi/zhuishushenqi/d;->a(Landroid/content/Context;Ljava/lang/Class;)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/d;->a()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;->b:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;Z)Z
    .locals 0

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;->o:Z

    return p1
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;)Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;->c:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 337
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;->f:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/post/dT;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/post/dT;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 346
    return-void
.end method

.method static synthetic c(Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;)Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;->o:Z

    return v0
.end method

.method static synthetic d(Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;->f()V

    return-void
.end method

.method static synthetic e(Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;)Landroid/support/design/widget/FloatingActionButton;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;->j:Landroid/support/design/widget/FloatingActionButton;

    return-object v0
.end method

.method private f()V
    .locals 7

    .prologue
    const/4 v3, 0x4

    const/4 v6, 0x0

    const-wide/16 v4, 0x96

    .line 351
    const/high16 v0, 0x41900000    # 18.0f

    invoke-static {p0, v0}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;F)I

    move-result v0

    .line 352
    const/high16 v1, 0x42100000    # 36.0f

    invoke-static {p0, v1}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;F)I

    move-result v1

    .line 355
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 356
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;->n:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 359
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;->i:Landroid/widget/LinearLayout;

    invoke-static {v2}, Lcom/c/b/a;->a(Landroid/view/View;)Lcom/c/b/a;

    move-result-object v2

    .line 361
    invoke-virtual {v2, v6}, Lcom/c/b/a;->c(F)Lcom/c/b/a;

    move-result-object v2

    int-to-float v0, v0

    .line 363
    invoke-virtual {v2, v0}, Lcom/c/b/a;->b(F)Lcom/c/b/a;

    move-result-object v0

    .line 364
    invoke-virtual {v0, v4, v5}, Lcom/c/b/a;->a(J)Lcom/c/b/a;

    move-result-object v0

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 365
    invoke-virtual {v0, v2}, Lcom/c/b/a;->a(Landroid/view/animation/Interpolator;)Lcom/c/b/a;

    move-result-object v0

    .line 366
    invoke-virtual {v0}, Lcom/c/b/a;->a()V

    .line 368
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;->h:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/c/b/a;->a(Landroid/view/View;)Lcom/c/b/a;

    move-result-object v0

    .line 370
    invoke-virtual {v0, v6}, Lcom/c/b/a;->c(F)Lcom/c/b/a;

    move-result-object v0

    int-to-float v1, v1

    .line 372
    invoke-virtual {v0, v1}, Lcom/c/b/a;->b(F)Lcom/c/b/a;

    move-result-object v0

    .line 373
    invoke-virtual {v0, v4, v5}, Lcom/c/b/a;->a(J)Lcom/c/b/a;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 374
    invoke-virtual {v0, v1}, Lcom/c/b/a;->a(Landroid/view/animation/Interpolator;)Lcom/c/b/a;

    move-result-object v0

    const-wide/16 v2, 0x64

    .line 375
    invoke-virtual {v0, v2, v3}, Lcom/c/b/a;->b(J)Lcom/c/b/a;

    move-result-object v0

    .line 376
    invoke-virtual {v0}, Lcom/c/b/a;->a()V

    .line 378
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;->j:Landroid/support/design/widget/FloatingActionButton;

    invoke-static {v0}, Lcom/c/b/a;->a(Landroid/view/View;)Lcom/c/b/a;

    move-result-object v0

    .line 380
    invoke-virtual {v0, v6}, Lcom/c/b/a;->a(F)Lcom/c/b/a;

    move-result-object v0

    .line 381
    invoke-virtual {v0, v4, v5}, Lcom/c/b/a;->a(J)Lcom/c/b/a;

    move-result-object v0

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 382
    invoke-virtual {v0, v1}, Lcom/c/b/a;->a(Landroid/view/animation/Interpolator;)Lcom/c/b/a;

    move-result-object v0

    .line 383
    invoke-virtual {v0}, Lcom/c/b/a;->a()V

    .line 385
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/post/dU;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/post/dU;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;)V

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 392
    return-void
.end method

.method static synthetic f(Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;)V
    .locals 7

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const-wide/16 v4, 0x96

    const/4 v3, 0x0

    .line 43
    .line 2397
    const/high16 v0, 0x41900000    # 18.0f

    invoke-static {p0, v0}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;F)I

    move-result v0

    .line 2398
    const/high16 v1, 0x42100000    # 36.0f

    invoke-static {p0, v1}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;F)I

    move-result v1

    .line 2401
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2402
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;->n:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2403
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2404
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2406
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;->i:Landroid/widget/LinearLayout;

    invoke-static {v2}, Lcom/c/b/a;->a(Landroid/view/View;)Lcom/c/b/a;

    move-result-object v2

    .line 2408
    invoke-virtual {v2, v6}, Lcom/c/b/a;->c(F)Lcom/c/b/a;

    move-result-object v2

    neg-int v0, v0

    int-to-float v0, v0

    .line 2410
    invoke-virtual {v2, v0}, Lcom/c/b/a;->b(F)Lcom/c/b/a;

    move-result-object v0

    .line 2411
    invoke-virtual {v0, v4, v5}, Lcom/c/b/a;->a(J)Lcom/c/b/a;

    move-result-object v0

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 2412
    invoke-virtual {v0, v2}, Lcom/c/b/a;->a(Landroid/view/animation/Interpolator;)Lcom/c/b/a;

    move-result-object v0

    const-wide/16 v2, 0x23

    .line 2413
    invoke-virtual {v0, v2, v3}, Lcom/c/b/a;->b(J)Lcom/c/b/a;

    move-result-object v0

    .line 2414
    invoke-virtual {v0}, Lcom/c/b/a;->a()V

    .line 2416
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;->h:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/c/b/a;->a(Landroid/view/View;)Lcom/c/b/a;

    move-result-object v0

    .line 2418
    invoke-virtual {v0, v6}, Lcom/c/b/a;->c(F)Lcom/c/b/a;

    move-result-object v0

    neg-int v1, v1

    int-to-float v1, v1

    .line 2420
    invoke-virtual {v0, v1}, Lcom/c/b/a;->b(F)Lcom/c/b/a;

    move-result-object v0

    .line 2421
    invoke-virtual {v0, v4, v5}, Lcom/c/b/a;->a(J)Lcom/c/b/a;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 2422
    invoke-virtual {v0, v1}, Lcom/c/b/a;->a(Landroid/view/animation/Interpolator;)Lcom/c/b/a;

    move-result-object v0

    .line 2423
    invoke-virtual {v0}, Lcom/c/b/a;->a()V

    .line 2425
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;->j:Landroid/support/design/widget/FloatingActionButton;

    invoke-static {v0}, Lcom/c/b/a;->a(Landroid/view/View;)Lcom/c/b/a;

    move-result-object v0

    .line 2426
    const/high16 v1, 0x43070000    # 135.0f

    .line 2427
    invoke-virtual {v0, v1}, Lcom/c/b/a;->a(F)Lcom/c/b/a;

    move-result-object v0

    .line 2428
    invoke-virtual {v0, v4, v5}, Lcom/c/b/a;->a(J)Lcom/c/b/a;

    move-result-object v0

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 2429
    invoke-virtual {v0, v1}, Lcom/c/b/a;->a(Landroid/view/animation/Interpolator;)Lcom/c/b/a;

    move-result-object v0

    .line 2430
    invoke-virtual {v0}, Lcom/c/b/a;->a()V

    .line 43
    return-void
.end method

.method static synthetic g(Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;->b()V

    return-void
.end method

.method static synthetic h(Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;)V
    .locals 3

    .prologue
    .line 43
    .line 3325
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3326
    const-string v1, "add_post_mode"

    const-string v2, "TWEET"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3327
    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;->startActivity(Landroid/content/Intent;)V

    .line 43
    return-void
.end method

.method static synthetic i(Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;)V
    .locals 3

    .prologue
    .line 43
    .line 4319
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4320
    const-string v1, "add_post_mode"

    const-string v2, "ARTICLE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4321
    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;->startActivity(Landroid/content/Intent;)V

    .line 43
    return-void
.end method

.method static synthetic j(Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;)V
    .locals 3

    .prologue
    .line 43
    .line 4331
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4332
    const-string v1, "INTENT_TYPE_NAME"

    const-string v2, "BOOK_COMMENT"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4333
    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;->startActivity(Landroid/content/Intent;)V

    .line 43
    return-void
.end method

.method static synthetic k(Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;->i:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic l(Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;->h:Landroid/widget/LinearLayout;

    return-object v0
.end method


# virtual methods
.method public createTabContent(Ljava/lang/String;)Landroid/view/View;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 160
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 161
    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 162
    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumWidth(I)V

    .line 163
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 86
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/BaseTabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 87
    const v0, 0x7f03005e

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;->setContentView(I)V

    .line 88
    const v0, 0x7f0501b2

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;->b(I)V

    .line 89
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;->a()Landroid/support/v7/app/a;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Landroid/support/v7/app/a;->a()Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0c0099

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;->n:Landroid/view/View;

    .line 1254
    const v0, 0x7f0c0166

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;->f:Landroid/widget/RelativeLayout;

    .line 1255
    const v0, 0x7f0c0167

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;->g:Landroid/widget/RelativeLayout;

    .line 1256
    const v0, 0x7f0c02cb

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;->findViewById(I)Landroid/view/View;

    .line 1257
    const v0, 0x7f0c02cf

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;->h:Landroid/widget/LinearLayout;

    .line 1258
    const v0, 0x7f0c02d1

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;->findViewById(I)Landroid/view/View;

    .line 1259
    const v0, 0x7f0c02cd

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;->i:Landroid/widget/LinearLayout;

    .line 1264
    const v0, 0x7f0c02cc

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/FloatingActionButton;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;->j:Landroid/support/design/widget/FloatingActionButton;

    .line 1265
    const v0, 0x7f0c02d0

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/FloatingActionButton;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;->k:Landroid/support/design/widget/FloatingActionButton;

    .line 1266
    const v0, 0x7f0c02d2

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/FloatingActionButton;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;->l:Landroid/support/design/widget/FloatingActionButton;

    .line 1267
    const v0, 0x7f0c02ce

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/FloatingActionButton;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;->m:Landroid/support/design/widget/FloatingActionButton;

    .line 1270
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;->j:Landroid/support/design/widget/FloatingActionButton;

    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/post/dP;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/ui/post/dP;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;)V

    invoke-virtual {v0, v2}, Landroid/support/design/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1288
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;->m:Landroid/support/design/widget/FloatingActionButton;

    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/post/dQ;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/ui/post/dQ;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;)V

    invoke-virtual {v0, v2}, Landroid/support/design/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1297
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;->k:Landroid/support/design/widget/FloatingActionButton;

    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/post/dR;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/ui/post/dR;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;)V

    invoke-virtual {v0, v2}, Landroid/support/design/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1306
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;->l:Landroid/support/design/widget/FloatingActionButton;

    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/post/dS;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/ui/post/dS;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;)V

    invoke-virtual {v0, v2}, Landroid/support/design/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1314
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;->b()V

    .line 1315
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;->f()V

    .line 92
    const v0, 0x7f0c00e8

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;->a:Landroid/widget/TabHost;

    .line 93
    const v0, 0x7f0c00e9

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;->c:Landroid/support/v4/view/ViewPager;

    .line 95
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/post/dV;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/ushaqi/zhuishushenqi/ui/post/dV;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;Landroid/support/v4/app/FragmentManager;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;->e:Lcom/ushaqi/zhuishushenqi/ui/post/dV;

    .line 96
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;->c:Landroid/support/v4/view/ViewPager;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 97
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;->c:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;->e:Lcom/ushaqi/zhuishushenqi/ui/post/dV;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 98
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;->c:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 100
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;->a:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->setup()V

    .line 101
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;->a:Landroid/widget/TabHost;

    invoke-virtual {v0, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 2138
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;->a:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 2139
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;->a:Landroid/widget/TabHost;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 2140
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;->a:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->clearAllTabs()V

    .line 2142
    :cond_0
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    .line 2143
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;->e:Lcom/ushaqi/zhuishushenqi/ui/post/dV;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/dV;->getCount()I

    move-result v4

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_1

    .line 2144
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;->a:Landroid/widget/TabHost;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "tab"

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v5

    .line 2145
    invoke-virtual {v5, p0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    .line 2147
    const v0, 0x7f0300bd

    const/4 v1, 0x0

    invoke-virtual {v3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 2148
    const v0, 0x7f0c0285

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2155
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;->e:Lcom/ushaqi/zhuishushenqi/ui/post/dV;

    invoke-virtual {v1, v2}, Lcom/ushaqi/zhuishushenqi/ui/post/dV;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2148
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2149
    invoke-virtual {v5, v6}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    .line 2150
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;->a:Landroid/widget/TabHost;

    invoke-virtual {v0, v5}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 2143
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 105
    :cond_1
    invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v0

    if-nez v0, :cond_2

    .line 106
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;->a:Landroid/widget/TabHost;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 108
    :cond_2
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 81
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/BaseTabActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 82
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    .prologue
    .line 188
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    .prologue
    .line 182
    invoke-virtual {p0, p1, p3}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;->a(II)V

    .line 183
    return-void
.end method

.method public onPageSelected(I)V
    .locals 3

    .prologue
    .line 173
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;->a:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v0

    .line 174
    invoke-virtual {v0}, Landroid/widget/TabWidget;->getDescendantFocusability()I

    move-result v1

    .line 175
    const/high16 v2, 0x60000

    invoke-virtual {v0, v2}, Landroid/widget/TabWidget;->setDescendantFocusability(I)V

    .line 176
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;->a:Landroid/widget/TabHost;

    invoke-virtual {v2, p1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 177
    invoke-virtual {v0, v1}, Landroid/widget/TabWidget;->setDescendantFocusability(I)V

    .line 178
    return-void
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 168
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;->a:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v0

    .line 2191
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;->e:Lcom/ushaqi/zhuishushenqi/ui/post/dV;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/ui/post/dV;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2192
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;->c:Landroid/support/v4/view/ViewPager;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 2195
    :cond_0
    if-eqz v0, :cond_1

    .line 2196
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;->g:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_0
    return-void

    .line 2198
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTabActivity;->g:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method
