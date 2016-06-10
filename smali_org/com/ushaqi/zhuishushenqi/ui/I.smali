.class final Lcom/ushaqi/zhuishushenqi/ui/I;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nostra13/universalimageloader/core/d/a;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/AutoScaleImageView;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/AutoScaleImageView;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/I;->a:Lcom/ushaqi/zhuishushenqi/ui/AutoScaleImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 40
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/I;->a:Lcom/ushaqi/zhuishushenqi/ui/AutoScaleImageView;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/AutoScaleImageView;->a(Lcom/ushaqi/zhuishushenqi/ui/AutoScaleImageView;)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    .line 41
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/I;->a:Lcom/ushaqi/zhuishushenqi/ui/AutoScaleImageView;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/ui/AutoScaleImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 42
    if-eqz v1, :cond_0

    .line 43
    float-to-int v0, v0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 44
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/I;->a:Lcom/ushaqi/zhuishushenqi/ui/AutoScaleImageView;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/AutoScaleImageView;->a(Lcom/ushaqi/zhuishushenqi/ui/AutoScaleImageView;)I

    move-result v0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 45
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/I;->a:Lcom/ushaqi/zhuishushenqi/ui/AutoScaleImageView;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/AutoScaleImageView;->requestLayout()V

    .line 47
    :cond_0
    return-void
.end method
