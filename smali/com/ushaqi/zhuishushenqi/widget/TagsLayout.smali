.class public Lcom/ushaqi/zhuishushenqi/widget/TagsLayout;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .prologue
    .line 76
    instance-of v0, p1, Landroid/view/ViewGroup$LayoutParams;

    return v0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 71
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 11

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/TagsLayout;->getChildCount()I

    move-result v3

    .line 89
    sub-int v4, p4, p2

    .line 90
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/TagsLayout;->getPaddingLeft()I

    move-result v2

    .line 91
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/TagsLayout;->getPaddingTop()I

    move-result v1

    .line 93
    const/4 v0, 0x0

    move v10, v0

    move v0, v1

    move v1, v2

    move v2, v10

    :goto_0
    if-ge v2, v3, :cond_2

    .line 94
    invoke-virtual {p0, v2}, Lcom/ushaqi/zhuishushenqi/widget/TagsLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 95
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_1

    .line 96
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 97
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 98
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    .line 99
    add-int v9, v1, v6

    if-le v9, v4, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/TagsLayout;->getPaddingLeft()I

    move-result v1

    .line 101
    iget v9, p0, Lcom/ushaqi/zhuishushenqi/widget/TagsLayout;->a:I

    add-int/2addr v0, v9

    .line 103
    :cond_0
    add-int v9, v1, v6

    add-int/2addr v7, v0

    invoke-virtual {v5, v1, v0, v9, v7}, Landroid/view/View;->layout(IIII)V

    .line 104
    iget v5, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    add-int/2addr v5, v6

    add-int/2addr v1, v5

    .line 93
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 107
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 13

    .prologue
    const/high16 v12, -0x80000000

    const/4 v5, 0x0

    .line 31
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 33
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/TagsLayout;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/TagsLayout;->getPaddingBottom()I

    move-result v1

    sub-int v3, v0, v1

    .line 34
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/TagsLayout;->getChildCount()I

    move-result v7

    .line 37
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/TagsLayout;->getPaddingLeft()I

    move-result v1

    .line 38
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/TagsLayout;->getPaddingTop()I

    move-result v0

    move v4, v5

    move v2, v5

    .line 40
    :goto_0
    if-ge v4, v7, :cond_2

    .line 41
    invoke-virtual {p0, v4}, Lcom/ushaqi/zhuishushenqi/widget/TagsLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 42
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-eq v9, v10, :cond_1

    .line 44
    invoke-static {v6, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 45
    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 44
    invoke-virtual {v8, v9, v10}, Landroid/view/View;->measure(II)V

    .line 46
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 47
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    .line 48
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    iget v11, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/2addr v8, v11

    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 49
    add-int v8, v1, v9

    if-le v8, v6, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/TagsLayout;->getPaddingLeft()I

    move-result v1

    .line 51
    add-int/2addr v0, v2

    .line 53
    :cond_0
    iget v8, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    add-int/2addr v8, v9

    add-int/2addr v1, v8

    .line 40
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 56
    :cond_2
    iput v2, p0, Lcom/ushaqi/zhuishushenqi/widget/TagsLayout;->a:I

    .line 58
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    if-nez v1, :cond_3

    .line 59
    add-int/2addr v0, v2

    .line 66
    :goto_1
    invoke-virtual {p0, v6, v0}, Lcom/ushaqi/zhuishushenqi/widget/TagsLayout;->setMeasuredDimension(II)V

    .line 67
    return-void

    .line 60
    :cond_3
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    if-ne v1, v12, :cond_4

    .line 61
    add-int v1, v0, v2

    if-ge v1, v3, :cond_4

    .line 62
    add-int/2addr v0, v2

    goto :goto_1

    :cond_4
    move v0, v3

    goto :goto_1
.end method
