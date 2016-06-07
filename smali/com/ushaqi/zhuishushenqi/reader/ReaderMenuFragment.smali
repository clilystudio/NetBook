.class public Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Lcom/ushaqi/zhuishushenqi/widget/LoadingContainer;

.field private h:Ljava/lang/String;

.field private i:Lcom/ushaqi/zhuishushenqi/util/adutil/BaseShelfAd;

.field private j:Landroid/view/View$OnClickListener;

.field private k:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 131
    new-instance v0, Lcom/ushaqi/zhuishushenqi/reader/bs;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/reader/bs;-><init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;->j:Landroid/view/View$OnClickListener;

    .line 172
    new-instance v0, Lcom/ushaqi/zhuishushenqi/reader/bt;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/reader/bt;-><init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;->k:Landroid/view/View$OnClickListener;

    .line 479
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;
    .locals 3

    .prologue
    .line 83
    new-instance v0, Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;-><init>()V

    .line 84
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 85
    const-string v2, "BOOK_ID"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v2, "BOOK_TITLE"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;->setArguments(Landroid/os/Bundle;)V

    .line 88
    return-object v0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;Landroid/app/Activity;Lcom/ushaqi/zhuishushenqi/model/TocSummary;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 60
    .line 6429
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 6430
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a()Lcom/ushaqi/zhuishushenqi/MyApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/MyApplication;->c(Ljava/lang/String;)V

    .line 6431
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;->e:Ljava/lang/String;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Landroid/support/design/widget/am;->c(Ljava/lang/String;I)V

    .line 6432
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v0

    new-instance v1, Lcom/ushaqi/zhuishushenqi/event/v;

    invoke-direct {v1, v5}, Lcom/ushaqi/zhuishushenqi/event/v;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/squareup/a/b;->c(Ljava/lang/Object;)V

    .line 6433
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;->f:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/TocSummary;->get_id()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static/range {v0 .. v5}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 6434
    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;->startActivity(Landroid/content/Intent;)V

    .line 60
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 60
    .line 2203
    invoke-static {p1, p2, p3}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment$DownLoadDialogFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment$DownLoadDialogFragment;

    move-result-object v0

    .line 2204
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "DownloadDialog"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;Ljava/util/List;)V
    .locals 12

    .prologue
    const/4 v5, 0x0

    .line 60
    .line 4299
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4302
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0c0255

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 4303
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    .line 4324
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    .line 4325
    if-eqz v1, :cond_0

    .line 4326
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->h()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    :goto_0
    move v4, v5

    move v3, v5

    .line 4307
    :goto_1
    if-ge v4, v6, :cond_1

    .line 4308
    const/4 v1, 0x3

    if-eq v3, v1, :cond_1

    .line 4311
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ushaqi/zhuishushenqi/model/TocSummary;

    .line 4312
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/TocSummary;->getHost()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 4397
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    .line 4398
    invoke-virtual {v7}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f030101

    invoke-virtual {v8, v9, v0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    .line 4399
    new-instance v9, Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment$TocHolder;

    invoke-direct {v9, v8}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment$TocHolder;-><init>(Landroid/view/View;)V

    .line 4400
    iget-object v10, v9, Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment$TocHolder;->link:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/TocSummary;->getHost()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4401
    iget-object v10, v9, Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment$TocHolder;->time:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/TocSummary;->getUpdated()Ljava/util/Date;

    move-result-object v11

    invoke-static {v11}, Lcom/ushaqi/zhuishushenqi/util/t;->e(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4402
    iget-object v9, v9, Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment$TocHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/TocSummary;->getLastChapter()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4403
    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4407
    new-instance v9, Lcom/ushaqi/zhuishushenqi/reader/bw;

    invoke-direct {v9, p0, v7, v1}, Lcom/ushaqi/zhuishushenqi/reader/bw;-><init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;Landroid/app/Activity;Lcom/ushaqi/zhuishushenqi/model/TocSummary;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4314
    add-int/lit8 v1, v3, 0x1

    .line 4307
    :goto_2
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v1

    goto :goto_1

    .line 4328
    :cond_0
    const/4 v1, 0x0

    move-object v2, v1

    goto :goto_0

    .line 4317
    :cond_1
    if-lez v3, :cond_2

    .line 4318
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0c0252

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 4319
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0c0253

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;->j:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    :cond_2
    return-void

    :cond_3
    move v1, v3

    goto :goto_2
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;)Z
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;->c()Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;->b:Ljava/lang/String;

    return-object v0
.end method

.method private c()Z
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic d(Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;)V
    .locals 2

    .prologue
    .line 60
    .line 2493
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    .line 2494
    if-eqz v0, :cond_0

    .line 2495
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->a(I)V

    .line 60
    :cond_0
    return-void
.end method

.method static synthetic i(Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;)V
    .locals 4

    .prologue
    .line 60
    .line 3257
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "\u4f60\u53ef\u80fd\u611f\u5174\u8da3"

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;->e:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/ushaqi/zhuishushenqi/ui/RelateBookListActivity;->a(Landroid/content/Context;Lcom/ushaqi/zhuishushenqi/model/RelateBookRoot;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 3258
    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;->startActivity(Landroid/content/Intent;)V

    .line 3259
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 3428
    const-string v1, "reader_menu_relate_book_a"

    invoke-static {v0, v1}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method static synthetic j(Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;)Lcom/ushaqi/zhuishushenqi/util/adutil/BaseShelfAd;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;->i:Lcom/ushaqi/zhuishushenqi/util/adutil/BaseShelfAd;

    return-object v0
.end method

.method static synthetic k(Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;)Lcom/ushaqi/zhuishushenqi/widget/LoadingContainer;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;->g:Lcom/ushaqi/zhuishushenqi/widget/LoadingContainer;

    return-object v0
.end method

.method static synthetic l(Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;)V
    .locals 3

    .prologue
    .line 60
    .line 5370
    new-instance v0, Lcom/ushaqi/zhuishushenqi/util/adutil/n;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/util/adutil/n;-><init>()V

    .line 5371
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "top"

    invoke-virtual {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/util/adutil/n;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method static synthetic m(Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;->j:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic n(Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;)V
    .locals 10

    .prologue
    const-wide/16 v8, 0x400

    .line 60
    .line 5441
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/util/a;->a()Lcom/ushaqi/zhuishushenqi/util/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/util/a;->b()Lcom/ushaqi/zhuishushenqi/model/MenuAd;

    move-result-object v4

    .line 5442
    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5443
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0c0248

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;

    .line 5444
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0c0249

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 5445
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0c024a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 5446
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;->setDrawingCacheEnabled(Z)V

    .line 5447
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v4}, Lcom/ushaqi/zhuishushenqi/model/MenuAd;->getIcon()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;->setImageUrl(Ljava/lang/String;)V

    .line 5448
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v3, "0.00"

    invoke-direct {v0, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/ushaqi/zhuishushenqi/model/MenuAd;->getSize()J

    move-result-wide v6

    div-long/2addr v6, v8

    div-long/2addr v6, v8

    invoke-virtual {v0, v6, v7}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v5

    .line 5449
    invoke-virtual {v4}, Lcom/ushaqi/zhuishushenqi/model/MenuAd;->getInsideLink()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;->h:Ljava/lang/String;

    .line 5450
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v3, 0x7f0c0034

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;->c()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "\u67e5\u770b"

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5452
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "M"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;->c:Ljava/lang/String;

    .line 5453
    invoke-virtual {v4}, Lcom/ushaqi/zhuishushenqi/model/MenuAd;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;->b:Ljava/lang/String;

    .line 5454
    invoke-virtual {v4}, Lcom/ushaqi/zhuishushenqi/model/MenuAd;->get_id()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;->d:Ljava/lang/String;

    .line 5455
    invoke-virtual {v4}, Lcom/ushaqi/zhuishushenqi/model/MenuAd;->getDownload_link()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;->a:Ljava/lang/String;

    .line 5456
    invoke-virtual {v4}, Lcom/ushaqi/zhuishushenqi/model/MenuAd;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5457
    invoke-virtual {v4}, Lcom/ushaqi/zhuishushenqi/model/MenuAd;->getIntro()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    :cond_0
    return-void

    .line 5450
    :cond_1
    const-string v3, "\u5b89\u88c5"

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;->b:Ljava/lang/String;

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 107
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 108
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "BOOK_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;->e:Ljava/lang/String;

    .line 109
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "BOOK_TITLE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;->f:Ljava/lang/String;

    .line 110
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/support/design/widget/am;->k(Landroid/content/Context;)I

    move-result v0

    .line 111
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0c0251

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3, v0, v4, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 114
    :cond_0
    new-instance v0, Lcom/ushaqi/zhuishushenqi/reader/bA;

    invoke-direct {v0, p0, v3}, Lcom/ushaqi/zhuishushenqi/reader/bA;-><init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;B)V

    new-array v1, v4, [Ljava/lang/String;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;->e:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/bA;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 115
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/support/design/widget/am;->q(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 116
    new-instance v0, Lcom/ushaqi/zhuishushenqi/reader/bz;

    invoke-direct {v0, p0, v3}, Lcom/ushaqi/zhuishushenqi/reader/bz;-><init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;B)V

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/bz;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 120
    :cond_1
    :goto_0
    return-void

    .line 117
    :cond_2
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 118
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0c0045

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 93
    const v0, 0x7f0300b0

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 94
    const v0, 0x7f0c0246

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 95
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Landroid/support/design/widget/am;->k(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v3, v2, v3, v3}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 96
    const v0, 0x7f0c024c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 97
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;->j:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    const v0, 0x7f0c0254

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/LoadingContainer;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;->g:Lcom/ushaqi/zhuishushenqi/widget/LoadingContainer;

    .line 99
    const v0, 0x7f0c024f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 100
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;->j:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/a/b;->a(Ljava/lang/Object;)V

    .line 102
    return-object v1
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 124
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 125
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/util/a;->a()Lcom/ushaqi/zhuishushenqi/util/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/util/a;->c()V

    .line 126
    return-void
.end method

.method public onShowThirdAd(Lcom/ushaqi/zhuishushenqi/event/B;)V
    .locals 6
    .annotation runtime Lcom/squareup/a/l;
    .end annotation

    .prologue
    const v5, 0x7f0c0034

    .line 376
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/support/design/widget/am;->q(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/event/B;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "top"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 394
    :cond_0
    :goto_0
    return-void

    .line 380
    :cond_1
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0c0045

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 381
    if-eqz v2, :cond_0

    .line 384
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/event/B;->a()Lcom/ushaqi/zhuishushenqi/model/Advert;

    move-result-object v1

    .line 385
    if-eqz v1, :cond_3

    instance-of v0, v1, Lcom/ushaqi/zhuishushenqi/util/adutil/BaseShelfAd;

    if-eqz v0, :cond_3

    move-object v0, v1

    .line 386
    check-cast v0, Lcom/ushaqi/zhuishushenqi/util/adutil/BaseShelfAd;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;->i:Lcom/ushaqi/zhuishushenqi/util/adutil/BaseShelfAd;

    .line 387
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 388
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;->k:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 389
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;->k:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1462
    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1463
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0c0248

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;

    .line 1464
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0c0249

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1465
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;->getView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0c024a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1466
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;->setDrawingCacheEnabled(Z)V

    .line 1467
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/Advert;->getImg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;->setImageUrl(Ljava/lang/String;)V

    .line 1469
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/Advert;->isApk()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "\u5b89\u88c5"

    :goto_1
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1470
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/Advert;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1471
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/Advert;->getDesc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1469
    :cond_2
    const-string v4, "\u67e5\u770b"

    goto :goto_1

    .line 392
    :cond_3
    const/4 v0, 0x4

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method
