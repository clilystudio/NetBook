.class public Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;
.super Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/widget/ListView;

.field private j:Landroid/view/View;

.field private k:Landroid/widget/TextView;

.field private l:Lcom/ushaqi/zhuishushenqi/ui/post/bi;

.field private m:Lcom/ushaqi/zhuishushenqi/ui/post/bh;

.field private n:Landroid/view/View;

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/DiscussSummary;",
            ">;"
        }
    .end annotation
.end field

.field private p:Lcom/ushaqi/zhuishushenqi/adapter/l;

.field private q:Z

.field private r:Ljava/lang/String;

.field private s:Lcom/handmark/pulltorefresh/library/j;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;-><init>()V

    .line 59
    const-string v0, "all"

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;->a:Ljava/lang/String;

    .line 60
    const-string v0, "updated"

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;->b:Ljava/lang/String;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;->o:Ljava/util/List;

    .line 458
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/post/aX;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/ui/post/aX;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;->s:Lcom/handmark/pulltorefresh/library/j;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 81
    new-instance v0, Lcom/ushaqi/zhuishushenqi/d;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/d;-><init>()V

    const-class v1, Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;

    invoke-virtual {v0, p0, v1}, Lcom/ushaqi/zhuishushenqi/d;->a(Landroid/content/Context;Ljava/lang/Class;)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    const-string v1, "post_block_key"

    .line 82
    invoke-virtual {v0, v1, p1}, Lcom/ushaqi/zhuishushenqi/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/d;->a()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/view/View;)Landroid/widget/PopupWindow;
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, -0x1

    .line 341
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0, p1, v1, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 342
    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 343
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 344
    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 345
    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/post/aW;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/post/aW;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 352
    return-object v0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;I)Landroid/widget/PopupWindow;
    .locals 9

    .prologue
    const v7, 0x7f0c01bd

    const v6, 0x7f0c01bc

    const/4 v4, 0x1

    const/4 v0, 0x0

    const v8, 0x7f0b008c

    .line 48
    .line 3218
    if-nez p1, :cond_3

    .line 3228
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0300a3

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 3229
    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3230
    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 3232
    iget-boolean v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;->q:Z

    if-eqz v2, :cond_2

    .line 3233
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3238
    :cond_0
    :goto_0
    invoke-direct {p0, v3}, Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;->a(Landroid/view/View;)Landroid/widget/PopupWindow;

    move-result-object v2

    .line 3242
    new-instance v4, Lcom/ushaqi/zhuishushenqi/ui/post/bd;

    invoke-direct {v4, p0, v2}, Lcom/ushaqi/zhuishushenqi/ui/post/bd;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;Landroid/widget/PopupWindow;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 3251
    new-instance v3, Lcom/ushaqi/zhuishushenqi/ui/post/be;

    invoke-direct {v3, p0, v2}, Lcom/ushaqi/zhuishushenqi/ui/post/be;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;Landroid/widget/PopupWindow;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3262
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/post/bf;

    invoke-direct {v0, p0, v2}, Lcom/ushaqi/zhuishushenqi/ui/post/bf;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;Landroid/widget/PopupWindow;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v0, v2

    .line 3221
    :cond_1
    :goto_1
    return-object v0

    .line 3234
    :cond_2
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;->a:Ljava/lang/String;

    const-string v4, "all"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3235
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 3220
    :cond_3
    if-ne p1, v4, :cond_1

    .line 3277
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0300a4

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 3278
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3279
    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 3280
    const v2, 0x7f0c01be

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 3282
    iget-object v6, p0, Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;->b:Ljava/lang/String;

    const/4 v3, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :cond_4
    :goto_2
    packed-switch v3, :pswitch_data_0

    .line 3295
    :goto_3
    invoke-direct {p0, v5}, Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;->a(Landroid/view/View;)Landroid/widget/PopupWindow;

    move-result-object v3

    .line 3297
    new-instance v4, Lcom/ushaqi/zhuishushenqi/ui/post/bg;

    invoke-direct {v4, p0, v3}, Lcom/ushaqi/zhuishushenqi/ui/post/bg;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;Landroid/widget/PopupWindow;)V

    invoke-virtual {v5, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 3307
    new-instance v4, Lcom/ushaqi/zhuishushenqi/ui/post/aT;

    invoke-direct {v4, p0, v3}, Lcom/ushaqi/zhuishushenqi/ui/post/aT;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;Landroid/widget/PopupWindow;)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3317
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/post/aU;

    invoke-direct {v0, p0, v3}, Lcom/ushaqi/zhuishushenqi/ui/post/aU;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;Landroid/widget/PopupWindow;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3327
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/post/aV;

    invoke-direct {v0, p0, v3}, Lcom/ushaqi/zhuishushenqi/ui/post/aV;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;Landroid/widget/PopupWindow;)V

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v0, v3

    .line 3221
    goto :goto_1

    .line 3282
    :sswitch_0
    const-string v4, "updated"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v3, 0x0

    goto :goto_2

    :sswitch_1
    const-string v7, "created"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    move v3, v4

    goto :goto_2

    :sswitch_2
    const-string v4, "comment-count"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v3, 0x2

    goto :goto_2

    .line 3284
    :pswitch_0
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    .line 3287
    :pswitch_1
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    .line 3290
    :pswitch_2
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    .line 3282
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

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;Lcom/ushaqi/zhuishushenqi/ui/post/bh;)Lcom/ushaqi/zhuishushenqi/ui/post/bh;
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;->m:Lcom/ushaqi/zhuishushenqi/ui/post/bh;

    return-object p1
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;Lcom/ushaqi/zhuishushenqi/ui/post/bi;)Lcom/ushaqi/zhuishushenqi/ui/post/bi;
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;->l:Lcom/ushaqi/zhuishushenqi/ui/post/bi;

    return-object p1
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;->a:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;)V
    .locals 2

    .prologue
    .line 48
    .line 2475
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/post/ds;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/ui/post/ds;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/ds;->c(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/ui/post/ds;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/ds;->a()Lcom/ushaqi/zhuishushenqi/ui/post/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/dq;->a()V

    .line 48
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;Z)Z
    .locals 0

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;->q:Z

    return p1
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;->k:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;->b:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;)Lcom/ushaqi/zhuishushenqi/ui/post/bh;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;->m:Lcom/ushaqi/zhuishushenqi/ui/post/bh;

    return-object v0
.end method

.method static synthetic d(Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;)Lcom/ushaqi/zhuishushenqi/ui/post/bi;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;->l:Lcom/ushaqi/zhuishushenqi/ui/post/bi;

    return-object v0
.end method

.method static synthetic g(Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;->i:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic h(Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;->o:Ljava/util/List;

    return-object v0
.end method

.method static synthetic i(Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic j(Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;->f:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    return-object v0
.end method

.method static synthetic k(Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;->e:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic l(Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;->g:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic m(Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;->h:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic n(Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;->r:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic o(Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;)Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;->q:Z

    return v0
.end method

.method static synthetic p(Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;->n:Landroid/view/View;

    return-object v0
.end method

.method static synthetic q(Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;->j:Landroid/view/View;

    return-object v0
.end method

.method static synthetic r(Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;)Lcom/ushaqi/zhuishushenqi/adapter/l;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;->p:Lcom/ushaqi/zhuishushenqi/adapter/l;

    return-object v0
.end method

.method static synthetic s(Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;)Lcom/handmark/pulltorefresh/library/j;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;->s:Lcom/handmark/pulltorefresh/library/j;

    return-object v0
.end method

.method static synthetic t(Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;)V
    .locals 2

    .prologue
    .line 48
    .line 3479
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;->f:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setVisibility(I)V

    .line 3480
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;->k:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3481
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;->k:Landroid/widget/TextView;

    const-string v1, "\u8fd9\u91cc\u8fd8\u6ca1\u6709\u5e16\u5b50\uff0c\u53bb\u53d1\u5e03\u4e00\u4e2a\u5427"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 87
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 88
    const v0, 0x7f030038

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;->setContentView(I)V

    .line 90
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "post_block_key"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;->r:Ljava/lang/String;

    .line 91
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;->r:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 92
    const-string v0, "ramble"

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;->r:Ljava/lang/String;

    .line 96
    :cond_0
    const-string v0, "android-feedback"

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 97
    const-string v1, "\u610f\u89c1\u53cd\u9988\u533a"

    .line 98
    const-string v0, "\u5199\u53cd\u9988"

    .line 103
    :goto_0
    const v2, 0x7f02016a

    new-instance v3, Lcom/ushaqi/zhuishushenqi/ui/post/aS;

    invoke-direct {v3, p0}, Lcom/ushaqi/zhuishushenqi/ui/post/aS;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;)V

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;->a(Ljava/lang/String;ILcom/ushaqi/zhuishushenqi/ui/aa;Ljava/lang/String;)V

    .line 110
    if-eqz p1, :cond_1

    .line 111
    const-string v0, "savedReviewDur"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;->a:Ljava/lang/String;

    .line 112
    const-string v0, "savedReviewSort"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;->b:Ljava/lang/String;

    .line 1144
    :cond_1
    const v0, 0x7f0c00eb

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;->f:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    .line 1145
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;->f:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 1146
    const v0, 0x7f0c00dd

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;->n:Landroid/view/View;

    .line 1147
    const v0, 0x7f0c00ec

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;->k:Landroid/widget/TextView;

    .line 1149
    const v0, 0x7f0c0203

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1150
    const v1, 0x7f0c0206

    invoke-virtual {p0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1151
    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;->g:Landroid/widget/ImageView;

    .line 1152
    iput-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;->h:Landroid/widget/ImageView;

    .line 1153
    const v2, 0x7f0c0202

    invoke-virtual {p0, v2}, Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;->c:Landroid/widget/TextView;

    .line 1154
    const v2, 0x7f0c0205

    invoke-virtual {p0, v2}, Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;->e:Landroid/widget/TextView;

    .line 1156
    const v2, 0x7f0c0200

    invoke-virtual {p0, v2}, Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1157
    new-instance v3, Lcom/ushaqi/zhuishushenqi/ui/post/aY;

    invoke-direct {v3, p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/aY;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;Landroid/widget/ImageView;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1167
    const v0, 0x7f0c0204

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1168
    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/post/aZ;

    invoke-direct {v2, p0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/aZ;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1178
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;->f:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->h()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;->i:Landroid/widget/ListView;

    .line 1179
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03011d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;->j:Landroid/view/View;

    .line 1180
    invoke-static {}, Lcom/arcsoft/hpay100/a/a;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1181
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;->i:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setFooterDividersEnabled(Z)V

    .line 1183
    :cond_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;->i:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;->j:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 1184
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;->j:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1186
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;->f:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/post/ba;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/post/ba;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;)V

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/k;)V

    .line 1202
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;->i:Landroid/widget/ListView;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/post/bc;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/post/bc;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 118
    new-instance v0, Lcom/ushaqi/zhuishushenqi/adapter/l;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ushaqi/zhuishushenqi/adapter/l;-><init>(Landroid/view/LayoutInflater;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;->p:Lcom/ushaqi/zhuishushenqi/adapter/l;

    .line 119
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;->i:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;->p:Lcom/ushaqi/zhuishushenqi/adapter/l;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 121
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/post/bi;

    invoke-direct {v0, p0, v4}, Lcom/ushaqi/zhuishushenqi/ui/post/bi;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;B)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;->l:Lcom/ushaqi/zhuishushenqi/ui/post/bi;

    .line 122
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;->l:Lcom/ushaqi/zhuishushenqi/ui/post/bi;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;->a:Ljava/lang/String;

    aput-object v2, v1, v4

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/bi;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 125
    invoke-static {p0}, Lcom/arcsoft/hpay100/a/a;->u(Landroid/content/Context;)V

    .line 126
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;->r:Ljava/lang/String;

    .line 1718
    const-string v1, "ramble"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1719
    const-string v0, "DiscussListActivity_Opened"

    invoke-static {p0, v0}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void

    .line 100
    :cond_4
    const-string v1, "\u7efc\u5408\u8ba8\u8bba\u533a"

    .line 101
    const-string v0, "\u5199\u8bc4\u8bba"

    goto/16 :goto_0

    .line 1720
    :cond_5
    const-string v1, "android-feedback"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1721
    const-string v0, "CommonPostListActivity_Feedback_Opened"

    invoke-static {p0, v0}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 138
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 140
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;->f:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setRefreshing()V

    .line 141
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 131
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 132
    const-string v0, "savedReviewDur"

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string v0, "savedReviewSort"

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    return-void
.end method
