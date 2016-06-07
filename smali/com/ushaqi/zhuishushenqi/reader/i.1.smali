.class final Lcom/ushaqi/zhuishushenqi/reader/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/reader/LocalChapterListActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/LocalChapterListActivity;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/i;->a:Lcom/ushaqi/zhuishushenqi/reader/LocalChapterListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/i;->a:Lcom/ushaqi/zhuishushenqi/reader/LocalChapterListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/LocalChapterListActivity;->a(Lcom/ushaqi/zhuishushenqi/reader/LocalChapterListActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    sub-int v0, p3, v0

    .line 91
    if-ltz v0, :cond_0

    .line 92
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/i;->a:Lcom/ushaqi/zhuishushenqi/reader/LocalChapterListActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/reader/LocalChapterListActivity;->b(Lcom/ushaqi/zhuishushenqi/reader/LocalChapterListActivity;)Lcom/ushaqi/zhuishushenqi/adapter/C;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/adapter/C;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/TocDownloadSummary;

    .line 93
    if-eqz v0, :cond_0

    .line 94
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/i;->a:Lcom/ushaqi/zhuishushenqi/reader/LocalChapterListActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/TocDownloadSummary;->getTocId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ushaqi/zhuishushenqi/reader/LocalChapterListActivity;->a(Lcom/ushaqi/zhuishushenqi/reader/LocalChapterListActivity;Ljava/lang/String;)V

    .line 97
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
