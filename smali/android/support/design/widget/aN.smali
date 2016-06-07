.class Landroid/support/design/widget/aN;
.super Lcom/xiaomi/mistatistic/sdk/a/r;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Lcom/xiaomi/mistatistic/sdk/a/r",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private a:Landroid/support/design/widget/aO;

.field private b:I


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Landroid/support/design/widget/aN;->a:Landroid/support/design/widget/aO;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/aN;->a:Landroid/support/design/widget/aO;

    invoke-virtual {v0}, Landroid/support/design/widget/aO;->b()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(I)Z
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Landroid/support/design/widget/aN;->a:Landroid/support/design/widget/aO;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Landroid/support/design/widget/aN;->a:Landroid/support/design/widget/aO;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/aO;->a(I)Z

    move-result v0

    .line 67
    :goto_0
    return v0

    .line 65
    :cond_0
    iput p1, p0, Landroid/support/design/widget/aN;->b:I

    .line 67
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;I)Z"
        }
    .end annotation

    .prologue
    .line 42
    invoke-virtual {p1, p2, p3}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/view/View;I)V

    .line 44
    iget-object v0, p0, Landroid/support/design/widget/aN;->a:Landroid/support/design/widget/aO;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Landroid/support/design/widget/aO;

    invoke-direct {v0, p2}, Landroid/support/design/widget/aO;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroid/support/design/widget/aN;->a:Landroid/support/design/widget/aO;

    .line 47
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/aN;->a:Landroid/support/design/widget/aO;

    invoke-virtual {v0}, Landroid/support/design/widget/aO;->a()V

    .line 49
    iget v0, p0, Landroid/support/design/widget/aN;->b:I

    if-eqz v0, :cond_1

    .line 50
    iget-object v0, p0, Landroid/support/design/widget/aN;->a:Landroid/support/design/widget/aO;

    iget v1, p0, Landroid/support/design/widget/aN;->b:I

    invoke-virtual {v0, v1}, Landroid/support/design/widget/aO;->a(I)Z

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/design/widget/aN;->b:I

    .line 58
    :cond_1
    const/4 v0, 0x1

    return v0
.end method
