.class final Landroid/support/v7/widget/aU;
.super Landroid/view/animation/Animation;
.source "SourceFile"


# instance fields
.field private synthetic a:F

.field private synthetic b:F

.field private synthetic c:Landroid/support/v7/widget/SwitchCompat;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/SwitchCompat;FF)V
    .locals 0

    .prologue
    .line 755
    iput-object p1, p0, Landroid/support/v7/widget/aU;->c:Landroid/support/v7/widget/SwitchCompat;

    iput p2, p0, Landroid/support/v7/widget/aU;->a:F

    iput p3, p0, Landroid/support/v7/widget/aU;->b:F

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method protected final applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 3

    .prologue
    .line 758
    iget-object v0, p0, Landroid/support/v7/widget/aU;->c:Landroid/support/v7/widget/SwitchCompat;

    iget v1, p0, Landroid/support/v7/widget/aU;->a:F

    iget v2, p0, Landroid/support/v7/widget/aU;->b:F

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Landroid/support/v7/widget/SwitchCompat;->a(Landroid/support/v7/widget/SwitchCompat;F)V

    .line 759
    return-void
.end method
