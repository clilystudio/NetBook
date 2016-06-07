.class final Lcom/ushaqi/zhuishushenqi/ui/post/bG;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Landroid/widget/PopupWindow;

.field private synthetic b:Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;Landroid/widget/PopupWindow;)V
    .locals 0

    .prologue
    .line 254
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bG;->b:Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;

    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bG;->a:Landroid/widget/PopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 257
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bG;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 258
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bG;->b:Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;->b(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;Z)Z

    .line 259
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bG;->b:Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;->k(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u7cbe\u54c1"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bG;->b:Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;

    const-string v1, "all"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 261
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bG;->b:Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;->l(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setRefreshing()V

    .line 262
    return-void
.end method
