.class final Lcom/ushaqi/zhuishushenqi/ui/post/dd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Landroid/widget/PopupWindow;

.field private synthetic b:Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;Landroid/widget/PopupWindow;)V
    .locals 0

    .prologue
    .line 507
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dd;->b:Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;

    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dd;->a:Landroid/widget/PopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 510
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dd;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 511
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dd;->b:Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->o(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f050142

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 512
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dd;->b:Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;

    const-string v1, "comment-count"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->b(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 513
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dd;->b:Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;->n(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setRefreshing()V

    .line 514
    return-void
.end method
