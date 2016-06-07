.class public Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter$PromotionViewPager;
.super Landroid/support/v7/widget/ay;
.source "SourceFile"


# instance fields
.field i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field j:Landroid/os/Handler;

.field final synthetic k:Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter;

.field private l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field mViewDots:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c026c
    .end annotation
.end field

.field mViewPager:Landroid/support/v4/view/ViewPager;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c026b
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter;Landroid/view/View;)V
    .locals 7

    .prologue
    const/4 v3, -0x2

    const/16 v1, 0x14

    .line 278
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter$PromotionViewPager;->k:Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter;

    .line 279
    invoke-direct {p0, p2}, Landroid/support/v7/widget/ay;-><init>(Landroid/view/View;)V

    .line 451
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/game/ag;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/ui/game/ag;-><init>(Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter$PromotionViewPager;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter$PromotionViewPager;->j:Landroid/os/Handler;

    .line 280
    invoke-static {p0, p2}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 282
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter$PromotionViewPager;->i:Ljava/util/ArrayList;

    .line 283
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter$PromotionViewPager;->l:Ljava/util/ArrayList;

    .line 286
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 288
    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 289
    iget-object v0, p1, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;->a(Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;)[Lcom/ushaqi/zhuishushenqi/model/Game;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v0, v3, v1

    .line 294
    new-instance v5, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;

    iget-object v6, p1, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;

    invoke-virtual {v6}, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;-><init>(Landroid/content/Context;)V

    .line 295
    invoke-virtual {v5, v2}, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 296
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Game;->getBanner()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;->setImageUrl(Ljava/lang/String;)V

    .line 297
    sget-object v6, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v6}, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 298
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Game;->get_id()Ljava/lang/String;

    move-result-object v0

    .line 299
    new-instance v6, Lcom/ushaqi/zhuishushenqi/ui/game/ac;

    invoke-direct {v6, p0, p1, v0}, Lcom/ushaqi/zhuishushenqi/ui/game/ac;-><init>(Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter$PromotionViewPager;Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 305
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter$PromotionViewPager;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    new-instance v5, Landroid/widget/ImageView;

    iget-object v0, p1, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {v5, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 308
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter$PromotionViewPager;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f0201a7

    :goto_1
    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 309
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter$PromotionViewPager;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter$PromotionViewPager;->mViewDots:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 289
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 308
    :cond_0
    const v0, 0x7f0201a6

    goto :goto_1

    .line 312
    :cond_1
    return-void
.end method

.method private static a(Landroid/widget/ImageView;Z)V
    .locals 1

    .prologue
    .line 363
    if-eqz p1, :cond_0

    .line 364
    const v0, 0x7f0201a7

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 368
    :goto_0
    return-void

    .line 366
    :cond_0
    const v0, 0x7f0201a6

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter$PromotionViewPager;)V
    .locals 0

    .prologue
    .line 269
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter$PromotionViewPager;->s()V

    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter$PromotionViewPager;I)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 269
    move v1, v2

    .line 2409
    :goto_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter$PromotionViewPager;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 2410
    if-ne v1, p1, :cond_0

    .line 2411
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter$PromotionViewPager;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v3, 0x1

    invoke-static {v0, v3}, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter$PromotionViewPager;->a(Landroid/widget/ImageView;Z)V

    .line 2409
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 2413
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter$PromotionViewPager;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v0, v2}, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter$PromotionViewPager;->a(Landroid/widget/ImageView;Z)V

    goto :goto_1

    .line 269
    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter$PromotionViewPager;)V
    .locals 0

    .prologue
    .line 269
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter$PromotionViewPager;->r()V

    return-void
.end method

.method private r()V
    .locals 6

    .prologue
    const-wide/16 v2, 0x1388

    .line 422
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter$PromotionViewPager;->k:Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;->a:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter$PromotionViewPager;->k:Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, v0, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;->a:Ljava/util/Timer;

    .line 1440
    :cond_0
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter$PromotionViewPager;->s()V

    .line 1441
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter$PromotionViewPager;->k:Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/game/af;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/game/af;-><init>(Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter$PromotionViewPager;)V

    iput-object v1, v0, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;->b:Ljava/util/TimerTask;

    .line 426
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter$PromotionViewPager;->k:Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;->a:Ljava/util/Timer;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter$PromotionViewPager;->k:Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter;

    iget-object v1, v1, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;

    iget-object v1, v1, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;->b:Ljava/util/TimerTask;

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 427
    return-void
.end method

.method private s()V
    .locals 2

    .prologue
    .line 433
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter$PromotionViewPager;->k:Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;->b:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter$PromotionViewPager;->k:Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;->b:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 435
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter$PromotionViewPager;->k:Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;->b:Ljava/util/TimerTask;

    .line 437
    :cond_0
    return-void
.end method


# virtual methods
.method public final q()V
    .locals 2

    .prologue
    .line 318
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter$PromotionViewPager;->mViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/game/ah;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/game/ah;-><init>(Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter$PromotionViewPager;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 319
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter$PromotionViewPager;->mViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/game/ad;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/game/ad;-><init>(Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter$PromotionViewPager;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 336
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter$PromotionViewPager;->mViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/game/ae;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/game/ae;-><init>(Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter$PromotionViewPager;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 351
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter$PromotionViewPager;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter$PromotionViewPager;->k:Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter;

    iget-object v1, v1, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;

    iget v1, v1, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;->c:I

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 353
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter$PromotionViewPager;->r()V

    .line 354
    return-void
.end method
