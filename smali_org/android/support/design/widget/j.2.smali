.class final Landroid/support/design/widget/j;
.super Landroid/support/design/widget/i;
.source "SourceFile"


# instance fields
.field private c:Landroid/content/res/ColorStateList;

.field private d:Landroid/graphics/PorterDuff$Mode;

.field private e:Landroid/graphics/PorterDuffColorFilter;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/support/design/widget/i;-><init>()V

    .line 33
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Landroid/support/design/widget/j;->d:Landroid/graphics/PorterDuff$Mode;

    return-void
.end method

.method private a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 2

    .prologue
    .line 78
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 79
    :cond_0
    const/4 v0, 0x0

    .line 83
    :goto_0
    return-object v0

    .line 82
    :cond_1
    invoke-virtual {p0}, Landroid/support/design/widget/j;->getState()[I

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    .line 83
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v0, v1, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Landroid/support/design/widget/j;->e:Landroid/graphics/PorterDuffColorFilter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/j;->a:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    if-nez v0, :cond_1

    .line 40
    iget-object v0, p0, Landroid/support/design/widget/j;->a:Landroid/graphics/Paint;

    iget-object v1, p0, Landroid/support/design/widget/j;->e:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 41
    const/4 v0, 0x1

    .line 46
    :goto_0
    invoke-super {p0, p1}, Landroid/support/design/widget/i;->draw(Landroid/graphics/Canvas;)V

    .line 48
    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Landroid/support/design/widget/j;->a:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 51
    :cond_0
    return-void

    .line 43
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getOutline(Landroid/graphics/Outline;)V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Landroid/support/design/widget/j;->b:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/support/design/widget/j;->copyBounds(Landroid/graphics/Rect;)V

    .line 70
    iget-object v0, p0, Landroid/support/design/widget/j;->b:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Outline;->setOval(Landroid/graphics/Rect;)V

    .line 71
    return-void
.end method

.method public final setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 55
    iput-object p1, p0, Landroid/support/design/widget/j;->c:Landroid/content/res/ColorStateList;

    .line 56
    iget-object v0, p0, Landroid/support/design/widget/j;->d:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, p1, v0}, Landroid/support/design/widget/j;->a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/j;->e:Landroid/graphics/PorterDuffColorFilter;

    .line 57
    invoke-virtual {p0}, Landroid/support/design/widget/j;->invalidateSelf()V

    .line 58
    return-void
.end method

.method public final setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .prologue
    .line 62
    iput-object p1, p0, Landroid/support/design/widget/j;->d:Landroid/graphics/PorterDuff$Mode;

    .line 63
    iget-object v0, p0, Landroid/support/design/widget/j;->c:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v0, p1}, Landroid/support/design/widget/j;->a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/j;->e:Landroid/graphics/PorterDuffColorFilter;

    .line 64
    invoke-virtual {p0}, Landroid/support/design/widget/j;->invalidateSelf()V

    .line 65
    return-void
.end method
