.class final Lcom/ushaqi/zhuishushenqi/ui/user/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/d;->a:Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 129
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 130
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/d;->a:Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity;

    invoke-static {v0, p1}, Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity;Landroid/view/View;)V

    .line 134
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 131
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 132
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    goto :goto_0
.end method
