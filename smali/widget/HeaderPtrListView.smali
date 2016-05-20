.class public Lcom/ushaqi/zhuishushenqi/widget/HeaderPtrListView;
.super Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/HeaderPtrListView;->h()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-static {p1, v0}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Landroid/widget/ListView;)V

    .line 18
    return-void
.end method
