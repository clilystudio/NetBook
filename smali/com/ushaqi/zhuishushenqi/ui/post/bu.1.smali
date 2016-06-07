.class final Lcom/ushaqi/zhuishushenqi/ui/post/bu;
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
    .line 301
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bu;->b:Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;

    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bu;->a:Landroid/widget/PopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 304
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bu;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 305
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bu;->b:Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;->m(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f050141

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 306
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bu;->b:Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;

    const-string v1, "updated"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;->b(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 307
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bu;->b:Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;->l(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setRefreshing()V

    .line 308
    return-void
.end method
