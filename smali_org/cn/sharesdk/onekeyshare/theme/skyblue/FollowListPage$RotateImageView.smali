.class Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$RotateImageView;
.super Landroid/widget/ImageView;
.source "SourceFile"


# instance fields
.field private rotation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 444
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 445
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .prologue
    .line 453
    iget v0, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$RotateImageView;->rotation:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$RotateImageView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$RotateImageView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 454
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 455
    return-void
.end method

.method public setRotation(I)V
    .locals 0

    .prologue
    .line 448
    iput p1, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$RotateImageView;->rotation:I

    .line 449
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$RotateImageView;->invalidate()V

    .line 450
    return-void
.end method
