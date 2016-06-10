.class public Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;
.super Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;
.source "SourceFile"


# instance fields
.field private a:Lcom/ushaqi/zhuishushenqi/ui/post/av;

.field private b:Lcom/ushaqi/zhuishushenqi/ui/post/au;

.field private c:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

.field private e:Landroid/widget/ListView;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/widget/TextView;

.field private i:Lcom/ushaqi/zhuishushenqi/adapter/d;

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/BookHelpSummary;",
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
    .line 46
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;-><init>()V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;->j:Ljava/util/List;

    .line 453
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/post/ak;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/ui/post/ak;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;->r:Lcom/handmark/pulltorefresh/library/j;

    return-void
.end method

.method private a(Landroid/view/View;)Landroid/widget/PopupWindow;
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, -0x1

    .line 336
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0, p1, v1, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 337
    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 338
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 339
    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 340
    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/post/aj;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/post/aj;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 347
    return-object v0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;Z)Landroid/widget/PopupWindow;
    .locals 8

    .prologue
    const/4 v3, 0x0

    const v5, 0x7f0c01bd

    const v2, 0x7f0c01bc

    const v7, 0x7f0b008c

    .line 46
    .line 2207
    if-eqz p1, :cond_2

    .line 2220
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030073

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 2221
    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2222
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 2224
    iget-boolean v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;->q:Z

    if-eqz v2, :cond_1

    .line 2225
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2230
    :cond_0
    :goto_0
    invoke-direct {p0, v3}, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;->a(Landroid/view/View;)Landroid/widget/PopupWindow;

    move-result-object v2

    .line 2233
    new-instance v4, Lcom/ushaqi/zhuishushenqi/ui/post/aq;

    invoke-direct {v4, p0, v2}, Lcom/ushaqi/zhuishushenqi/ui/post/aq;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;Landroid/widget/PopupWindow;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2243
    new-instance v3, Lcom/ushaqi/zhuishushenqi/ui/post/ar;

    invoke-direct {v3, p0, v2}, Lcom/ushaqi/zhuishushenqi/ui/post/ar;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;Landroid/widget/PopupWindow;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2253
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/post/as;

    invoke-direct {v0, p0, v2}, Lcom/ushaqi/zhuishushenqi/ui/post/as;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;Landroid/widget/PopupWindow;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v0, v2

    .line 2208
    :goto_1
    return-object v0

    .line 2226
    :cond_1
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;->o:Ljava/lang/String;

    const-string v4, "all"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2227
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 2271
    :cond_2
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030074

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 2272
    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2273
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 2274
    const v2, 0x7f0c01be

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 2276
    iget-object v5, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;->p:Ljava/lang/String;

    const/4 v3, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_3
    :goto_2
    packed-switch v3, :pswitch_data_0

    .line 2288
    :goto_3
    invoke-direct {p0, v4}, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;->a(Landroid/view/View;)Landroid/widget/PopupWindow;

    move-result-object v3

    .line 2290
    new-instance v5, Lcom/ushaqi/zhuishushenqi/ui/post/at;

    invoke-direct {v5, p0, v3}, Lcom/ushaqi/zhuishushenqi/ui/post/at;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;Landroid/widget/PopupWindow;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2300
    new-instance v4, Lcom/ushaqi/zhuishushenqi/ui/post/ag;

    invoke-direct {v4, p0, v3}, Lcom/ushaqi/zhuishushenqi/ui/post/ag;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;Landroid/widget/PopupWindow;)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2309
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/post/ah;

    invoke-direct {v0, p0, v3}, Lcom/ushaqi/zhuishushenqi/ui/post/ah;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;Landroid/widget/PopupWindow;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2318
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/post/ai;

    invoke-direct {v0, p0, v3}, Lcom/ushaqi/zhuishushenqi/ui/post/ai;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;Landroid/widget/PopupWindow;)V

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v0, v3

    .line 46
    goto :goto_1

    .line 2276
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

    .line 2278
    :pswitch_0
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    .line 2281
    :pswitch_1
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    .line 2284
    :pswitch_2
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    .line 2276
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

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;Lcom/ushaqi/zhuishushenqi/ui/post/au;)Lcom/ushaqi/zhuishushenqi/ui/post/au;
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;->b:Lcom/ushaqi/zhuishushenqi/ui/post/au;

    return-object p1
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;Lcom/ushaqi/zhuishushenqi/ui/post/av;)Lcom/ushaqi/zhuishushenqi/ui/post/av;
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;->a:Lcom/ushaqi/zhuishushenqi/ui/post/av;

    return-object p1
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;->o:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;)V
    .locals 2

    .prologue
    .line 46
    .line 1470
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ushaqi/zhuishushenqi/ui/post/AddBookHelpActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1471
    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;->startActivity(Landroid/content/Intent;)V

    .line 46
    return-void
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;->m:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;->p:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;Z)Z
    .locals 0

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;->q:Z

    return p1
.end method

.method static synthetic c(Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;->n:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic d(Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;->h:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic e(Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;)Lcom/ushaqi/zhuishushenqi/ui/post/au;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;->b:Lcom/ushaqi/zhuishushenqi/ui/post/au;

    return-object v0
.end method

.method static synthetic f(Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;->o:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;->p:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;)Lcom/ushaqi/zhuishushenqi/ui/post/av;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;->a:Lcom/ushaqi/zhuishushenqi/ui/post/av;

    return-object v0
.end method

.method static synthetic i(Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;->e:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic j(Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;->j:Ljava/util/List;

    return-object v0
.end method

.method static synthetic k(Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;->k:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic l(Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;->c:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    return-object v0
.end method

.method static synthetic m(Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;->l:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic n(Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;)Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;->q:Z

    return v0
.end method

.method static synthetic o(Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;->g:Landroid/view/View;

    return-object v0
.end method

.method static synthetic p(Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;->f:Landroid/view/View;

    return-object v0
.end method

.method static synthetic q(Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;)Lcom/ushaqi/zhuishushenqi/adapter/d;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;->i:Lcom/ushaqi/zhuishushenqi/adapter/d;

    return-object v0
.end method

.method static synthetic r(Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;)Lcom/handmark/pulltorefresh/library/j;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;->r:Lcom/handmark/pulltorefresh/library/j;

    return-object v0
.end method

.method static synthetic s(Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;)V
    .locals 2

    .prologue
    .line 46
    .line 2475
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;->h:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2476
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;->h:Landroid/widget/TextView;

    const-string v1, "\u8fd9\u91cc\u8fd8\u6ca1\u6709\u4e66\u8352\u6c42\u52a9\uff0c\u53bb\u53d1\u5e03\u4e00\u4e2a\u5427"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 79
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 80
    const v0, 0x7f03002e

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;->setContentView(I)V

    .line 81
    const-string v0, "\u4e66\u8352\u533a"

    const v1, 0x7f02016a

    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/post/af;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/ui/post/af;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;)V

    const-string v3, "\u7f16\u8f91\u4e66\u8352"

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;->a(Ljava/lang/String;ILcom/ushaqi/zhuishushenqi/ui/aa;Ljava/lang/String;)V

    .line 89
    if-eqz p1, :cond_1

    .line 90
    const-string v0, "savedHelpDuration"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;->o:Ljava/lang/String;

    .line 91
    const-string v0, "savedHelpSort"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;->p:Ljava/lang/String;

    .line 1134
    :goto_0
    const v0, 0x7f0c00dd

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;->g:Landroid/view/View;

    .line 1135
    const v0, 0x7f0c00ec

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;->h:Landroid/widget/TextView;

    .line 1136
    const v0, 0x7f0c00eb

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;->c:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    .line 1137
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;->c:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 1139
    const v0, 0x7f0c0200

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1140
    const v0, 0x7f0c0204

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1141
    const v0, 0x7f0c0202

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;->k:Landroid/widget/TextView;

    .line 1142
    const v0, 0x7f0c0205

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;->l:Landroid/widget/TextView;

    .line 1143
    const v0, 0x7f0c0203

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;->m:Landroid/widget/ImageView;

    .line 1144
    const v0, 0x7f0c0206

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;->n:Landroid/widget/ImageView;

    .line 1145
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/post/al;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/ui/post/al;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1153
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/post/am;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/ui/post/am;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1164
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;->c:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->h()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;->e:Landroid/widget/ListView;

    .line 1165
    invoke-static {}, Lcom/arcsoft/hpay100/a/a;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1166
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;->e:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setFooterDividersEnabled(Z)V

    .line 1168
    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03011d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;->f:Landroid/view/View;

    .line 1169
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;->f:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1170
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;->e:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 1171
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;->c:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/post/an;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/post/an;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;)V

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/k;)V

    .line 1188
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;->e:Landroid/widget/ListView;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/post/ap;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/post/ap;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 100
    new-instance v0, Lcom/ushaqi/zhuishushenqi/adapter/d;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ushaqi/zhuishushenqi/adapter/d;-><init>(Landroid/view/LayoutInflater;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;->i:Lcom/ushaqi/zhuishushenqi/adapter/d;

    .line 101
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;->e:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;->i:Lcom/ushaqi/zhuishushenqi/adapter/d;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 103
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/post/av;

    invoke-direct {v0, p0, v4}, Lcom/ushaqi/zhuishushenqi/ui/post/av;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;B)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;->a:Lcom/ushaqi/zhuishushenqi/ui/post/av;

    .line 104
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;->a:Lcom/ushaqi/zhuishushenqi/ui/post/av;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;->o:Ljava/lang/String;

    aput-object v2, v1, v4

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;->p:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/av;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 107
    invoke-static {p0}, Lcom/arcsoft/hpay100/a/a;->u(Landroid/content/Context;)V

    .line 108
    const-string v0, "BookHelpListActivity_Opened"

    invoke-static {p0, v0}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 109
    return-void

    .line 93
    :cond_1
    const-string v0, "all"

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;->o:Ljava/lang/String;

    .line 94
    const-string v0, "updated"

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;->p:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 125
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 127
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;->c:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setRefreshing()V

    .line 128
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 113
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 114
    const-string v0, "savedHelpDuration"

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;->o:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string v0, "savedHelpSort"

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;->p:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    return-void
.end method
