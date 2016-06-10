.class final Lcom/ushaqi/zhuishushenqi/ui/home/N;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/N;->a:Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;

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
    .line 115
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/N;->a:Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;->b(Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    .line 116
    sub-int v0, p3, v0

    add-int/lit8 v0, v0, -0x1

    .line 117
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/N;->a:Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;->c(Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/N;->a:Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;->c(Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/BookShelfTopic;

    .line 121
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/N;->a:Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookShelfTopic;->getBookId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookShelfTopic;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/ushaqi/zhuishushenqi/ui/post/BookPostTabActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 123
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/home/N;->a:Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;

    invoke-virtual {v2, v1}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeTopicFragment;->startActivity(Landroid/content/Intent;)V

    .line 124
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookShelfTopic;->getBookId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookShelfTopic;->getPostCount()I

    move-result v0

    invoke-static {v1, v0}, Lcom/ushaqi/zhuishushenqi/db/BookTopicEnterRecord;->updateCount(Ljava/lang/String;I)V

    goto :goto_0
.end method
