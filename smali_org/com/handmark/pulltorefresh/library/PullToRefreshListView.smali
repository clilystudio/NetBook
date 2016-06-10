.class public Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
.super Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase",
        "<",
        "Landroid/widget/ListView;",
        ">;"
    }
.end annotation


# instance fields
.field private c:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

.field private d:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

.field private e:Landroid/widget/FrameLayout;

.field private f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;-><init>(Landroid/content/Context;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;-><init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;-><init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;)V

    .line 58
    return-void
.end method

.method static synthetic a(Lcom/handmark/pulltorefresh/library/PullToRefreshListView;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->e:Landroid/widget/FrameLayout;

    return-object v0
.end method


# virtual methods
.method protected final synthetic a(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 2

    .prologue
    .line 35
    .line 2207
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    .line 2208
    new-instance v0, Lcom/handmark/pulltorefresh/library/t;

    invoke-direct {v0, p0, p1, p2}, Lcom/handmark/pulltorefresh/library/t;-><init>(Lcom/handmark/pulltorefresh/library/PullToRefreshListView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1220
    :goto_0
    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setId(I)V

    .line 35
    return-object v0

    .line 2210
    :cond_0
    new-instance v0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView$InternalListView;

    invoke-direct {v0, p0, p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView$InternalListView;-><init>(Lcom/handmark/pulltorefresh/library/PullToRefreshListView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_0
.end method

.method protected final a(ZZ)Lcom/handmark/pulltorefresh/library/b;
    .locals 3

    .prologue
    .line 189
    invoke-super {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->a(ZZ)Lcom/handmark/pulltorefresh/library/b;

    move-result-object v0

    .line 191
    iget-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->f:Z

    if-eqz v1, :cond_1

    .line 192
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->g()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    move-result-object v1

    .line 194
    if-eqz p1, :cond_0

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 195
    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->c:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v0, v2}, Lcom/handmark/pulltorefresh/library/b;->a(Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;)V

    .line 197
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 198
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->d:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/b;->a(Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;)V

    .line 202
    :cond_1
    return-object v0
.end method

.method protected final a(Landroid/content/res/TypedArray;)V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x1

    .line 226
    invoke-super {p0, p1}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->a(Landroid/content/res/TypedArray;)V

    .line 228
    sget v0, Lcom/handmark/pulltorefresh/library/R$styleable;->PullToRefresh_ptrListViewExtrasEnabled:I

    invoke-virtual {p1, v0, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->f:Z

    .line 230
    iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->f:Z

    if-eqz v0, :cond_0

    .line 231
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v2, -0x2

    invoke-direct {v1, v0, v2, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 235
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 236
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v3, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {p0, v0, v3, p1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->a(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Landroid/content/res/TypedArray;)Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->c:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    .line 237
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->c:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v0, v6}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setVisibility(I)V

    .line 238
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->c:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 239
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->b:Landroid/view/View;

    check-cast v0, Landroid/widget/ListView;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 241
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->e:Landroid/widget/FrameLayout;

    .line 242
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_END:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {p0, v0, v2, p1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->a(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Landroid/content/res/TypedArray;)Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->d:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    .line 243
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->d:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v0, v6}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setVisibility(I)V

    .line 244
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->e:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->d:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    invoke-virtual {v0, v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 250
    sget v0, Lcom/handmark/pulltorefresh/library/R$styleable;->PullToRefresh_ptrScrollingWhileRefreshingEnabled:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 251
    invoke-virtual {p0, v5}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setScrollingWhileRefreshingEnabled(Z)V

    .line 254
    :cond_0
    return-void
.end method

.method protected final a(Z)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 71
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->b:Landroid/view/View;

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 72
    iget-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->f:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 73
    :cond_0
    invoke-super {p0, p1}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->a(Z)V

    .line 127
    :cond_1
    :goto_0
    return-void

    .line 77
    :cond_2
    invoke-super {p0, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->a(Z)V

    .line 82
    sget-object v0, Lcom/handmark/pulltorefresh/library/s;->a:[I

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->f()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 93
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->s()Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    move-result-object v4

    .line 94
    iget-object v3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->c:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    .line 95
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->d:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    .line 97
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getScrollY()I

    move-result v0

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->t()I

    move-result v5

    add-int/2addr v0, v5

    move-object v5, v4

    move-object v4, v3

    move-object v3, v1

    move v1, v2

    .line 102
    :goto_1
    invoke-virtual {v5}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->k()V

    .line 103
    invoke-virtual {v5}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->g()V

    .line 106
    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setVisibility(I)V

    .line 109
    invoke-virtual {v4, v2}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setVisibility(I)V

    .line 110
    invoke-virtual {v4}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->i()V

    .line 112
    if-eqz p1, :cond_1

    .line 114
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->p()V

    .line 118
    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->a(I)V

    .line 122
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->b:Landroid/view/View;

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 125
    invoke-virtual {p0, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->b(I)V

    goto :goto_0

    .line 85
    :pswitch_0
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->q()Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    move-result-object v5

    .line 86
    iget-object v4, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->d:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    .line 87
    iget-object v3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->c:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    .line 88
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->b:Landroid/view/View;

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    .line 89
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getScrollY()I

    move-result v0

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->r()I

    move-result v6

    sub-int/2addr v0, v6

    .line 90
    goto :goto_1

    .line 82
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected final b(Z)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 134
    iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->f:Z

    if-nez v0, :cond_0

    .line 135
    iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->a:Z

    invoke-super {p0, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->b(Z)V

    .line 185
    :goto_0
    return-void

    .line 143
    :cond_0
    sget-object v0, Lcom/handmark/pulltorefresh/library/s;->a:[I

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->f()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    .line 154
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->s()Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    move-result-object v5

    .line 155
    iget-object v4, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->c:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    .line 156
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->t()I

    move-result v0

    neg-int v3, v0

    .line 158
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->b:Landroid/view/View;

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-gt v0, v1, :cond_3

    :goto_1
    move v0, v1

    move v1, v3

    move-object v3, v4

    move-object v4, v5

    .line 164
    :goto_2
    invoke-virtual {v3}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->getVisibility()I

    move-result v5

    if-nez v5, :cond_1

    .line 167
    invoke-virtual {v4}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->l()V

    .line 170
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setVisibility(I)V

    .line 177
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->j()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    move-result-object v0

    sget-object v3, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->MANUAL_REFRESHING:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    if-eq v0, v3, :cond_1

    .line 178
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->b:Landroid/view/View;

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 179
    invoke-virtual {p0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->a(I)V

    .line 184
    :cond_1
    iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->a:Z

    invoke-super {p0, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->b(Z)V

    goto :goto_0

    .line 146
    :pswitch_0
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->q()Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    move-result-object v6

    .line 147
    iget-object v5, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->d:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    .line 148
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->b:Landroid/view/View;

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    .line 149
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->r()I

    move-result v4

    .line 150
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->b:Landroid/view/View;

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-gt v0, v1, :cond_2

    move v0, v1

    :goto_3
    move v2, v3

    move v1, v4

    move-object v3, v5

    move-object v4, v6

    .line 151
    goto :goto_2

    :cond_2
    move v0, v2

    .line 150
    goto :goto_3

    :cond_3
    move v1, v2

    .line 158
    goto :goto_1

    .line 143
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final o()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;->VERTICAL:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;

    return-object v0
.end method
