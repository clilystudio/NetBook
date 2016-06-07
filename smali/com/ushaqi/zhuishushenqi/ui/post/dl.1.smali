.class final Lcom/ushaqi/zhuishushenqi/ui/post/dl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private synthetic a:Landroid/widget/PopupWindow;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/ReviewListActivity;Landroid/widget/PopupWindow;)V
    .locals 0

    .prologue
    .line 259
    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dl;->a:Landroid/widget/PopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dl;->a:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dl;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dl;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 265
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
