.class final Lcom/handmark/pulltorefresh/library/u;
.super Landroid/widget/ScrollView;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation


# instance fields
.field private synthetic a:Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;


# direct methods
.method public constructor <init>(Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/handmark/pulltorefresh/library/u;->a:Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;

    .line 80
    invoke-direct {p0, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 81
    return-void
.end method


# virtual methods
.method protected final overScrollBy(IIIIIIIIZ)Z
    .locals 8

    .prologue
    .line 87
    invoke-super/range {p0 .. p9}, Landroid/widget/ScrollView;->overScrollBy(IIIIIIIIZ)Z

    move-result v7

    .line 91
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/u;->a:Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;

    .line 1101
    const/4 v5, 0x0

    .line 1102
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/u;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 1103
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/handmark/pulltorefresh/library/u;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1104
    const/4 v2, 0x0

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/u;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/u;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/u;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int/2addr v1, v3

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    :cond_0
    move v1, p1

    move v2, p3

    move v3, p2

    move v4, p4

    move/from16 v6, p9

    .line 91
    invoke-static/range {v0 .. v6}, Lcom/handmark/pulltorefresh/library/b;->a(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;IIIIIZ)V

    .line 94
    return v7
.end method
