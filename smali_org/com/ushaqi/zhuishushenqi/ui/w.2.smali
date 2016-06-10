.class final Lcom/ushaqi/zhuishushenqi/ui/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryListActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryListActivity;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/w;->a:Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryListActivity;

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
    .line 79
    if-ltz p3, :cond_0

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/w;->a:Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryListActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryListActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p3, v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/w;->a:Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryListActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryListActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ximalaya/ting/android/opensdk/model/album/Album;

    .line 81
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/w;->a:Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryListActivity;

    invoke-static {v1, v0}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryListActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryListActivity;Lcom/ximalaya/ting/android/opensdk/model/album/Album;)V

    .line 83
    :cond_0
    return-void
.end method
