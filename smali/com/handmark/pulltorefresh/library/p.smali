.class Lcom/handmark/pulltorefresh/library/p;
.super Landroid/widget/GridView;
.source "SourceFile"

# interfaces
.implements Lcom/handmark/pulltorefresh/library/internal/a;


# instance fields
.field private synthetic a:Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;


# direct methods
.method public constructor <init>(Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/handmark/pulltorefresh/library/p;->a:Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;

    .line 68
    invoke-direct {p0, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    return-void
.end method


# virtual methods
.method public setEmptyView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/p;->a:Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;

    invoke-virtual {v0, p1}, Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;->setEmptyView(Landroid/view/View;)V

    .line 74
    return-void
.end method

.method public setEmptyViewInternal(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 78
    invoke-super {p0, p1}, Landroid/widget/GridView;->setEmptyView(Landroid/view/View;)V

    .line 79
    return-void
.end method
