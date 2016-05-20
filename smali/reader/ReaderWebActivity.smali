.class public Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;
.super Lcom/ushaqi/zhuishushenqi/reader/BaseReadActivity;
.source "SourceFile"


# instance fields
.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActionBar;

.field private h:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/BaseReadActivity;-><init>()V

    .line 538
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;I)I
    .locals 0

    .prologue
    .line 50
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;->h:I

    return p1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 67
    new-instance v0, Lcom/ushaqi/zhuishushenqi/d;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/d;-><init>()V

    const-class v1, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;

    invoke-virtual {v0, p0, v1}, Lcom/ushaqi/zhuishushenqi/d;->a(Landroid/content/Context;Ljava/lang/Class;)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    const-string v1, "BOOK_ID"

    .line 68
    invoke-virtual {v0, v1, p1}, Lcom/ushaqi/zhuishushenqi/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    const-string v1, "BOOK_TITLE"

    invoke-virtual {v0, v1, p2}, Lcom/ushaqi/zhuishushenqi/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    const-string v1, "TOC_ID"

    invoke-virtual {v0, v1, p3}, Lcom/ushaqi/zhuishushenqi/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    const-string v1, "SOURCE_ID"

    invoke-virtual {v0, v1, p4}, Lcom/ushaqi/zhuishushenqi/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    const-string v1, "BOOK_MODE"

    .line 69
    invoke-virtual {v0, v1, p5}, Lcom/ushaqi/zhuishushenqi/d;->a(Ljava/lang/String;I)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/d;->a()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;[Lcom/ushaqi/zhuishushenqi/model/mixtoc/SgTocChapter;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/mixtoc/SgTocChapter;
    .locals 4

    .prologue
    .line 50
    .line 6299
    array-length v2, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v0, p1, v1

    .line 6300
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/mixtoc/SgTocChapter;->getCmd()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6301
    :goto_1
    return-object v0

    .line 6299
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 6304
    :cond_1
    const/4 v0, 0x0

    .line 50
    goto :goto_1
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;)Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActionBar;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;->g:Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActionBar;

    return-object v0
.end method

.method private a(I)V
    .locals 4

    .prologue
    .line 288
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 289
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;->e:Ljava/lang/String;

    .line 4227
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-class v3, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebPageFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebPageFragment;

    .line 4228
    if-nez v0, :cond_0

    .line 4229
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;->b:I

    invoke-static {v0, v2, p1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebPageFragment;->a(ILjava/lang/String;I)Lcom/ushaqi/zhuishushenqi/reader/ReaderWebPageFragment;

    move-result-object v0

    .line 290
    :cond_0
    const v2, 0x7f0c0136

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 292
    :try_start_0
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    :goto_0
    return-void

    .line 293
    :catch_0
    move-exception v0

    .line 294
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;ILjava/lang/String;)V
    .locals 4

    .prologue
    .line 50
    .line 7319
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 7320
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;->e:Ljava/lang/String;

    .line 8243
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-class v3, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebPageFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebPageFragment;

    .line 8244
    if-nez v0, :cond_0

    .line 8245
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;->b:I

    invoke-static {v0, v2, p1, p2}, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebPageFragment;->a(ILjava/lang/String;ILjava/lang/String;)Lcom/ushaqi/zhuishushenqi/reader/ReaderWebPageFragment;

    move-result-object v0

    .line 7321
    :cond_0
    const v2, 0x7f0c0136

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 7323
    :try_start_0
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7326
    :goto_0
    return-void

    .line 7324
    :catch_0
    move-exception v0

    .line 7325
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 50
    .line 6308
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v6

    .line 6309
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;->e:Ljava/lang/String;

    .line 7235
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-class v1, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebPageFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebPageFragment;

    .line 7236
    if-nez v0, :cond_0

    .line 7237
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;->b:I

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebPageFragment;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/reader/ReaderWebPageFragment;

    move-result-object v0

    .line 6310
    :cond_0
    const v1, 0x7f0c0136

    invoke-virtual {v6, v1, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 6312
    :try_start_0
    invoke-virtual {v6}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6315
    :goto_0
    return-void

    .line 6313
    :catch_0
    move-exception v0

    .line 6314
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;)V
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 50
    .line 5198
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;->f:Ljava/lang/String;

    invoke-static {p0, v0, v5}, Lcom/arcsoft/hpay100/a/a;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 5200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "source_web_alert"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v4}, Lcom/arcsoft/hpay100/a/a;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 5202
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/db/SourceRecord;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/db/SourceRecord;

    move-result-object v0

    .line 5203
    if-nez v0, :cond_0

    .line 5204
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;->f:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/db/SourceRecord;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5336
    :cond_0
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "TOC_ID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5337
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "SELECT_LAST"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 5338
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;->f:Ljava/lang/String;

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 5339
    const-string v1, "SELECT_LAST"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5340
    const-string v1, "SOURCE_ID"

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5341
    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;->startActivity(Landroid/content/Intent;)V

    .line 5342
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;->finish()V

    .line 50
    return-void
.end method

.method static synthetic c(Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 50
    .line 5385
    invoke-static {}, Lcom/arcsoft/hpay100/a/a;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5386
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 5387
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 5388
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03009e

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 5389
    const v0, 0x7f0c0229

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 5390
    const v1, 0x7f0c022a

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 5391
    new-instance v4, Lcom/ushaqi/zhuishushenqi/reader/cE;

    invoke-direct {v4, p0, v2}, Lcom/ushaqi/zhuishushenqi/reader/cE;-><init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5397
    new-instance v0, Lcom/ushaqi/zhuishushenqi/reader/cF;

    invoke-direct {v0, p0, v2}, Lcom/ushaqi/zhuishushenqi/reader/cF;-><init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;Landroid/app/AlertDialog;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5404
    invoke-virtual {v2, v5}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 5405
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 5406
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 5407
    :goto_0
    return-void

    .line 5408
    :cond_0
    new-instance v0, Luk/me/lewisdeane/ldialogs/h;

    invoke-direct {v0, p0}, Luk/me/lewisdeane/ldialogs/h;-><init>(Landroid/content/Context;)V

    const v1, 0x7f05015f

    invoke-virtual {v0, v1}, Luk/me/lewisdeane/ldialogs/h;->b(I)Luk/me/lewisdeane/ldialogs/h;

    move-result-object v0

    .line 5409
    invoke-virtual {v0, v5}, Luk/me/lewisdeane/ldialogs/h;->a(Z)Luk/me/lewisdeane/ldialogs/h;

    move-result-object v0

    const-string v1, "\u8f6c\u7801\u9605\u8bfb"

    new-instance v2, Lcom/ushaqi/zhuishushenqi/reader/cH;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/reader/cH;-><init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;)V

    .line 5410
    invoke-virtual {v0, v1, v2}, Luk/me/lewisdeane/ldialogs/h;->a(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Luk/me/lewisdeane/ldialogs/h;

    move-result-object v0

    const-string v1, "\u539f\u7f51\u9875\u9605\u8bfb"

    new-instance v2, Lcom/ushaqi/zhuishushenqi/reader/cG;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/reader/cG;-><init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;)V

    .line 5416
    invoke-virtual {v0, v1, v2}, Luk/me/lewisdeane/ldialogs/h;->b(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Luk/me/lewisdeane/ldialogs/h;

    move-result-object v0

    .line 5420
    invoke-virtual {v0}, Luk/me/lewisdeane/ldialogs/h;->b()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method static synthetic d(Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;)I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;->h:I

    return v0
.end method

.method static synthetic e(Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;->c:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 186
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;->d:Ljava/lang/String;

    iget v2, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;->b:I

    invoke-static {p0, v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/reader/ModeListActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 187
    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;->startActivity(Landroid/content/Intent;)V

    .line 188
    const v0, 0x7f04001a

    const v1, 0x7f04001b

    invoke-virtual {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;->overridePendingTransition(II)V

    .line 189
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;->d:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/BookPostTabActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 193
    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;->startActivity(Landroid/content/Intent;)V

    .line 194
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x5

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 74
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/reader/BaseReadActivity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    const v0, 0x7f030054

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;->setContentView(I)V

    .line 77
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/a/b;->a(Ljava/lang/Object;)V

    .line 79
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "BOOK_ID"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;->c:Ljava/lang/String;

    .line 80
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "BOOK_TITLE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;->d:Ljava/lang/String;

    .line 81
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "SOURCE_ID"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;->e:Ljava/lang/String;

    .line 83
    if-eqz p1, :cond_3

    .line 84
    const-string v0, "savedCurrentMode"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;->b:I

    .line 88
    :goto_0
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;->b:I

    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->g(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;->f:Ljava/lang/String;

    .line 1152
    const v0, 0x7f0c0135

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActionBar;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;->g:Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActionBar;

    .line 1153
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;->g:Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActionBar;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActionBar;->setTitle(Ljava/lang/String;)V

    .line 1154
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;->g:Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActionBar;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;->f:Ljava/lang/String;

    invoke-static {v2}, Lcom/arcsoft/hpay100/a/a;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActionBar;->setChapterLink(Ljava/lang/String;)V

    .line 1155
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;->g:Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActionBar;

    new-instance v2, Lcom/ushaqi/zhuishushenqi/reader/cB;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/reader/cB;-><init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;)V

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActionBar;->setOnBtnClickListener$74b8600c(Lcom/umeng/update/a;)V

    .line 93
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;->c:Ljava/lang/String;

    iget v2, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;->b:I

    invoke-static {v0, v2}, Lcom/ushaqi/zhuishushenqi/db/SourceWebReadRecord;->get(Ljava/lang/String;I)Lcom/ushaqi/zhuishushenqi/db/SourceWebReadRecord;

    move-result-object v2

    .line 94
    if-eqz v2, :cond_7

    .line 95
    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/db/SourceWebReadRecord;->getChapterIndex()I

    move-result v0

    .line 98
    :goto_1
    iget v4, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;->b:I

    packed-switch v4, :pswitch_data_0

    .line 3213
    :pswitch_0
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 3214
    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;->e:Ljava/lang/String;

    .line 3219
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-class v5, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebPageFragment;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebPageFragment;

    .line 3220
    if-nez v0, :cond_0

    .line 3221
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;->b:I

    invoke-static {v0, v4}, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebPageFragment;->a(ILjava/lang/String;)Lcom/ushaqi/zhuishushenqi/reader/ReaderWebPageFragment;

    move-result-object v0

    .line 3215
    :cond_0
    const v4, 0x7f0c0136

    invoke-virtual {v2, v4, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 121
    :cond_1
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "source_web_alert"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 122
    invoke-static {p0, v0}, Lcom/arcsoft/hpay100/a/a;->l(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 123
    if-eqz v0, :cond_2

    .line 3346
    const v0, 0x7f05015e

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3347
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v4, 0x7f03009d

    invoke-virtual {v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 3348
    new-instance v3, Lcom/ushaqi/zhuishushenqi/reader/cC;

    invoke-direct {v3, p0, v2}, Lcom/ushaqi/zhuishushenqi/reader/cC;-><init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;Landroid/view/View;)V

    .line 3360
    invoke-static {}, Lcom/arcsoft/hpay100/a/a;->g()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 3361
    const v0, 0x7f0c0228

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3362
    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;->f:Ljava/lang/String;

    invoke-static {v4}, Lcom/arcsoft/hpay100/a/a;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3363
    new-instance v0, Luk/me/lewisdeane/ldialogs/h;

    invoke-direct {v0, p0}, Luk/me/lewisdeane/ldialogs/h;-><init>(Landroid/content/Context;)V

    .line 3364
    invoke-virtual {v0, v2}, Luk/me/lewisdeane/ldialogs/h;->a(Landroid/view/View;)Luk/me/lewisdeane/ldialogs/h;

    move-result-object v0

    .line 3365
    invoke-virtual {v0, v1}, Luk/me/lewisdeane/ldialogs/h;->a(Z)Luk/me/lewisdeane/ldialogs/h;

    move-result-object v0

    .line 3366
    invoke-virtual {v0, v6}, Luk/me/lewisdeane/ldialogs/h;->b(Z)Luk/me/lewisdeane/ldialogs/h;

    move-result-object v0

    const-string v2, "\u597d\u7684"

    .line 3367
    invoke-virtual {v0, v2, v3}, Luk/me/lewisdeane/ldialogs/h;->a(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Luk/me/lewisdeane/ldialogs/h;

    move-result-object v0

    .line 3368
    invoke-virtual {v0}, Luk/me/lewisdeane/ldialogs/h;->b()Landroid/app/AlertDialog;

    .line 128
    :cond_2
    :goto_3
    new-instance v0, Lcom/ushaqi/zhuishushenqi/reader/cL;

    invoke-direct {v0, p0, v1}, Lcom/ushaqi/zhuishushenqi/reader/cL;-><init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;B)V

    new-array v2, v6, [Ljava/lang/String;

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;->c:Ljava/lang/String;

    aput-object v3, v2, v1

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/reader/cL;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 129
    return-void

    .line 86
    :cond_3
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "BOOK_MODE"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;->b:I

    goto/16 :goto_0

    .line 100
    :pswitch_1
    add-int/lit8 v0, v0, 0x1

    .line 1270
    new-instance v2, Lcom/ushaqi/zhuishushenqi/reader/cK;

    invoke-direct {v2, p0, p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/cK;-><init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;Landroid/app/Activity;I)V

    new-array v0, v6, [Ljava/lang/String;

    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;->e:Ljava/lang/String;

    aput-object v4, v0, v1

    invoke-virtual {v2, v0}, Lcom/ushaqi/zhuishushenqi/reader/cK;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_2

    .line 105
    :pswitch_2
    if-eqz v2, :cond_6

    .line 106
    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/db/SourceWebReadRecord;->getCmd()Ljava/lang/String;

    move-result-object v2

    .line 2258
    :goto_4
    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;->c:Ljava/lang/String;

    invoke-static {v4}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->get(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;

    move-result-object v4

    .line 2259
    if-eqz v4, :cond_4

    .line 2260
    new-instance v4, Lcom/ushaqi/zhuishushenqi/reader/cJ;

    invoke-direct {v4, p0, p0, v0, v2}, Lcom/ushaqi/zhuishushenqi/reader/cJ;-><init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;Landroid/app/Activity;ILjava/lang/String;)V

    new-array v0, v6, [Ljava/lang/String;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;->e:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-virtual {v4, v0}, Lcom/ushaqi/zhuishushenqi/reader/cJ;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_2

    .line 2262
    :cond_4
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a()Lcom/ushaqi/zhuishushenqi/MyApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ushaqi/zhuishushenqi/MyApplication;->c()Lcom/ushaqi/zhuishushenqi/model/BookInfo;

    move-result-object v4

    .line 2263
    if-eqz v4, :cond_1

    .line 2264
    new-instance v4, Lcom/ushaqi/zhuishushenqi/reader/cJ;

    invoke-direct {v4, p0, p0, v0, v2}, Lcom/ushaqi/zhuishushenqi/reader/cJ;-><init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;Landroid/app/Activity;ILjava/lang/String;)V

    new-array v0, v6, [Ljava/lang/String;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;->e:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-virtual {v4, v0}, Lcom/ushaqi/zhuishushenqi/reader/cJ;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_2

    .line 2277
    :pswitch_3
    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;->a(I)V

    goto/16 :goto_2

    .line 2284
    :pswitch_4
    new-instance v2, Lcom/ushaqi/zhuishushenqi/reader/cI;

    invoke-direct {v2, p0, p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/cI;-><init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;Landroid/app/Activity;I)V

    new-array v0, v6, [Ljava/lang/String;

    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;->e:Ljava/lang/String;

    aput-object v4, v0, v1

    invoke-virtual {v2, v0}, Lcom/ushaqi/zhuishushenqi/reader/cI;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_2

    .line 3370
    :cond_5
    new-instance v2, Lcom/ushaqi/zhuishushenqi/reader/cD;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/reader/cD;-><init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;)V

    .line 3376
    new-instance v4, Luk/me/lewisdeane/ldialogs/h;

    invoke-direct {v4, p0}, Luk/me/lewisdeane/ldialogs/h;-><init>(Landroid/content/Context;)V

    .line 4046
    iput-object v0, v4, Luk/me/lewisdeane/ldialogs/h;->e:Ljava/lang/String;

    .line 3378
    invoke-virtual {v4, v1}, Luk/me/lewisdeane/ldialogs/h;->a(Z)Luk/me/lewisdeane/ldialogs/h;

    move-result-object v0

    const-string v4, "\u597d\u7684"

    .line 3379
    invoke-virtual {v0, v4, v3}, Luk/me/lewisdeane/ldialogs/h;->a(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Luk/me/lewisdeane/ldialogs/h;

    move-result-object v0

    const-string v3, "\u4e0d\u4f7f\u7528"

    .line 3380
    invoke-virtual {v0, v3, v2}, Luk/me/lewisdeane/ldialogs/h;->b(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Luk/me/lewisdeane/ldialogs/h;

    move-result-object v0

    invoke-virtual {v0}, Luk/me/lewisdeane/ldialogs/h;->b()Landroid/app/AlertDialog;

    goto/16 :goto_3

    :cond_6
    move-object v2, v3

    goto :goto_4

    :cond_7
    move v0, v1

    goto/16 :goto_1

    .line 98
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 139
    invoke-super {p0}, Lcom/ushaqi/zhuishushenqi/reader/BaseReadActivity;->onDestroy()V

    .line 140
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/a/b;->b(Ljava/lang/Object;)V

    .line 141
    return-void
.end method

.method public onModeChanged(Lcom/ushaqi/zhuishushenqi/event/v;)V
    .locals 0
    .annotation runtime Lcom/squareup/a/l;
    .end annotation

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;->finish()V

    .line 146
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 133
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/reader/BaseReadActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 134
    const-string v0, "savedCurrentMode"

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity;->b:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 135
    return-void
.end method
