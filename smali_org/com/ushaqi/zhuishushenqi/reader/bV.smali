.class final Lcom/ushaqi/zhuishushenqi/reader/bV;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/bV;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
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
    .line 127
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bV;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;->b(Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    sub-int v6, p3, v0

    .line 129
    if-ltz v6, :cond_0

    .line 130
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bV;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;->c(Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;)Lcom/ushaqi/zhuishushenqi/adapter/B;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/ushaqi/zhuishushenqi/adapter/B;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/ushaqi/zhuishushenqi/model/TocSummary;

    .line 131
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bV;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/bV;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;->a(Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/bV;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;->d(Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/model/TocSummary;->get_id()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 132
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/bV;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;

    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;->startActivity(Landroid/content/Intent;)V

    .line 134
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bV;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;->c(Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;)Lcom/ushaqi/zhuishushenqi/adapter/B;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/ushaqi/zhuishushenqi/adapter/B;->a(I)V

    .line 136
    :cond_0
    return-void
.end method
