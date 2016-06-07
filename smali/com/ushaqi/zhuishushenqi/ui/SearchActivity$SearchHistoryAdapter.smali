.class public final Lcom/ushaqi/zhuishushenqi/ui/SearchActivity$SearchHistoryAdapter;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;


# direct methods
.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;)V
    .locals 0

    .prologue
    .line 729
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity$SearchHistoryAdapter;->a:Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 765
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 733
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity$SearchHistoryAdapter;->a:Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->l(Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 738
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity$SearchHistoryAdapter;->a:Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->l(Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    .prologue
    .line 743
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 748
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity$SearchHistoryAdapter;->a:Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030106

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 749
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity$SearchHistoryAdapter$ViewHolder;

    invoke-direct {v0, p0, v1}, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity$SearchHistoryAdapter$ViewHolder;-><init>(Lcom/ushaqi/zhuishushenqi/ui/SearchActivity$SearchHistoryAdapter;Landroid/view/View;)V

    .line 750
    if-ltz p1, :cond_0

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity$SearchHistoryAdapter;->a:Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->l(Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 751
    iget-object v2, v0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity$SearchHistoryAdapter$ViewHolder;->word:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity$SearchHistoryAdapter;->a:Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->l(Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 753
    :cond_0
    return-object v1
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 758
    if-ltz p3, :cond_0

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity$SearchHistoryAdapter;->a:Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->l(Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p3, v0, :cond_0

    .line 759
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity$SearchHistoryAdapter;->a:Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity$SearchHistoryAdapter;->a:Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->l(Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;Ljava/lang/String;)V

    .line 760
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity$SearchHistoryAdapter;->a:Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;

    const-string v2, "search_history_word_click"

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity$SearchHistoryAdapter;->a:Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->l(Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    :cond_0
    return-void
.end method
