.class final Lcom/handmark/pulltorefresh/library/o;
.super Lcom/handmark/pulltorefresh/library/n;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation


# instance fields
.field private synthetic a:Lcom/handmark/pulltorefresh/library/PullToRefreshExpandableListView;


# direct methods
.method public constructor <init>(Lcom/handmark/pulltorefresh/library/PullToRefreshExpandableListView;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/handmark/pulltorefresh/library/o;->a:Lcom/handmark/pulltorefresh/library/PullToRefreshExpandableListView;

    .line 86
    invoke-direct {p0, p1, p2, p3}, Lcom/handmark/pulltorefresh/library/n;-><init>(Lcom/handmark/pulltorefresh/library/PullToRefreshExpandableListView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 87
    return-void
.end method


# virtual methods
.method protected final overScrollBy(IIIIIIIIZ)Z
    .locals 7

    .prologue
    .line 93
    invoke-super/range {p0 .. p9}, Lcom/handmark/pulltorefresh/library/n;->overScrollBy(IIIIIIIIZ)Z

    move-result v6

    .line 97
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/o;->a:Lcom/handmark/pulltorefresh/library/PullToRefreshExpandableListView;

    move v1, p1

    move v2, p3

    move v3, p2

    move v4, p4

    move/from16 v5, p9

    invoke-static/range {v0 .. v5}, Lcom/handmark/pulltorefresh/library/b;->a(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;IIIIZ)V

    .line 100
    return v6
.end method
