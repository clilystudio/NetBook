.class final Luk/co/senab/photoview/a/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# instance fields
.field private synthetic a:Luk/co/senab/photoview/a/c;


# direct methods
.method constructor <init>(Luk/co/senab/photoview/a/c;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Luk/co/senab/photoview/a/d;->a:Luk/co/senab/photoview/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 4

    .prologue
    .line 34
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    .line 36
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 37
    :cond_0
    const/4 v0, 0x0

    .line 41
    :goto_0
    return v0

    .line 39
    :cond_1
    iget-object v1, p0, Luk/co/senab/photoview/a/d;->a:Luk/co/senab/photoview/a/c;

    iget-object v1, v1, Luk/co/senab/photoview/a/c;->a:Luk/co/senab/photoview/a/f;

    .line 40
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v3

    .line 39
    invoke-interface {v1, v0, v2, v3}, Luk/co/senab/photoview/a/f;->a(FFF)V

    .line 41
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x1

    return v0
.end method

.method public final onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 0

    .prologue
    .line 52
    return-void
.end method
