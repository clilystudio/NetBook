.class final Landroid/support/v7/widget/O;
.super Landroid/support/v7/internal/widget/ListViewCompat;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Landroid/support/v4/widget/ListViewAutoScrollHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2

    .prologue
    .line 1550
    const/4 v0, 0x0

    sget v1, Landroid/support/v7/appcompat/R$attr;->dropDownListViewStyle:I

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v7/internal/widget/ListViewCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1551
    iput-boolean p2, p0, Landroid/support/v7/widget/O;->b:Z

    .line 1552
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/O;->setCacheColorHint(I)V

    .line 1553
    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/O;Z)Z
    .locals 0

    .prologue
    .line 1498
    iput-boolean p1, p0, Landroid/support/v7/widget/O;->a:Z

    return p1
.end method


# virtual methods
.method protected final a()Z
    .locals 1

    .prologue
    .line 1662
    iget-boolean v0, p0, Landroid/support/v7/widget/O;->c:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/support/v7/internal/widget/ListViewCompat;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Landroid/view/MotionEvent;I)Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1562
    .line 1565
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v3

    .line 1566
    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    move v0, v1

    move v3, v2

    .line 1599
    :goto_1
    if-eqz v3, :cond_1

    if-eqz v0, :cond_2

    .line 3627
    :cond_1
    iput-boolean v1, p0, Landroid/support/v7/widget/O;->c:Z

    .line 3628
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/O;->setPressed(Z)V

    .line 3630
    invoke-virtual {p0}, Landroid/support/v7/widget/O;->drawableStateChanged()V

    .line 1604
    :cond_2
    if-eqz v3, :cond_7

    .line 1605
    iget-object v0, p0, Landroid/support/v7/widget/O;->d:Landroid/support/v4/widget/ListViewAutoScrollHelper;

    if-nez v0, :cond_3

    .line 1606
    new-instance v0, Landroid/support/v4/widget/ListViewAutoScrollHelper;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/ListViewAutoScrollHelper;-><init>(Landroid/widget/ListView;)V

    iput-object v0, p0, Landroid/support/v7/widget/O;->d:Landroid/support/v4/widget/ListViewAutoScrollHelper;

    .line 1608
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/O;->d:Landroid/support/v4/widget/ListViewAutoScrollHelper;

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/ListViewAutoScrollHelper;->setEnabled(Z)Landroid/support/v4/widget/AutoScrollHelper;

    .line 1609
    iget-object v0, p0, Landroid/support/v7/widget/O;->d:Landroid/support/v4/widget/ListViewAutoScrollHelper;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/widget/ListViewAutoScrollHelper;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 1614
    :cond_4
    :goto_2
    return v3

    :pswitch_0
    move v0, v1

    move v3, v1

    .line 1569
    goto :goto_1

    :pswitch_1
    move v0, v1

    .line 1574
    :goto_3
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    .line 1575
    if-gez v4, :cond_5

    move v0, v1

    move v3, v1

    .line 1577
    goto :goto_1

    .line 1580
    :cond_5
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    float-to-int v5, v5

    .line 1581
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    float-to-int v4, v4

    .line 1582
    invoke-virtual {p0, v5, v4}, Landroid/support/v7/widget/O;->pointToPosition(II)I

    move-result v6

    .line 1583
    const/4 v7, -0x1

    if-ne v6, v7, :cond_6

    move v3, v0

    move v0, v2

    .line 1585
    goto :goto_1

    .line 1588
    :cond_6
    invoke-virtual {p0}, Landroid/support/v7/widget/O;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, v6, v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/O;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1589
    int-to-float v5, v5

    int-to-float v4, v4

    .line 2639
    iput-boolean v2, p0, Landroid/support/v7/widget/O;->c:Z

    .line 2643
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/O;->setPressed(Z)V

    .line 2644
    invoke-virtual {p0}, Landroid/support/v7/widget/O;->layoutChildren()V

    .line 2647
    invoke-virtual {p0, v6}, Landroid/support/v7/widget/O;->setSelection(I)V

    .line 2648
    invoke-virtual {p0, v6, v0, v5, v4}, Landroid/support/v7/widget/O;->a(ILandroid/view/View;FF)V

    .line 2653
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/O;->a(Z)V

    .line 2657
    invoke-virtual {p0}, Landroid/support/v7/widget/O;->refreshDrawableState()V

    .line 1592
    if-ne v3, v2, :cond_0

    .line 3622
    invoke-virtual {p0, v6}, Landroid/support/v7/widget/O;->getItemIdAtPosition(I)J

    move-result-wide v4

    .line 3623
    invoke-virtual {p0, v0, v6, v4, v5}, Landroid/support/v7/widget/O;->performItemClick(Landroid/view/View;IJ)Z

    goto :goto_0

    .line 1610
    :cond_7
    iget-object v0, p0, Landroid/support/v7/widget/O;->d:Landroid/support/v4/widget/ListViewAutoScrollHelper;

    if-eqz v0, :cond_4

    .line 1611
    iget-object v0, p0, Landroid/support/v7/widget/O;->d:Landroid/support/v4/widget/ListViewAutoScrollHelper;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/ListViewAutoScrollHelper;->setEnabled(Z)Landroid/support/v4/widget/AutoScrollHelper;

    goto :goto_2

    :pswitch_2
    move v0, v2

    goto :goto_3

    .line 1566
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public final hasFocus()Z
    .locals 1

    .prologue
    .line 1698
    iget-boolean v0, p0, Landroid/support/v7/widget/O;->b:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/support/v7/internal/widget/ListViewCompat;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasWindowFocus()Z
    .locals 1

    .prologue
    .line 1678
    iget-boolean v0, p0, Landroid/support/v7/widget/O;->b:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/support/v7/internal/widget/ListViewCompat;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isFocused()Z
    .locals 1

    .prologue
    .line 1688
    iget-boolean v0, p0, Landroid/support/v7/widget/O;->b:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/support/v7/internal/widget/ListViewCompat;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isInTouchMode()Z
    .locals 1

    .prologue
    .line 1668
    iget-boolean v0, p0, Landroid/support/v7/widget/O;->b:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/O;->a:Z

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Landroid/support/v7/internal/widget/ListViewCompat;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
