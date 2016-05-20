.class final Lcom/ushaqi/zhuishushenqi/ui/ugcbook/x;
.super Landroid/widget/Filter;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity$SearchPromptAdapter;


# direct methods
.method private constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity$SearchPromptAdapter;)V
    .locals 0

    .prologue
    .line 469
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/x;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity$SearchPromptAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity$SearchPromptAdapter;B)V
    .locals 0

    .prologue
    .line 469
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/x;-><init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity$SearchPromptAdapter;)V

    return-void
.end method


# virtual methods
.method protected final performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 4

    .prologue
    .line 473
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/x;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity$SearchPromptAdapter;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity$SearchPromptAdapter;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;)Lcom/ushaqi/zhuishushenqi/widget/SearchEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/widget/SearchEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 474
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 475
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 476
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 477
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 478
    const/4 v1, 0x0

    .line 480
    :try_start_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->a()Lcom/ushaqi/zhuishushenqi/api/b;

    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->N(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/AutoCompleteRoot;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 484
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/AutoCompleteRoot;->getKeywords()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 485
    const/4 v1, 0x0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/AutoCompleteRoot;->getKeywords()Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 488
    :cond_0
    new-instance v0, Landroid/widget/Filter$FilterResults;

    invoke-direct {v0}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 489
    iput-object v2, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 490
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    iput v1, v0, Landroid/widget/Filter$FilterResults;->count:I

    .line 491
    return-object v0

    .line 481
    :catch_0
    move-exception v0

    .line 482
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method

.method protected final publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x0

    .line 496
    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 497
    if-nez v0, :cond_1

    .line 518
    :cond_0
    :goto_0
    return-void

    .line 500
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 501
    if-lt v3, v4, :cond_0

    .line 504
    add-int/lit8 v1, v3, -0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 506
    if-le v3, v4, :cond_3

    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/x;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity$SearchPromptAdapter;

    iget-object v4, v4, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity$SearchPromptAdapter;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;

    invoke-static {v4, v1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;->b(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 507
    add-int/lit8 v1, v3, -0x2

    invoke-interface {v0, v2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 511
    :goto_1
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/x;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity$SearchPromptAdapter;

    invoke-static {v1, v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity$SearchPromptAdapter;->a(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity$SearchPromptAdapter;Ljava/util/List;)Ljava/util/List;

    .line 512
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/x;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity$SearchPromptAdapter;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity$SearchPromptAdapter;->a(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity$SearchPromptAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 513
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/x;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity$SearchPromptAdapter;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity$SearchPromptAdapter;->notifyDataSetInvalidated()V

    .line 517
    :goto_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/x;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity$SearchPromptAdapter;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity$SearchPromptAdapter;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;->f(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;)Lcom/ushaqi/zhuishushenqi/widget/SearchFixListView;

    move-result-object v1

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/x;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity$SearchPromptAdapter;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity$SearchPromptAdapter;->a(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity$SearchPromptAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/x;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity$SearchPromptAdapter;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity$SearchPromptAdapter;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;->e(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_2
    const/16 v0, 0x8

    :goto_3
    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/widget/SearchFixListView;->setVisibility(I)V

    goto :goto_0

    .line 509
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1

    .line 515
    :cond_4
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/x;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity$SearchPromptAdapter;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity$SearchPromptAdapter;->notifyDataSetChanged()V

    goto :goto_2

    :cond_5
    move v0, v2

    .line 517
    goto :goto_3
.end method
