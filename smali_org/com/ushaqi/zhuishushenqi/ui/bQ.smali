.class final Lcom/ushaqi/zhuishushenqi/ui/bQ;
.super Landroid/widget/Filter;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/SearchActivity$SearchPromptAdapter;


# direct methods
.method private constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/SearchActivity$SearchPromptAdapter;)V
    .locals 0

    .prologue
    .line 652
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/bQ;->a:Lcom/ushaqi/zhuishushenqi/ui/SearchActivity$SearchPromptAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/SearchActivity$SearchPromptAdapter;B)V
    .locals 0

    .prologue
    .line 652
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/bQ;-><init>(Lcom/ushaqi/zhuishushenqi/ui/SearchActivity$SearchPromptAdapter;)V

    return-void
.end method


# virtual methods
.method protected final performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 4

    .prologue
    .line 656
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bQ;->a:Lcom/ushaqi/zhuishushenqi/ui/SearchActivity$SearchPromptAdapter;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity$SearchPromptAdapter;->a:Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->f(Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;)Lcom/ushaqi/zhuishushenqi/widget/SearchEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/widget/SearchEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 657
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 658
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 659
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 660
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 661
    const/4 v1, 0x0

    .line 663
    :try_start_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->a()Lcom/ushaqi/zhuishushenqi/api/b;

    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->N(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/AutoCompleteRoot;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 667
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/AutoCompleteRoot;->getKeywords()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 668
    const/4 v1, 0x0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/AutoCompleteRoot;->getKeywords()Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 671
    :cond_0
    new-instance v0, Landroid/widget/Filter$FilterResults;

    invoke-direct {v0}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 672
    iput-object v2, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 673
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    iput v1, v0, Landroid/widget/Filter$FilterResults;->count:I

    .line 674
    return-object v0

    .line 664
    :catch_0
    move-exception v0

    .line 665
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method

.method protected final publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x0

    .line 679
    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 680
    if-nez v0, :cond_1

    .line 701
    :cond_0
    :goto_0
    return-void

    .line 683
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 684
    if-lt v3, v4, :cond_0

    .line 687
    add-int/lit8 v1, v3, -0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 689
    if-le v3, v4, :cond_2

    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/ui/bQ;->a:Lcom/ushaqi/zhuishushenqi/ui/SearchActivity$SearchPromptAdapter;

    iget-object v4, v4, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity$SearchPromptAdapter;->a:Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;

    invoke-static {v4, v1}, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->c(Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 690
    add-int/lit8 v1, v3, -0x2

    invoke-interface {v0, v2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 694
    :goto_1
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/bQ;->a:Lcom/ushaqi/zhuishushenqi/ui/SearchActivity$SearchPromptAdapter;

    invoke-static {v1, v0}, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity$SearchPromptAdapter;->a(Lcom/ushaqi/zhuishushenqi/ui/SearchActivity$SearchPromptAdapter;Ljava/util/List;)Ljava/util/List;

    .line 695
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bQ;->a:Lcom/ushaqi/zhuishushenqi/ui/SearchActivity$SearchPromptAdapter;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity$SearchPromptAdapter;->a(Lcom/ushaqi/zhuishushenqi/ui/SearchActivity$SearchPromptAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 696
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bQ;->a:Lcom/ushaqi/zhuishushenqi/ui/SearchActivity$SearchPromptAdapter;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity$SearchPromptAdapter;->notifyDataSetInvalidated()V

    .line 700
    :goto_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bQ;->a:Lcom/ushaqi/zhuishushenqi/ui/SearchActivity$SearchPromptAdapter;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity$SearchPromptAdapter;->a:Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->k(Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;)Lcom/ushaqi/zhuishushenqi/widget/SearchFixListView;

    move-result-object v1

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bQ;->a:Lcom/ushaqi/zhuishushenqi/ui/SearchActivity$SearchPromptAdapter;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity$SearchPromptAdapter;->a(Lcom/ushaqi/zhuishushenqi/ui/SearchActivity$SearchPromptAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x8

    :goto_3
    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/widget/SearchFixListView;->setVisibility(I)V

    goto :goto_0

    .line 692
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1

    .line 698
    :cond_3
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bQ;->a:Lcom/ushaqi/zhuishushenqi/ui/SearchActivity$SearchPromptAdapter;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity$SearchPromptAdapter;->notifyDataSetChanged()V

    goto :goto_2

    :cond_4
    move v0, v2

    .line 700
    goto :goto_3
.end method
