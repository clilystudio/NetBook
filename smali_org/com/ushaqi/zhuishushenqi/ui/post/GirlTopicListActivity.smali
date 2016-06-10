.class public Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;
.super Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;
.source "SourceFile"


# instance fields
.field private a:Lcom/ushaqi/zhuishushenqi/ui/post/bJ;

.field private b:Lcom/ushaqi/zhuishushenqi/ui/post/bI;

.field private c:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

.field private e:Landroid/widget/ListView;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/widget/TextView;

.field private i:Lcom/ushaqi/zhuishushenqi/adapter/o;

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/GirlTopicSummary;",
            ">;"
        }
    .end annotation
.end field

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/ImageView;

.field private n:Landroid/widget/ImageView;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Z

.field private r:Lcom/handmark/pulltorefresh/library/j;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;-><init>()V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;->j:Ljava/util/List;

    .line 457
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/post/by;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/ui/post/by;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;->r:Lcom/handmark/pulltorefresh/library/j;

    return-void
.end method

.method private a(Landroid/view/View;)Landroid/widget/PopupWindow;
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, -0x1

    .line 337
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0, p1, v1, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 338
    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 339
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 340
    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 341
    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/post/bx;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/post/bx;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 348
    return-object v0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;Z)Landroid/widget/PopupWindow;
    .locals 8

    .prologue
    const/4 v3, 0x0

    const v5, 0x7f0c01bd

    const v2, 0x7f0c01bc

    const v7, 0x7f0b008c

    .line 47
    .line 2208
    if-eqz p1, :cond_2

    .line 2221
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030073

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 2222
    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2223
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 2225
    iget-boolean v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;->q:Z

    if-eqz v2, :cond_1

    .line 2226
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2231
    :cond_0
    :goto_0
    invoke-direct {p0, v3}, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;->a(Landroid/view/View;)Landroid/widget/PopupWindow;

    move-result-object v2

    .line 2234
    new-instance v4, Lcom/ushaqi/zhuishushenqi/ui/post/bE;

    invoke-direct {v4, p0, v2}, Lcom/ushaqi/zhuishushenqi/ui/post/bE;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;Landroid/widget/PopupWindow;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2244
    new-instance v3, Lcom/ushaqi/zhuishushenqi/ui/post/bF;

    invoke-direct {v3, p0, v2}, Lcom/ushaqi/zhuishushenqi/ui/post/bF;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;Landroid/widget/PopupWindow;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2254
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/post/bG;

    invoke-direct {v0, p0, v2}, Lcom/ushaqi/zhuishushenqi/ui/post/bG;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;Landroid/widget/PopupWindow;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v0, v2

    .line 2209
    :goto_1
    return-object v0

    .line 2227
    :cond_1
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;->o:Ljava/lang/String;

    const-string v4, "all"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2228
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 2272
    :cond_2
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030074

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 2273
    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2274
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 2275
    const v2, 0x7f0c01be

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 2277
    iget-object v5, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;->p:Ljava/lang/String;

    const/4 v3, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_3
    :goto_2
    packed-switch v3, :pswitch_data_0

    .line 2289
    :goto_3
    invoke-direct {p0, v4}, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;->a(Landroid/view/View;)Landroid/widget/PopupWindow;

    move-result-object v3

    .line 2291
    new-instance v5, Lcom/ushaqi/zhuishushenqi/ui/post/bH;

    invoke-direct {v5, p0, v3}, Lcom/ushaqi/zhuishushenqi/ui/post/bH;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;Landroid/widget/PopupWindow;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2301
    new-instance v4, Lcom/ushaqi/zhuishushenqi/ui/post/bu;

    invoke-direct {v4, p0, v3}, Lcom/ushaqi/zhuishushenqi/ui/post/bu;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;Landroid/widget/PopupWindow;)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2310
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/post/bv;

    invoke-direct {v0, p0, v3}, Lcom/ushaqi/zhuishushenqi/ui/post/bv;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;Landroid/widget/PopupWindow;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2319
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/post/bw;

    invoke-direct {v0, p0, v3}, Lcom/ushaqi/zhuishushenqi/ui/post/bw;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;Landroid/widget/PopupWindow;)V

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v0, v3

    .line 47
    goto :goto_1

    .line 2277
    :sswitch_0
    const-string v6, "updated"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v3, 0x0

    goto :goto_2

    :sswitch_1
    const-string v6, "created"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v3, 0x1

    goto :goto_2

    :sswitch_2
    const-string v6, "comment-count"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v3, 0x2

    goto :goto_2

    .line 2279
    :pswitch_0
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    .line 2282
    :pswitch_1
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    .line 2285
    :pswitch_2
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    .line 2277
    nop

    :sswitch_data_0
    .sparse-switch
        -0xdf91f45 -> :sswitch_0
        0x3d4e7ee8 -> :sswitch_1
        0x67dcd021 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;Lcom/ushaqi/zhuishushenqi/ui/post/bI;)Lcom/ushaqi/zhuishushenqi/ui/post/bI;
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;->b:Lcom/ushaqi/zhuishushenqi/ui/post/bI;

    return-object p1
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;Lcom/ushaqi/zhuishushenqi/ui/post/bJ;)Lcom/ushaqi/zhuishushenqi/ui/post/bJ;
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;->a:Lcom/ushaqi/zhuishushenqi/ui/post/bJ;

    return-object p1
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;->o:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;)V
    .locals 2

    .prologue
    .line 47
    .line 1474
    invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Account;->getUser()Lcom/ushaqi/zhuishushenqi/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/User;->getLv()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 1475
    const v0, 0x7f050119

    invoke-static {p0, v0}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;I)V

    :goto_0
    return-void

    .line 1479
    :cond_0
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/post/ds;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/ui/post/ds;-><init>(Landroid/content/Context;)V

    const-string v1, "girl"

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/ds;->c(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/ui/post/ds;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/ds;->a()Lcom/ushaqi/zhuishushenqi/ui/post/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/dq;->a()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;->m:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;->p:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;Z)Z
    .locals 0

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;->q:Z

    return p1
.end method

.method static synthetic c(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;->n:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic d(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;->h:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic e(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;)Lcom/ushaqi/zhuishushenqi/ui/post/bI;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;->b:Lcom/ushaqi/zhuishushenqi/ui/post/bI;

    return-object v0
.end method

.method static synthetic f(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;->o:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;->p:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;)Lcom/ushaqi/zhuishushenqi/ui/post/bJ;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;->a:Lcom/ushaqi/zhuishushenqi/ui/post/bJ;

    return-object v0
.end method

.method static synthetic i(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;->e:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic j(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;->j:Ljava/util/List;

    return-object v0
.end method

.method static synthetic k(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;->k:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic l(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;->c:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    return-object v0
.end method

.method static synthetic m(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;->l:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic n(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;)Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;->q:Z

    return v0
.end method

.method static synthetic o(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;->g:Landroid/view/View;

    return-object v0
.end method

.method static synthetic p(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;->f:Landroid/view/View;

    return-object v0
.end method

.method static synthetic q(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;)Lcom/ushaqi/zhuishushenqi/adapter/o;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;->i:Lcom/ushaqi/zhuishushenqi/adapter/o;

    return-object v0
.end method

.method static synthetic r(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;)Lcom/handmark/pulltorefresh/library/j;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;->r:Lcom/handmark/pulltorefresh/library/j;

    return-object v0
.end method

.method static synthetic s(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;)V
    .locals 2

    .prologue
    .line 47
    .line 2484
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;->h:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2485
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;->h:Landroid/widget/TextView;

    const-string v1, "\u8fd9\u91cc\u8fd8\u6ca1\u6709\u5973\u751f\u8bdd\u9898\uff0c\u53bb\u53d1\u5e03\u4e00\u4e2a\u5427"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 80
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    const v0, 0x7f030040

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;->setContentView(I)V

    .line 82
    const-string v0, "\u5973\u751f\u533a"

    const v1, 0x7f02016a

    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/post/bt;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/ui/post/bt;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;)V

    const-string v3, "\u7f16\u8f91\u8bdd\u9898"

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;->a(Ljava/lang/String;ILcom/ushaqi/zhuishushenqi/ui/aa;Ljava/lang/String;)V

    .line 90
    if-eqz p1, :cond_1

    .line 91
    const-string v0, "savedGirlDuration"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;->o:Ljava/lang/String;

    .line 92
    const-string v0, "savedGirlSort"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;->p:Ljava/lang/String;

    .line 1135
    :goto_0
    const v0, 0x7f0c00dd

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;->g:Landroid/view/View;

    .line 1136
    const v0, 0x7f0c00ec

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;->h:Landroid/widget/TextView;

    .line 1137
    const v0, 0x7f0c00eb

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;->c:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    .line 1138
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;->c:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 1140
    const v0, 0x7f0c0200

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1141
    const v0, 0x7f0c0204

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1142
    const v0, 0x7f0c0202

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;->k:Landroid/widget/TextView;

    .line 1143
    const v0, 0x7f0c0205

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;->l:Landroid/widget/TextView;

    .line 1144
    const v0, 0x7f0c0203

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;->m:Landroid/widget/ImageView;

    .line 1145
    const v0, 0x7f0c0206

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;->n:Landroid/widget/ImageView;

    .line 1146
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/post/bz;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/ui/post/bz;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1154
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/post/bA;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/ui/post/bA;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1165
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;->c:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->h()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;->e:Landroid/widget/ListView;

    .line 1166
    invoke-static {}, Lcom/arcsoft/hpay100/a/a;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1167
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;->e:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setFooterDividersEnabled(Z)V

    .line 1169
    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03011d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;->f:Landroid/view/View;

    .line 1170
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;->f:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1171
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;->e:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 1172
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;->c:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/post/bB;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/post/bB;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;)V

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/k;)V

    .line 1189
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;->e:Landroid/widget/ListView;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/post/bD;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/post/bD;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 101
    new-instance v0, Lcom/ushaqi/zhuishushenqi/adapter/o;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ushaqi/zhuishushenqi/adapter/o;-><init>(Landroid/view/LayoutInflater;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;->i:Lcom/ushaqi/zhuishushenqi/adapter/o;

    .line 102
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;->e:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;->i:Lcom/ushaqi/zhuishushenqi/adapter/o;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 104
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/post/bJ;

    invoke-direct {v0, p0, v4}, Lcom/ushaqi/zhuishushenqi/ui/post/bJ;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;B)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;->a:Lcom/ushaqi/zhuishushenqi/ui/post/bJ;

    .line 105
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;->a:Lcom/ushaqi/zhuishushenqi/ui/post/bJ;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;->o:Ljava/lang/String;

    aput-object v2, v1, v4

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;->p:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/bJ;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 108
    invoke-static {p0}, Lcom/arcsoft/hpay100/a/a;->u(Landroid/content/Context;)V

    .line 109
    const-string v0, "GirlTopicListActivity_Opened"

    invoke-static {p0, v0}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 110
    return-void

    .line 94
    :cond_1
    const-string v0, "all"

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;->o:Ljava/lang/String;

    .line 95
    const-string v0, "updated"

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;->p:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 126
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 128
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;->c:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setRefreshing()V

    .line 129
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 114
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 115
    const-string v0, "savedGirlDuration"

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;->o:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string v0, "savedGirlSort"

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;->p:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    return-void
.end method
