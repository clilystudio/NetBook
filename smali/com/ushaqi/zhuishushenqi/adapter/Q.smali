.class final Lcom/ushaqi/zhuishushenqi/adapter/Q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Landroid/view/View;

.field private synthetic b:I

.field private synthetic c:I

.field private synthetic d:I

.field private synthetic e:I


# direct methods
.method constructor <init>(Landroid/view/View;IIII)V
    .locals 0

    .prologue
    .line 806
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/adapter/Q;->a:Landroid/view/View;

    iput p2, p0, Lcom/ushaqi/zhuishushenqi/adapter/Q;->b:I

    iput p3, p0, Lcom/ushaqi/zhuishushenqi/adapter/Q;->c:I

    iput p4, p0, Lcom/ushaqi/zhuishushenqi/adapter/Q;->d:I

    iput p5, p0, Lcom/ushaqi/zhuishushenqi/adapter/Q;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 809
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 810
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/adapter/Q;->a:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 811
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/adapter/Q;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 813
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/ushaqi/zhuishushenqi/adapter/Q;->b:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 814
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/ushaqi/zhuishushenqi/adapter/Q;->c:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 815
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/ushaqi/zhuishushenqi/adapter/Q;->d:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 816
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/ushaqi/zhuishushenqi/adapter/Q;->e:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 818
    new-instance v1, Landroid/view/TouchDelegate;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/adapter/Q;->a:Landroid/view/View;

    invoke-direct {v1, v0, v2}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 820
    const-class v0, Landroid/view/View;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/adapter/Q;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 821
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/Q;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 823
    :cond_0
    return-void
.end method
