.class public Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;
.super Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/view/inputmethod/InputMethodManager;

.field private b:Ljava/lang/String;

.field private c:I

.field private e:Lcom/ushaqi/zhuishushenqi/widget/SearchEditText;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/widget/ListView;

.field private i:Lcom/ushaqi/zhuishushenqi/widget/SearchFixListView;

.field private j:Landroid/view/View;

.field private k:Landroid/view/View;

.field private l:Lcom/ushaqi/zhuishushenqi/adapter/E;

.field private m:Landroid/view/View;

.field private n:Landroid/view/View;

.field private o:Ljava/lang/String;

.field private p:Z

.field private q:Landroid/widget/RelativeLayout;

.field private r:Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;

.field private s:Landroid/widget/TextView;

.field private t:Landroid/view/View;

.field private u:Landroid/view/View;

.field private v:Landroid/widget/ListView;

.field private w:Lcom/ushaqi/zhuishushenqi/ui/SearchActivity$SearchHistoryAdapter;

.field private x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;-><init>()V

    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->p:Z

    .line 729
    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->a(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;I)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 109
    new-instance v0, Lcom/ushaqi/zhuishushenqi/d;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/d;-><init>()V

    const-class v1, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;

    invoke-virtual {v0, p0, v1}, Lcom/ushaqi/zhuishushenqi/d;->a(Landroid/content/Context;Ljava/lang/Class;)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    const-string v1, "search_mode"

    invoke-virtual {v0, v1, p1}, Lcom/ushaqi/zhuishushenqi/d;->a(Ljava/lang/String;I)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/d;->a()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->h:Landroid/widget/ListView;

    return-object v0
.end method

.method private a(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 566
    packed-switch p1, :pswitch_data_0

    .line 588
    :goto_0
    return-void

    .line 568
    :pswitch_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->j:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 569
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->k:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 570
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->h:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0

    .line 573
    :pswitch_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->j:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 574
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->k:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 575
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->h:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0

    .line 578
    :pswitch_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->j:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 579
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->k:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 580
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->h:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0

    .line 583
    :pswitch_3
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->j:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 584
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->k:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 585
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->h:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0

    .line 566
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;I)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 69
    .line 4335
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->t:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4336
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->e:Lcom/ushaqi/zhuishushenqi/widget/SearchEditText;

    invoke-virtual {v0, p1}, Lcom/ushaqi/zhuishushenqi/widget/SearchEditText;->setTextByCode(Ljava/lang/String;)V

    .line 4337
    const/4 v0, 0x1

    .line 4341
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->a(ZZ)V

    .line 69
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;Z)V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x0

    .line 69
    .line 4545
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->f:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 4546
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->g:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 4547
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->g:Landroid/view/View;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->e:Lcom/ushaqi/zhuishushenqi/widget/SearchEditText;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/widget/SearchEditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 4548
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->t:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 4549
    if-eqz p1, :cond_2

    .line 4550
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->t:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_1
    return-void

    .line 4547
    :cond_1
    const/4 v0, 0x4

    goto :goto_0

    .line 4552
    :cond_2
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->p:Z

    if-nez v0, :cond_3

    .line 4553
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->t:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4555
    :cond_3
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->i:Lcom/ushaqi/zhuishushenqi/widget/SearchFixListView;

    invoke-virtual {v0, v3}, Lcom/ushaqi/zhuishushenqi/widget/SearchFixListView;->setVisibility(I)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;ZZ)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 69
    invoke-direct {p0, v0, v0}, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->a(ZZ)V

    return-void
.end method

.method private a(Z)V
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->u:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 279
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->u:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 280
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->u:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 281
    return-void
.end method

.method private a(ZZ)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 345
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->i:Lcom/ushaqi/zhuishushenqi/widget/SearchFixListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/SearchFixListView;->setVisibility(I)V

    .line 346
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->e:Lcom/ushaqi/zhuishushenqi/widget/SearchEditText;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/widget/SearchEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->b:Ljava/lang/String;

    .line 347
    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->b:Ljava/lang/String;

    .line 2015
    const/4 v0, 0x0

    .line 2016
    const/4 v1, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_1

    .line 348
    :goto_1
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->b:Ljava/lang/String;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 349
    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->startActivity(Landroid/content/Intent;)V

    .line 369
    :cond_1
    :goto_2
    return-void

    .line 2016
    :pswitch_0
    const-string v4, "//openwebview"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0

    .line 2018
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ushaqi/zhuishushenqi/ui/SecretOpWebActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_1

    .line 351
    :cond_2
    iput-boolean v5, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->p:Z

    .line 352
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->b:Ljava/lang/String;

    .line 2258
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->x:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2259
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->x:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2261
    :cond_3
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->x:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x6

    if-lt v1, v3, :cond_4

    .line 2262
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->x:Ljava/util/List;

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->x:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2264
    :cond_4
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->x:Ljava/util/List;

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2265
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->w:Lcom/ushaqi/zhuishushenqi/ui/SearchActivity$SearchHistoryAdapter;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity$SearchHistoryAdapter;->notifyDataSetChanged()V

    .line 2266
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->x:Ljava/util/List;

    sget-object v1, Lcom/ushaqi/zhuishushenqi/c;->e:Ljava/lang/String;

    const-string v3, "search_history.txt"

    invoke-static {v0, v1, v3}, Lcom/arcsoft/hpay100/a/a;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 2267
    invoke-direct {p0, v5}, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->a(Z)V

    .line 353
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->g()V

    .line 354
    invoke-static {p0}, Lcom/arcsoft/hpay100/a/a;->t(Landroid/content/Context;)Z

    move-result v0

    .line 355
    if-eqz v0, :cond_6

    .line 356
    invoke-direct {p0, v2}, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->a(I)V

    .line 357
    if-eqz p2, :cond_5

    .line 358
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/bP;

    invoke-direct {v0, p0, v2}, Lcom/ushaqi/zhuishushenqi/ui/bP;-><init>(Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;B)V

    new-array v1, v5, [Ljava/lang/String;

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/bP;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 365
    :goto_3
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->m:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 366
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->m:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 360
    :cond_5
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/bR;

    invoke-direct {v0, p0, v2}, Lcom/ushaqi/zhuishushenqi/ui/bR;-><init>(Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;B)V

    new-array v1, v5, [Ljava/lang/String;

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/bR;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_3

    .line 363
    :cond_6
    const v0, 0x7f050132

    invoke-static {p0, v0}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;I)V

    goto :goto_3

    .line 2016
    :pswitch_data_0
    .packed-switch 0xdb2dc8f
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;)Lcom/ushaqi/zhuishushenqi/adapter/E;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->l:Lcom/ushaqi/zhuishushenqi/adapter/E;

    return-object v0
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->o:Ljava/lang/String;

    return-object p1
.end method

.method private b()V
    .locals 3

    .prologue
    .line 329
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ushaqi/zhuishushenqi/ui/CustomSearchActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 330
    const-string v1, "AddBookKey"

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 331
    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->startActivity(Landroid/content/Intent;)V

    .line 332
    return-void
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;Z)V
    .locals 2

    .prologue
    .line 69
    const/4 v0, 0x1

    .line 5341
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->a(ZZ)V

    .line 69
    return-void
.end method

.method static synthetic c(Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->g()V

    return-void
.end method

.method static synthetic c(Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 69
    .line 4725
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->e:Lcom/ushaqi/zhuishushenqi/widget/SearchEditText;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/widget/SearchEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4726
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->o:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 69
    goto :goto_0
.end method

.method static synthetic d(Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;)V
    .locals 3

    .prologue
    .line 69
    .line 4271
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4272
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->w:Lcom/ushaqi/zhuishushenqi/ui/SearchActivity$SearchHistoryAdapter;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity$SearchHistoryAdapter;->notifyDataSetChanged()V

    .line 4273
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->x:Ljava/util/List;

    sget-object v1, Lcom/ushaqi/zhuishushenqi/c;->e:Ljava/lang/String;

    const-string v2, "search_history.txt"

    invoke-static {v0, v1, v2}, Lcom/arcsoft/hpay100/a/a;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 4274
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->a(Z)V

    .line 69
    return-void
.end method

.method static synthetic e(Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;)Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->r:Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;

    return-object v0
.end method

.method static synthetic f(Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;)Lcom/ushaqi/zhuishushenqi/widget/SearchEditText;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->e:Lcom/ushaqi/zhuishushenqi/widget/SearchEditText;

    return-object v0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 531
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->n:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 532
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 534
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->e:Lcom/ushaqi/zhuishushenqi/widget/SearchEditText;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/widget/SearchEditText;->requestFocus()Z

    .line 535
    return-void
.end method

.method static synthetic g(Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->q:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private g()V
    .locals 3

    .prologue
    .line 538
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->n:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 539
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->e:Lcom/ushaqi/zhuishushenqi/widget/SearchEditText;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/widget/SearchEditText;->clearFocus()V

    .line 2524
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->a:Landroid/view/inputmethod/InputMethodManager;

    if-nez v0, :cond_0

    .line 2525
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->a:Landroid/view/inputmethod/InputMethodManager;

    .line 2527
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->a:Landroid/view/inputmethod/InputMethodManager;

    .line 540
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->e:Lcom/ushaqi/zhuishushenqi/widget/SearchEditText;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/widget/SearchEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 541
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 542
    return-void
.end method

.method static synthetic h(Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->s:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic i(Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;)I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->c:I

    return v0
.end method

.method static synthetic j(Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic k(Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;)Lcom/ushaqi/zhuishushenqi/widget/SearchFixListView;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->i:Lcom/ushaqi/zhuishushenqi/widget/SearchFixListView;

    return-object v0
.end method

.method static synthetic l(Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->x:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 592
    .line 2604
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->i:Lcom/ushaqi/zhuishushenqi/widget/SearchFixListView;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/widget/SearchFixListView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 592
    :goto_0
    if-eqz v0, :cond_1

    .line 3600
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->i:Lcom/ushaqi/zhuishushenqi/widget/SearchFixListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/SearchFixListView;->setVisibility(I)V

    .line 597
    :goto_1
    return-void

    .line 2604
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 595
    :cond_1
    invoke-super {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->onBackPressed()V

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 373
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 393
    :goto_0
    return-void

    .line 375
    :sswitch_0
    invoke-direct {p0, v1, v1}, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->a(ZZ)V

    .line 376
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->g()V

    goto :goto_0

    .line 379
    :sswitch_1
    const-string v0, ""

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->b:Ljava/lang/String;

    .line 380
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->e:Lcom/ushaqi/zhuishushenqi/widget/SearchEditText;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/SearchEditText;->setTextByCode(Ljava/lang/String;)V

    .line 381
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->f()V

    goto :goto_0

    .line 384
    :sswitch_2
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->b()V

    goto :goto_0

    .line 387
    :sswitch_3
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->b()V

    goto :goto_0

    .line 390
    :sswitch_4
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->finish()V

    goto :goto_0

    .line 373
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0c0095 -> :sswitch_4
        0x7f0c0097 -> :sswitch_1
        0x7f0c0098 -> :sswitch_0
        0x7f0c045e -> :sswitch_3
        0x7f0c045f -> :sswitch_2
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 122
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 123
    const v0, 0x7f030057

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->setContentView(I)V

    .line 124
    invoke-static {p0}, Lbutterknife/ButterKnife;->inject(Landroid/app/Activity;)V

    .line 126
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 127
    const-string v1, "search_mode"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->c:I

    .line 129
    iget v1, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->c:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 130
    const-string v1, "keyword"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->b:Ljava/lang/String;

    .line 133
    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 135
    const v0, 0x7f030002

    invoke-virtual {v1, v0, v7, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 136
    const v0, 0x7f0c0095

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    invoke-virtual {p0, v2}, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->setCustomActionBar(Landroid/view/View;)V

    .line 139
    new-instance v3, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity$SearchPromptAdapter;

    invoke-direct {v3, p0}, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity$SearchPromptAdapter;-><init>(Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;)V

    .line 140
    const v0, 0x7f0c0149

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/SearchFixListView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->i:Lcom/ushaqi/zhuishushenqi/widget/SearchFixListView;

    .line 141
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->i:Lcom/ushaqi/zhuishushenqi/widget/SearchFixListView;

    invoke-virtual {v0, v3}, Lcom/ushaqi/zhuishushenqi/widget/SearchFixListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 142
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->i:Lcom/ushaqi/zhuishushenqi/widget/SearchFixListView;

    invoke-virtual {v0, v3}, Lcom/ushaqi/zhuishushenqi/widget/SearchFixListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 143
    const v0, 0x7f0c0096

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/SearchEditText;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->e:Lcom/ushaqi/zhuishushenqi/widget/SearchEditText;

    .line 144
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->e:Lcom/ushaqi/zhuishushenqi/widget/SearchEditText;

    new-instance v4, Lcom/ushaqi/zhuishushenqi/ui/bD;

    invoke-direct {v4, p0, v3}, Lcom/ushaqi/zhuishushenqi/ui/bD;-><init>(Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;Lcom/ushaqi/zhuishushenqi/ui/SearchActivity$SearchPromptAdapter;)V

    invoke-virtual {v0, v4}, Lcom/ushaqi/zhuishushenqi/widget/SearchEditText;->setOnUserInputListener(Lcom/ushaqi/zhuishushenqi/widget/ax;)V

    .line 152
    const v0, 0x7f0c0098

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->f:Landroid/view/View;

    .line 153
    const v0, 0x7f0c0097

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->g:Landroid/view/View;

    .line 154
    const v0, 0x7f0c00dd

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->j:Landroid/view/View;

    .line 155
    const v0, 0x7f0c0140

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->k:Landroid/view/View;

    .line 156
    const v0, 0x7f0c045e

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 157
    const v2, 0x7f0c013f

    invoke-virtual {p0, v2}, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->n:Landroid/view/View;

    .line 159
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->f:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->g:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->f:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 164
    const v0, 0x7f0c0141

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->h:Landroid/widget/ListView;

    .line 165
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->c:I

    if-ne v0, v6, :cond_1

    .line 166
    const v0, 0x7f03015c

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->h:Landroid/widget/ListView;

    invoke-virtual {v1, v0, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->m:Landroid/view/View;

    .line 167
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->h:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->m:Landroid/view/View;

    invoke-virtual {v0, v2, v7, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 168
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->m:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    :cond_1
    new-instance v0, Lcom/ushaqi/zhuishushenqi/adapter/E;

    invoke-direct {v0, v1}, Lcom/ushaqi/zhuishushenqi/adapter/E;-><init>(Landroid/view/LayoutInflater;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->l:Lcom/ushaqi/zhuishushenqi/adapter/E;

    .line 171
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->h:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->l:Lcom/ushaqi/zhuishushenqi/adapter/E;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 172
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->h:Landroid/widget/ListView;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/bE;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/bE;-><init>(Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1284
    if-eqz p1, :cond_2

    .line 1285
    const-string v0, "saved_keyword"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->b:Ljava/lang/String;

    .line 1286
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->b:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 1287
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->e:Lcom/ushaqi/zhuishushenqi/widget/SearchEditText;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/SearchEditText;->setTextByCode(Ljava/lang/String;)V

    .line 1293
    :cond_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->e:Lcom/ushaqi/zhuishushenqi/widget/SearchEditText;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/bJ;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/bJ;-><init>(Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;)V

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/SearchEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 1304
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->e:Lcom/ushaqi/zhuishushenqi/widget/SearchEditText;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/bK;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/bK;-><init>(Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;)V

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/SearchEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1320
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->e:Lcom/ushaqi/zhuishushenqi/widget/SearchEditText;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/bL;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/bL;-><init>(Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;)V

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/SearchEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 192
    const v0, 0x7f0c0142

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->t:Landroid/view/View;

    .line 193
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->t:Landroid/view/View;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/bF;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/bF;-><init>(Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 200
    const v0, 0x7f0c0147

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->u:Landroid/view/View;

    .line 201
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->u:Landroid/view/View;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/bG;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/bG;-><init>(Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    const v0, 0x7f0c0148

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->v:Landroid/widget/ListView;

    .line 209
    sget-object v0, Lcom/ushaqi/zhuishushenqi/c;->e:Ljava/lang/String;

    const-string v1, "search_history.txt"

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/a/a;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->x:Ljava/util/List;

    .line 210
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->x:Ljava/util/List;

    if-nez v0, :cond_3

    .line 211
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->x:Ljava/util/List;

    .line 213
    :cond_3
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_4

    .line 214
    invoke-direct {p0, v5}, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->a(Z)V

    .line 216
    :cond_4
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity$SearchHistoryAdapter;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity$SearchHistoryAdapter;-><init>(Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->w:Lcom/ushaqi/zhuishushenqi/ui/SearchActivity$SearchHistoryAdapter;

    .line 217
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->v:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->w:Lcom/ushaqi/zhuishushenqi/ui/SearchActivity$SearchHistoryAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 218
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->v:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->w:Lcom/ushaqi/zhuishushenqi/ui/SearchActivity$SearchHistoryAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 220
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->c:I

    if-eq v0, v6, :cond_6

    .line 221
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->e:Lcom/ushaqi/zhuishushenqi/widget/SearchEditText;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/SearchEditText;->setTextByCode(Ljava/lang/String;)V

    .line 1341
    invoke-direct {p0, v5, v5}, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->a(ZZ)V

    .line 223
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->g()V

    .line 229
    :goto_0
    const v0, 0x7f0c0143

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->q:Landroid/widget/RelativeLayout;

    .line 230
    const v0, 0x7f0c0146

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->r:Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;

    .line 231
    const v0, 0x7f0c0145

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->s:Landroid/widget/TextView;

    .line 232
    sget-object v0, Lcom/ushaqi/zhuishushenqi/c;->e:Ljava/lang/String;

    const-string v1, "search_hotword.txt"

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/a/a;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v0, "search_hot_words_date"

    .line 233
    invoke-static {p0, v0, v5}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_7

    .line 234
    :cond_5
    const-string v0, "search_hot_words_date"

    invoke-static {p0, v0, v6}, Lcom/arcsoft/hpay100/a/a;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 235
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/bM;

    invoke-direct {v0, p0, v5}, Lcom/ushaqi/zhuishushenqi/ui/bM;-><init>(Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;B)V

    new-array v1, v5, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/bM;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 255
    :goto_1
    return-void

    .line 225
    :cond_6
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->f()V

    goto :goto_0

    .line 237
    :cond_7
    sget-object v0, Lcom/ushaqi/zhuishushenqi/c;->e:Ljava/lang/String;

    const-string v1, "search_hotword.txt"

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/a/a;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 238
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->q:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 239
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->r:Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;

    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;->setWords(Ljava/util/List;)V

    .line 240
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->r:Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/bH;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/bH;-><init>(Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;)V

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;->setOnItemClickListener(Lcom/ushaqi/zhuishushenqi/widget/i;)V

    .line 247
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->s:Landroid/widget/TextView;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/bI;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/bI;-><init>(Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 114
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 115
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 116
    const-string v0, "saved_keyword"

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :cond_0
    return-void
.end method
