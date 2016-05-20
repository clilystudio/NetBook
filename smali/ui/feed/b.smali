.class final Lcom/ushaqi/zhuishushenqi/ui/feed/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/feed/FeedAddActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/feed/FeedAddActivity;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/feed/b;->a:Lcom/ushaqi/zhuishushenqi/ui/feed/FeedAddActivity;

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
    .line 53
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/feed/b;->a:Lcom/ushaqi/zhuishushenqi/ui/feed/FeedAddActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/feed/FeedAddActivity;->b(Lcom/ushaqi/zhuishushenqi/ui/feed/FeedAddActivity;)Lcom/ushaqi/zhuishushenqi/ui/feed/c;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/ushaqi/zhuishushenqi/ui/feed/c;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;

    .line 54
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/feed/b;->a:Lcom/ushaqi/zhuishushenqi/ui/feed/FeedAddActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/feed/FeedAddActivity;->c(Lcom/ushaqi/zhuishushenqi/ui/feed/FeedAddActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/feed/b;->a:Lcom/ushaqi/zhuishushenqi/ui/feed/FeedAddActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/feed/FeedAddActivity;->c(Lcom/ushaqi/zhuishushenqi/ui/feed/FeedAddActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 60
    :goto_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/feed/b;->a:Lcom/ushaqi/zhuishushenqi/ui/feed/FeedAddActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/feed/FeedAddActivity;->b(Lcom/ushaqi/zhuishushenqi/ui/feed/FeedAddActivity;)Lcom/ushaqi/zhuishushenqi/ui/feed/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/feed/c;->notifyDataSetChanged()V

    .line 61
    return-void

    .line 57
    :cond_0
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/feed/b;->a:Lcom/ushaqi/zhuishushenqi/ui/feed/FeedAddActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/feed/FeedAddActivity;->c(Lcom/ushaqi/zhuishushenqi/ui/feed/FeedAddActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
