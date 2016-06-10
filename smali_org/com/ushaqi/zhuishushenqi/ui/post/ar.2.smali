.class final Lcom/ushaqi/zhuishushenqi/ui/post/ar;
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
    .line 243
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ar;->b:Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;

    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ar;->a:Landroid/widget/PopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ar;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 247
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ar;->b:Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;->k(Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u5168\u90e8"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ar;->b:Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;->b(Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;Z)Z

    .line 249
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ar;->b:Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;

    const-string v1, "all"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 250
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ar;->b:Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;->l(Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setRefreshing()V

    .line 251
    return-void
.end method
