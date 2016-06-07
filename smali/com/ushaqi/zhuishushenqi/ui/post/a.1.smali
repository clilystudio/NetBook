.class final Lcom/ushaqi/zhuishushenqi/ui/post/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field final synthetic a:Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/a;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/a;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;->b:Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;->onScroll(Landroid/widget/AbsListView;III)V

    .line 85
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/a;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/post/AbsPostActivity;->b:Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

    invoke-virtual {v0, p1, p2}, Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 69
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 70
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/post/b;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/post/b;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 80
    :cond_0
    return-void
.end method
