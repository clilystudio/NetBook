.class final Lcom/ushaqi/zhuishushenqi/ui/post/at;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private synthetic a:Landroid/widget/PopupWindow;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;Landroid/widget/PopupWindow;)V
    .locals 0

    .prologue
    .line 290
    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/at;->a:Landroid/widget/PopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/at;->a:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/at;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/at;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 296
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
