.class Lcom/handmark/pulltorefresh/library/n;
.super Landroid/widget/ExpandableListView;
.source "SourceFile"

# interfaces
.implements Lcom/handmark/pulltorefresh/library/internal/a;


# instance fields
.field private synthetic a:Lcom/handmark/pulltorefresh/library/PullToRefreshExpandableListView;


# direct methods
.method public constructor <init>(Lcom/handmark/pulltorefresh/library/PullToRefreshExpandableListView;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/handmark/pulltorefresh/library/n;->a:Lcom/handmark/pulltorefresh/library/PullToRefreshExpandableListView;

    .line 68
    invoke-direct {p0, p2, p3}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    return-void
.end method


# virtual methods
.method public setEmptyView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/n;->a:Lcom/handmark/pulltorefresh/library/PullToRefreshExpandableListView;

    invoke-virtual {v0, p1}, Lcom/handmark/pulltorefresh/library/PullToRefreshExpandableListView;->setEmptyView(Landroid/view/View;)V

    .line 74
    return-void
.end method

.method public setEmptyViewInternal(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 78
    invoke-super {p0, p1}, Landroid/widget/ExpandableListView;->setEmptyView(Landroid/view/View;)V

    .line 79
    return-void
.end method
