.class final Lcom/ushaqi/zhuishushenqi/ui/post/aT;
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
    .line 307
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/aT;->b:Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;

    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/aT;->a:Landroid/widget/PopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 310
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/aT;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 311
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/aT;->b:Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;->k(Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u9ed8\u8ba4\u6392\u5e8f"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 312
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/aT;->b:Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;

    const-string v1, "updated"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;->b(Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 313
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/aT;->b:Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;->j(Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setVisibility(I)V

    .line 314
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/aT;->b:Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;->j(Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setRefreshing()V

    .line 315
    return-void
.end method
