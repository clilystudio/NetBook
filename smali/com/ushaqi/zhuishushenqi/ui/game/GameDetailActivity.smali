.class public Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;
.super Lcom/ushaqi/zhuishushenqi/ui/BaseLoadingActivity;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Lcom/ushaqi/zhuishushenqi/model/Game;

.field private c:Ljava/lang/String;

.field private e:Lcom/ushaqi/zhuishushenqi/widget/GameDownloadButton;

.field private f:Lcom/ushaqi/zhuishushenqi/widget/GameGiftGetButton;

.field private g:Lcom/ushaqi/zhuishushenqi/ui/game/r;

.field private h:Landroid/view/View;

.field private i:Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

.field private j:Lcom/ushaqi/zhuishushenqi/ui/game/n;

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/GamePostRoot$GamePost;",
            ">;"
        }
    .end annotation
.end field

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Landroid/content/BroadcastReceiver;

.field private p:Lcom/ushaqi/zhuishushenqi/widget/av;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseLoadingActivity;-><init>()V

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->k:Ljava/util/List;

    .line 83
    iput-boolean v1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->l:Z

    .line 85
    iput-boolean v1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->m:Z

    .line 86
    iput-boolean v1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->n:Z

    .line 200
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/game/h;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/ui/game/h;-><init>(Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->o:Landroid/content/BroadcastReceiver;

    .line 524
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/game/l;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/ui/game/l;-><init>(Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->p:Lcom/ushaqi/zhuishushenqi/widget/av;

    .line 533
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 89
    new-instance v0, Lcom/ushaqi/zhuishushenqi/d;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/d;-><init>()V

    const-class v1, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;

    invoke-virtual {v0, p0, v1}, Lcom/ushaqi/zhuishushenqi/d;->a(Landroid/content/Context;Ljava/lang/Class;)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    const-string v1, "game_id"

    invoke-virtual {v0, v1, p1}, Lcom/ushaqi/zhuishushenqi/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/d;->a()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;ZZ)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 92
    new-instance v0, Lcom/ushaqi/zhuishushenqi/d;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/d;-><init>()V

    const-class v1, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;

    invoke-virtual {v0, p0, v1}, Lcom/ushaqi/zhuishushenqi/d;->a(Landroid/content/Context;Ljava/lang/Class;)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    const-string v1, "game_id"

    .line 93
    invoke-virtual {v0, v1, p1}, Lcom/ushaqi/zhuishushenqi/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    const-string v1, "is_micro_game"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/d;->a(Ljava/lang/String;Ljava/io/Serializable;)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    const-string v1, "HAS_PLAYED"

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/d;->a(Ljava/lang/String;Ljava/io/Serializable;)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/d;->a()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;Lcom/ushaqi/zhuishushenqi/model/Game;)Lcom/ushaqi/zhuishushenqi/model/Game;
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->b:Lcom/ushaqi/zhuishushenqi/model/Game;

    return-object p1
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;)V
    .locals 2

    .prologue
    .line 62
    .line 1188
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->b:Lcom/ushaqi/zhuishushenqi/model/Game;

    if-eqz v0, :cond_1

    .line 1574
    const-string v0, "game_center_edit_post_always"

    invoke-static {p0, v0}, Lcom/umeng/a/b;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1575
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1191
    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->m:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->b:Lcom/ushaqi/zhuishushenqi/model/Game;

    .line 1192
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Game;->getAndroidPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/arcsoft/hpay100/a/a;->j(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1193
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->b:Lcom/ushaqi/zhuishushenqi/model/Game;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Game;->get_id()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/AddGamePostActivity;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1194
    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 1195
    :cond_1
    :goto_0
    return-void

    .line 1196
    :cond_2
    const-string v0, "\u5b89\u88c5\u540e\u624d\u80fd\u4e00\u8d77\u6109\u5feb\u5730\u5410\u69fd\u54df~"

    invoke-static {p0, v0}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;Landroid/view/View;Landroid/widget/TextView;ILjava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 62
    .line 4493
    invoke-static {p0}, Landroid/support/design/widget/am;->a(Landroid/app/Activity;)Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v0

    .line 4494
    if-eqz v0, :cond_0

    .line 4495
    invoke-virtual {p1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 4496
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v2, p3, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4497
    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/game/m;

    invoke-direct {v1, p0, v3}, Lcom/ushaqi/zhuishushenqi/ui/game/m;-><init>(Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;B)V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    aput-object p4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Account;->getToken()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/ushaqi/zhuishushenqi/ui/game/m;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 62
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;Landroid/view/View;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 62
    .line 3502
    new-instance v0, Lcom/koushikdutta/async/http/a;

    invoke-direct {v0, p0, p1}, Lcom/koushikdutta/async/http/a;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 3503
    invoke-virtual {v0}, Lcom/koushikdutta/async/http/a;->b()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f0d0003

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/a;->a()Landroid/view/Menu;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 3504
    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/game/k;

    invoke-direct {v1, p0, p2}, Lcom/ushaqi/zhuishushenqi/ui/game/k;-><init>(Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/a;->a(Landroid/support/v7/widget/m;)V

    .line 3518
    invoke-virtual {v0}, Lcom/koushikdutta/async/http/a;->c()V

    .line 62
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;Ljava/lang/String;Landroid/view/View;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 62
    .line 4478
    invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v0

    .line 4479
    if-eqz v0, :cond_1

    .line 4480
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Account;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 4481
    invoke-static {v0, p1}, Lcom/ushaqi/zhuishushenqi/db/PostAgreeRecord;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/db/PostAgreeRecord;

    move-result-object v0

    .line 4482
    if-eqz v0, :cond_0

    .line 4483
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 4487
    :goto_0
    return-void

    .line 4485
    :cond_0
    invoke-virtual {p2, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .line 4488
    :cond_1
    invoke-virtual {p2, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;)Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->i:Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

    return-object v0
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;Lcom/ushaqi/zhuishushenqi/model/Game;)V
    .locals 9

    .prologue
    .line 62
    .line 2282
    const v0, 0x7f0c025a

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;

    .line 2385
    invoke-static {p0}, Landroid/support/design/widget/am;->b(Landroid/app/Activity;)Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v1, v1, 0x2

    .line 2386
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 2387
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2388
    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2284
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Game;->getBanner()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;->setImageUrl(Ljava/lang/String;)V

    .line 2285
    const v0, 0x7f0c025f

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Game;->getShortIntro()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2286
    const v0, 0x7f0c025c

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Game;->getIcon()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;->setImageUrl(Ljava/lang/String;)V

    .line 2287
    const v0, 0x7f0c025d

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Game;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2288
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->m:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Game;->getCat()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 2289
    :goto_0
    const v0, 0x7f0c025e

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2290
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Game;->getIntro()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2292
    const v0, 0x7f0c00e5

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 2293
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Game;->getPictures()[Ljava/lang/String;

    move-result-object v3

    .line 2294
    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {p0, v1}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;F)I

    move-result v4

    .line 2295
    const/4 v1, 0x0

    move v2, v1

    :goto_1
    array-length v1, v3

    if-ge v2, v1, :cond_2

    .line 2296
    aget-object v1, v3, v2

    .line 3307
    new-instance v5, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;

    invoke-direct {v5, p0}, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;-><init>(Landroid/content/Context;)V

    .line 3309
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v7, 0x43700000    # 240.0f

    invoke-static {p0, v7}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;F)I

    move-result v7

    const/high16 v8, 0x43200000    # 160.0f

    invoke-static {p0, v8}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;F)I

    move-result v8

    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 3310
    sget-object v7, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v7}, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 3311
    invoke-virtual {v5, v6}, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2298
    invoke-virtual {v5, v1}, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;->setImageUrl(Ljava/lang/String;)V

    .line 2299
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2300
    array-length v1, v3

    add-int/lit8 v1, v1, -0x1

    if-eq v2, v1, :cond_0

    .line 2301
    invoke-virtual {v5}, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 2295
    :cond_0
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 2288
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Game;->getCat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Game;->getAndroidSize()I

    move-result v1

    invoke-static {v1}, Lcom/arcsoft/hpay100/a/a;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_0

    .line 62
    :cond_2
    return-void
.end method

.method static synthetic c(Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->k:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;)V
    .locals 2

    .prologue
    .line 62
    .line 2183
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->a:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2184
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->a:Landroid/widget/TextView;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 62
    return-void
.end method

.method static synthetic e(Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;)Lcom/ushaqi/zhuishushenqi/model/Game;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->b:Lcom/ushaqi/zhuishushenqi/model/Game;

    return-object v0
.end method

.method static synthetic f(Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->j()V

    return-void
.end method

.method static synthetic g(Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 62
    .line 3319
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->h:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 3320
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/game/r;

    invoke-direct {v0, p0, v3}, Lcom/ushaqi/zhuishushenqi/ui/game/r;-><init>(Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;B)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->g:Lcom/ushaqi/zhuishushenqi/ui/game/r;

    .line 3321
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->g:Lcom/ushaqi/zhuishushenqi/ui/game/r;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->b:Lcom/ushaqi/zhuishushenqi/model/Game;

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/Game;->get_id()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/game/r;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 62
    return-void
.end method

.method static synthetic h(Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;)Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->n:Z

    return v0
.end method

.method static synthetic i(Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->h:Landroid/view/View;

    return-object v0
.end method

.method static synthetic j(Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;)Lcom/ushaqi/zhuishushenqi/widget/av;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->p:Lcom/ushaqi/zhuishushenqi/widget/av;

    return-object v0
.end method

.method private j()V
    .locals 2

    .prologue
    .line 255
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->m:Z

    if-eqz v0, :cond_2

    .line 256
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->e:Lcom/ushaqi/zhuishushenqi/widget/GameDownloadButton;

    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->n:Z

    if-eqz v0, :cond_1

    const-string v0, "\u7ee7\u7eed"

    :goto_0
    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/widget/GameDownloadButton;->setText(Ljava/lang/CharSequence;)V

    .line 257
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->e:Lcom/ushaqi/zhuishushenqi/widget/GameDownloadButton;

    const v1, 0x7f020254

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/GameDownloadButton;->setBackgroundResource(I)V

    .line 258
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->e:Lcom/ushaqi/zhuishushenqi/widget/GameDownloadButton;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/game/i;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/game/i;-><init>(Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/GameDownloadButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 279
    :cond_0
    :goto_1
    return-void

    .line 256
    :cond_1
    const-string v0, "\u8bd5\u73a9"

    goto :goto_0

    .line 271
    :cond_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->b:Lcom/ushaqi/zhuishushenqi/model/Game;

    invoke-static {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/game/s;->a(Landroid/app/Activity;Lcom/ushaqi/zhuishushenqi/model/Game;)V

    .line 272
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->e:Lcom/ushaqi/zhuishushenqi/widget/GameDownloadButton;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->b:Lcom/ushaqi/zhuishushenqi/model/Game;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/GameDownloadButton;->setGame(Lcom/ushaqi/zhuishushenqi/model/Game;)V

    .line 273
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->e:Lcom/ushaqi/zhuishushenqi/widget/GameDownloadButton;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->b:Lcom/ushaqi/zhuishushenqi/model/Game;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/Game;->getDownloadStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/GameDownloadButton;->a(I)V

    .line 275
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->f:Lcom/ushaqi/zhuishushenqi/widget/GameGiftGetButton;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->f:Lcom/ushaqi/zhuishushenqi/widget/GameGiftGetButton;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->b:Lcom/ushaqi/zhuishushenqi/model/Game;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/GameGiftGetButton;->setGame(Lcom/ushaqi/zhuishushenqi/model/Game;)V

    .line 277
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->f:Lcom/ushaqi/zhuishushenqi/widget/GameGiftGetButton;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->b:Lcom/ushaqi/zhuishushenqi/model/Game;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/Game;->getDownloadStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/GameGiftGetButton;->a(I)V

    goto :goto_1
.end method

.method static synthetic k(Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;)Lcom/ushaqi/zhuishushenqi/ui/game/n;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->j:Lcom/ushaqi/zhuishushenqi/ui/game/n;

    return-object v0
.end method

.method static synthetic l(Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;)V
    .locals 3

    .prologue
    .line 62
    .line 3370
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->h:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3371
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->h:Landroid/view/View;

    const v1, 0x7f0c00dd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3372
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->h:Landroid/view/View;

    const v1, 0x7f0c03a6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3373
    const-string v1, "\u70b9\u51fb\u91cd\u8bd5"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3374
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->h:Landroid/view/View;

    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/game/j;

    invoke-direct {v2, p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/game/j;-><init>(Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;Landroid/widget/TextView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    return-void
.end method

.method static synthetic m(Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;)Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->l:Z

    return v0
.end method

.method static synthetic n(Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;)Lcom/ushaqi/zhuishushenqi/ui/game/r;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->g:Lcom/ushaqi/zhuishushenqi/ui/game/r;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/ushaqi/zhuishushenqi/widget/GameGiftGetButton;)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->f:Lcom/ushaqi/zhuishushenqi/widget/GameGiftGetButton;

    .line 252
    return-void
.end method

.method protected final b()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 145
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->i()V

    .line 146
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/game/q;

    invoke-direct {v0, p0, v3}, Lcom/ushaqi/zhuishushenqi/ui/game/q;-><init>(Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;B)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->c:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/game/q;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 147
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 559
    invoke-super {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseLoadingActivity;->onBackPressed()V

    .line 560
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "from_splash"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 561
    if-eqz v0, :cond_0

    .line 562
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 563
    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 565
    :cond_0
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->finish()V

    .line 566
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 98
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/BaseLoadingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 99
    const v0, 0x7f03015a

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->a(I)V

    .line 100
    const v0, 0x7f050115

    const v1, 0x7f02016a

    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/game/d;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/ui/game/d;-><init>(Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->b(IILcom/ushaqi/zhuishushenqi/ui/aa;)V

    .line 107
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "game_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->c:Ljava/lang/String;

    .line 108
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "is_micro_game"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->m:Z

    .line 109
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "HAS_PLAYED"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->n:Z

    .line 111
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 112
    const v0, 0x7f0c045d

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->i:Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

    .line 113
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->i:Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

    invoke-virtual {v0, v5}, Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;->setDividerHeight(I)V

    .line 114
    const v0, 0x7f0300b6

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->i:Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

    invoke-virtual {v1, v0, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 1165
    const v0, 0x7f0c0263

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->a:Landroid/widget/TextView;

    .line 1166
    const v0, 0x7f0c0260

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/GameDownloadButton;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->e:Lcom/ushaqi/zhuishushenqi/widget/GameDownloadButton;

    .line 1167
    const v0, 0x7f0c0264

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1168
    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->a:Landroid/widget/TextView;

    new-instance v4, Lcom/ushaqi/zhuishushenqi/ui/game/f;

    invoke-direct {v4, p0}, Lcom/ushaqi/zhuishushenqi/ui/game/f;-><init>(Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1174
    new-instance v3, Lcom/ushaqi/zhuishushenqi/ui/game/g;

    invoke-direct {v3, p0}, Lcom/ushaqi/zhuishushenqi/ui/game/g;-><init>(Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->i:Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

    invoke-virtual {v0, v2, v6, v5}, Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 117
    const v0, 0x7f03011d

    invoke-virtual {v1, v0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->h:Landroid/view/View;

    .line 118
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->i:Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->h:Landroid/view/View;

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;->addFooterView(Landroid/view/View;)V

    .line 120
    const v0, 0x7f0300b7

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->i:Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

    invoke-virtual {v1, v0, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/GameGiftView;

    .line 121
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->i:Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

    invoke-virtual {v2, v0, v6, v5}, Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 122
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->c:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->m:Z

    invoke-virtual {v0, v2, v3}, Lcom/ushaqi/zhuishushenqi/widget/GameGiftView;->a(Ljava/lang/String;Z)V

    .line 124
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/game/n;

    invoke-direct {v0, p0, v1}, Lcom/ushaqi/zhuishushenqi/ui/game/n;-><init>(Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;Landroid/view/LayoutInflater;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->j:Lcom/ushaqi/zhuishushenqi/ui/game/n;

    .line 125
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->i:Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->j:Lcom/ushaqi/zhuishushenqi/ui/game/n;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 126
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->i:Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/game/e;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/game/e;-><init>(Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 138
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->b()V

    .line 140
    const-string v0, "community_user_gender_icon_toggle"

    invoke-static {p0, v0}, Lcom/arcsoft/hpay100/a/a;->r(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->l:Z

    .line 141
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 160
    invoke-super {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseLoadingActivity;->onPause()V

    .line 161
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->o:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 162
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 151
    invoke-super {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseLoadingActivity;->onResume()V

    .line 152
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->o:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "update_game_item_status"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 153
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->b:Lcom/ushaqi/zhuishushenqi/model/Game;

    if-eqz v0, :cond_0

    .line 154
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->j()V

    .line 156
    :cond_0
    return-void
.end method
