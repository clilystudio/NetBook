.class public final Landroid/support/v7/internal/widget/A;
.super Landroid/widget/PopupWindow;
.source "SourceFile"


# instance fields
.field private final a:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    sget-object v0, Landroid/support/v7/appcompat/R$styleable;->PopupWindow:[I

    invoke-static {p1, p2, v0, p3, v2}, Lcom/handmark/pulltorefresh/library/internal/e;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Lcom/handmark/pulltorefresh/library/internal/e;

    move-result-object v0

    .line 46
    sget v1, Landroid/support/v7/appcompat/R$styleable;->PopupWindow_overlapAnchor:I

    invoke-virtual {v0, v1, v2}, Lcom/handmark/pulltorefresh/library/internal/e;->a(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/v7/internal/widget/A;->a:Z

    .line 48
    sget v1, Landroid/support/v7/appcompat/R$styleable;->PopupWindow_android_popupBackground:I

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/internal/e;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/A;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 49
    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/e;->b()V

    .line 51
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    .line 1088
    :try_start_0
    const-class v0, Landroid/widget/PopupWindow;

    const-string v1, "mAnchor"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 1089
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1091
    const-class v0, Landroid/widget/PopupWindow;

    const-string v2, "mOnScrollChangedListener"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 1093
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1095
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 1100
    new-instance v3, Landroid/support/v7/internal/widget/B;

    invoke-direct {v3, v1, p0, v0}, Landroid/support/v7/internal/widget/B;-><init>(Ljava/lang/reflect/Field;Landroid/widget/PopupWindow;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1117
    :cond_0
    :goto_0
    return-void

    .line 1115
    :catch_0
    move-exception v0

    .line 1116
    const-string v1, "AppCompatPopupWindow"

    const-string v2, "Exception while installing workaround OnScrollChangedListener"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public final showAsDropDown(Landroid/view/View;II)V
    .locals 2

    .prologue
    .line 60
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/internal/widget/A;->a:Z

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    sub-int/2addr p3, v0

    .line 64
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 65
    return-void
.end method

.method public final showAsDropDown(Landroid/view/View;III)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    .line 70
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/internal/widget/A;->a:Z

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    sub-int/2addr p3, v0

    .line 74
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    .line 75
    return-void
.end method

.method public final update(Landroid/view/View;IIII)V
    .locals 6

    .prologue
    .line 79
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/internal/widget/A;->a:Z

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    sub-int/2addr p3, v0

    move v3, p3

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p4

    move v5, p5

    .line 83
    invoke-super/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    .line 84
    return-void

    :cond_0
    move v3, p3

    goto :goto_0
.end method
