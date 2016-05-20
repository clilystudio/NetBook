.class final Lcom/ushaqi/zhuishushenqi/reader/cu;
.super Landroid/support/v4/view/AccessibilityDelegateCompat;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;)V
    .locals 0

    .prologue
    .line 2747
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/cu;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;

    invoke-direct {p0}, Landroid/support/v4/view/AccessibilityDelegateCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 2751
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2752
    const-class v0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 2753
    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2757
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 2758
    const-class v1, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 2759
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/cu;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->a(Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;)Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/cu;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->a(Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;)Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    if-le v1, v0, :cond_2

    :goto_0
    invoke-virtual {p2, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setScrollable(Z)V

    .line 2760
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/cu;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->a(Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;)Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/cu;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->b(Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/cu;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->b(Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;)I

    move-result v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/cu;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->a(Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;)Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 2761
    const/16 v0, 0x1000

    invoke-virtual {p2, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 2763
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/cu;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->a(Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;)Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/cu;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->b(Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;)I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/cu;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->b(Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;)I

    move-result v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/cu;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->a(Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;)Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2764
    const/16 v0, 0x2000

    invoke-virtual {p2, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 2766
    :cond_1
    return-void

    .line 2759
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2770
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/view/AccessibilityDelegateCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2789
    :goto_0
    return v0

    .line 2773
    :cond_0
    sparse-switch p2, :sswitch_data_0

    move v0, v1

    .line 2789
    goto :goto_0

    .line 2775
    :sswitch_0
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/cu;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->a(Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;)Landroid/support/v4/view/PagerAdapter;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/cu;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->b(Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;)I

    move-result v2

    if-ltz v2, :cond_1

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/cu;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->b(Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;)I

    move-result v2

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/reader/cu;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;

    invoke-static {v3}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->a(Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;)Landroid/support/v4/view/PagerAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_1

    .line 2776
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/cu;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/cu;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->b(Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->a(I)Z

    goto :goto_0

    :cond_1
    move v0, v1

    .line 2780
    goto :goto_0

    .line 2782
    :sswitch_1
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/cu;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->a(Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;)Landroid/support/v4/view/PagerAdapter;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/cu;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->b(Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;)I

    move-result v2

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/cu;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->b(Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;)I

    move-result v2

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/reader/cu;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;

    invoke-static {v3}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->a(Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;)Landroid/support/v4/view/PagerAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 2783
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/cu;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/cu;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->b(Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->a(I)Z

    goto :goto_0

    :cond_2
    move v0, v1

    .line 2787
    goto :goto_0

    .line 2773
    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
    .end sparse-switch
.end method
