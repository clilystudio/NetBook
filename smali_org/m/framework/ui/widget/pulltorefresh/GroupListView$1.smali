.class Lm/framework/ui/widget/pulltorefresh/GroupListView$1;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lm/framework/ui/widget/pulltorefresh/GroupListView;

.field private final synthetic val$adapter:Lm/framework/ui/widget/pulltorefresh/GroupListView$GroupListAdapter;


# direct methods
.method constructor <init>(Lm/framework/ui/widget/pulltorefresh/GroupListView;Lm/framework/ui/widget/pulltorefresh/GroupListView$GroupListAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lm/framework/ui/widget/pulltorefresh/GroupListView$1;->this$0:Lm/framework/ui/widget/pulltorefresh/GroupListView;

    iput-object p2, p0, Lm/framework/ui/widget/pulltorefresh/GroupListView$1;->val$adapter:Lm/framework/ui/widget/pulltorefresh/GroupListView$GroupListAdapter;

    .line 26
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method private getItemIndex(I)[I
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 87
    const/4 v0, 0x2

    new-array v3, v0, [I

    fill-array-data v3, :array_0

    .line 89
    iget-object v0, p0, Lm/framework/ui/widget/pulltorefresh/GroupListView$1;->val$adapter:Lm/framework/ui/widget/pulltorefresh/GroupListView$GroupListAdapter;

    invoke-virtual {v0}, Lm/framework/ui/widget/pulltorefresh/GroupListView$GroupListAdapter;->getGroupCount()I

    move-result v4

    move v0, v1

    move v2, v1

    .line 90
    :goto_0
    if-lt v0, v4, :cond_0

    .line 99
    :goto_1
    return-object v3

    .line 91
    :cond_0
    iget-object v5, p0, Lm/framework/ui/widget/pulltorefresh/GroupListView$1;->val$adapter:Lm/framework/ui/widget/pulltorefresh/GroupListView$GroupListAdapter;

    invoke-virtual {v5, v0}, Lm/framework/ui/widget/pulltorefresh/GroupListView$GroupListAdapter;->getChildrenCount(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    .line 92
    add-int v6, v2, v5

    if-le v6, p1, :cond_1

    .line 93
    aput v0, v3, v1

    .line 94
    const/4 v0, 0x1

    sub-int v1, p1, v2

    add-int/lit8 v1, v1, -0x1

    aput v1, v3, v0

    goto :goto_1

    .line 97
    :cond_1
    add-int/2addr v2, v5

    .line 90
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 87
    :array_0
    .array-data 4
        -0x1
        -0x2
    .end array-data
.end method


# virtual methods
.method public getCount()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 103
    .line 104
    iget-object v1, p0, Lm/framework/ui/widget/pulltorefresh/GroupListView$1;->val$adapter:Lm/framework/ui/widget/pulltorefresh/GroupListView$GroupListAdapter;

    invoke-virtual {v1}, Lm/framework/ui/widget/pulltorefresh/GroupListView$GroupListAdapter;->getGroupCount()I

    move-result v2

    move v1, v0

    :goto_0
    if-lt v0, v2, :cond_0

    .line 107
    return v1

    .line 105
    :cond_0
    iget-object v3, p0, Lm/framework/ui/widget/pulltorefresh/GroupListView$1;->val$adapter:Lm/framework/ui/widget/pulltorefresh/GroupListView$GroupListAdapter;

    invoke-virtual {v3, v0}, Lm/framework/ui/widget/pulltorefresh/GroupListView$GroupListAdapter;->getChildrenCount(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v1, v3

    .line 104
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lm/framework/ui/widget/pulltorefresh/GroupListView$1;->getItemIndex(I)[I

    move-result-object v0

    .line 73
    const/4 v1, 0x0

    aget v1, v0, v1

    .line 74
    const/4 v2, 0x1

    aget v0, v0, v2

    .line 76
    if-ltz v1, :cond_1

    .line 77
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 78
    iget-object v1, p0, Lm/framework/ui/widget/pulltorefresh/GroupListView$1;->val$adapter:Lm/framework/ui/widget/pulltorefresh/GroupListView$GroupListAdapter;

    invoke-virtual {v1, v0}, Lm/framework/ui/widget/pulltorefresh/GroupListView$GroupListAdapter;->getGroupTitle(I)Ljava/lang/String;

    move-result-object v0

    .line 83
    :goto_0
    return-object v0

    .line 79
    :cond_0
    if-ltz v0, :cond_1

    .line 80
    iget-object v2, p0, Lm/framework/ui/widget/pulltorefresh/GroupListView$1;->val$adapter:Lm/framework/ui/widget/pulltorefresh/GroupListView$GroupListAdapter;

    invoke-virtual {v2, v1, v0}, Lm/framework/ui/widget/pulltorefresh/GroupListView$GroupListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 83
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 68
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 28
    invoke-direct {p0, p1}, Lm/framework/ui/widget/pulltorefresh/GroupListView$1;->getItemIndex(I)[I

    move-result-object v0

    .line 29
    const/4 v1, 0x0

    aget v1, v0, v1

    .line 30
    aget v2, v0, v6

    .line 33
    if-nez p2, :cond_3

    .line 34
    new-instance v0, Lm/framework/ui/widget/pulltorefresh/GroupListView$ItemHolder;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lm/framework/ui/widget/pulltorefresh/GroupListView$ItemHolder;-><init>(Lm/framework/ui/widget/pulltorefresh/GroupListView$ItemHolder;)V

    .line 35
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lm/framework/ui/widget/pulltorefresh/GroupListView$ItemHolder;->llItem:Landroid/widget/LinearLayout;

    .line 36
    iget-object v3, v0, Lm/framework/ui/widget/pulltorefresh/GroupListView$ItemHolder;->llItem:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 37
    iget-object v3, v0, Lm/framework/ui/widget/pulltorefresh/GroupListView$ItemHolder;->llItem:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 38
    if-ltz v1, :cond_0

    .line 39
    if-ne v2, v5, :cond_2

    .line 40
    iget-object v2, p0, Lm/framework/ui/widget/pulltorefresh/GroupListView$1;->val$adapter:Lm/framework/ui/widget/pulltorefresh/GroupListView$GroupListAdapter;

    iget-object v3, v0, Lm/framework/ui/widget/pulltorefresh/GroupListView$ItemHolder;->title:Landroid/view/View;

    iget-object v4, v0, Lm/framework/ui/widget/pulltorefresh/GroupListView$ItemHolder;->llItem:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1, v3, v4}, Lm/framework/ui/widget/pulltorefresh/GroupListView$GroupListAdapter;->getGroupTitleView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lm/framework/ui/widget/pulltorefresh/GroupListView$ItemHolder;->title:Landroid/view/View;

    .line 41
    iget-object v1, v0, Lm/framework/ui/widget/pulltorefresh/GroupListView$ItemHolder;->llItem:Landroid/widget/LinearLayout;

    iget-object v2, v0, Lm/framework/ui/widget/pulltorefresh/GroupListView$ItemHolder;->title:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 47
    :cond_0
    :goto_0
    iget-object p2, v0, Lm/framework/ui/widget/pulltorefresh/GroupListView$ItemHolder;->llItem:Landroid/widget/LinearLayout;

    .line 64
    :cond_1
    :goto_1
    return-object p2

    .line 42
    :cond_2
    if-ltz v2, :cond_0

    .line 43
    iget-object v3, p0, Lm/framework/ui/widget/pulltorefresh/GroupListView$1;->val$adapter:Lm/framework/ui/widget/pulltorefresh/GroupListView$GroupListAdapter;

    iget-object v4, v0, Lm/framework/ui/widget/pulltorefresh/GroupListView$ItemHolder;->child:Landroid/view/View;

    iget-object v5, v0, Lm/framework/ui/widget/pulltorefresh/GroupListView$ItemHolder;->llItem:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1, v2, v4, v5}, Lm/framework/ui/widget/pulltorefresh/GroupListView$GroupListAdapter;->getChildView(IILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lm/framework/ui/widget/pulltorefresh/GroupListView$ItemHolder;->child:Landroid/view/View;

    .line 44
    iget-object v1, v0, Lm/framework/ui/widget/pulltorefresh/GroupListView$ItemHolder;->llItem:Landroid/widget/LinearLayout;

    iget-object v2, v0, Lm/framework/ui/widget/pulltorefresh/GroupListView$ItemHolder;->child:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 49
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm/framework/ui/widget/pulltorefresh/GroupListView$ItemHolder;

    .line 50
    if-ltz v1, :cond_1

    .line 51
    if-ne v2, v5, :cond_4

    .line 52
    iget-object v2, p0, Lm/framework/ui/widget/pulltorefresh/GroupListView$1;->val$adapter:Lm/framework/ui/widget/pulltorefresh/GroupListView$GroupListAdapter;

    iget-object v3, v0, Lm/framework/ui/widget/pulltorefresh/GroupListView$ItemHolder;->title:Landroid/view/View;

    iget-object v4, v0, Lm/framework/ui/widget/pulltorefresh/GroupListView$ItemHolder;->llItem:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1, v3, v4}, Lm/framework/ui/widget/pulltorefresh/GroupListView$GroupListAdapter;->getGroupTitleView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lm/framework/ui/widget/pulltorefresh/GroupListView$ItemHolder;->title:Landroid/view/View;

    .line 53
    iget-object v1, v0, Lm/framework/ui/widget/pulltorefresh/GroupListView$ItemHolder;->child:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 54
    iget-object v1, v0, Lm/framework/ui/widget/pulltorefresh/GroupListView$ItemHolder;->llItem:Landroid/widget/LinearLayout;

    iget-object v0, v0, Lm/framework/ui/widget/pulltorefresh/GroupListView$ItemHolder;->child:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    goto :goto_1

    .line 56
    :cond_4
    if-ltz v2, :cond_1

    .line 57
    iget-object v3, p0, Lm/framework/ui/widget/pulltorefresh/GroupListView$1;->val$adapter:Lm/framework/ui/widget/pulltorefresh/GroupListView$GroupListAdapter;

    iget-object v4, v0, Lm/framework/ui/widget/pulltorefresh/GroupListView$ItemHolder;->child:Landroid/view/View;

    iget-object v5, v0, Lm/framework/ui/widget/pulltorefresh/GroupListView$ItemHolder;->llItem:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1, v2, v4, v5}, Lm/framework/ui/widget/pulltorefresh/GroupListView$GroupListAdapter;->getChildView(IILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lm/framework/ui/widget/pulltorefresh/GroupListView$ItemHolder;->child:Landroid/view/View;

    .line 58
    iget-object v1, v0, Lm/framework/ui/widget/pulltorefresh/GroupListView$ItemHolder;->title:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 59
    iget-object v1, v0, Lm/framework/ui/widget/pulltorefresh/GroupListView$ItemHolder;->llItem:Landroid/widget/LinearLayout;

    iget-object v0, v0, Lm/framework/ui/widget/pulltorefresh/GroupListView$ItemHolder;->title:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    goto :goto_1
.end method
