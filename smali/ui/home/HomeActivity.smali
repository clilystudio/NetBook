.class public Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;
.super Lcom/ushaqi/zhuishushenqi/ui/home/HomeParentActivity;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TabHost$OnTabChangeListener;
.implements Landroid/widget/TabHost$TabContentFactory;


# static fields
.field private static final a:Ljava/lang/String;

.field private static w:Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;


# instance fields
.field private b:J

.field private c:Z

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/widget/TabHost;

.field private g:Landroid/support/v4/view/ViewPager;

.field private h:Lcom/ushaqi/zhuishushenqi/ui/home/i;

.field private i:Landroid/widget/PopupWindow;

.field private j:Landroid/widget/PopupWindow;

.field private k:Landroid/view/View;

.field private l:Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/ImageView;

.field private p:Lcom/ushaqi/zhuishushenqi/model/Account;

.field private q:Landroid/widget/ImageView;

.field private r:Landroid/widget/ImageView;

.field private s:Landroid/view/ViewGroup;

.field private t:Landroid/webkit/WebView;

.field private u:Z

.field private v:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 118
    const-class v0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeParentActivity;-><init>()V

    .line 119
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->b:J

    .line 120
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->c:Z

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->e:Ljava/util/List;

    .line 1067
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 110
    .line 7480
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->v:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->v:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 7481
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->v:[Ljava/lang/String;

    array-length v2, v2

    int-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 7482
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->v:[Ljava/lang/String;

    aget-object v0, v1, v0

    :goto_0
    return-object v0

    .line 7484
    :cond_0
    const/4 v0, 0x0

    .line 110
    goto :goto_0
.end method

.method private a(I)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 465
    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->h:Lcom/ushaqi/zhuishushenqi/ui/home/i;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/home/i;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 466
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->g:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1, v5}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 467
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->h:Lcom/ushaqi/zhuishushenqi/ui/home/i;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/home/i;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_1

    .line 468
    const-string v0, "switch_17kflow"

    invoke-static {p0, v0}, Lcom/arcsoft/hpay100/a/a;->r(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 469
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->j()F

    move-result v1

    .line 470
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    .line 471
    if-eqz v0, :cond_0

    float-to-double v0, v1

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->u:Z

    if-nez v0, :cond_0

    .line 472
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/home/g;

    invoke-direct {v0, p0, v4}, Lcom/ushaqi/zhuishushenqi/ui/home/g;-><init>(Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;B)V

    new-array v1, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/home/g;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 474
    :cond_0
    iput-boolean v5, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->u:Z

    .line 477
    :cond_1
    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 1031
    const-string v0, "file_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1032
    if-eqz v0, :cond_0

    .line 1033
    const-string v1, "nonsupport"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1034
    const-string v0, "\u5f88\u62b1\u6b49\uff0c\u6682\u4e0d\u652f\u6301\u6b64\u683c\u5f0f\u7684\u56fe\u4e66"

    invoke-static {p0, v0}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 1041
    :cond_0
    :goto_0
    return-void

    .line 1036
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.ushaqi.zhuishushenqi.ACTION_READ_TXT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1037
    const-string v2, "file_name"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1038
    invoke-virtual {p0, v1}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private a(Lcom/ushaqi/zhuishushenqi/model/Account;)V
    .locals 1

    .prologue
    .line 693
    invoke-static {p0}, Lcom/ushaqi/zhuishushenqi/util/J;->a(Landroid/content/Context;)Lcom/ushaqi/zhuishushenqi/util/J;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ushaqi/zhuishushenqi/util/J;->a(Lcom/ushaqi/zhuishushenqi/model/Account;)V

    .line 694
    return-void
.end method

.method private a(Lcom/ushaqi/zhuishushenqi/model/User;)V
    .locals 2

    .prologue
    .line 793
    if-nez p1, :cond_1

    .line 800
    :cond_0
    :goto_0
    return-void

    .line 796
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->k:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 797
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->l:Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/User;->getFullAvatar()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;->setImageUrl(Ljava/lang/String;)V

    .line 798
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->m:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/User;->getNickname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 110
    .line 7498
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->t:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 7499
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->t:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 7501
    :cond_0
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->t:Landroid/webkit/WebView;

    .line 7502
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->t:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 7503
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->t:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 7504
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->t:Landroid/webkit/WebView;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/home/b;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/home/b;-><init>(Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 7511
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->t:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 7512
    iput-boolean v2, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->u:Z

    .line 7513
    const-string v0, "take_17k_webflow"

    invoke-static {p0, v0}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 110
    return-void
.end method

.method private static a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 377
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;

    .line 378
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "book:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->getBookId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/push/BookSubRecord;->create(Ljava/lang/String;)V

    goto :goto_0

    .line 380
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->v:[Ljava/lang/String;

    return-object p1
.end method

.method public static b()Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;
    .locals 1

    .prologue
    .line 264
    sget-object v0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->w:Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;

    return-object v0
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->e:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;)Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->g:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic d(Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;)V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->m()V

    return-void
.end method

.method private e(I)V
    .locals 1

    .prologue
    .line 938
    packed-switch p1, :pswitch_data_0

    .line 952
    :goto_0
    return-void

    .line 940
    :pswitch_0
    invoke-static {p0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameTabActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 941
    const-string v0, "home_ab_game"

    invoke-static {p0, v0}, Lcom/arcsoft/hpay100/a/a;->n(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 944
    :pswitch_1
    invoke-static {p0}, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 945
    const-string v0, "home_ab_search"

    invoke-static {p0, v0}, Lcom/arcsoft/hpay100/a/a;->n(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 948
    :pswitch_2
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->l()V

    .line 949
    const-string v0, "home_ab_more"

    invoke-static {p0, v0}, Lcom/arcsoft/hpay100/a/a;->n(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 938
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c026d
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic e(Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;)V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->n()V

    return-void
.end method

.method static synthetic f(Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;)Lcom/ushaqi/zhuishushenqi/api/b;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->d:Lcom/ushaqi/zhuishushenqi/api/b;

    return-object v0
.end method

.method static synthetic g(Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->o()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic h(Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;)Lcom/ushaqi/zhuishushenqi/api/b;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->d:Lcom/ushaqi/zhuishushenqi/api/b;

    return-object v0
.end method

.method private h()V
    .locals 4

    .prologue
    .line 386
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/push/BookSubRecord;->getAll()Ljava/util/List;

    move-result-object v0

    .line 387
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/push/BookSubRecord;

    .line 388
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/push/BookSubRecord;->pushId:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Lcom/xiaomi/mipush/sdk/d;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 390
    :cond_0
    return-void
.end method

.method private i()V
    .locals 4

    .prologue
    .line 393
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/push/BookUnSubRecord;->getAll()Ljava/util/List;

    move-result-object v0

    .line 394
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/push/BookUnSubRecord;

    .line 395
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/push/BookUnSubRecord;->pushId:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Lcom/xiaomi/mipush/sdk/d;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 397
    :cond_0
    return-void
.end method

.method private j()F
    .locals 1

    .prologue
    .line 488
    const-string v0, "rate_17kflow"

    invoke-static {p0, v0}, Lcom/umeng/a/b;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 490
    :try_start_0
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 492
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private k()V
    .locals 2

    .prologue
    .line 806
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->k:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 807
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->l:Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;

    const v1, 0x7f02014b

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;->setImageResource(I)V

    .line 808
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->m:Landroid/widget/TextView;

    const-string v1, "\u8bf7\u767b\u5f55"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 810
    :cond_0
    return-void
.end method

.method private l()V
    .locals 6

    .prologue
    .line 895
    .line 5914
    :try_start_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->j:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->j:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5915
    :cond_0
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300bb

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 5917
    invoke-static {p0}, Lcom/arcsoft/hpay100/a/a;->L(Landroid/content/Context;)I

    move-result v1

    .line 5918
    new-instance v2, Landroid/widget/PopupWindow;

    const/4 v3, -0x1

    invoke-direct {v2, v0, v3, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->j:Landroid/widget/PopupWindow;

    .line 5919
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->j:Landroid/widget/PopupWindow;

    const v1, 0x7f0701bd

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 5920
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->j:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->a()Landroid/support/v7/app/a;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/app/a;->a()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 896
    :cond_1
    const v0, 0x7f0c00e8

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 6767
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->i:Landroid/widget/PopupWindow;

    if-nez v1, :cond_2

    .line 6768
    new-instance v1, Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->k:Landroid/view/View;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060062

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const/4 v4, -0x2

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->i:Landroid/widget/PopupWindow;

    .line 6769
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->i:Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 6770
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->i:Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 6771
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->i:Landroid/widget/PopupWindow;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6773
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->i:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 6774
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->i:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 6775
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->i:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/home/c;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/ui/home/c;-><init>(Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 6786
    :cond_2
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->i:Landroid/widget/PopupWindow;

    .line 897
    iput-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->i:Landroid/widget/PopupWindow;

    .line 898
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->i:Landroid/widget/PopupWindow;

    const v2, 0x7f0701bc

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 899
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->i:Landroid/widget/PopupWindow;

    const/16 v2, 0x35

    const/high16 v3, 0x40a00000

    .line 900
    invoke-static {p0, v3}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;F)I

    move-result v3

    .line 901
    invoke-static {p0}, Landroid/support/design/widget/am;->l(Landroid/content/Context;)I

    move-result v4

    invoke-static {p0}, Landroid/support/design/widget/am;->k(Landroid/content/Context;)I

    move-result v5

    add-int/2addr v4, v5

    .line 899
    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 902
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->i:Landroid/widget/PopupWindow;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/home/d;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/home/d;-><init>(Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 911
    :goto_0
    return-void

    .line 908
    :catch_0
    move-exception v0

    .line 909
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private m()V
    .locals 1

    .prologue
    .line 925
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->i:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->i:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 926
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->i:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 928
    :cond_0
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->n()V

    .line 929
    return-void
.end method

.method private n()V
    .locals 1

    .prologue
    .line 932
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->j:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->j:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 933
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->j:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 935
    :cond_0
    return-void
.end method

.method private o()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1088
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1089
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 1093
    :try_start_0
    new-instance v2, Ljava/util/zip/ZipFile;

    invoke-direct {v2, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1094
    :try_start_1
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v3

    .line 1095
    :cond_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1096
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    .line 1097
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1098
    const-string v5, "META-INF/DATA"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1100
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v2, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1103
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 1104
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 1110
    :catch_0
    move-exception v0

    .line 1111
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1113
    if-eqz v2, :cond_1

    .line 1115
    :try_start_3
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_1
    :goto_2
    move-object v0, v1

    .line 1122
    :goto_3
    return-object v0

    .line 1106
    :cond_2
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 1107
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v0

    .line 1115
    :try_start_5
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3

    .line 1116
    :catch_1
    move-exception v1

    .line 1117
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 1115
    :cond_3
    :try_start_6
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    .line 1116
    :catch_2
    move-exception v0

    .line 1117
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 1116
    :catch_3
    move-exception v0

    .line 1117
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 1113
    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_4
    if-eqz v2, :cond_4

    .line 1115
    :try_start_7
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 1118
    :cond_4
    :goto_5
    throw v0

    .line 1116
    :catch_4
    move-exception v1

    .line 1117
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 1113
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 1110
    :catch_5
    move-exception v0

    move-object v2, v1

    goto :goto_1
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;
    .locals 2

    .prologue
    .line 563
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;

    .line 564
    if-nez v0, :cond_0

    .line 565
    sget-object v0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->a:Ljava/lang/String;

    const-string v1, "getHomeShelfFragment "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->b()Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;

    move-result-object v0

    .line 568
    :cond_0
    return-object v0
.end method

.method public createTabContent(Ljava/lang/String;)Landroid/view/View;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 434
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 435
    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 436
    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumWidth(I)V

    .line 437
    return-object v0
.end method

.method public final f()V
    .locals 1

    .prologue
    .line 268
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->a(I)V

    .line 269
    return-void
.end method

.method public final g(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/ui/home/HomeFindFragment;
    .locals 3

    .prologue
    .line 586
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeFindFragment;

    .line 587
    if-nez v0, :cond_0

    .line 588
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 589
    const-string v1, "game_center_show"

    iget-boolean v2, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->c:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 590
    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeFindFragment;->a(Landroid/os/Bundle;)Lcom/ushaqi/zhuishushenqi/ui/home/HomeFindFragment;

    move-result-object v0

    .line 592
    :cond_0
    return-object v0
.end method

.method public final g()V
    .locals 3

    .prologue
    .line 556
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->g:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 557
    return-void
.end method

.method public onAccountUpdated(Lcom/ushaqi/zhuishushenqi/event/a;)V
    .locals 3
    .annotation runtime Lcom/squareup/a/l;
    .end annotation

    .prologue
    .line 345
    invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v0

    .line 346
    if-eqz v0, :cond_0

    .line 347
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->l:Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Account;->getUser()Lcom/ushaqi/zhuishushenqi/model/User;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/User;->getFullAvatar()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;->setImageUrl(Ljava/lang/String;)V

    .line 348
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->m:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Account;->getUser()Lcom/ushaqi/zhuishushenqi/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/User;->getNickname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 350
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 965
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->e:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->e:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;

    if-eqz v0, :cond_0

    .line 966
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->e:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 967
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->e:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->e()V

    .line 997
    :goto_0
    return-void

    .line 971
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 972
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/util/as;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 973
    new-instance v0, Luk/me/lewisdeane/ldialogs/h;

    invoke-direct {v0, p0}, Luk/me/lewisdeane/ldialogs/h;-><init>(Landroid/content/Context;)V

    const-string v1, "\u5373\u5c06\u9000\u51fa\u542c\u4e66\uff0c\u6709\u58f0\u5c0f\u8bf4\u662f\u5426\u7ee7\u7eed\u64ad\u653e\uff1f"

    .line 7046
    iput-object v1, v0, Luk/me/lewisdeane/ldialogs/h;->e:Ljava/lang/String;

    .line 973
    const-string v1, "\u90fd\u5173\u4e86"

    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/home/f;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/ui/home/f;-><init>(Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;)V

    .line 974
    invoke-virtual {v0, v1, v2}, Luk/me/lewisdeane/ldialogs/h;->a(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Luk/me/lewisdeane/ldialogs/h;

    move-result-object v0

    const-string v1, "\u7ee7\u7eed\u653e"

    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/home/e;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/ui/home/e;-><init>(Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;)V

    .line 982
    invoke-virtual {v0, v1, v2}, Luk/me/lewisdeane/ldialogs/h;->b(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Luk/me/lewisdeane/ldialogs/h;

    move-result-object v0

    .line 988
    invoke-virtual {v0}, Luk/me/lewisdeane/ldialogs/h;->b()Landroid/app/AlertDialog;

    goto :goto_0

    .line 989
    :cond_1
    iget-wide v2, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->b:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x7d0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 990
    iput-wide v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->b:J

    .line 991
    const v0, 0x7f050105

    invoke-static {p0, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 995
    :cond_2
    invoke-super {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeParentActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onBookShelfRefresh(Lcom/ushaqi/zhuishushenqi/event/BookShelfRefreshEvent;)V
    .locals 1
    .annotation runtime Lcom/squareup/a/l;
    .end annotation

    .prologue
    .line 322
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->p:Lcom/ushaqi/zhuishushenqi/model/Account;

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->p:Lcom/ushaqi/zhuishushenqi/model/Account;

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->a(Lcom/ushaqi/zhuishushenqi/model/Account;)V

    .line 325
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    const/16 v5, 0x64

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 814
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->m()V

    .line 816
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 891
    :goto_0
    :pswitch_0
    return-void

    .line 5647
    :pswitch_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->p:Lcom/ushaqi/zhuishushenqi/model/Account;

    if-eqz v0, :cond_0

    .line 5648
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->m()V

    .line 5649
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->p:Lcom/ushaqi/zhuishushenqi/model/Account;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Account;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/user/UserInfoActivity;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 5650
    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 5652
    :cond_0
    invoke-static {p0}, Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 5653
    const-string v1, "KEY_SOURCE"

    sget-object v2, Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity$Source;->HOME:Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity$Source;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 5654
    invoke-virtual {p0, v0, v5}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 5662
    :pswitch_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->p:Lcom/ushaqi/zhuishushenqi/model/Account;

    if-eqz v0, :cond_1

    .line 5663
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->m()V

    .line 5664
    const-string v0, "key_enter_msg_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {p0, v0, v2, v3}, Lcom/arcsoft/hpay100/a/a;->b(Landroid/content/Context;Ljava/lang/String;J)V

    .line 5665
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->p:Lcom/ushaqi/zhuishushenqi/model/Account;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Account;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/db/AccountInfo;->getOrCreate(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/db/AccountInfo;

    move-result-object v0

    .line 5666
    invoke-static {p0}, Lcom/ushaqi/zhuishushenqi/util/J;->a(Landroid/content/Context;)Lcom/ushaqi/zhuishushenqi/util/J;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/util/J;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/db/AccountInfo;->setPrevUnimpNotif(I)V

    .line 5667
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/AccountInfo;->save()Ljava/lang/Long;

    .line 5668
    const-string v0, "view_notification"

    invoke-static {p0, v0}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 5669
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v0

    new-instance v1, Lcom/ushaqi/zhuishushenqi/event/w;

    invoke-direct {v1}, Lcom/ushaqi/zhuishushenqi/event/w;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/a/b;->c(Ljava/lang/Object;)V

    .line 5670
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ushaqi/zhuishushenqi/ui/user/MyMessageActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 5671
    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 5673
    :cond_1
    invoke-static {p0}, Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0, v5}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 5681
    :pswitch_3
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->p:Lcom/ushaqi/zhuishushenqi/model/Account;

    if-eqz v0, :cond_2

    .line 5682
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->m()V

    .line 5683
    new-instance v0, Lcom/ushaqi/zhuishushenqi/util/Z;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->p:Lcom/ushaqi/zhuishushenqi/model/Account;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/Account;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/ushaqi/zhuishushenqi/util/Z;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/ushaqi/zhuishushenqi/util/Z;->a(Z)V

    goto/16 :goto_0

    .line 5685
    :cond_2
    invoke-static {p0}, Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0, v5}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 827
    :pswitch_4
    const-string v0, "android-feedback"

    invoke-static {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 828
    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 831
    :pswitch_5
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ushaqi/zhuishushenqi/ui/home/HomeTransparentActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 832
    const-string v1, "customer_night_theme"

    invoke-static {p0, v1, v3}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 834
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->n:Landroid/widget/TextView;

    const v2, 0x7f0500fe

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 835
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->o:Landroid/widget/ImageView;

    const v2, 0x7f0202a5

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 836
    const-string v1, "customer_night_theme"

    invoke-static {p0, v1, v3}, Lcom/arcsoft/hpay100/a/a;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 837
    const-string v1, "night_mode"

    invoke-static {p0, v1, v3}, Lcom/arcsoft/hpay100/a/a;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 839
    invoke-static {p0}, Lcom/arcsoft/hpay100/a/a;->C(Landroid/content/Context;)V

    .line 841
    const-string v1, "onThemeChange"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 854
    :goto_1
    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 855
    const v0, 0x7f04001e

    const v1, 0x7f04001f

    invoke-virtual {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 844
    :cond_3
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->n:Landroid/widget/TextView;

    const v2, 0x7f0500fd

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 845
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->o:Landroid/widget/ImageView;

    const v2, 0x7f0202a4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 846
    const-string v1, "customer_night_theme"

    invoke-static {p0, v1, v4}, Lcom/arcsoft/hpay100/a/a;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 847
    const-string v1, "night_mode"

    invoke-static {p0, v1, v4}, Lcom/arcsoft/hpay100/a/a;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 849
    const-string v1, "start_night_theme_home"

    invoke-static {p0, v1}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 850
    invoke-static {p0}, Lcom/arcsoft/hpay100/a/a;->B(Landroid/content/Context;)V

    .line 851
    const-string v1, "onThemeChange"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 859
    :pswitch_6
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ushaqi/zhuishushenqi/ui/SettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 860
    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 863
    :pswitch_7
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ushaqi/zhuishushenqi/reader/txt/ScanTxtFileActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 867
    :pswitch_8
    invoke-static {}, Lcom/arcsoft/hpay100/a/a;->d()Z

    move-result v0

    if-nez v0, :cond_4

    .line 868
    const-string v0, "\u65e0\u6cd5\u4f7f\u7528\uff0c\u8bf7\u68c0\u67e5SD\u5361\u662f\u5426\u6302\u8f7d"

    invoke-static {p0, v0}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 872
    :cond_4
    invoke-static {}, Lcom/arcsoft/hpay100/a/a;->e()J

    move-result-wide v0

    .line 873
    const-wide/16 v2, 0x4e20

    cmp-long v0, v0, v2

    if-gtz v0, :cond_5

    .line 874
    const-string v0, "SD\u5361\u5269\u4f59\u5bb9\u91cf\u4e0d\u8db3"

    invoke-static {p0, v0}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 877
    :cond_5
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ushaqi/zhuishushenqi/ui/WifiActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 878
    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 882
    :pswitch_9
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->e(I)V

    goto/16 :goto_0

    .line 885
    :pswitch_a
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->e(I)V

    goto/16 :goto_0

    .line 888
    :pswitch_b
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->e(I)V

    goto/16 :goto_0

    .line 816
    :pswitch_data_0
    .packed-switch 0x7f0c026d
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12

    .prologue
    const v11, 0x7f0c026e

    const/16 v3, 0x8

    const/4 v8, 0x0

    const/4 v10, 0x1

    const/4 v4, 0x0

    .line 160
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeParentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 161
    const v0, 0x7f030041

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->setContentView(I)V

    .line 162
    invoke-static {p0}, Lbutterknife/ButterKnife;->inject(Landroid/app/Activity;)V

    .line 163
    sput-object p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->w:Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;

    .line 165
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->a()Landroid/support/v7/app/a;

    move-result-object v1

    .line 166
    invoke-virtual {v1, v4}, Landroid/support/v7/app/a;->c(Z)V

    .line 167
    invoke-virtual {v1, v4}, Landroid/support/v7/app/a;->a(Z)V

    .line 168
    const v0, 0x7f0300ba

    invoke-virtual {v1, v0}, Landroid/support/v7/app/a;->a(I)V

    .line 169
    invoke-virtual {v1, v10}, Landroid/support/v7/app/a;->d(Z)V

    .line 170
    invoke-virtual {v1}, Landroid/support/v7/app/a;->a()Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0c026f

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->q:Landroid/widget/ImageView;

    .line 171
    invoke-virtual {v1}, Landroid/support/v7/app/a;->a()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 172
    invoke-virtual {v1}, Landroid/support/v7/app/a;->a()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0c026d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->r:Landroid/widget/ImageView;

    .line 173
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->q:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->r:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    invoke-static {p0}, Lcom/arcsoft/hpay100/a/a;->w(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 178
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->r:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2001
    :goto_0
    invoke-static {p0}, Lcom/arcsoft/hpay100/a/a;->x(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->c:Z

    .line 2002
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->c:Z

    if-nez v0, :cond_0

    .line 2003
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->r:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 183
    :cond_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/a/b;->a(Ljava/lang/Object;)V

    .line 185
    const v0, 0x7f0c00e8

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->f:Landroid/widget/TabHost;

    .line 186
    const v0, 0x1020013

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/TabWidgetV2;

    .line 187
    const v1, 0x7f0c00e9

    invoke-virtual {p0, v1}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    iput-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->g:Landroid/support/v4/view/ViewPager;

    .line 188
    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/home/i;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/ushaqi/zhuishushenqi/ui/home/i;-><init>(Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;Landroid/support/v4/app/FragmentManager;)V

    iput-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->h:Lcom/ushaqi/zhuishushenqi/ui/home/i;

    .line 189
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->g:Landroid/support/v4/view/ViewPager;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 190
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->g:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->h:Lcom/ushaqi/zhuishushenqi/ui/home/i;

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 191
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->g:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 192
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->f:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->setup()V

    .line 193
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->f:Landroid/widget/TabHost;

    invoke-virtual {v1, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 2405
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->f:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 2406
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->f:Landroid/widget/TabHost;

    invoke-virtual {v1, v4}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 2407
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->f:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->clearAllTabs()V

    .line 2409
    :cond_1
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    move v3, v4

    .line 2410
    :goto_1
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->h:Lcom/ushaqi/zhuishushenqi/ui/home/i;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/ui/home/i;->getCount()I

    move-result v1

    if-ge v3, v1, :cond_4

    .line 2411
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->f:Landroid/widget/TabHost;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "tab"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v7

    .line 2412
    invoke-virtual {v7, p0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    .line 2415
    if-ne v3, v10, :cond_3

    const-string v1, "FRIST_RUN_POST"

    invoke-static {p0, v1, v10}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "switch_news"

    invoke-static {p0, v1}, Lcom/arcsoft/hpay100/a/a;->r(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2416
    const v1, 0x7f0300be

    invoke-virtual {v6, v1, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    move-object v1, v2

    .line 2417
    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->s:Landroid/view/ViewGroup;

    move-object v5, v2

    .line 2422
    :goto_2
    const v1, 0x7f0c0285

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 2429
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->h:Lcom/ushaqi/zhuishushenqi/ui/home/i;

    invoke-virtual {v2, v3}, Lcom/ushaqi/zhuishushenqi/ui/home/i;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2422
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2423
    invoke-virtual {v7, v5}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    .line 2424
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->f:Landroid/widget/TabHost;

    invoke-virtual {v1, v7}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 2410
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    .line 180
    :cond_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->r:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 2420
    :cond_3
    const v1, 0x7f0300bd

    invoke-virtual {v6, v1, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    goto :goto_2

    .line 196
    :cond_4
    invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v1

    iput-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->p:Lcom/ushaqi/zhuishushenqi/model/Account;

    .line 2730
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0300bc

    invoke-virtual {v1, v2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->k:Landroid/view/View;

    .line 2731
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->k:Landroid/view/View;

    const v2, 0x7f0c0270

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 2732
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->k:Landroid/view/View;

    const v3, 0x7f0c0273

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 2733
    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->k:Landroid/view/View;

    const v5, 0x7f0c0278

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 2734
    iget-object v5, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->k:Landroid/view/View;

    const v6, 0x7f0c027e

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 2735
    iget-object v6, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->k:Landroid/view/View;

    const v7, 0x7f0c0283

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 2736
    iget-object v7, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->k:Landroid/view/View;

    const v8, 0x7f0c0280

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 2737
    iget-object v8, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->k:Landroid/view/View;

    const v9, 0x7f0c027a

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2738
    iget-object v8, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->k:Landroid/view/View;

    const v9, 0x7f0c027c

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2739
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2740
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2741
    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2742
    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2743
    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2744
    invoke-virtual {v7, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2746
    const v1, 0x7f0c0271

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;

    iput-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->l:Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;

    .line 2747
    const v1, 0x7f0c0272

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->m:Landroid/widget/TextView;

    .line 2749
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->p:Lcom/ushaqi/zhuishushenqi/model/Account;

    if-eqz v1, :cond_a

    .line 2750
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->p:Lcom/ushaqi/zhuishushenqi/model/Account;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/Account;->getUser()Lcom/ushaqi/zhuishushenqi/model/User;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->a(Lcom/ushaqi/zhuishushenqi/model/User;)V

    .line 2755
    :goto_3
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->k:Landroid/view/View;

    const v2, 0x7f0c0282

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->n:Landroid/widget/TextView;

    .line 2756
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->k:Landroid/view/View;

    const v2, 0x7f0c0281

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->o:Landroid/widget/ImageView;

    .line 2757
    const-string v1, "customer_night_theme"

    invoke-static {p0, v1, v4}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 2758
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->n:Landroid/widget/TextView;

    const v2, 0x7f0500fd

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 2759
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->o:Landroid/widget/ImageView;

    const v2, 0x7f0202a4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3358
    :goto_4
    const-string v1, "bookPushRecords"

    invoke-static {p0, v1, v4}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    .line 3359
    if-nez v1, :cond_6

    .line 3360
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->getAll()Ljava/util/List;

    move-result-object v1

    .line 3361
    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 3362
    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->a(Ljava/util/List;)V

    .line 3364
    :cond_5
    const-string v1, "bookPushRecords"

    invoke-static {p0, v1, v10}, Lcom/arcsoft/hpay100/a/a;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 3367
    :cond_6
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->h()V

    .line 3368
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->i()V

    .line 4054
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/home/l;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/ui/home/l;-><init>(Lcom/ushaqi/zhuishushenqi/ui/home/HomeParentActivity;)V

    const-wide/16 v6, 0xbb8

    invoke-virtual {v1, v2, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 204
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->p:Lcom/ushaqi/zhuishushenqi/model/Account;

    if-eqz v1, :cond_7

    .line 205
    const-string v1, "launch"

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/util/e;->c(Ljava/lang/String;)V

    .line 206
    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/home/h;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/home/h;-><init>(Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;)V

    new-array v2, v10, [Ljava/lang/String;

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->p:Lcom/ushaqi/zhuishushenqi/model/Account;

    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/model/Account;->getToken()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lcom/ushaqi/zhuishushenqi/ui/home/h;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 209
    :cond_7
    if-eqz p1, :cond_8

    .line 210
    const-string v1, "extra_index"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 211
    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/TabWidgetV2;->setIndex(I)V

    .line 214
    :cond_8
    const v0, 0x7f0c026f

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    invoke-virtual {p0, v11}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4350
    if-eqz p0, :cond_9

    .line 4353
    invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v0

    .line 4354
    if-eqz v0, :cond_9

    .line 4357
    new-instance v1, Lcom/ushaqi/zhuishushenqi/util/Z;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Account;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/ushaqi/zhuishushenqi/util/Z;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Lcom/ushaqi/zhuishushenqi/util/Z;->a(Z)V

    .line 218
    :cond_9
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->a(Landroid/content/Intent;)V

    .line 220
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/home/j;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/ui/home/j;-><init>(Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;)V

    new-array v1, v4, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/home/j;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 222
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/home/a;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/home/a;-><init>(Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 261
    return-void

    .line 2752
    :cond_a
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->k()V

    goto/16 :goto_3

    .line 2761
    :cond_b
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->n:Landroid/widget/TextView;

    const v2, 0x7f0500fe

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 2762
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->o:Landroid/widget/ImageView;

    const v2, 0x7f0202a5

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_4
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 307
    invoke-super {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeParentActivity;->onDestroy()V

    .line 309
    invoke-static {p0}, Lcn/sharesdk/framework/ShareSDK;->stopSDK(Landroid/content/Context;)V

    .line 310
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/a/b;->b(Ljava/lang/Object;)V

    .line 311
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->p:Lcom/ushaqi/zhuishushenqi/model/Account;

    .line 4517
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->t:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 4518
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->t:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    .line 4519
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->t:Landroid/webkit/WebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 4520
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->t:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->freeMemory()V

    .line 4521
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->t:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->pauseTimers()V

    .line 4522
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->t:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 4524
    :cond_0
    iput-boolean v2, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->u:Z

    .line 317
    const-string v0, "search_hot_words_date"

    invoke-static {p0, v0, v2}, Lcom/arcsoft/hpay100/a/a;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 318
    return-void
.end method

.method public onEnterTweet(Lcom/ushaqi/zhuishushenqi/event/o;)V
    .locals 2
    .annotation runtime Lcom/squareup/a/l;
    .end annotation

    .prologue
    .line 151
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->s:Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 152
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 956
    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 957
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->l()V

    .line 958
    const/4 v0, 0x1

    .line 960
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeParentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onLoginEvent(Lcom/ushaqi/zhuishushenqi/event/t;)V
    .locals 5
    .annotation runtime Lcom/squareup/a/l;
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 329
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/event/t;->a()Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->p:Lcom/ushaqi/zhuishushenqi/model/Account;

    .line 330
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->p:Lcom/ushaqi/zhuishushenqi/model/Account;

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->p:Lcom/ushaqi/zhuishushenqi/model/Account;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Account;->getUser()Lcom/ushaqi/zhuishushenqi/model/User;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->a(Lcom/ushaqi/zhuishushenqi/model/User;)V

    .line 333
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/event/t;->b()Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity$Source;

    move-result-object v0

    sget-object v3, Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity$Source;->HOME:Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity$Source;

    if-eq v0, v3, :cond_1

    move v0, v1

    .line 334
    :goto_0
    new-instance v3, Lcom/ushaqi/zhuishushenqi/util/Z;

    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->p:Lcom/ushaqi/zhuishushenqi/model/Account;

    invoke-virtual {v4}, Lcom/ushaqi/zhuishushenqi/model/Account;->getToken()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/ushaqi/zhuishushenqi/util/Z;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lcom/ushaqi/zhuishushenqi/util/Z;->a(Z)V

    .line 336
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->p:Lcom/ushaqi/zhuishushenqi/model/Account;

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->a(Lcom/ushaqi/zhuishushenqi/model/Account;)V

    .line 339
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/home/h;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/ui/home/h;-><init>(Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;)V

    new-array v1, v1, [Ljava/lang/String;

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->p:Lcom/ushaqi/zhuishushenqi/model/Account;

    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/model/Account;->getToken()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/home/h;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 341
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 333
    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 1026
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeParentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 1027
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->a(Landroid/content/Intent;)V

    .line 1028
    return-void
.end method

.method public onNotifEvent(Lcom/ushaqi/zhuishushenqi/event/w;)V
    .locals 7
    .annotation runtime Lcom/squareup/a/l;
    .end annotation

    .prologue
    const v6, 0x7f02016e

    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 698
    invoke-static {p0}, Lcom/ushaqi/zhuishushenqi/util/J;->a(Landroid/content/Context;)Lcom/ushaqi/zhuishushenqi/util/J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/util/J;->e()I

    move-result v1

    .line 4702
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->k:Landroid/view/View;

    const v2, 0x7f0c0277

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 4703
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->k:Landroid/view/View;

    const v3, 0x7f0c0276

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 4704
    if-lez v1, :cond_1

    .line 4705
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4706
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 4707
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4708
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->q:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 4709
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->q:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4715
    :cond_0
    :goto_0
    return-void

    .line 4711
    :cond_1
    const/4 v3, -0x1

    if-ne v1, v3, :cond_2

    .line 4712
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4713
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 4714
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->q:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 4715
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->q:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 4718
    :cond_2
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4719
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 4720
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->q:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 4721
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->q:Landroid/widget/ImageView;

    const v1, 0x7f02016f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    .prologue
    .line 462
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->f:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/TabWidgetV2;

    .line 457
    invoke-virtual {v0, p1, p3}, Lcom/ushaqi/zhuishushenqi/widget/TabWidgetV2;->a(II)V

    .line 458
    return-void
.end method

.method public onPageSelected(I)V
    .locals 3

    .prologue
    .line 447
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->f:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v0

    .line 448
    invoke-virtual {v0}, Landroid/widget/TabWidget;->getDescendantFocusability()I

    move-result v1

    .line 449
    const/high16 v2, 0x60000

    invoke-virtual {v0, v2}, Landroid/widget/TabWidget;->setDescendantFocusability(I)V

    .line 450
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->f:Landroid/widget/TabHost;

    invoke-virtual {v2, p1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 451
    invoke-virtual {v0, v1}, Landroid/widget/TabWidget;->setDescendantFocusability(I)V

    .line 452
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 279
    invoke-super {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeParentActivity;->onPause()V

    .line 280
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->i:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->i:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->j:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->j:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->m()V

    .line 283
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 287
    invoke-super {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeParentActivity;->onResume()V

    .line 289
    const-string v0, "1"

    const-string v1, "use_http_dns"

    invoke-static {p0, v1}, Lcom/umeng/a/b;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/api/e;->a(Z)V

    .line 291
    invoke-static {}, Lcom/arcsoft/hpay100/a/a;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    new-instance v0, Lcom/ushaqi/zhuishushenqi/util/s;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/util/s;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/s;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 295
    :cond_0
    invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v0

    .line 296
    if-eqz v0, :cond_1

    .line 297
    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->p:Lcom/ushaqi/zhuishushenqi/model/Account;

    .line 298
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Account;->getUser()Lcom/ushaqi/zhuishushenqi/model/User;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->a(Lcom/ushaqi/zhuishushenqi/model/User;)V

    .line 303
    :goto_0
    return-void

    .line 300
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->p:Lcom/ushaqi/zhuishushenqi/model/Account;

    .line 301
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->k()V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 273
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeParentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 274
    const-string v0, "extra_index"

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->f:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 275
    return-void
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->f:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->a(I)V

    .line 443
    return-void
.end method

.method public onUpdateGameCenter(Lcom/ushaqi/zhuishushenqi/event/H;)V
    .locals 4
    .annotation runtime Lcom/squareup/a/l;
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1009
    iget-boolean v2, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->c:Z

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/event/H;->a()Z

    move-result v3

    if-ne v2, v3, :cond_1

    move v2, v1

    .line 1010
    :goto_0
    if-eqz v2, :cond_0

    .line 1011
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/event/H;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p0}, Lcom/arcsoft/hpay100/a/a;->w(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_1
    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->c:Z

    .line 1012
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->c:Z

    if-eqz v0, :cond_3

    .line 1013
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->r:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1017
    :goto_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->e:Ljava/util/List;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeFindFragment;

    .line 1018
    if-eqz v0, :cond_0

    .line 1019
    iget-boolean v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->c:Z

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeFindFragment;->a(Z)V

    .line 1022
    :cond_0
    return-void

    :cond_1
    move v2, v0

    .line 1009
    goto :goto_0

    :cond_2
    move v0, v1

    .line 1011
    goto :goto_1

    .line 1015
    :cond_3
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->r:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2
.end method
