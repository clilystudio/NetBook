.class public abstract Landroid/support/v7/widget/ao;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Z

.field b:Landroid/support/v7/widget/q;

.field c:Landroid/support/v7/widget/RecyclerView;

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5546
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5553
    iput-boolean v0, p0, Landroid/support/v7/widget/ao;->a:Z

    .line 5555
    iput-boolean v0, p0, Landroid/support/v7/widget/ao;->d:Z

    .line 7668
    return-void
.end method

.method public static a(IIIZ)I
    .locals 4

    .prologue
    const/high16 v0, 0x40000000    # 2.0f

    const/4 v1, 0x0

    .line 6715
    sub-int v2, p0, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 6719
    if-eqz p3, :cond_2

    .line 6720
    if-ltz p2, :cond_1

    .line 6741
    :cond_0
    :goto_0
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    return v0

    :cond_1
    move v0, v1

    move p2, v1

    .line 6727
    goto :goto_0

    .line 6730
    :cond_2
    if-gez p2, :cond_0

    .line 6733
    const/4 v3, -0x1

    if-ne p2, v3, :cond_3

    move p2, v2

    .line 6735
    goto :goto_0

    .line 6736
    :cond_3
    const/4 v0, -0x2

    if-ne p2, v0, :cond_4

    .line 6738
    const/high16 v0, -0x80000000

    move p2, v2

    goto :goto_0

    :cond_4
    move v0, v1

    move p2, v1

    goto :goto_0
.end method

.method public static a(Landroid/view/View;IIII)V
    .locals 4

    .prologue
    .line 6800
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ap;

    iget-object v0, v0, Landroid/support/v7/widget/ap;->b:Landroid/graphics/Rect;

    .line 6801
    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, p1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, p2

    iget v3, v0, Landroid/graphics/Rect;->right:I

    sub-int v3, p3, v3

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v0, p4, v0

    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/view/View;->layout(IIII)V

    .line 6803
    return-void
.end method

.method private a(Landroid/view/View;IZ)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v2, -0x1

    .line 6041
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/support/v7/widget/ay;

    move-result-object v3

    .line 6042
    if-nez p3, :cond_0

    invoke-virtual {v3}, Landroid/support/v7/widget/ay;->m()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6044
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ao;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/aw;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/aw;->b(Landroid/view/View;)V

    .line 6053
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ap;

    .line 6054
    invoke-virtual {v3}, Landroid/support/v7/widget/ay;->f()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v3}, Landroid/support/v7/widget/ay;->d()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 6055
    :cond_1
    invoke-virtual {v3}, Landroid/support/v7/widget/ay;->d()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 6056
    invoke-virtual {v3}, Landroid/support/v7/widget/ay;->e()V

    .line 6060
    :goto_1
    iget-object v1, p0, Landroid/support/v7/widget/ao;->b:Landroid/support/v7/widget/q;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, p1, p2, v2, v7}, Landroid/support/v7/widget/q;->a(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 6085
    :cond_2
    :goto_2
    iget-boolean v1, v0, Landroid/support/v7/widget/ap;->d:Z

    if-eqz v1, :cond_3

    .line 6089
    iget-object v1, v3, Landroid/support/v7/widget/ay;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 6090
    iput-boolean v7, v0, Landroid/support/v7/widget/ap;->d:Z

    .line 6092
    :cond_3
    return-void

    .line 6051
    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/ao;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/aw;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/aw;->a(Landroid/view/View;)V

    goto :goto_0

    .line 6058
    :cond_5
    invoke-virtual {v3}, Landroid/support/v7/widget/ay;->g()V

    goto :goto_1

    .line 6064
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v4, p0, Landroid/support/v7/widget/ao;->c:Landroid/support/v7/widget/RecyclerView;

    if-ne v1, v4, :cond_d

    .line 6066
    iget-object v1, p0, Landroid/support/v7/widget/ao;->b:Landroid/support/v7/widget/q;

    .line 9270
    iget-object v4, v1, Landroid/support/v7/widget/q;->a:Landroid/support/v7/widget/s;

    invoke-interface {v4, p1}, Landroid/support/v7/widget/s;->a(Landroid/view/View;)I

    move-result v4

    .line 9271
    if-ne v4, v2, :cond_8

    move v1, v2

    .line 6067
    :goto_3
    if-ne p2, v2, :cond_7

    .line 6068
    iget-object v4, p0, Landroid/support/v7/widget/ao;->b:Landroid/support/v7/widget/q;

    invoke-virtual {v4}, Landroid/support/v7/widget/q;->a()I

    move-result p2

    .line 6070
    :cond_7
    if-ne v1, v2, :cond_a

    .line 6071
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Added View has RecyclerView as parent but view is not a real child. Unfiltered index:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/support/v7/widget/ao;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/RecyclerView;->indexOfChild(Landroid/view/View;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9274
    :cond_8
    iget-object v5, v1, Landroid/support/v7/widget/q;->b:Landroid/support/v7/widget/r;

    invoke-virtual {v5, v4}, Landroid/support/v7/widget/r;->b(I)Z

    move-result v5

    if-eqz v5, :cond_9

    move v1, v2

    .line 9278
    goto :goto_3

    .line 9282
    :cond_9
    iget-object v1, v1, Landroid/support/v7/widget/q;->b:Landroid/support/v7/widget/r;

    invoke-virtual {v1, v4}, Landroid/support/v7/widget/r;->d(I)I

    move-result v1

    sub-int v1, v4, v1

    goto :goto_3

    .line 6075
    :cond_a
    if-eq v1, p2, :cond_2

    .line 6076
    iget-object v2, p0, Landroid/support/v7/widget/ao;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->d(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/ao;

    move-result-object v2

    .line 9303
    invoke-virtual {v2, v1}, Landroid/support/v7/widget/ao;->b(I)Landroid/view/View;

    move-result-object v4

    .line 9304
    if-nez v4, :cond_b

    .line 9305
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot move a child from non-existing index:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9308
    :cond_b
    invoke-direct {v2, v1}, Landroid/support/v7/widget/ao;->g(I)V

    .line 10272
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/ap;

    .line 11251
    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/support/v7/widget/ay;

    move-result-object v5

    .line 11252
    invoke-virtual {v5}, Landroid/support/v7/widget/ay;->m()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 11253
    iget-object v6, v2, Landroid/support/v7/widget/ao;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/aw;

    invoke-virtual {v6, v4}, Landroid/support/v7/widget/aw;->b(Landroid/view/View;)V

    .line 11257
    :goto_4
    iget-object v2, v2, Landroid/support/v7/widget/ao;->b:Landroid/support/v7/widget/q;

    invoke-virtual {v5}, Landroid/support/v7/widget/ay;->m()Z

    move-result v5

    invoke-virtual {v2, v4, p2, v1, v5}, Landroid/support/v7/widget/q;->a(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    goto/16 :goto_2

    .line 11255
    :cond_c
    iget-object v6, v2, Landroid/support/v7/widget/ao;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/aw;

    invoke-virtual {v6, v4}, Landroid/support/v7/widget/aw;->a(Landroid/view/View;)V

    goto :goto_4

    .line 6079
    :cond_d
    iget-object v1, p0, Landroid/support/v7/widget/ao;->b:Landroid/support/v7/widget/q;

    invoke-virtual {v1, p1, p2, v7}, Landroid/support/v7/widget/q;->a(Landroid/view/View;IZ)V

    .line 6080
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/ap;->c:Z

    goto/16 :goto_2
.end method

.method static synthetic a(Landroid/support/v7/widget/ao;)Z
    .locals 1

    .prologue
    .line 5546
    iget-boolean v0, p0, Landroid/support/v7/widget/ao;->a:Z

    return v0
.end method

.method static synthetic a(Landroid/support/v7/widget/ao;Z)Z
    .locals 1

    .prologue
    .line 5546
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/ao;->a:Z

    return v0
.end method

.method public static b(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 6151
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ap;

    .line 11480
    iget-object v0, v0, Landroid/support/v7/widget/ap;->a:Landroid/support/v7/widget/ay;

    invoke-virtual {v0}, Landroid/support/v7/widget/ay;->c()I

    move-result v0

    .line 6151
    return v0
.end method

.method public static c(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 6754
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ap;

    iget-object v0, v0, Landroid/support/v7/widget/ap;->b:Landroid/graphics/Rect;

    .line 6755
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    return v0
.end method

.method public static d(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 6768
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ap;

    iget-object v0, v0, Landroid/support/v7/widget/ap;->b:Landroid/graphics/Rect;

    .line 6769
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    return v0
.end method

.method public static e(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 6891
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ap;

    iget-object v0, v0, Landroid/support/v7/widget/ap;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public static f(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 6906
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ap;

    iget-object v0, v0, Landroid/support/v7/widget/ap;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method private f(I)V
    .locals 1

    .prologue
    .line 6115
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ao;->b(I)Landroid/view/View;

    move-result-object v0

    .line 6116
    if-eqz v0, :cond_0

    .line 6117
    iget-object v0, p0, Landroid/support/v7/widget/ao;->b:Landroid/support/v7/widget/q;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/q;->a(I)V

    .line 6119
    :cond_0
    return-void
.end method

.method public static g(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 6921
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ap;

    iget-object v0, v0, Landroid/support/v7/widget/ap;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method private g(I)V
    .locals 1

    .prologue
    .line 6231
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ao;->b(I)Landroid/view/View;

    .line 12238
    iget-object v0, p0, Landroid/support/v7/widget/ao;->b:Landroid/support/v7/widget/q;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/q;->d(I)V

    .line 6232
    return-void
.end method

.method public static h(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 6936
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ap;

    iget-object v0, v0, Landroid/support/v7/widget/ap;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method


# virtual methods
.method public a(ILandroid/support/v7/widget/ar;Landroid/support/v7/widget/aw;)I
    .locals 1

    .prologue
    .line 5870
    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/support/v7/widget/aw;)I
    .locals 1

    .prologue
    .line 7201
    const/4 v0, 0x0

    return v0
.end method

.method public abstract a()Landroid/support/v7/widget/ap;
.end method

.method public a(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/v7/widget/ap;
    .locals 1

    .prologue
    .line 5853
    new-instance v0, Landroid/support/v7/widget/ap;

    invoke-direct {v0, p1, p2}, Landroid/support/v7/widget/ap;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/ap;
    .locals 1

    .prologue
    .line 5829
    instance-of v0, p1, Landroid/support/v7/widget/ap;

    if-eqz v0, :cond_0

    .line 5830
    new-instance v0, Landroid/support/v7/widget/ap;

    check-cast p1, Landroid/support/v7/widget/ap;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/ap;-><init>(Landroid/support/v7/widget/ap;)V

    .line 5834
    :goto_0
    return-object v0

    .line 5831
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    .line 5832
    new-instance v0, Landroid/support/v7/widget/ap;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/ap;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_0

    .line 5834
    :cond_1
    new-instance v0, Landroid/support/v7/widget/ap;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/ap;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public a(I)Landroid/view/View;
    .locals 5

    .prologue
    .line 6178
    invoke-virtual {p0}, Landroid/support/v7/widget/ao;->h()I

    move-result v2

    .line 6179
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_2

    .line 6180
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/ao;->b(I)Landroid/view/View;

    move-result-object v0

    .line 6181
    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/support/v7/widget/ay;

    move-result-object v3

    .line 6182
    if-eqz v3, :cond_1

    .line 6185
    invoke-virtual {v3}, Landroid/support/v7/widget/ay;->c()I

    move-result v4

    if-ne v4, p1, :cond_1

    invoke-virtual {v3}, Landroid/support/v7/widget/ay;->b()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Landroid/support/v7/widget/ao;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/aw;

    invoke-virtual {v4}, Landroid/support/v7/widget/aw;->a()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Landroid/support/v7/widget/ay;->m()Z

    move-result v3

    if-nez v3, :cond_1

    .line 6190
    :cond_0
    :goto_1
    return-object v0

    .line 6179
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 6190
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a(II)V
    .locals 0

    .prologue
    .line 7135
    return-void
.end method

.method public final a(ILandroid/support/v7/widget/ar;)V
    .locals 1

    .prologue
    .line 6358
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ao;->b(I)Landroid/view/View;

    move-result-object v0

    .line 6359
    invoke-direct {p0, p1}, Landroid/support/v7/widget/ao;->f(I)V

    .line 6360
    invoke-virtual {p2, v0}, Landroid/support/v7/widget/ar;->a(Landroid/view/View;)V

    .line 6361
    return-void
.end method

.method public a(Landroid/os/Parcelable;)V
    .locals 0

    .prologue
    .line 7323
    return-void
.end method

.method final a(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5558
    if-nez p1, :cond_0

    .line 5559
    iput-object v0, p0, Landroid/support/v7/widget/ao;->c:Landroid/support/v7/widget/RecyclerView;

    .line 5560
    iput-object v0, p0, Landroid/support/v7/widget/ao;->b:Landroid/support/v7/widget/q;

    .line 5566
    :goto_0
    return-void

    .line 5562
    :cond_0
    iput-object p1, p0, Landroid/support/v7/widget/ao;->c:Landroid/support/v7/widget/RecyclerView;

    .line 5563
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/q;

    iput-object v0, p0, Landroid/support/v7/widget/ao;->b:Landroid/support/v7/widget/q;

    goto :goto_0
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/ar;)V
    .locals 0

    .prologue
    .line 5718
    return-void
.end method

.method public final a(Landroid/support/v7/widget/ar;)V
    .locals 4

    .prologue
    .line 6580
    invoke-virtual {p0}, Landroid/support/v7/widget/ao;->h()I

    move-result v0

    .line 6581
    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 6582
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ao;->b(I)Landroid/view/View;

    move-result-object v1

    .line 14588
    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/support/v7/widget/ay;

    move-result-object v2

    .line 14589
    invoke-virtual {v2}, Landroid/support/v7/widget/ay;->b()Z

    move-result v3

    if-nez v3, :cond_0

    .line 14595
    invoke-virtual {v2}, Landroid/support/v7/widget/ay;->i()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Landroid/support/v7/widget/ay;->m()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Landroid/support/v7/widget/ay;->k()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/ao;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->f(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/ah;

    .line 14597
    invoke-direct {p0, v0}, Landroid/support/v7/widget/ao;->f(I)V

    .line 14598
    invoke-virtual {p1, v2}, Landroid/support/v7/widget/ar;->a(Landroid/support/v7/widget/ay;)V

    .line 6581
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 14600
    :cond_1
    invoke-direct {p0, v0}, Landroid/support/v7/widget/ao;->g(I)V

    .line 14601
    invoke-virtual {p1, v1}, Landroid/support/v7/widget/ar;->c(Landroid/view/View;)V

    goto :goto_1

    .line 6585
    :cond_2
    return-void
.end method

.method public a(Landroid/support/v7/widget/ar;II)V
    .locals 1

    .prologue
    .line 7279
    iget-object v0, p0, Landroid/support/v7/widget/ao;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, p2, p3}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/support/v7/widget/RecyclerView;II)V

    .line 7280
    return-void
.end method

.method public a(Landroid/support/v7/widget/ar;Landroid/support/v7/widget/aw;)V
    .locals 2

    .prologue
    .line 5781
    const-string v0, "RecyclerView"

    const-string v1, "You must override onLayoutChildren(Recycler recycler, State state) "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5782
    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 6025
    const/4 v0, -0x1

    .line 9037
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v7/widget/ao;->a(Landroid/view/View;IZ)V

    .line 6026
    return-void
.end method

.method public final a(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 6014
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/ao;->a(Landroid/view/View;IZ)V

    .line 6015
    return-void
.end method

.method final a(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 2

    .prologue
    .line 7452
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/support/v7/widget/ay;

    move-result-object v0

    .line 7454
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/ay;->m()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/ao;->b:Landroid/support/v7/widget/q;

    iget-object v0, v0, Landroid/support/v7/widget/ay;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/q;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7455
    iget-object v0, p0, Landroid/support/v7/widget/ao;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/ar;

    iget-object v0, p0, Landroid/support/v7/widget/ao;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/aw;

    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/ao;->b(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 7458
    :cond_0
    return-void
.end method

.method public final a(Landroid/view/View;Landroid/support/v7/widget/ar;)V
    .locals 3

    .prologue
    .line 6347
    .line 13103
    iget-object v0, p0, Landroid/support/v7/widget/ao;->b:Landroid/support/v7/widget/q;

    .line 13116
    iget-object v1, v0, Landroid/support/v7/widget/q;->a:Landroid/support/v7/widget/s;

    invoke-interface {v1, p1}, Landroid/support/v7/widget/s;->a(Landroid/view/View;)I

    move-result v1

    .line 13117
    if-ltz v1, :cond_1

    .line 13120
    iget-object v2, v0, Landroid/support/v7/widget/q;->b:Landroid/support/v7/widget/r;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/r;->c(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 13121
    iget-object v2, v0, Landroid/support/v7/widget/q;->c:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 13123
    :cond_0
    iget-object v0, v0, Landroid/support/v7/widget/q;->a:Landroid/support/v7/widget/s;

    invoke-interface {v0, v1}, Landroid/support/v7/widget/s;->a(I)V

    .line 6348
    :cond_1
    invoke-virtual {p2, p1}, Landroid/support/v7/widget/ar;->a(Landroid/view/View;)V

    .line 6349
    return-void
.end method

.method public a(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v0, 0x1

    .line 7419
    iget-object v1, p0, Landroid/support/v7/widget/ao;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/ar;

    iget-object v1, p0, Landroid/support/v7/widget/ao;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/aw;

    .line 16435
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat;->asRecord(Landroid/view/accessibility/AccessibilityEvent;)Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;

    move-result-object v1

    .line 16437
    iget-object v2, p0, Landroid/support/v7/widget/ao;->c:Landroid/support/v7/widget/RecyclerView;

    if-eqz v2, :cond_0

    if-nez v1, :cond_1

    .line 16438
    :cond_0
    :goto_0
    return-void

    .line 16440
    :cond_1
    iget-object v2, p0, Landroid/support/v7/widget/ao;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v2, v0}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Landroid/support/v7/widget/ao;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v2, v3}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Landroid/support/v7/widget/ao;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v2, v3}, Landroid/support/v4/view/ViewCompat;->canScrollHorizontally(Landroid/view/View;I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Landroid/support/v7/widget/ao;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v2, v0}, Landroid/support/v4/view/ViewCompat;->canScrollHorizontally(Landroid/view/View;I)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    :goto_1
    invoke-virtual {v1, v0}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setScrollable(Z)V

    .line 16445
    iget-object v0, p0, Landroid/support/v7/widget/ao;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->f(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/ah;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 16446
    iget-object v0, p0, Landroid/support/v7/widget/ao;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->f(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/ah;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/ah;->a()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setItemCount(I)V

    goto :goto_0

    .line 16440
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 5598
    iget-object v0, p0, Landroid/support/v7/widget/ao;->c:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 5599
    iget-object v0, p0, Landroid/support/v7/widget/ao;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->a(Ljava/lang/String;)V

    .line 5601
    :cond_0
    return-void
.end method

.method public a(Landroid/support/v7/widget/ap;)Z
    .locals 1

    .prologue
    .line 5812
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(ILandroid/support/v7/widget/ar;Landroid/support/v7/widget/aw;)I
    .locals 1

    .prologue
    .line 5887
    const/4 v0, 0x0

    return v0
.end method

.method public b(Landroid/support/v7/widget/ar;Landroid/support/v7/widget/aw;)I
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 7530
    iget-object v1, p0, Landroid/support/v7/widget/ao;->c:Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/ao;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->f(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/ah;

    move-result-object v1

    if-nez v1, :cond_1

    .line 7533
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/ao;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ao;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->f(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/ah;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/ah;->a()I

    move-result v0

    goto :goto_0
.end method

.method public b(Landroid/support/v7/widget/aw;)I
    .locals 1

    .prologue
    .line 7246
    const/4 v0, 0x0

    return v0
.end method

.method public b()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 7317
    const/4 v0, 0x0

    return-object v0
.end method

.method public final b(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 6379
    iget-object v0, p0, Landroid/support/v7/widget/ao;->b:Landroid/support/v7/widget/q;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ao;->b:Landroid/support/v7/widget/q;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/q;->b(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(II)V
    .locals 0

    .prologue
    .line 7145
    return-void
.end method

.method final b(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    .prologue
    .line 5628
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/ao;->d:Z

    .line 5630
    return-void
.end method

.method final b(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/ar;)V
    .locals 1

    .prologue
    .line 5633
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/ao;->d:Z

    .line 5634
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/ao;->a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/ar;)V

    .line 5635
    return-void
.end method

.method final b(Landroid/support/v7/widget/ar;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 6615
    .line 15689
    iget-object v0, p1, Landroid/support/v7/widget/ar;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 6617
    add-int/lit8 v0, v2, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_3

    .line 15693
    iget-object v0, p1, Landroid/support/v7/widget/ar;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ay;

    iget-object v0, v0, Landroid/support/v7/widget/ay;->a:Landroid/view/View;

    .line 6619
    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/support/v7/widget/ay;

    move-result-object v3

    .line 6620
    invoke-virtual {v3}, Landroid/support/v7/widget/ay;->b()Z

    move-result v4

    if-nez v4, :cond_2

    .line 6628
    invoke-virtual {v3, v5}, Landroid/support/v7/widget/ay;->a(Z)V

    .line 6629
    invoke-virtual {v3}, Landroid/support/v7/widget/ay;->n()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6630
    iget-object v4, p0, Landroid/support/v7/widget/ao;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4, v0, v5}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 6632
    :cond_0
    iget-object v4, p0, Landroid/support/v7/widget/ao;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/ak;

    if-eqz v4, :cond_1

    .line 6633
    iget-object v4, p0, Landroid/support/v7/widget/ao;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/ak;

    invoke-virtual {v4, v3}, Landroid/support/v7/widget/ak;->c(Landroid/support/v7/widget/ay;)V

    .line 6635
    :cond_1
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/ay;->a(Z)V

    .line 6636
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/ar;->b(Landroid/view/View;)V

    .line 6617
    :cond_2
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 15697
    :cond_3
    iget-object v0, p1, Landroid/support/v7/widget/ar;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6639
    if-lez v2, :cond_4

    .line 6640
    iget-object v0, p0, Landroid/support/v7/widget/ao;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    .line 6642
    :cond_4
    return-void
.end method

.method public final b(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 6037
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/ao;->a(Landroid/view/View;IZ)V

    .line 6038
    return-void
.end method

.method public b(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 7476
    invoke-virtual {p0}, Landroid/support/v7/widget/ao;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/support/v7/widget/ao;->b(Landroid/view/View;)I

    move-result v0

    .line 7477
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/ao;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1}, Landroid/support/v7/widget/ao;->b(Landroid/view/View;)I

    move-result v2

    :goto_1
    move v3, v1

    move v5, v4

    .line 7478
    invoke-static/range {v0 .. v5}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object v0

    .line 7481
    invoke-virtual {p2, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    .line 7482
    return-void

    :cond_0
    move v0, v4

    .line 7476
    goto :goto_0

    :cond_1
    move v2, v4

    .line 7477
    goto :goto_1
.end method

.method public c(Landroid/support/v7/widget/ar;Landroid/support/v7/widget/aw;)I
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 7549
    iget-object v1, p0, Landroid/support/v7/widget/ao;->c:Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/ao;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->f(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/ah;

    move-result-object v1

    if-nez v1, :cond_1

    .line 7552
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/ao;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ao;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->f(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/ah;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/ah;->a()I

    move-result v0

    goto :goto_0
.end method

.method public c(Landroid/support/v7/widget/aw;)I
    .locals 1

    .prologue
    .line 7186
    const/4 v0, 0x0

    return v0
.end method

.method public c(ILandroid/support/v7/widget/ar;Landroid/support/v7/widget/aw;)Landroid/view/View;
    .locals 1

    .prologue
    .line 6959
    const/4 v0, 0x0

    return-object v0
.end method

.method public c(I)V
    .locals 4

    .prologue
    .line 6512
    iget-object v0, p0, Landroid/support/v7/widget/ao;->c:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 6513
    iget-object v1, p0, Landroid/support/v7/widget/ao;->c:Landroid/support/v7/widget/RecyclerView;

    .line 13606
    iget-object v0, v1, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/q;

    invoke-virtual {v0}, Landroid/support/v7/widget/q;->a()I

    move-result v2

    .line 13607
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 13608
    iget-object v3, v1, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/q;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/q;->b(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 13607
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6515
    :cond_0
    return-void
.end method

.method public c(II)V
    .locals 0

    .prologue
    .line 7155
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 5897
    const/4 v0, 0x0

    return v0
.end method

.method public d(Landroid/support/v7/widget/aw;)I
    .locals 1

    .prologue
    .line 7231
    const/4 v0, 0x0

    return v0
.end method

.method public d(I)V
    .locals 4

    .prologue
    .line 6524
    iget-object v0, p0, Landroid/support/v7/widget/ao;->c:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 6525
    iget-object v1, p0, Landroid/support/v7/widget/ao;->c:Landroid/support/v7/widget/RecyclerView;

    .line 14568
    iget-object v0, v1, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/q;

    invoke-virtual {v0}, Landroid/support/v7/widget/q;->a()I

    move-result v2

    .line 14569
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 14570
    iget-object v3, v1, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/q;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/q;->b(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 14569
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6527
    :cond_0
    return-void
.end method

.method public d(II)V
    .locals 0

    .prologue
    .line 7171
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 5907
    const/4 v0, 0x0

    return v0
.end method

.method public e(Landroid/support/v7/widget/aw;)I
    .locals 1

    .prologue
    .line 7216
    const/4 v0, 0x0

    return v0
.end method

.method public e(I)V
    .locals 0

    .prologue
    .line 7343
    return-void
.end method

.method public final e(II)V
    .locals 1

    .prologue
    .line 7290
    iget-object v0, p0, Landroid/support/v7/widget/ao;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/support/v7/widget/RecyclerView;II)V

    .line 7291
    return-void
.end method

.method public f(Landroid/support/v7/widget/aw;)I
    .locals 1

    .prologue
    .line 7261
    const/4 v0, 0x0

    return v0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 5624
    const/4 v0, 0x0

    return v0
.end method

.method public final g()V
    .locals 1

    .prologue
    .line 5572
    iget-object v0, p0, Landroid/support/v7/widget/ao;->c:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 5573
    iget-object v0, p0, Landroid/support/v7/widget/ao;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 5575
    :cond_0
    return-void
.end method

.method public final h()I
    .locals 1

    .prologue
    .line 6370
    iget-object v0, p0, Landroid/support/v7/widget/ao;->b:Landroid/support/v7/widget/q;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ao;->b:Landroid/support/v7/widget/q;

    invoke-virtual {v0}, Landroid/support/v7/widget/q;->a()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final i()I
    .locals 1

    .prologue
    .line 6388
    iget-object v0, p0, Landroid/support/v7/widget/ao;->c:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ao;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final j()I
    .locals 1

    .prologue
    .line 6397
    iget-object v0, p0, Landroid/support/v7/widget/ao;->c:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ao;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final k()I
    .locals 1

    .prologue
    .line 6406
    iget-object v0, p0, Landroid/support/v7/widget/ao;->c:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ao;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final l()I
    .locals 1

    .prologue
    .line 6415
    iget-object v0, p0, Landroid/support/v7/widget/ao;->c:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ao;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final m()I
    .locals 1

    .prologue
    .line 6424
    iget-object v0, p0, Landroid/support/v7/widget/ao;->c:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ao;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final n()I
    .locals 1

    .prologue
    .line 6433
    iget-object v0, p0, Landroid/support/v7/widget/ao;->c:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ao;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final o()I
    .locals 1

    .prologue
    .line 6501
    iget-object v0, p0, Landroid/support/v7/widget/ao;->c:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ao;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->a()Landroid/support/v7/widget/ah;

    move-result-object v0

    .line 6502
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/support/v7/widget/ah;->a()I

    move-result v0

    :goto_1
    return v0

    .line 6501
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 6502
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public p()V
    .locals 0

    .prologue
    .line 7123
    return-void
.end method
