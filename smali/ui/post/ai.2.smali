.class final Lcom/ushaqi/zhuishushenqi/ui/post/ai;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Landroid/widget/PopupWindow;

.field private synthetic b:Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;Landroid/widget/PopupWindow;)V
    .locals 0

    .prologue
    .line 318
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ai;->b:Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;

    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ai;->a:Landroid/widget/PopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 321
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ai;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 322
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ai;->b:Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;->m(Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f050142

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 323
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ai;->b:Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;

    const-string v1, "comment-count"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;->b(Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 324
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ai;->b:Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;->l(Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setRefreshing()V

    .line 325
    return-void
.end method
