.class final Lcom/ushaqi/zhuishushenqi/ui/user/D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/D;->a:Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;

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
    .line 114
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/D;->a:Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;->g(Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    sub-int v0, p3, v0

    .line 115
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/D;->a:Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;->h(Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 116
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/D;->a:Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;->h(Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/TopicPost;

    .line 118
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/TopicPost;->getBlock()Ljava/lang/String;

    move-result-object v1

    .line 120
    const-string v2, "help"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 121
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/user/D;->a:Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 122
    const-string v2, "extraBookHelpId"

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/TopicPost;->get_id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object v0, v1

    .line 130
    :goto_0
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/D;->a:Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;

    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;->startActivity(Landroid/content/Intent;)V

    .line 132
    :cond_0
    return-void

    .line 123
    :cond_1
    const-string v2, "review"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 124
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/user/D;->a:Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 125
    const-string v2, "extraReviewId"

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/TopicPost;->get_id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object v0, v1

    goto :goto_0

    .line 127
    :cond_2
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/user/D;->a:Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 128
    const-string v2, "PostBookId"

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/TopicPost;->get_id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object v0, v1

    goto :goto_0
.end method
