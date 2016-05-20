.class public final Lcom/ushaqi/zhuishushenqi/reader/o;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/text/SimpleDateFormat;


# instance fields
.field private final b:Landroid/app/Activity;

.field private final c:Lcom/ushaqi/zhuishushenqi/reader/bZ;

.field private d:Lcom/ushaqi/zhuishushenqi/reader/n;

.field private e:Z

.field private f:Landroid/view/View;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/view/View;

.field private k:Landroid/widget/ImageView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/TextView;

.field private p:Z

.field private q:Lcom/ushaqi/zhuishushenqi/reader/G;

.field private r:Lcom/ushaqi/zhuishushenqi/reader/H;

.field private s:Lcom/ushaqi/zhuishushenqi/reader/F;

.field private t:Z

.field private u:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 64
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ushaqi/zhuishushenqi/reader/o;->a:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/ushaqi/zhuishushenqi/reader/bZ;)V
    .locals 5

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->t:Z

    .line 92
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->b:Landroid/app/Activity;

    .line 93
    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->c:Lcom/ushaqi/zhuishushenqi/reader/bZ;

    .line 2103
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030147

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->f:Landroid/view/View;

    .line 2104
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->f:Landroid/view/View;

    const v1, 0x7f0c02e5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->g:Landroid/widget/TextView;

    .line 2105
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->f:Landroid/view/View;

    const v1, 0x7f0c0419

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->h:Landroid/widget/TextView;

    .line 2106
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->f:Landroid/view/View;

    const v1, 0x7f0c041b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->i:Landroid/widget/TextView;

    .line 2107
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->f:Landroid/view/View;

    const v1, 0x7f0c041c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->j:Landroid/view/View;

    .line 2108
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->f:Landroid/view/View;

    const v1, 0x7f0c041d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->k:Landroid/widget/ImageView;

    .line 2109
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->f:Landroid/view/View;

    const v1, 0x7f0c041e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->l:Landroid/widget/TextView;

    .line 2110
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->f:Landroid/view/View;

    const v1, 0x7f0c041f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->m:Landroid/widget/TextView;

    .line 2111
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->f:Landroid/view/View;

    const v1, 0x7f0c0420

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->n:Landroid/widget/TextView;

    .line 2112
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->f:Landroid/view/View;

    const v1, 0x7f0c0421

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->o:Landroid/widget/TextView;

    .line 2119
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->f:Landroid/view/View;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->c:Lcom/ushaqi/zhuishushenqi/reader/bZ;

    iget v1, v1, Lcom/ushaqi/zhuishushenqi/reader/bZ;->c:I

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->c:Lcom/ushaqi/zhuishushenqi/reader/bZ;

    iget v2, v2, Lcom/ushaqi/zhuishushenqi/reader/bZ;->d:I

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->c:Lcom/ushaqi/zhuishushenqi/reader/bZ;

    iget v3, v3, Lcom/ushaqi/zhuishushenqi/reader/bZ;->c:I

    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->c:Lcom/ushaqi/zhuishushenqi/reader/bZ;

    iget v4, v4, Lcom/ushaqi/zhuishushenqi/reader/bZ;->d:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 2120
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/o;->l()V

    .line 2121
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/o;->m()V

    .line 2115
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/o;->k()V

    .line 95
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/a/b;->a(Ljava/lang/Object;)V

    .line 96
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/reader/o;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->b:Landroid/app/Activity;

    return-object v0
.end method

.method private a(Landroid/view/View;Lcom/ushaqi/zhuishushenqi/model/Advert;)V
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const v7, 0x7f0b0044

    const/4 v6, 0x0

    .line 667
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 720
    :cond_0
    :goto_0
    return-void

    .line 670
    :cond_1
    const-string v0, "read_page"

    invoke-virtual {p2, v0}, Lcom/ushaqi/zhuishushenqi/model/Advert;->setPosition(Ljava/lang/String;)V

    .line 671
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->b:Landroid/app/Activity;

    invoke-virtual {p2, v0}, Lcom/ushaqi/zhuishushenqi/model/Advert;->recordShow(Landroid/content/Context;)V

    .line 673
    const v0, 0x7f0c0414

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;

    .line 674
    const v1, 0x7f0c0416

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 675
    const v2, 0x7f0c0417

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 676
    const v3, 0x7f0c0415

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 679
    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->b:Landroid/app/Activity;

    invoke-static {v4}, Lcom/arcsoft/hpay100/a/a;->y(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 680
    invoke-virtual {v3, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 683
    :cond_2
    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->b:Landroid/app/Activity;

    const-string v5, "customer_night_theme"

    invoke-static {v4, v5, v6}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v4

    .line 684
    if-eqz v4, :cond_3

    .line 685
    const v4, 0x7f020239

    invoke-virtual {p1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 686
    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->b:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 687
    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->b:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0045

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 688
    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->b:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 689
    const v4, 0x3e4ccccd

    invoke-virtual {v0, v4}, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;->setAlpha(F)V

    .line 699
    :goto_1
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 700
    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/Advert;->getFullImg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;->setImageUrl(Ljava/lang/String;)V

    .line 701
    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/Advert;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 702
    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/Advert;->getDesc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 704
    new-instance v0, Lcom/ushaqi/zhuishushenqi/reader/z;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/reader/z;-><init>(Lcom/ushaqi/zhuishushenqi/reader/o;)V

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 712
    new-instance v0, Lcom/ushaqi/zhuishushenqi/reader/A;

    invoke-direct {v0, p0, p2}, Lcom/ushaqi/zhuishushenqi/reader/A;-><init>(Lcom/ushaqi/zhuishushenqi/reader/o;Lcom/ushaqi/zhuishushenqi/model/Advert;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 719
    invoke-static {p2, p1}, Lcom/ushaqi/zhuishushenqi/util/adutil/n;->a(Lcom/ushaqi/zhuishushenqi/model/Advert;Landroid/view/View;)V

    goto/16 :goto_0

    .line 692
    :cond_3
    const v4, 0x7f020238

    invoke-virtual {p1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 693
    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->b:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0041

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 694
    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->b:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0042

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 695
    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->b:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b00dc

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 696
    const/high16 v4, 0x3f800000

    invoke-virtual {v0, v4}, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;->setAlpha(F)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/reader/o;Lcom/ushaqi/zhuishushenqi/model/PurchaseChapterResult;Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 62
    .line 7074
    if-nez p1, :cond_0

    .line 7076
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->b:Landroid/app/Activity;

    const-string v1, "\u652f\u4ed8\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 7121
    :goto_0
    return-void

    .line 7079
    :cond_0
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/PurchaseChapterResult;->isOk()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7081
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->d:Lcom/ushaqi/zhuishushenqi/reader/n;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/n;->q()Lcom/ushaqi/zhuishushenqi/reader/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/K;->a()Lcom/ushaqi/zhuishushenqi/reader/Reader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->e()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/PurchaseChapterResult;->getChapterId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/PurchaseChapterResult;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7082
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->b:Landroid/app/Activity;

    check-cast v0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->l()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->d:Lcom/ushaqi/zhuishushenqi/reader/n;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/reader/n;->q()Lcom/ushaqi/zhuishushenqi/reader/K;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/reader/K;->a()Lcom/ushaqi/zhuishushenqi/reader/Reader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->e()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/a/a;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 7083
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->d:Lcom/ushaqi/zhuishushenqi/reader/n;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/n;->q()Lcom/ushaqi/zhuishushenqi/reader/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/K;->a()Lcom/ushaqi/zhuishushenqi/reader/Reader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->e()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->d:Lcom/ushaqi/zhuishushenqi/reader/n;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/reader/n;->a()Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 7084
    if-eqz v0, :cond_1

    .line 7085
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->d:Lcom/ushaqi/zhuishushenqi/reader/n;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/reader/n;->a()Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;->setKey(Ljava/lang/String;)V

    .line 7086
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->d:Lcom/ushaqi/zhuishushenqi/reader/n;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/n;->g()V

    .line 7087
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->d:Lcom/ushaqi/zhuishushenqi/reader/n;

    invoke-virtual {v0, v3}, Lcom/ushaqi/zhuishushenqi/reader/n;->a(I)V

    .line 7089
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->b:Landroid/app/Activity;

    check-cast v0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->l()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->b:Landroid/app/Activity;

    check-cast v0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->f()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->d:Lcom/ushaqi/zhuishushenqi/reader/n;

    .line 7090
    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/reader/n;->a()Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;->getLink()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/support/design/widget/am;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->d:Lcom/ushaqi/zhuishushenqi/reader/n;

    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/reader/n;->a()Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;

    move-result-object v3

    .line 7089
    invoke-static {v1, v0, v2, v3}, Lcom/arcsoft/hpay100/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ushaqi/zhuishushenqi/model/Chapter;)Z

    .line 7093
    :cond_1
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->e:Z

    if-eqz v0, :cond_2

    .line 7096
    :cond_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->b:Landroid/app/Activity;

    instance-of v0, v0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    if-eqz v0, :cond_3

    .line 7097
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->b:Landroid/app/Activity;

    check-cast v0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->g()V

    goto/16 :goto_0

    .line 7099
    :cond_3
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/o;->e()V

    goto/16 :goto_0

    .line 7101
    :cond_4
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/PurchaseChapterResult;->getCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ITEM_ALREADY_PURCHASED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 7102
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->d:Lcom/ushaqi/zhuishushenqi/reader/n;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/n;->q()Lcom/ushaqi/zhuishushenqi/reader/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/K;->a()Lcom/ushaqi/zhuishushenqi/reader/Reader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->e()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->d:Lcom/ushaqi/zhuishushenqi/reader/n;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/reader/n;->a()Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 7103
    if-eqz v0, :cond_6

    .line 7104
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->d:Lcom/ushaqi/zhuishushenqi/reader/n;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/reader/n;->a()Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;->setKey(Ljava/lang/String;)V

    .line 7105
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->d:Lcom/ushaqi/zhuishushenqi/reader/n;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/n;->g()V

    .line 7106
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->d:Lcom/ushaqi/zhuishushenqi/reader/n;

    invoke-virtual {v0, v3}, Lcom/ushaqi/zhuishushenqi/reader/n;->a(I)V

    .line 7107
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->b:Landroid/app/Activity;

    instance-of v0, v0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    if-eqz v0, :cond_5

    .line 7109
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->b:Landroid/app/Activity;

    check-cast v0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->g()V

    goto/16 :goto_0

    .line 7111
    :cond_5
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/o;->e()V

    goto/16 :goto_0

    .line 7114
    :cond_6
    new-instance v0, Lcom/ushaqi/zhuishushenqi/reader/E;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->b:Landroid/app/Activity;

    const v2, 0x7f05006a

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/ushaqi/zhuishushenqi/reader/E;-><init>(Lcom/ushaqi/zhuishushenqi/reader/o;Landroid/app/Activity;IZ)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->d:Lcom/ushaqi/zhuishushenqi/reader/n;

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/reader/n;->a()Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;->getId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/E;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 7116
    :cond_7
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/PurchaseChapterResult;->getCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BALANCE_NOT_ENOUGH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 7118
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->b:Landroid/app/Activity;

    const-string v1, "\u4f59\u989d\u4e0d\u8db3\uff0c\u8bf7\u5145\u503c"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 7120
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v0

    new-instance v1, Lcom/ushaqi/zhuishushenqi/event/G;

    invoke-direct {v1}, Lcom/ushaqi/zhuishushenqi/event/G;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/a/b;->c(Ljava/lang/Object;)V

    .line 7121
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/o;->e()V

    goto/16 :goto_0

    .line 7124
    :cond_8
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->b:Landroid/app/Activity;

    const-string v1, "\u652f\u4ed8\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/reader/o;Z)V
    .locals 1

    .prologue
    .line 62
    .line 6513
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->u:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 6516
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->u:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setClickable(Z)V

    .line 6517
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->u:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 62
    :cond_0
    return-void
.end method

.method private a(Z)V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v2, 0x0

    .line 384
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->f:Landroid/view/View;

    const v1, 0x7f0c0418

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 385
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->f:Landroid/view/View;

    const v3, 0x7f0c0422

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 386
    if-eqz p1, :cond_8

    .line 387
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 388
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 389
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->f:Landroid/view/View;

    const v3, 0x7f0c0424

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 390
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->f:Landroid/view/View;

    const v4, 0x7f0c0429

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 391
    const v0, 0x7f0c0423

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 392
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->d:Lcom/ushaqi/zhuishushenqi/reader/n;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/reader/n;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 393
    invoke-static {}, Landroid/support/design/widget/am;->g()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 394
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 395
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 396
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->f:Landroid/view/View;

    const v1, 0x7f0c0425

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 398
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a()Lcom/ushaqi/zhuishushenqi/MyApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/MyApplication;->b()Lcom/ushaqi/zhuishushenqi/reader/Reader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->d()[Lcom/ushaqi/zhuishushenqi/model/ChapterLink;

    move-result-object v4

    .line 399
    if-eqz v4, :cond_0

    array-length v1, v4

    if-nez v1, :cond_3

    :cond_0
    move v1, v2

    .line 411
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 412
    const v0, 0x7f0c0426

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 413
    const v1, 0x7f0c0427

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->u:Landroid/widget/Button;

    .line 415
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->b:Landroid/app/Activity;

    const-string v4, "user_account_balance"

    invoke-static {v1, v4, v2}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->d:Lcom/ushaqi/zhuishushenqi/reader/n;

    invoke-virtual {v4}, Lcom/ushaqi/zhuishushenqi/reader/n;->a()Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;->getCurrency()I

    move-result v4

    if-gt v1, v4, :cond_1

    iget-boolean v1, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->t:Z

    if-eqz v1, :cond_6

    .line 416
    :cond_1
    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 417
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->b:Landroid/app/Activity;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "auto_buy_chapter"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/ushaqi/zhuishushenqi/util/I;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v2}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 418
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->u:Landroid/widget/Button;

    const-string v2, "\u8d2d\u4e70\uff0c\u7ee7\u7eed\u9605\u8bfb"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 419
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->u:Landroid/widget/Button;

    new-instance v2, Lcom/ushaqi/zhuishushenqi/reader/s;

    invoke-direct {v2, p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/s;-><init>(Lcom/ushaqi/zhuishushenqi/reader/o;Landroid/widget/CheckBox;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 434
    new-instance v1, Lcom/ushaqi/zhuishushenqi/reader/t;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/reader/t;-><init>(Lcom/ushaqi/zhuishushenqi/reader/o;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 466
    :goto_1
    const v0, 0x7f0c0428

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 467
    new-instance v1, Lcom/ushaqi/zhuishushenqi/reader/x;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/reader/x;-><init>(Lcom/ushaqi/zhuishushenqi/reader/o;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 478
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->b:Landroid/app/Activity;

    instance-of v1, v1, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    if-eqz v1, :cond_2

    .line 479
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->b:Landroid/app/Activity;

    check-cast v1, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->m()Z

    move-result v1

    if-nez v1, :cond_2

    .line 480
    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 501
    :cond_2
    :goto_2
    return-void

    .line 402
    :cond_3
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->d:Lcom/ushaqi/zhuishushenqi/reader/n;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/reader/n;->l()I

    move-result v1

    .line 403
    if-gez v1, :cond_5

    move v1, v2

    .line 408
    :cond_4
    :goto_3
    aget-object v1, v4, v1

    .line 409
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/ChapterLink;->getCurrency()I

    move-result v1

    goto/16 :goto_0

    .line 405
    :cond_5
    array-length v5, v4

    if-lt v1, v5, :cond_4

    .line 406
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 449
    :cond_6
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 450
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->u:Landroid/widget/Button;

    const-string v1, "\u4f59\u989d\u4e0d\u8db3\uff0c\u8bf7\u5145\u503c"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 451
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->u:Landroid/widget/Button;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/reader/v;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/reader/v;-><init>(Lcom/ushaqi/zhuishushenqi/reader/o;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 485
    :cond_7
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 486
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 487
    const v0, 0x7f0c042a

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/ushaqi/zhuishushenqi/reader/y;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/reader/y;-><init>(Lcom/ushaqi/zhuishushenqi/reader/o;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 497
    :cond_8
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 498
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 499
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/o;->r()V

    goto :goto_2
.end method

.method private a(Landroid/view/View;)Z
    .locals 2

    .prologue
    .line 570
    :try_start_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->h:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->c:Lcom/ushaqi/zhuishushenqi/reader/bZ;

    iget v1, v1, Lcom/ushaqi/zhuishushenqi/reader/bZ;->e:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ge v0, v1, :cond_0

    .line 572
    const/4 v0, 0x1

    .line 577
    :goto_0
    return v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/reader/o;)Lcom/ushaqi/zhuishushenqi/reader/n;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->d:Lcom/ushaqi/zhuishushenqi/reader/n;

    return-object v0
.end method

.method private b(I)V
    .locals 1

    .prologue
    .line 816
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->k:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 817
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 819
    :cond_0
    return-void
.end method

.method private b(Lcom/ushaqi/zhuishushenqi/reader/n;)V
    .locals 3

    .prologue
    .line 879
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/reader/n;->o()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 880
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a()Lcom/ushaqi/zhuishushenqi/MyApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/MyApplication;->b()Lcom/ushaqi/zhuishushenqi/reader/Reader;

    move-result-object v0

    .line 881
    if-eqz v0, :cond_0

    .line 882
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->i()Ljava/lang/String;

    move-result-object v0

    .line 883
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->b:Landroid/app/Activity;

    .line 5586
    const-string v2, "chapter_load_error"

    invoke-static {v1, v2, v0}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/reader/o;Z)Z
    .locals 0

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->t:Z

    return p1
.end method

.method static synthetic c(Lcom/ushaqi/zhuishushenqi/reader/o;)Landroid/view/View;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->j:Landroid/view/View;

    return-object v0
.end method

.method static synthetic d(Lcom/ushaqi/zhuishushenqi/reader/o;)Lcom/ushaqi/zhuishushenqi/reader/G;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->q:Lcom/ushaqi/zhuishushenqi/reader/G;

    return-object v0
.end method

.method static synthetic e(Lcom/ushaqi/zhuishushenqi/reader/o;)Lcom/ushaqi/zhuishushenqi/reader/H;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->r:Lcom/ushaqi/zhuishushenqi/reader/H;

    return-object v0
.end method

.method static synthetic f(Lcom/ushaqi/zhuishushenqi/reader/o;)Lcom/ushaqi/zhuishushenqi/reader/F;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->s:Lcom/ushaqi/zhuishushenqi/reader/F;

    return-object v0
.end method

.method private l()V
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->f:Landroid/view/View;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->c:Lcom/ushaqi/zhuishushenqi/reader/bZ;

    iget v1, v1, Lcom/ushaqi/zhuishushenqi/reader/bZ;->h:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 129
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->c:Lcom/ushaqi/zhuishushenqi/reader/bZ;

    iget v1, v1, Lcom/ushaqi/zhuishushenqi/reader/bZ;->i:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 130
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->c:Lcom/ushaqi/zhuishushenqi/reader/bZ;

    iget v1, v1, Lcom/ushaqi/zhuishushenqi/reader/bZ;->g:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 131
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->c:Lcom/ushaqi/zhuishushenqi/reader/bZ;

    iget v1, v1, Lcom/ushaqi/zhuishushenqi/reader/bZ;->i:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 132
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->f:Landroid/view/View;

    const v1, 0x7f0c041a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 133
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->c:Lcom/ushaqi/zhuishushenqi/reader/bZ;

    iget v1, v1, Lcom/ushaqi/zhuishushenqi/reader/bZ;->i:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 134
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->c:Lcom/ushaqi/zhuishushenqi/reader/bZ;

    iget v1, v1, Lcom/ushaqi/zhuishushenqi/reader/bZ;->j:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 135
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->f:Landroid/view/View;

    const v1, 0x7f0c02e6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->c:Lcom/ushaqi/zhuishushenqi/reader/bZ;

    iget v1, v1, Lcom/ushaqi/zhuishushenqi/reader/bZ;->i:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 136
    return-void
.end method

.method private m()V
    .locals 3

    .prologue
    .line 161
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->c:Lcom/ushaqi/zhuishushenqi/reader/bZ;

    iget v1, v1, Lcom/ushaqi/zhuishushenqi/reader/bZ;->e:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHeight(I)V

    .line 162
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->h:Landroid/widget/TextView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->c:Lcom/ushaqi/zhuishushenqi/reader/bZ;

    iget v2, v2, Lcom/ushaqi/zhuishushenqi/reader/bZ;->a:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 163
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->c:Lcom/ushaqi/zhuishushenqi/reader/bZ;

    iget v1, v1, Lcom/ushaqi/zhuishushenqi/reader/bZ;->b:I

    int-to-float v1, v1

    const/high16 v2, 0x3f800000

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 164
    return-void
.end method

.method private n()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const v3, 0x7f0201b1

    const/4 v2, 0x0

    .line 220
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->d:Lcom/ushaqi/zhuishushenqi/reader/n;

    if-nez v0, :cond_0

    .line 256
    :goto_0
    return-void

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->d:Lcom/ushaqi/zhuishushenqi/reader/n;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/n;->o()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 4790
    :pswitch_0
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/o;->p()V

    .line 4791
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4792
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->l:Landroid/widget/TextView;

    const-string v1, "\u672c\u6765\u6e90\u6682\u65e0\u8be5\u5c0f\u8bf4"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4793
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->m:Landroid/widget/TextView;

    const-string v1, "\u8bf7\u5207\u6362\u5230\u5176\u4ed6\u6765\u6e90"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4794
    invoke-direct {p0, v3}, Lcom/ushaqi/zhuishushenqi/reader/o;->b(I)V

    .line 4795
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/o;->u()V

    .line 4796
    invoke-direct {p0, v2}, Lcom/ushaqi/zhuishushenqi/reader/o;->a(Z)V

    goto :goto_0

    .line 226
    :pswitch_1
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/o;->e()V

    goto :goto_0

    .line 2751
    :pswitch_2
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/o;->p()V

    .line 2752
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2753
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/o;->t()V

    .line 2754
    invoke-direct {p0, v2}, Lcom/ushaqi/zhuishushenqi/reader/o;->a(Z)V

    .line 2756
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->b:Landroid/app/Activity;

    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->t(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2757
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->l:Landroid/widget/TextView;

    const-string v1, "\u8fde\u63a5\u8d85\u65f6\uff0c\u518d\u8bd5\u8bd5\uff1f"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2758
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->m:Landroid/widget/TextView;

    const-string v1, "\u8bf7\u5237\u65b0\u91cd\u8bd5\u6216\u5207\u6362\u6765\u6e90"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2759
    invoke-direct {p0, v3}, Lcom/ushaqi/zhuishushenqi/reader/o;->b(I)V

    .line 2760
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/o;->u()V

    goto :goto_0

    .line 2764
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->l:Landroid/widget/TextView;

    const-string v1, "\u6ca1\u7f51\uff0c\u8fde\u4e0d\u4e0a\u5440"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2765
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->m:Landroid/widget/TextView;

    const-string v1, "\u8bf7\u68c0\u67e5\u7f51\u7edc\u540e\u91cd\u8bd5"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2766
    const v0, 0x7f0201b2

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/o;->b(I)V

    .line 2767
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->o:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2768
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->n:Landroid/widget/TextView;

    const v1, 0x7f050167

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 3728
    :pswitch_3
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/o;->p()V

    .line 3729
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3730
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->l:Landroid/widget/TextView;

    const-string v1, "\u672c\u7ae0\u6682\u65e0\u6587\u5b57"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3731
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->m:Landroid/widget/TextView;

    const-string v1, "\u672a\u627e\u5230\u672c\u7ae0\u7684\u6587\u5b57\u5185\u5bb9"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3732
    invoke-direct {p0, v3}, Lcom/ushaqi/zhuishushenqi/reader/o;->b(I)V

    .line 3733
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/o;->t()V

    .line 3734
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/o;->u()V

    .line 3735
    invoke-direct {p0, v2}, Lcom/ushaqi/zhuishushenqi/reader/o;->a(Z)V

    goto/16 :goto_0

    .line 3739
    :pswitch_4
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/o;->p()V

    .line 3740
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->l:Landroid/widget/TextView;

    const-string v1, "\u6b64\u6765\u6e90\u5c1a\u672a\u66f4\u65b0\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3741
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->m:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3742
    const v0, 0x7f0201b3

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/o;->b(I)V

    .line 3743
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/o;->u()V

    .line 3744
    invoke-direct {p0, v2}, Lcom/ushaqi/zhuishushenqi/reader/o;->a(Z)V

    goto/16 :goto_0

    .line 3776
    :pswitch_5
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/o;->p()V

    .line 3777
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3778
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->l:Landroid/widget/TextView;

    const-string v1, "\u8fde\u63a5\u8d85\u65f6\uff0c\u518d\u8bd5\u8bd5\uff1f"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3779
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->m:Landroid/widget/TextView;

    const-string v1, "\u8bf7\u5237\u65b0\u91cd\u8bd5\u6216\u5207\u6362\u6765\u6e90"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3780
    invoke-direct {p0, v3}, Lcom/ushaqi/zhuishushenqi/reader/o;->b(I)V

    .line 3844
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->n:Landroid/widget/TextView;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/reader/q;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/reader/q;-><init>(Lcom/ushaqi/zhuishushenqi/reader/o;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3782
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/o;->u()V

    .line 3783
    invoke-direct {p0, v2}, Lcom/ushaqi/zhuishushenqi/reader/o;->a(Z)V

    goto/16 :goto_0

    .line 4800
    :pswitch_6
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->j:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 4801
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->g:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4802
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->h:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4803
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->i:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4804
    invoke-direct {p0, v2}, Lcom/ushaqi/zhuishushenqi/reader/o;->a(Z)V

    goto/16 :goto_0

    .line 223
    nop

    :pswitch_data_0
    .packed-switch -0x5
        :pswitch_0
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_6
        :pswitch_1
    .end packed-switch
.end method

.method private static o()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 306
    invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v1

    if-nez v1, :cond_1

    .line 313
    :cond_0
    :goto_0
    return v0

    .line 310
    :cond_1
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a()Lcom/ushaqi/zhuishushenqi/MyApplication;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "auto_buy_chapter"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/ushaqi/zhuishushenqi/util/I;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 313
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private p()V
    .locals 2

    .prologue
    .line 344
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->j:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 345
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->d:Lcom/ushaqi/zhuishushenqi/reader/n;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/reader/n;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 346
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->h:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 347
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->i:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 348
    return-void
.end method

.method private q()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 5560
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a()Lcom/ushaqi/zhuishushenqi/MyApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/MyApplication;->d()I

    move-result v2

    const/16 v3, 0x9

    if-ne v2, v3, :cond_0

    move v2, v0

    .line 546
    :goto_0
    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->d:Lcom/ushaqi/zhuishushenqi/reader/n;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->d:Lcom/ushaqi/zhuishushenqi/reader/n;

    .line 547
    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/reader/n;->l()I

    move-result v2

    rem-int/lit8 v2, v2, 0x5

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->d:Lcom/ushaqi/zhuishushenqi/reader/n;

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/reader/n;->h()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 550
    :goto_1
    return v0

    :cond_0
    move v2, v1

    .line 5560
    goto :goto_0

    :cond_1
    move v0, v1

    .line 550
    goto :goto_1
.end method

.method private r()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 584
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->e:Z

    if-nez v0, :cond_1

    .line 608
    :cond_0
    :goto_0
    return-void

    .line 587
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->f:Landroid/view/View;

    const v1, 0x7f0c0413

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 588
    if-eqz v0, :cond_0

    .line 591
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->b:Landroid/app/Activity;

    invoke-static {v1}, Landroid/support/design/widget/am;->q(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->b:Landroid/app/Activity;

    invoke-static {v1}, Lcom/arcsoft/hpay100/a/a;->F(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/o;->q()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/o;->a(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->b:Landroid/app/Activity;

    instance-of v1, v1, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    if-eqz v1, :cond_3

    .line 593
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->b:Landroid/app/Activity;

    const-string v2, "page"

    invoke-static {v1, v2}, Lcom/ushaqi/zhuishushenqi/util/adutil/n;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/Advert;

    move-result-object v1

    .line 594
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->b:Landroid/app/Activity;

    const-string v3, "rate_zssq_advert_reader_bookinfo"

    invoke-static {v2, v3}, Lcom/arcsoft/hpay100/a/a;->w(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 595
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 596
    invoke-direct {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/o;->a(Landroid/view/View;Lcom/ushaqi/zhuishushenqi/model/Advert;)V

    goto :goto_0

    .line 598
    :cond_2
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 601
    :cond_3
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 602
    iget-boolean v1, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->e:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->b:Landroid/app/Activity;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "remove_ad_toast_showed"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/ushaqi/zhuishushenqi/util/I;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 603
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/o;->q()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/o;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->b:Landroid/app/Activity;

    invoke-static {v0}, Landroid/support/design/widget/am;->r(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 604
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->b:Landroid/app/Activity;

    const-string v1, "\u5df2\u4e3a\u60a8\u81ea\u52a8\u514d\u9664\u5e7f\u544a"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 605
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->b:Landroid/app/Activity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "remove_ad_toast_showed"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/ushaqi/zhuishushenqi/util/I;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/arcsoft/hpay100/a/a;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    goto/16 :goto_0
.end method

.method private s()V
    .locals 2

    .prologue
    .line 640
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->f:Landroid/view/View;

    const v1, 0x7f0c0413

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 641
    if-eqz v0, :cond_0

    .line 642
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 644
    :cond_0
    return-void
.end method

.method private t()V
    .locals 2

    .prologue
    .line 825
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->n:Landroid/widget/TextView;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/reader/B;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/reader/B;-><init>(Lcom/ushaqi/zhuishushenqi/reader/o;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 838
    return-void
.end method

.method private u()V
    .locals 2

    .prologue
    .line 863
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->o:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 864
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->o:Landroid/widget/TextView;

    const-string v1, "\u66f4\u6362\u6765\u6e90"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 865
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->o:Landroid/widget/TextView;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/reader/r;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/reader/r;-><init>(Lcom/ushaqi/zhuishushenqi/reader/o;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 873
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->p:Z

    .line 140
    return-void
.end method

.method public final a(I)V
    .locals 2

    .prologue
    .line 889
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->f:Landroid/view/View;

    const v1, 0x7f0c041a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 890
    return-void
.end method

.method public final a(II)V
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->h:Landroid/widget/TextView;

    instance-of v0, v0, Lme/biubiubiu/justifytext/library/JustifyTextView;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->h:Landroid/widget/TextView;

    check-cast v0, Lme/biubiubiu/justifytext/library/JustifyTextView;

    invoke-virtual {v0, p1, p2}, Lme/biubiubiu/justifytext/library/JustifyTextView;->setHighLight(II)V

    .line 297
    :cond_0
    return-void
.end method

.method public final a(Lcom/ushaqi/zhuishushenqi/reader/F;)V
    .locals 0

    .prologue
    .line 905
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->s:Lcom/ushaqi/zhuishushenqi/reader/F;

    .line 906
    return-void
.end method

.method public final a(Lcom/ushaqi/zhuishushenqi/reader/G;)V
    .locals 0

    .prologue
    .line 897
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->q:Lcom/ushaqi/zhuishushenqi/reader/G;

    .line 898
    return-void
.end method

.method public final a(Lcom/ushaqi/zhuishushenqi/reader/H;)V
    .locals 0

    .prologue
    .line 901
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->r:Lcom/ushaqi/zhuishushenqi/reader/H;

    .line 902
    return-void
.end method

.method public final a(Lcom/ushaqi/zhuishushenqi/reader/n;)V
    .locals 1

    .prologue
    .line 167
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->d:Lcom/ushaqi/zhuishushenqi/reader/n;

    .line 168
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->e:Z

    .line 169
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/o;->n()V

    .line 171
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/reader/o;->b(Lcom/ushaqi/zhuishushenqi/reader/n;)V

    .line 173
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/o;->s()V

    .line 174
    return-void
.end method

.method public final a(Lcom/ushaqi/zhuishushenqi/reader/n;Z)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 183
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->d:Lcom/ushaqi/zhuishushenqi/reader/n;

    .line 184
    iput-boolean v3, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->e:Z

    .line 185
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/o;->n()V

    .line 187
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/reader/o;->b(Lcom/ushaqi/zhuishushenqi/reader/n;)V

    .line 188
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/reader/n;->a()Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/o;->a(Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->b:Landroid/app/Activity;

    const-string v1, "paying_page_auto_purchase"

    sget-object v2, Lcom/ushaqi/zhuishushenqi/util/I;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    new-instance v0, Lcom/ushaqi/zhuishushenqi/reader/I;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->b:Landroid/app/Activity;

    const-string v2, "\u81ea\u52a8\u8d2d\u4e70\u4e2d..."

    invoke-direct {v0, p0, v1, v2}, Lcom/ushaqi/zhuishushenqi/reader/I;-><init>(Lcom/ushaqi/zhuishushenqi/reader/o;Landroid/app/Activity;Ljava/lang/String;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/Account;->getToken()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/reader/n;->a()Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;->getId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/I;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 194
    :cond_0
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/reader/n;->j()I

    move-result v0

    if-nez v0, :cond_1

    .line 195
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/reader/n;->l()I

    move-result v0

    .line 2199
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a()Lcom/ushaqi/zhuishushenqi/MyApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/MyApplication;->b()Lcom/ushaqi/zhuishushenqi/reader/Reader;

    move-result-object v1

    .line 2202
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/reader/o;->o()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2203
    add-int/lit8 v0, v0, 0x1

    new-instance v2, Lcom/ushaqi/zhuishushenqi/reader/p;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/reader/p;-><init>(Lcom/ushaqi/zhuishushenqi/reader/o;)V

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->a(ILcom/ushaqi/zhuishushenqi/reader/e;ZZ)V

    .line 196
    :cond_1
    return-void
.end method

.method public final a(Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 324
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/reader/o;->o()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 340
    :goto_0
    return v0

    .line 328
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;->isVip()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    move v0, v1

    .line 329
    goto :goto_0

    .line 332
    :cond_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->b:Landroid/app/Activity;

    const-string v2, "user_account_balance"

    invoke-static {v0, v2, v1}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;->getCurrency()I

    move-result v2

    if-ge v0, v2, :cond_3

    move v0, v1

    .line 333
    goto :goto_0

    .line 336
    :cond_3
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 337
    if-nez v0, :cond_4

    .line 338
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->d:Lcom/ushaqi/zhuishushenqi/reader/n;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/n;->q()Lcom/ushaqi/zhuishushenqi/reader/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/K;->a()Lcom/ushaqi/zhuishushenqi/reader/Reader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->e()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 340
    :cond_4
    if-nez v0, :cond_5

    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/o;->l()V

    .line 147
    return-void
.end method

.method public final c()V
    .locals 0

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/o;->l()V

    .line 154
    return-void
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->h:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    return v0
.end method

.method public final e()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 262
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->d:Lcom/ushaqi/zhuishushenqi/reader/n;

    if-nez v0, :cond_0

    .line 291
    :goto_0
    return-void

    .line 265
    :cond_0
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/o;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 272
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->e:Z

    if-eqz v0, :cond_1

    .line 273
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->b:Landroid/app/Activity;

    const-string v1, "paying_page_show"

    sget-object v2, Lcom/ushaqi/zhuishushenqi/util/I;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    :cond_1
    invoke-direct {p0, v5}, Lcom/ushaqi/zhuishushenqi/reader/o;->a(Z)V

    goto :goto_0

    .line 279
    :cond_2
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->p:Z

    if-eqz v0, :cond_3

    .line 280
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/o;->m()V

    .line 282
    :cond_3
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->j:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 283
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->d:Lcom/ushaqi/zhuishushenqi/reader/n;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/reader/n;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->c:Lcom/ushaqi/zhuishushenqi/reader/bZ;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/bZ;->i()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 285
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->d:Lcom/ushaqi/zhuishushenqi/reader/n;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->b:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/ushaqi/zhuishushenqi/reader/n;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 289
    :goto_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->i:Landroid/widget/TextView;

    const-string v1, "%s/%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->d:Lcom/ushaqi/zhuishushenqi/reader/n;

    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/reader/n;->j()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->d:Lcom/ushaqi/zhuishushenqi/reader/n;

    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/reader/n;->k()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    invoke-direct {p0, v4}, Lcom/ushaqi/zhuishushenqi/reader/o;->a(Z)V

    goto :goto_0

    .line 287
    :cond_4
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->d:Lcom/ushaqi/zhuishushenqi/reader/n;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/reader/n;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public final f()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 352
    :try_start_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->d:Lcom/ushaqi/zhuishushenqi/reader/n;

    if-nez v0, :cond_0

    move v0, v1

    .line 379
    :goto_0
    return v0

    .line 355
    :cond_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a()Lcom/ushaqi/zhuishushenqi/MyApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/MyApplication;->b()Lcom/ushaqi/zhuishushenqi/reader/Reader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->d()[Lcom/ushaqi/zhuishushenqi/model/ChapterLink;

    move-result-object v2

    .line 356
    if-eqz v2, :cond_1

    array-length v0, v2

    if-nez v0, :cond_2

    :cond_1
    move v0, v1

    .line 357
    goto :goto_0

    .line 359
    :cond_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->d:Lcom/ushaqi/zhuishushenqi/reader/n;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/n;->l()I

    move-result v0

    .line 360
    if-gez v0, :cond_4

    move v0, v1

    .line 365
    :cond_3
    :goto_1
    aget-object v0, v2, v0

    .line 366
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/ChapterLink;->isVip()Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    .line 367
    goto :goto_0

    .line 362
    :cond_4
    array-length v3, v2

    if-lt v0, v3, :cond_3

    .line 363
    array-length v0, v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 369
    :cond_5
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->d:Lcom/ushaqi/zhuishushenqi/reader/n;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/n;->a()Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 370
    if-nez v0, :cond_6

    .line 371
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->d:Lcom/ushaqi/zhuishushenqi/reader/n;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/n;->q()Lcom/ushaqi/zhuishushenqi/reader/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/K;->a()Lcom/ushaqi/zhuishushenqi/reader/Reader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->e()Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->d:Lcom/ushaqi/zhuishushenqi/reader/n;

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/reader/n;->a()Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 372
    if-eqz v0, :cond_6

    .line 373
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->d:Lcom/ushaqi/zhuishushenqi/reader/n;

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/reader/n;->a()Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;->setKey(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 376
    :cond_6
    if-nez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_0

    :cond_7
    move v0, v1

    goto :goto_0

    .line 377
    :catch_0
    move-exception v0

    .line 378
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->b:Landroid/app/Activity;

    const-string v3, "zhuishu_catch_exception"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "PageBinder_needPay:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 379
    goto/16 :goto_0
.end method

.method public final g()V
    .locals 3

    .prologue
    .line 505
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->e:Z

    if-eqz v0, :cond_0

    .line 506
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->b:Landroid/app/Activity;

    const-string v1, "paying_page_cancel"

    sget-object v2, Lcom/ushaqi/zhuishushenqi/util/I;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    :cond_0
    return-void
.end method

.method public final h()V
    .locals 2

    .prologue
    .line 650
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->e:Z

    if-eqz v0, :cond_1

    .line 657
    :cond_0
    :goto_0
    return-void

    .line 653
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->f:Landroid/view/View;

    const v1, 0x7f0c0413

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 654
    if-eqz v0, :cond_0

    .line 655
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public final i()Landroid/view/View;
    .locals 1

    .prologue
    .line 808
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->f:Landroid/view/View;

    return-object v0
.end method

.method public final j()Lcom/ushaqi/zhuishushenqi/reader/n;
    .locals 1

    .prologue
    .line 812
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->d:Lcom/ushaqi/zhuishushenqi/reader/n;

    return-object v0
.end method

.method public final k()V
    .locals 4

    .prologue
    .line 893
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->f:Landroid/view/View;

    const v1, 0x7f0c02e6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v1, Lcom/ushaqi/zhuishushenqi/reader/o;->a:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 894
    return-void
.end method

.method public final onHideAdEvent(Lcom/ushaqi/zhuishushenqi/event/s;)V
    .locals 0
    .annotation runtime Lcom/squareup/a/l;
    .end annotation

    .prologue
    .line 632
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/o;->s()V

    .line 633
    return-void
.end method

.method public final onLoginEvent(Lcom/ushaqi/zhuishushenqi/event/t;)V
    .locals 4
    .annotation runtime Lcom/squareup/a/l;
    .end annotation

    .prologue
    .line 522
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->e:Z

    if-eqz v0, :cond_0

    .line 523
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/event/t;->a()Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v0

    .line 524
    if-eqz v0, :cond_0

    .line 525
    new-instance v1, Lcom/ushaqi/zhuishushenqi/reader/D;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->b:Landroid/app/Activity;

    const-string v3, "\u6b63\u5728\u83b7\u53d6\u8d44\u4ea7\u4fe1\u606f..."

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Account;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/ushaqi/zhuishushenqi/reader/D;-><init>(Lcom/ushaqi/zhuishushenqi/reader/o;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/reader/D;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 528
    :cond_0
    return-void
.end method

.method public final onPayFinish(Lcom/ushaqi/zhuishushenqi/event/y;)V
    .locals 4
    .annotation runtime Lcom/squareup/a/l;
    .end annotation

    .prologue
    .line 922
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->e:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/event/y;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 923
    new-instance v0, Lcom/ushaqi/zhuishushenqi/reader/C;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->b:Landroid/app/Activity;

    const-string v2, "\u6b63\u5728\u66f4\u65b0\u8d44\u4ea7\u4fe1\u606f..."

    invoke-direct {v0, p0, v1, v2}, Lcom/ushaqi/zhuishushenqi/reader/C;-><init>(Lcom/ushaqi/zhuishushenqi/reader/o;Landroid/app/Activity;Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/model/Account;->getToken()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/C;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 925
    :cond_0
    return-void
.end method

.method public final onRemoveAdEvent$2234193(Lcom/arcsoft/hpay100/a/a;)V
    .locals 2
    .annotation runtime Lcom/squareup/a/l;
    .end annotation

    .prologue
    .line 532
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->e:Z

    if-eqz v0, :cond_0

    .line 533
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->f:Landroid/view/View;

    const v1, 0x7f0c0413

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 534
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 536
    :cond_0
    return-void
.end method

.method public final onShowThirdAd(Lcom/ushaqi/zhuishushenqi/event/B;)V
    .locals 3
    .annotation runtime Lcom/squareup/a/l;
    .end annotation

    .prologue
    .line 612
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->b:Landroid/app/Activity;

    invoke-static {v0}, Landroid/support/design/widget/am;->q(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 613
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/event/B;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "page"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 628
    :cond_0
    :goto_0
    return-void

    .line 616
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->f:Landroid/view/View;

    const v1, 0x7f0c0413

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 617
    if-eqz v0, :cond_0

    .line 620
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->b:Landroid/app/Activity;

    invoke-static {v1}, Lcom/arcsoft/hpay100/a/a;->F(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/o;->q()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/o;->a(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/o;->b:Landroid/app/Activity;

    instance-of v1, v1, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    if-eqz v1, :cond_0

    .line 622
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/event/B;->a()Lcom/ushaqi/zhuishushenqi/model/Advert;

    move-result-object v1

    .line 623
    if-eqz v1, :cond_0

    .line 624
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 625
    invoke-direct {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/o;->a(Landroid/view/View;Lcom/ushaqi/zhuishushenqi/model/Advert;)V

    goto :goto_0
.end method

.method public final onThemeChanged(Lcom/ushaqi/zhuishushenqi/event/C;)V
    .locals 0
    .annotation runtime Lcom/squareup/a/l;
    .end annotation

    .prologue
    .line 724
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/o;->r()V

    .line 725
    return-void
.end method
