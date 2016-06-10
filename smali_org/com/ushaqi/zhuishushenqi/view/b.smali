.class final Lcom/ushaqi/zhuishushenqi/view/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/view/CropView;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/view/CropView;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/view/b;->a:Lcom/ushaqi/zhuishushenqi/view/CropView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 3

    .prologue
    .line 56
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/view/b;->a:Lcom/ushaqi/zhuishushenqi/view/CropView;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/view/CropView;->getWidth()I

    move-result v0

    int-to-float v1, v0

    .line 57
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/view/b;->a:Lcom/ushaqi/zhuishushenqi/view/CropView;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/view/CropView;->a(Lcom/ushaqi/zhuishushenqi/view/CropView;)F

    move-result v0

    div-float v0, v1, v0

    .line 59
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/view/b;->a:Lcom/ushaqi/zhuishushenqi/view/CropView;

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/view/CropView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_0

    .line 60
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/view/b;->a:Lcom/ushaqi/zhuishushenqi/view/CropView;

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/view/CropView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v2, v0

    mul-float/2addr v1, v0

    .line 61
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/view/b;->a:Lcom/ushaqi/zhuishushenqi/view/CropView;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/view/CropView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    .line 63
    :cond_0
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 64
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/view/b;->a:Lcom/ushaqi/zhuishushenqi/view/CropView;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/view/CropView;->b(Lcom/ushaqi/zhuishushenqi/view/CropView;)F

    move-result v1

    div-float v0, v1, v0

    .line 65
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/view/b;->a:Lcom/ushaqi/zhuishushenqi/view/CropView;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/view/CropView;->c(Lcom/ushaqi/zhuishushenqi/view/CropView;)Luk/co/senab/photoview/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Luk/co/senab/photoview/d;->d(F)V

    .line 66
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/view/b;->a:Lcom/ushaqi/zhuishushenqi/view/CropView;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/view/CropView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 67
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/view/b;->a:Lcom/ushaqi/zhuishushenqi/view/CropView;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/view/CropView;->c(Lcom/ushaqi/zhuishushenqi/view/CropView;)Luk/co/senab/photoview/d;

    move-result-object v1

    .line 1594
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Luk/co/senab/photoview/d;->a(FZ)V

    .line 69
    const/4 v0, 0x1

    return v0
.end method
