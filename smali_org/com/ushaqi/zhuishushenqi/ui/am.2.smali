.class final Lcom/ushaqi/zhuishushenqi/ui/am;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/am;->a:Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
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
    .line 125
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/am;->a:Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;->a(Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    sub-int v0, p3, v0

    .line 126
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/am;->a:Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;->b(Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 127
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/am;->a:Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;->b(Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/CategoryBook;

    .line 128
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/am;->a:Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;

    invoke-static {v1, v0}, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;->a(Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;Lcom/ushaqi/zhuishushenqi/model/CategoryBook;)V

    .line 130
    :cond_0
    return-void
.end method
