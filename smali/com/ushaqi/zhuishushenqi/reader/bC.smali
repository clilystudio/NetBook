.class final Lcom/ushaqi/zhuishushenqi/reader/bC;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/bC;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .line 107
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bC;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;->c(Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    sub-int v0, p3, v0

    .line 108
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/bC;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;->d(Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;)Lcom/ushaqi/zhuishushenqi/reader/bG;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/reader/bG;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/TocSummary;

    .line 109
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/TocSummary;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 110
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/bC;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;->a(Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 111
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a()Lcom/ushaqi/zhuishushenqi/MyApplication;

    move-result-object v1

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/bC;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;->b(Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ushaqi/zhuishushenqi/MyApplication;->c(Ljava/lang/String;)V

    .line 112
    const-string v1, "vip.zhuishushenqi.com"

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/bC;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;->a(Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 113
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/bC;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;->b(Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9

    invoke-static {v1, v2}, Landroid/support/design/widget/am;->c(Ljava/lang/String;I)V

    .line 117
    :goto_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v1

    new-instance v2, Lcom/ushaqi/zhuishushenqi/event/v;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/ushaqi/zhuishushenqi/event/v;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/squareup/a/b;->c(Ljava/lang/Object;)V

    .line 118
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/bC;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/TocSummary;->get_id()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;->a(Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;Ljava/lang/String;)V

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/bC;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;->finish()V

    .line 121
    return-void

    .line 115
    :cond_1
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/bC;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;->b(Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v1, v2}, Landroid/support/design/widget/am;->c(Ljava/lang/String;I)V

    goto :goto_0
.end method
