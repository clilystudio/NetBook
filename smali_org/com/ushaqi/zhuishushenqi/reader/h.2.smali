.class final Lcom/ushaqi/zhuishushenqi/reader/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/reader/LocalChapterListActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/LocalChapterListActivity;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/h;->a:Lcom/ushaqi/zhuishushenqi/reader/LocalChapterListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
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
    .line 78
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/h;->a:Lcom/ushaqi/zhuishushenqi/reader/LocalChapterListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/LocalChapterListActivity;->a(Lcom/ushaqi/zhuishushenqi/reader/LocalChapterListActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    sub-int v0, p3, v0

    .line 79
    if-ltz v0, :cond_0

    .line 80
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/h;->a:Lcom/ushaqi/zhuishushenqi/reader/LocalChapterListActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/reader/LocalChapterListActivity;->b(Lcom/ushaqi/zhuishushenqi/reader/LocalChapterListActivity;)Lcom/ushaqi/zhuishushenqi/adapter/C;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/adapter/C;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/ushaqi/zhuishushenqi/model/TocDownloadSummary;

    .line 81
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/h;->a:Lcom/ushaqi/zhuishushenqi/reader/LocalChapterListActivity;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/h;->a:Lcom/ushaqi/zhuishushenqi/reader/LocalChapterListActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/reader/LocalChapterListActivity;->c(Lcom/ushaqi/zhuishushenqi/reader/LocalChapterListActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/h;->a:Lcom/ushaqi/zhuishushenqi/reader/LocalChapterListActivity;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/reader/LocalChapterListActivity;->d(Lcom/ushaqi/zhuishushenqi/reader/LocalChapterListActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/model/TocDownloadSummary;->getTocId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 82
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/h;->a:Lcom/ushaqi/zhuishushenqi/reader/LocalChapterListActivity;

    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/reader/LocalChapterListActivity;->startActivity(Landroid/content/Intent;)V

    .line 84
    :cond_0
    return-void
.end method
