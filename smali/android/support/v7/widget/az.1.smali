.class final Landroid/support/v7/widget/az;
.super Landroid/support/v4/view/AccessibilityDelegateCompat;
.source "SourceFile"


# instance fields
.field private synthetic a:Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Landroid/support/v7/widget/az;->a:Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;

    invoke-direct {p0}, Landroid/support/v4/view/AccessibilityDelegateCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 1

    .prologue
    .line 82
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 83
    iget-object v0, p0, Landroid/support/v7/widget/az;->a:Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;->a(Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/az;->a:Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->b()Landroid/support/v7/widget/ao;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Landroid/support/v7/widget/az;->a:Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->b()Landroid/support/v7/widget/ao;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/ao;->a(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 87
    :cond_0
    return-void
.end method

.method public final performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 91
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/view/AccessibilityDelegateCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 92
    const/4 v0, 0x1

    .line 98
    :cond_0
    :goto_0
    return v0

    .line 94
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/az;->a:Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;->a(Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/az;->a:Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->b()Landroid/support/v7/widget/ao;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 95
    iget-object v1, p0, Landroid/support/v7/widget/az;->a:Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->b()Landroid/support/v7/widget/ao;

    move-result-object v1

    .line 8618
    iget-object v2, v1, Landroid/support/v7/widget/ao;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/ar;

    iget-object v1, v1, Landroid/support/v7/widget/ao;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/aw;

    goto :goto_0
.end method
