.class final Lcom/ushaqi/zhuishushenqi/ui/post/aV;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Landroid/widget/PopupWindow;

.field private synthetic b:Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;Landroid/widget/PopupWindow;)V
    .locals 0

    .prologue
    .line 327
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/aV;->b:Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;

    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/aV;->a:Landroid/widget/PopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 330
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/aV;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 331
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/aV;->b:Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;->k(Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u6700\u591a\u8bc4\u8bba"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 332
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/aV;->b:Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;

    const-string v1, "comment-count"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;->b(Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 333
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/aV;->b:Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;->j(Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setVisibility(I)V

    .line 334
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/aV;->b:Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;->j(Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setRefreshing()V

    .line 335
    return-void
.end method
