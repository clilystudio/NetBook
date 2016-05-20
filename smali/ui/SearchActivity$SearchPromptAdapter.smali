.class public final Lcom/ushaqi/zhuishushenqi/ui/SearchActivity$SearchPromptAdapter;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/Filterable;


# instance fields
.field final synthetic a:Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/ushaqi/zhuishushenqi/ui/bQ;


# direct methods
.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;)V
    .locals 1

    .prologue
    .line 610
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity$SearchPromptAdapter;->a:Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 612
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity$SearchPromptAdapter;->b:Ljava/util/List;

    .line 714
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/SearchActivity$SearchPromptAdapter;)Ljava/util/List;
    .locals 1

    .prologue
    .line 610
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity$SearchPromptAdapter;->b:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/SearchActivity$SearchPromptAdapter;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 610
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity$SearchPromptAdapter;->b:Ljava/util/List;

    return-object p1
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 617
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity$SearchPromptAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getFilter()Landroid/widget/Filter;
    .locals 2

    .prologue
    .line 646
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity$SearchPromptAdapter;->c:Lcom/ushaqi/zhuishushenqi/ui/bQ;

    if-nez v0, :cond_0

    .line 647
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/bQ;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ushaqi/zhuishushenqi/ui/bQ;-><init>(Lcom/ushaqi/zhuishushenqi/ui/SearchActivity$SearchPromptAdapter;B)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity$SearchPromptAdapter;->c:Lcom/ushaqi/zhuishushenqi/ui/bQ;

    .line 649
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity$SearchPromptAdapter;->c:Lcom/ushaqi/zhuishushenqi/ui/bQ;

    return-object v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 622
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity$SearchPromptAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 623
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity$SearchPromptAdapter;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 625
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getItemId(I)J
    .locals 2

    .prologue
    .line 631
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 636
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity$SearchPromptAdapter;->a:Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030107

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 637
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity$SearchPromptAdapter$ViewHolder;

    invoke-direct {v0, p0, v1}, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity$SearchPromptAdapter$ViewHolder;-><init>(Lcom/ushaqi/zhuishushenqi/ui/SearchActivity$SearchPromptAdapter;Landroid/view/View;)V

    .line 638
    if-ltz p1, :cond_0

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity$SearchPromptAdapter;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 639
    iget-object v2, v0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity$SearchPromptAdapter$ViewHolder;->label:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity$SearchPromptAdapter;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 641
    :cond_0
    return-object v1
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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
    .line 706
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity$SearchPromptAdapter;->a:Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->k(Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;)Lcom/ushaqi/zhuishushenqi/widget/SearchFixListView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/SearchFixListView;->setVisibility(I)V

    .line 707
    if-ltz p3, :cond_0

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity$SearchPromptAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p3, v0, :cond_0

    .line 708
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity$SearchPromptAdapter;->b:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 709
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity$SearchPromptAdapter;->a:Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->f(Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;)Lcom/ushaqi/zhuishushenqi/widget/SearchEditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/widget/SearchEditText;->setTextByCode(Ljava/lang/String;)V

    .line 710
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity$SearchPromptAdapter;->a:Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->b(Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;Z)V

    .line 712
    :cond_0
    return-void
.end method
