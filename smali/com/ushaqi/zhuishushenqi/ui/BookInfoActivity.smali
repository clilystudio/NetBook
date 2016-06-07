.class public Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;
.super Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Ljava/lang/String;

.field private i:Z

.field private j:Z

.field private k:Lcom/ushaqi/zhuishushenqi/model/BookInfo;

.field private l:I

.field private m:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const-class v0, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;-><init>()V

    .line 87
    const/4 v0, 0x0

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->l:I

    .line 266
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/aB;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/ui/aB;-><init>(Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->m:Landroid/os/Handler;

    .line 559
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 90
    new-instance v0, Lcom/ushaqi/zhuishushenqi/d;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/d;-><init>()V

    const-class v1, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;

    invoke-virtual {v0, p0, v1}, Lcom/ushaqi/zhuishushenqi/d;->a(Landroid/content/Context;Ljava/lang/Class;)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    const-string v1, "book_id"

    .line 91
    invoke-virtual {v0, v1, p1}, Lcom/ushaqi/zhuishushenqi/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    const-string v1, "open_type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/d;->a(Ljava/lang/String;I)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/d;->a()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 95
    new-instance v0, Lcom/ushaqi/zhuishushenqi/d;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/d;-><init>()V

    const-class v1, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;

    invoke-virtual {v0, p0, v1}, Lcom/ushaqi/zhuishushenqi/d;->a(Landroid/content/Context;Ljava/lang/Class;)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    const-string v1, "book_id"

    .line 96
    invoke-virtual {v0, v1, p1}, Lcom/ushaqi/zhuishushenqi/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    const-string v1, "open_type"

    invoke-virtual {v0, v1, p2}, Lcom/ushaqi/zhuishushenqi/d;->a(Ljava/lang/String;I)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/d;->a()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;Lcom/ushaqi/zhuishushenqi/model/BookInfo;)Lcom/ushaqi/zhuishushenqi/model/BookInfo;
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->k:Lcom/ushaqi/zhuishushenqi/model/BookInfo;

    return-object p1
.end method

.method private a(I)V
    .locals 4

    .prologue
    const v3, 0x7f0b0024

    const/4 v2, 0x0

    .line 200
    .line 3347
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->a()Landroid/support/v7/app/a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/a;->a()Landroid/view/View;

    move-result-object v1

    .line 2352
    const/4 v0, 0x0

    .line 2353
    if-eqz v1, :cond_0

    .line 2354
    const v0, 0x7f0c0090

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 201
    :cond_0
    if-nez v0, :cond_1

    .line 224
    :goto_0
    return-void

    .line 204
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 208
    :pswitch_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 209
    const v1, 0x7f0500d9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 210
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00e0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 213
    :pswitch_1
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 214
    const-string v1, "\u7f13\u5b58\u4e2d..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 219
    :pswitch_2
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 220
    const-string v1, "\u7b49\u5f85\u4e2d..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 204
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private a(Landroid/view/View;Lcom/ushaqi/zhuishushenqi/model/Advert;)V
    .locals 5

    .prologue
    .line 399
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 422
    :cond_0
    :goto_0
    return-void

    .line 402
    :cond_1
    const-string v0, "book_info"

    invoke-virtual {p2, v0}, Lcom/ushaqi/zhuishushenqi/model/Advert;->setPosition(Ljava/lang/String;)V

    .line 403
    invoke-virtual {p2, p0}, Lcom/ushaqi/zhuishushenqi/model/Advert;->recordShow(Landroid/content/Context;)V

    .line 405
    const v0, 0x7f0c01c0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;

    .line 406
    const v1, 0x7f0c01c2

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 407
    const v2, 0x7f0c01c3

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 408
    const v3, 0x7f0c01c1

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 410
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 411
    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/Advert;->getFullImg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;->setImageUrl(Ljava/lang/String;)V

    .line 412
    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/Advert;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 413
    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/Advert;->getDesc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 414
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/aE;

    invoke-direct {v0, p0, p2}, Lcom/ushaqi/zhuishushenqi/ui/aE;-><init>(Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;Lcom/ushaqi/zhuishushenqi/model/Advert;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 421
    invoke-static {p2, p1}, Lcom/ushaqi/zhuishushenqi/util/adutil/n;->a(Lcom/ushaqi/zhuishushenqi/model/Advert;Landroid/view/View;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;)V
    .locals 2

    .prologue
    .line 68
    .line 6174
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->k:Lcom/ushaqi/zhuishushenqi/model/BookInfo;

    if-eqz v0, :cond_3

    .line 6178
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->h:Ljava/lang/String;

    sput-object v0, Lcom/ushaqi/zhuishushenqi/util/I;->a:Ljava/lang/String;

    .line 6179
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->k:Lcom/ushaqi/zhuishushenqi/model/BookInfo;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ushaqi/zhuishushenqi/util/I;->b:Ljava/lang/String;

    .line 6180
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->h:Ljava/lang/String;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->getOnShelf(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;

    move-result-object v0

    .line 6181
    if-eqz v0, :cond_0

    .line 6182
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->getDownloadedSource()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ushaqi/zhuishushenqi/util/I;->d:Ljava/lang/String;

    .line 6183
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->getTocId()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ushaqi/zhuishushenqi/util/I;->c:Ljava/lang/String;

    .line 6184
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->getReadMode()I

    move-result v0

    sput v0, Lcom/ushaqi/zhuishushenqi/util/I;->g:I

    .line 6186
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->h:Ljava/lang/String;

    sget-object v1, Lcom/ushaqi/zhuishushenqi/util/I;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/db/SourceRecord;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/db/SourceRecord;

    move-result-object v0

    .line 6187
    if-eqz v0, :cond_1

    .line 6188
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/SourceRecord;->getSourceId()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ushaqi/zhuishushenqi/util/I;->e:Ljava/lang/String;

    .line 6189
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/SourceRecord;->getSogouMd()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ushaqi/zhuishushenqi/util/I;->f:Ljava/lang/String;

    .line 6192
    :cond_1
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->i:Z

    if-nez v0, :cond_2

    .line 6193
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->h()V

    .line 6195
    :cond_2
    new-instance v0, Lcom/ushaqi/zhuishushenqi/reader/dl/a;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/reader/dl/a;-><init>(Landroid/app/Activity;)V

    .line 6196
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->h:Ljava/lang/String;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->getOnShelf(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/dl/a;->a(Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;)V

    .line 68
    :cond_3
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;I)V
    .locals 7

    .prologue
    .line 68
    .line 7145
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->k:Lcom/ushaqi/zhuishushenqi/model/BookInfo;

    if-eqz v0, :cond_0

    .line 7148
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->k:Lcom/ushaqi/zhuishushenqi/model/BookInfo;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 7149
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->k:Lcom/ushaqi/zhuishushenqi/model/BookInfo;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookInfo;->getFullCover()Ljava/lang/String;

    move-result-object v4

    .line 7150
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->k:Lcom/ushaqi/zhuishushenqi/model/BookInfo;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookInfo;->getLongIntro()Ljava/lang/String;

    move-result-object v2

    .line 7151
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "http://share.zhuishushenqi.com/book/"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->k:Lcom/ushaqi/zhuishushenqi/model/BookInfo;

    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/model/BookInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 7152
    new-instance v6, Lcom/ushaqi/zhuishushenqi/ui/aA;

    invoke-direct {v6, p0}, Lcom/ushaqi/zhuishushenqi/ui/aA;-><init>(Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;)V

    move-object v0, p0

    move v5, p1

    invoke-static/range {v0 .. v6}, Lcom/ushaqi/zhuishushenqi/util/T;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/framework/PlatformActionListener;)V

    .line 68
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 68
    .line 7469
    invoke-static {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/BookTagListActivity;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 7470
    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->startActivity(Landroid/content/Intent;)V

    .line 68
    return-void
.end method

.method private a(Z)V
    .locals 4

    .prologue
    .line 474
    const v0, 0x7f0c00d5

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 475
    const v0, 0x7f0c01cb

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 476
    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->g:Landroid/view/View;

    if-eqz p1, :cond_0

    const v1, 0x7f0200cf

    :goto_0
    invoke-virtual {v3, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 478
    if-eqz p1, :cond_1

    const v1, 0x7f0500dc

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 479
    if-eqz p1, :cond_2

    const/16 v0, 0x8

    :goto_2
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 480
    return-void

    .line 476
    :cond_0
    const v1, 0x7f010003

    .line 477
    invoke-static {p0, v1}, Landroid/support/design/widget/am;->b(Landroid/content/Context;I)I

    move-result v1

    goto :goto_0

    .line 478
    :cond_1
    const v1, 0x7f0500db

    goto :goto_1

    .line 479
    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private a([Ljava/lang/String;)V
    .locals 12

    .prologue
    const/4 v11, 0x7

    const/4 v4, 0x0

    .line 428
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 466
    :cond_0
    return-void

    .line 431
    :cond_1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    .line 432
    const v0, 0x7f0c01d6

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 433
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 434
    array-length v7, p1

    .line 435
    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {p0, v1}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;F)I

    move-result v8

    .line 436
    const v1, 0x7f0c01d7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/TagsLayout;

    .line 439
    const-string v1, "customer_night_theme"

    invoke-static {p0, v1, v4}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 440
    new-array v1, v11, [I

    fill-array-data v1, :array_0

    move-object v2, v1

    :goto_0
    move v3, v4

    move v5, v4

    .line 449
    :goto_1
    if-ge v5, v7, :cond_0

    .line 450
    const v1, 0x7f030078

    invoke-virtual {v6, v1, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 451
    const v9, 0x7f0c01d9

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 452
    aget-object v9, p1, v5

    .line 453
    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 454
    if-lt v3, v11, :cond_2

    move v3, v4

    .line 457
    :cond_2
    aget v10, v2, v3

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 458
    new-instance v10, Lcom/ushaqi/zhuishushenqi/ui/aF;

    invoke-direct {v10, p0, v9}, Lcom/ushaqi/zhuishushenqi/ui/aF;-><init>(Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 464
    new-instance v9, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v9, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v9}, Lcom/ushaqi/zhuishushenqi/widget/TagsLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 449
    add-int/lit8 v1, v5, 0x1

    add-int/lit8 v3, v3, 0x1

    move v5, v1

    goto :goto_1

    .line 444
    :cond_3
    new-array v1, v11, [I

    fill-array-data v1, :array_1

    move-object v2, v1

    goto :goto_0

    .line 440
    :array_0
    .array-data 4
        0x7f020077
        0x7f020079
        0x7f02007b
        0x7f02007d
        0x7f02007f
        0x7f020081
        0x7f020083
    .end array-data

    .line 444
    :array_1
    .array-data 4
        0x7f020076
        0x7f020078
        0x7f02007a
        0x7f02007c
        0x7f02007e
        0x7f020080
        0x7f020082
    .end array-data
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;Z)Z
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->i:Z

    return v0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->g()V

    return-void
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;I)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->e(I)V

    return-void
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;Z)Z
    .locals 0

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->j:Z

    return p1
.end method

.method static synthetic c(Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;Z)V
    .locals 2

    .prologue
    .line 68
    .line 8668
    if-eqz p1, :cond_0

    .line 8669
    const-string v0, "add_update_notify_login"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/arcsoft/hpay100/a/a;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 68
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;)Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->j:Z

    return v0
.end method

.method static synthetic d(Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;)V
    .locals 4

    .prologue
    .line 68
    .line 7591
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 7593
    const v1, 0x7f0c01d0

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->h:Ljava/lang/String;

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->k:Lcom/ushaqi/zhuishushenqi/model/BookInfo;

    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/model/BookInfo;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ushaqi/zhuishushenqi/ui/BestReviewsFragment;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/ui/BestReviewsFragment;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 7595
    const v1, 0x7f0c01d4

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->h:Ljava/lang/String;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/ui/RelateBooksFragment;->a(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/ui/RelateBooksFragment;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 7597
    const v1, 0x7f0c01d5

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->h:Ljava/lang/String;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/ui/RelateUgcFragment;->a(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/ui/RelateUgcFragment;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 7599
    :try_start_0
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7602
    :goto_0
    return-void

    .line 7600
    :catch_0
    move-exception v0

    .line 7601
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method

.method private e(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 674
    packed-switch p1, :pswitch_data_0

    .line 691
    :goto_0
    return-void

    .line 676
    :pswitch_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->b:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 677
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 678
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 681
    :pswitch_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 682
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->c:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 683
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 686
    :pswitch_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 687
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 688
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->e:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 674
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic e(Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->k()V

    return-void
.end method

.method private f()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 370
    const v0, 0x7f0c01bf

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 371
    invoke-static {p0}, Landroid/support/design/widget/am;->q(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Lcom/arcsoft/hpay100/a/a;->F(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 372
    const-string v1, "book"

    invoke-static {p0, v1}, Lcom/ushaqi/zhuishushenqi/util/adutil/n;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/Advert;

    move-result-object v1

    .line 373
    if-eqz v1, :cond_0

    const-string v2, "rate_zssq_advert_reader_bookinfo"

    invoke-static {p0, v2}, Lcom/arcsoft/hpay100/a/a;->w(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 374
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 375
    invoke-direct {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->a(Landroid/view/View;Lcom/ushaqi/zhuishushenqi/model/Advert;)V

    .line 382
    :goto_0
    return-void

    .line 377
    :cond_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 380
    :cond_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic f(Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;)V
    .locals 6

    .prologue
    const/16 v5, 0xa

    const/4 v4, 0x0

    .line 68
    .line 8275
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->a()Landroid/support/v7/app/a;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->k:Lcom/ushaqi/zhuishushenqi/model/BookInfo;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/BookInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/a;->a(Ljava/lang/CharSequence;)V

    .line 8276
    const v0, 0x7f0c01a2

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/CoverView;

    .line 8277
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->k:Lcom/ushaqi/zhuishushenqi/model/BookInfo;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/BookInfo;->getFullCoverLarge()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020106

    invoke-virtual {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/widget/CoverView;->setImageUrl(Ljava/lang/String;I)V

    .line 8278
    const v0, 0x7f0c01c4

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->k:Lcom/ushaqi/zhuishushenqi/model/BookInfo;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/BookInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8280
    const v0, 0x7f0c01c5

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 8281
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->k:Lcom/ushaqi/zhuishushenqi/model/BookInfo;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/BookInfo;->getAuthor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8282
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0055

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 8283
    const v0, 0x7f0c01a4

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8285
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->k:Lcom/ushaqi/zhuishushenqi/model/BookInfo;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookInfo;->getCat()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->k:Lcom/ushaqi/zhuishushenqi/model/BookInfo;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookInfo;->getCat()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 8286
    :goto_0
    const v0, 0x7f0c01c6

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  |  "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8288
    const v0, 0x7f0c01c7

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 8289
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->k:Lcom/ushaqi/zhuishushenqi/model/BookInfo;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/BookInfo;->getWordCount()I

    move-result v1

    .line 8290
    if-lez v1, :cond_2

    .line 8291
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8292
    const-string v2, "  |  %s\u5b57"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Lcom/arcsoft/hpay100/a/a;->i(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8297
    :goto_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->k:Lcom/ushaqi/zhuishushenqi/model/BookInfo;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookInfo;->getUpdated()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8298
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->k:Lcom/ushaqi/zhuishushenqi/model/BookInfo;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookInfo;->getIsSerial()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->k:Lcom/ushaqi/zhuishushenqi/model/BookInfo;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookInfo;->getUpdated()Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/util/t;->e(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 8299
    :goto_2
    const v0, 0x7f0c01c8

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8302
    :cond_0
    const v0, 0x7f0c01cc

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->k:Lcom/ushaqi/zhuishushenqi/model/BookInfo;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/BookInfo;->getLatelyFollower()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8304
    const v0, 0x7f0c01cd

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 8305
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->k:Lcom/ushaqi/zhuishushenqi/model/BookInfo;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/BookInfo;->getRetentionRatio()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_4

    .line 8306
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->k:Lcom/ushaqi/zhuishushenqi/model/BookInfo;

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/BookInfo;->getRetentionRatio()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8311
    :goto_3
    const v0, 0x7f0c01ce

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 8312
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->k:Lcom/ushaqi/zhuishushenqi/model/BookInfo;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/BookInfo;->getSerializeWordCount()I

    move-result v1

    if-ltz v1, :cond_5

    .line 8313
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->k:Lcom/ushaqi/zhuishushenqi/model/BookInfo;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/BookInfo;->getSerializeWordCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8318
    :goto_4
    const v0, 0x7f0c01d1

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8319
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->k:Lcom/ushaqi/zhuishushenqi/model/BookInfo;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 8320
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v5, :cond_7

    .line 8321
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 8323
    :goto_5
    const v0, 0x7f0c01d2

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u7684\u793e\u533a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8324
    const v0, 0x7f0c01d3

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u5171\u6709 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->k:Lcom/ushaqi/zhuishushenqi/model/BookInfo;

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/BookInfo;->getPostCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u4e2a\u5e16\u5b50"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8326
    const v0, 0x7f0c01cf

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 8327
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->k:Lcom/ushaqi/zhuishushenqi/model/BookInfo;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/BookInfo;->getLongIntro()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 8328
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->k:Lcom/ushaqi/zhuishushenqi/model/BookInfo;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/BookInfo;->getLongIntro()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8329
    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/aC;

    invoke-direct {v1, p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/aC;-><init>(Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 8354
    :goto_6
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->g()V

    .line 8355
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->k:Lcom/ushaqi/zhuishushenqi/model/BookInfo;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookInfo;->getTags()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->a([Ljava/lang/String;)V

    .line 8358
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->f()V

    .line 68
    return-void

    .line 8285
    :cond_1
    const-string v0, "-"

    move-object v1, v0

    goto/16 :goto_0

    .line 8294
    :cond_2
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 8298
    :cond_3
    const-string v0, "\u5b8c\u7ed3"

    move-object v1, v0

    goto/16 :goto_2

    .line 8308
    :cond_4
    const-string v1, "-"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 8315
    :cond_5
    const-string v1, "-"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 8351
    :cond_6
    const-string v1, "\u6682\u65e0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_7
    move-object v1, v0

    goto/16 :goto_5
.end method

.method private g()V
    .locals 6

    .prologue
    .line 484
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    .line 485
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    .line 486
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    .line 487
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    .line 488
    iget-object v5, p0, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->f:Landroid/view/View;

    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->i:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0200cf

    :goto_0
    invoke-virtual {v5, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 490
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->f:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 492
    const v0, 0x7f0c01a8

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 493
    const v1, 0x7f0c01a7

    invoke-virtual {p0, v1}, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 494
    iget-boolean v2, p0, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->i:Z

    if-eqz v2, :cond_1

    const v2, 0x7f0500da

    invoke-virtual {p0, v2}, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 495
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->i:Z

    if-eqz v0, :cond_2

    const v0, 0x7f0200d2

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 496
    return-void

    .line 488
    :cond_0
    const v0, 0x7f010003

    .line 489
    invoke-static {p0, v0}, Landroid/support/design/widget/am;->b(Landroid/content/Context;I)I

    move-result v0

    goto :goto_0

    .line 494
    :cond_1
    const v2, 0x7f0500d8

    invoke-virtual {p0, v2}, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 495
    :cond_2
    const v0, 0x7f0200ce

    goto :goto_2
.end method

.method private h()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 500
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->i:Z

    if-eqz v0, :cond_0

    .line 501
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->h:Ljava/lang/String;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->deleteAndSync(Ljava/lang/String;)V

    .line 502
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->h:Ljava/lang/String;

    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->v(Ljava/lang/String;)V

    .line 503
    const v0, 0x7f050163

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->k:Lcom/ushaqi/zhuishushenqi/model/BookInfo;

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/BookInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 523
    :goto_0
    invoke-static {p0, v0}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 524
    return-void

    .line 506
    :cond_0
    invoke-static {}, Landroid/support/design/widget/am;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 507
    const v0, 0x7f0500d5

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4391
    :goto_1
    const-string v1, "book_info_add"

    invoke-static {p0, v1}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 521
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->i()V

    goto :goto_0

    .line 509
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->k:Lcom/ushaqi/zhuishushenqi/model/BookInfo;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->create(Lcom/ushaqi/zhuishushenqi/model/BookInfo;)V

    .line 510
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->h:Ljava/lang/String;

    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->u(Ljava/lang/String;)V

    .line 512
    const v0, 0x7f0500ab

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->k:Lcom/ushaqi/zhuishushenqi/model/BookInfo;

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/BookInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 514
    const-string v0, "add_update_notify_login"

    invoke-static {p0, v0, v3}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    .line 516
    if-eqz v0, :cond_2

    invoke-static {}, Landroid/support/design/widget/am;->g()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3644
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030154

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 3645
    const v0, 0x7f0c0455

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 3646
    const v1, 0x7f0500bd

    invoke-virtual {p0, v1}, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 3647
    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 3648
    const v1, 0x7f0c0454

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 3649
    const v4, 0x7f0500be

    invoke-virtual {p0, v4}, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3651
    new-instance v1, Luk/me/lewisdeane/ldialogs/h;

    invoke-direct {v1, p0}, Luk/me/lewisdeane/ldialogs/h;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Luk/me/lewisdeane/ldialogs/h;->a(Landroid/view/View;)Luk/me/lewisdeane/ldialogs/h;

    move-result-object v1

    const-string v3, "\u5feb\u901f\u767b\u5f55"

    new-instance v4, Lcom/ushaqi/zhuishushenqi/ui/aH;

    invoke-direct {v4, p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/aH;-><init>(Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;Landroid/widget/CheckBox;)V

    .line 3652
    invoke-virtual {v1, v3, v4}, Luk/me/lewisdeane/ldialogs/h;->a(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Luk/me/lewisdeane/ldialogs/h;

    move-result-object v1

    const-string v3, "\u4e0d\u60f3\u540c\u6b65"

    new-instance v4, Lcom/ushaqi/zhuishushenqi/ui/aG;

    invoke-direct {v4, p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/aG;-><init>(Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;Landroid/widget/CheckBox;)V

    .line 3659
    invoke-virtual {v1, v3, v4}, Luk/me/lewisdeane/ldialogs/h;->b(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Luk/me/lewisdeane/ldialogs/h;

    move-result-object v0

    .line 3664
    invoke-virtual {v0}, Luk/me/lewisdeane/ldialogs/h;->a()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_2
    move-object v0, v2

    goto/16 :goto_1
.end method

.method private i()V
    .locals 2

    .prologue
    .line 527
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->l:I

    packed-switch v0, :pswitch_data_0

    .line 541
    :goto_0
    return-void

    .line 529
    :pswitch_0
    const-string v0, "book_info_recommend_add_shelf"

    const-string v1, "zhuishu"

    invoke-static {p0, v0, v1}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 532
    :pswitch_1
    const-string v0, "page_footing_recommend_add_shelf"

    const-string v1, "zhuishu"

    invoke-static {p0, v0, v1}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 535
    :pswitch_2
    const-string v0, "book_info_recommend_add_shelf"

    const-string v1, "bfd"

    invoke-static {p0, v0, v1}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 538
    :pswitch_3
    const-string v0, "page_footing_recommend_add_shelf"

    const-string v1, "bfd"

    invoke-static {p0, v0, v1}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 527
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private j()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 555
    invoke-direct {p0, v3}, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->e(I)V

    .line 556
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/aI;

    invoke-direct {v0, p0, v3}, Lcom/ushaqi/zhuishushenqi/ui/aI;-><init>(Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;B)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->h:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/aI;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 557
    return-void
.end method

.method private k()V
    .locals 2

    .prologue
    .line 609
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->k:Lcom/ushaqi/zhuishushenqi/model/BookInfo;

    if-eqz v0, :cond_0

    .line 610
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a()Lcom/ushaqi/zhuishushenqi/MyApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->k:Lcom/ushaqi/zhuishushenqi/model/BookInfo;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a(Lcom/ushaqi/zhuishushenqi/model/BookInfo;)V

    .line 612
    :cond_0
    return-void
.end method


# virtual methods
.method public onBookAdded(Lcom/ushaqi/zhuishushenqi/event/c;)V
    .locals 2
    .annotation runtime Lcom/squareup/a/l;
    .end annotation

    .prologue
    .line 245
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/event/c;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->i:Z

    if-nez v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->m:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 247
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->i()V

    .line 249
    :cond_0
    return-void
.end method

.method public onBookRemoved(Lcom/ushaqi/zhuishushenqi/event/h;)V
    .locals 2
    .annotation runtime Lcom/squareup/a/l;
    .end annotation

    .prologue
    .line 253
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/event/h;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->i:Z

    if-eqz v0, :cond_0

    .line 254
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->i:Z

    .line 255
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->g()V

    .line 257
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 616
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 640
    :goto_0
    return-void

    .line 619
    :sswitch_0
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->h()V

    goto :goto_0

    .line 4544
    :sswitch_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->h:Ljava/lang/String;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->get(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;

    move-result-object v0

    .line 4545
    if-nez v0, :cond_0

    .line 4546
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->a(Z)V

    .line 4547
    new-instance v0, Lcom/ushaqi/zhuishushenqi/util/m;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/util/m;-><init>(Landroid/app/Activity;)V

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->k:Lcom/ushaqi/zhuishushenqi/model/BookInfo;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/m;->a(Lcom/ushaqi/zhuishushenqi/model/BookInfo;)V

    .line 5398
    :goto_1
    const-string v0, "book_info_search"

    invoke-static {p0, v0}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 4549
    :cond_0
    new-instance v1, Lcom/ushaqi/zhuishushenqi/util/m;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/util/m;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/util/m;->a(Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;)V

    goto :goto_1

    .line 628
    :sswitch_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->h:Ljava/lang/String;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->k:Lcom/ushaqi/zhuishushenqi/model/BookInfo;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/BookInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/BookPostTabActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->startActivity(Landroid/content/Intent;)V

    .line 5412
    const-string v0, "book_info_post"

    invoke-static {p0, v0}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 633
    :sswitch_3
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->k:Lcom/ushaqi/zhuishushenqi/model/BookInfo;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookInfo;->getAuthor()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/AuthorBooksActivity;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 634
    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 637
    :sswitch_4
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->j()V

    goto :goto_0

    .line 616
    :sswitch_data_0
    .sparse-switch
        0x7f0c0112 -> :sswitch_4
        0x7f0c01a4 -> :sswitch_3
        0x7f0c01c9 -> :sswitch_0
        0x7f0c01ca -> :sswitch_1
        0x7f0c01d1 -> :sswitch_2
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 101
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 102
    const v0, 0x7f03002f

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->setContentView(I)V

    .line 103
    new-instance v3, Lcom/ushaqi/zhuishushenqi/ui/ay;

    invoke-direct {v3, p0}, Lcom/ushaqi/zhuishushenqi/ui/ay;-><init>(Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;)V

    .line 1165
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->c()V

    .line 1166
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030001

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 1167
    const v0, 0x7f0c0048

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0500dd

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1168
    const v0, 0x7f0c0095

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/U;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/U;-><init>(Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1174
    const v0, 0x7f0c0092

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1175
    const v1, 0x7f0c0093

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1176
    const v5, 0x7f0500d9

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    .line 1177
    const v5, 0x7f05003f

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    .line 1178
    new-instance v5, Lcom/ushaqi/zhuishushenqi/ui/V;

    invoke-direct {v5, p0, v3}, Lcom/ushaqi/zhuishushenqi/ui/V;-><init>(Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;Lcom/ushaqi/zhuishushenqi/ui/ab;)V

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1184
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/W;

    invoke-direct {v0, p0, v3}, Lcom/ushaqi/zhuishushenqi/ui/W;-><init>(Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;Lcom/ushaqi/zhuishushenqi/ui/ab;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1190
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->a()Landroid/support/v7/app/a;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/support/v7/app/a;->a(Landroid/view/View;)V

    .line 123
    const v0, 0x7f0c0029

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->b:Landroid/view/View;

    .line 124
    const v0, 0x7f0c00dd

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->c:Landroid/view/View;

    .line 125
    const v0, 0x7f0c00de

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->e:Landroid/view/View;

    .line 126
    const v0, 0x7f0c01ca

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->g:Landroid/view/View;

    .line 127
    const v0, 0x7f0c01c9

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->f:Landroid/view/View;

    .line 128
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->g:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->f:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->e:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "book_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->h:Ljava/lang/String;

    .line 133
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->h:Ljava/lang/String;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->getOnShelf(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->i:Z

    .line 135
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/a/b;->a(Ljava/lang/Object;)V

    .line 137
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->j()V

    .line 1384
    const-string v0, "book_info_open"

    invoke-static {p0, v0}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "open_type"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->l:I

    .line 142
    return-void

    :cond_0
    move v0, v2

    .line 133
    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 239
    invoke-super {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->onDestroy()V

    .line 240
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/a/b;->b(Ljava/lang/Object;)V

    .line 241
    return-void
.end method

.method public onDownloadStatus(Lcom/ushaqi/zhuishushenqi/event/d;)V
    .locals 2
    .annotation runtime Lcom/squareup/a/l;
    .end annotation

    .prologue
    .line 261
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->h:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/event/d;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/event/d;->a()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->a(I)V

    .line 264
    :cond_0
    return-void
.end method

.method public onHideAdEvent(Lcom/ushaqi/zhuishushenqi/event/s;)V
    .locals 0
    .annotation runtime Lcom/squareup/a/l;
    .end annotation

    .prologue
    .line 363
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->f()V

    .line 364
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 228
    invoke-super {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->onResume()V

    .line 230
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->k()V

    .line 231
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->a(Z)V

    .line 233
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/support/design/widget/am;->g(Ljava/lang/String;)I

    move-result v0

    .line 234
    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->a(I)V

    .line 235
    return-void
.end method

.method public onShowThirdAd(Lcom/ushaqi/zhuishushenqi/event/B;)V
    .locals 3
    .annotation runtime Lcom/squareup/a/l;
    .end annotation

    .prologue
    .line 386
    if-eqz p1, :cond_0

    invoke-static {p0}, Landroid/support/design/widget/am;->q(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 387
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/event/B;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "book"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 396
    :cond_0
    :goto_0
    return-void

    .line 390
    :cond_1
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/event/B;->a()Lcom/ushaqi/zhuishushenqi/model/Advert;

    move-result-object v0

    .line 391
    if-eqz v0, :cond_0

    .line 392
    const v1, 0x7f0c01bf

    invoke-virtual {p0, v1}, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 393
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 394
    invoke-direct {p0, v1, v0}, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->a(Landroid/view/View;Lcom/ushaqi/zhuishushenqi/model/Advert;)V

    goto :goto_0
.end method
