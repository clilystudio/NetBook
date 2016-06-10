.class final Luk/co/senab/photoview/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field private synthetic a:Luk/co/senab/photoview/PhotoView;


# direct methods
.method constructor <init>(Luk/co/senab/photoview/PhotoView;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Luk/co/senab/photoview/c;->a:Luk/co/senab/photoview/PhotoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Luk/co/senab/photoview/c;->a:Luk/co/senab/photoview/PhotoView;

    invoke-virtual {v0}, Luk/co/senab/photoview/PhotoView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 66
    iget-object v0, p0, Luk/co/senab/photoview/c;->a:Luk/co/senab/photoview/PhotoView;

    invoke-static {v0}, Luk/co/senab/photoview/PhotoView;->a(Luk/co/senab/photoview/PhotoView;)Luk/co/senab/photoview/d;

    move-result-object v0

    iget-object v1, p0, Luk/co/senab/photoview/c;->a:Luk/co/senab/photoview/PhotoView;

    invoke-static {v1}, Luk/co/senab/photoview/PhotoView;->a(Luk/co/senab/photoview/PhotoView;)Luk/co/senab/photoview/d;

    move-result-object v1

    invoke-virtual {v1}, Luk/co/senab/photoview/d;->b()Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iput v1, v0, Luk/co/senab/photoview/d;->c:F

    .line 67
    iget-object v0, p0, Luk/co/senab/photoview/c;->a:Luk/co/senab/photoview/PhotoView;

    invoke-static {v0}, Luk/co/senab/photoview/PhotoView;->a(Luk/co/senab/photoview/PhotoView;)Luk/co/senab/photoview/d;

    move-result-object v0

    iget-object v1, p0, Luk/co/senab/photoview/c;->a:Luk/co/senab/photoview/PhotoView;

    invoke-static {v1}, Luk/co/senab/photoview/PhotoView;->a(Luk/co/senab/photoview/PhotoView;)Luk/co/senab/photoview/d;

    move-result-object v1

    invoke-virtual {v1}, Luk/co/senab/photoview/d;->b()Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iput v1, v0, Luk/co/senab/photoview/d;->d:F

    .line 68
    const/4 v0, 0x1

    return v0
.end method
