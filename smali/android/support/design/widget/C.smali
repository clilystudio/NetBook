.class abstract Landroid/support/design/widget/C;
.super Landroid/view/animation/Animation;
.source "SourceFile"


# instance fields
.field private a:F

.field private b:F

.field private synthetic c:Landroid/support/design/widget/A;


# direct methods
.method private constructor <init>(Landroid/support/design/widget/A;)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Landroid/support/design/widget/C;->c:Landroid/support/design/widget/A;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/design/widget/A;B)V
    .locals 0

    .prologue
    .line 206
    invoke-direct {p0, p1}, Landroid/support/design/widget/C;-><init>(Landroid/support/design/widget/A;)V

    return-void
.end method


# virtual methods
.method protected abstract a()F
.end method

.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 3

    .prologue
    .line 220
    iget-object v0, p0, Landroid/support/design/widget/C;->c:Landroid/support/design/widget/A;

    iget-object v0, v0, Landroid/support/design/widget/A;->a:Landroid/support/design/widget/M;

    iget v1, p0, Landroid/support/design/widget/C;->a:F

    iget v2, p0, Landroid/support/design/widget/C;->b:F

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    .line 2325
    iget v2, v0, Landroid/support/design/widget/M;->a:F

    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/M;->a(FF)V

    .line 221
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 212
    invoke-super {p0}, Landroid/view/animation/Animation;->reset()V

    .line 214
    iget-object v0, p0, Landroid/support/design/widget/C;->c:Landroid/support/design/widget/A;

    iget-object v0, v0, Landroid/support/design/widget/A;->a:Landroid/support/design/widget/M;

    .line 1333
    iget v0, v0, Landroid/support/design/widget/M;->b:F

    .line 214
    iput v0, p0, Landroid/support/design/widget/C;->a:F

    .line 215
    invoke-virtual {p0}, Landroid/support/design/widget/C;->a()F

    move-result v0

    iget v1, p0, Landroid/support/design/widget/C;->a:F

    sub-float/2addr v0, v1

    iput v0, p0, Landroid/support/design/widget/C;->b:F

    .line 216
    return-void
.end method
