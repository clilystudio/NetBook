.class final Lcom/ushaqi/zhuishushenqi/ui/user/P;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/user/PayConsumeActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/user/PayConsumeActivity;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/P;->a:Lcom/ushaqi/zhuishushenqi/ui/user/PayConsumeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/P;->a:Lcom/ushaqi/zhuishushenqi/ui/user/PayConsumeActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/PayConsumeActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/user/PayConsumeActivity;)Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;->onScroll(Landroid/widget/AbsListView;III)V

    .line 112
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/P;->a:Lcom/ushaqi/zhuishushenqi/ui/user/PayConsumeActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/PayConsumeActivity;->b(Lcom/ushaqi/zhuishushenqi/ui/user/PayConsumeActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 113
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/P;->a:Lcom/ushaqi/zhuishushenqi/ui/user/PayConsumeActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/PayConsumeActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/user/PayConsumeActivity;)Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 107
    return-void
.end method
