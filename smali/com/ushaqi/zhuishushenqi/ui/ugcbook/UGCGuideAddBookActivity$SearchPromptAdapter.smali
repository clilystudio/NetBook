.class public final Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity$SearchPromptAdapter;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/Filterable;


# instance fields
.field final synthetic a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;

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

.field private c:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/x;


# direct methods
.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;)V
    .locals 1

    .prologue
    .line 427
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity$SearchPromptAdapter;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 429
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity$SearchPromptAdapter;->b:Ljava/util/List;

    .line 532
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity$SearchPromptAdapter;)Ljava/util/List;
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity$SearchPromptAdapter;->b:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity$SearchPromptAdapter;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 427
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity$SearchPromptAdapter;->b:Ljava/util/List;

    return-object p1
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity$SearchPromptAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getFilter()Landroid/widget/Filter;
    .locals 2

    .prologue
    .line 463
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity$SearchPromptAdapter;->c:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/x;

    if-nez v0, :cond_0

    .line 464
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/x;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/x;-><init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity$SearchPromptAdapter;B)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity$SearchPromptAdapter;->c:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/x;

    .line 466
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity$SearchPromptAdapter;->c:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/x;

    return-object v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 439
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity$SearchPromptAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 440
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity$SearchPromptAdapter;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 442
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getItemId(I)J
    .locals 2

    .prologue
    .line 448
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 453
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity$SearchPromptAdapter;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030107

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 454
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity$SearchPromptAdapter$ViewHolder;

    invoke-direct {v0, p0, v1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity$SearchPromptAdapter$ViewHolder;-><init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity$SearchPromptAdapter;Landroid/view/View;)V

    .line 455
    if-ltz p1, :cond_0

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity$SearchPromptAdapter;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 456
    iget-object v2, v0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity$SearchPromptAdapter$ViewHolder;->label:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity$SearchPromptAdapter;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 458
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
    .line 523
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity$SearchPromptAdapter;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;->f(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;)Lcom/ushaqi/zhuishushenqi/widget/SearchFixListView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/SearchFixListView;->setVisibility(I)V

    .line 524
    if-ltz p3, :cond_0

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity$SearchPromptAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p3, v0, :cond_0

    .line 525
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity$SearchPromptAdapter;->b:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 526
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity$SearchPromptAdapter;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;)Lcom/ushaqi/zhuishushenqi/widget/SearchEditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/widget/SearchEditText;->setTextByCode(Ljava/lang/String;)V

    .line 527
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity$SearchPromptAdapter;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;->g(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;)V

    .line 528
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity$SearchPromptAdapter;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddBookActivity;Z)Z

    .line 530
    :cond_0
    return-void
.end method
