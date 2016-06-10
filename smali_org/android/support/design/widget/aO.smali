.class final Landroid/support/design/widget/aO;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/view/View;

.field private b:I

.field private c:I

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Landroid/support/design/widget/aO;->a:Landroid/view/View;

    .line 42
    return-void
.end method

.method private c()V
    .locals 4

    .prologue
    .line 54
    iget-object v0, p0, Landroid/support/design/widget/aO;->a:Landroid/view/View;

    iget v1, p0, Landroid/support/design/widget/aO;->d:I

    iget-object v2, p0, Landroid/support/design/widget/aO;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget v3, p0, Landroid/support/design/widget/aO;->b:I

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 55
    iget-object v0, p0, Landroid/support/design/widget/aO;->a:Landroid/view/View;

    iget v1, p0, Landroid/support/design/widget/aO;->e:I

    iget-object v2, p0, Landroid/support/design/widget/aO;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    iget v3, p0, Landroid/support/design/widget/aO;->c:I

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->offsetLeftAndRight(Landroid/view/View;I)V

    .line 58
    iget-object v0, p0, Landroid/support/design/widget/aO;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 59
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 60
    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 62
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Landroid/support/design/widget/aO;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/aO;->b:I

    .line 47
    iget-object v0, p0, Landroid/support/design/widget/aO;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/aO;->c:I

    .line 50
    invoke-direct {p0}, Landroid/support/design/widget/aO;->c()V

    .line 51
    return-void
.end method

.method public final a(I)Z
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Landroid/support/design/widget/aO;->d:I

    if-eq v0, p1, :cond_0

    .line 72
    iput p1, p0, Landroid/support/design/widget/aO;->d:I

    .line 73
    invoke-direct {p0}, Landroid/support/design/widget/aO;->c()V

    .line 74
    const/4 v0, 0x1

    .line 76
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Landroid/support/design/widget/aO;->d:I

    return v0
.end method
