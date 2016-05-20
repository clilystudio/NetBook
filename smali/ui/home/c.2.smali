.class final Lcom/ushaqi/zhuishushenqi/ui/home/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;)V
    .locals 0

    .prologue
    .line 775
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/c;->a:Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 778
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x52

    if-ne p2, v0, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 779
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/c;->a:Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->d(Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;)V

    .line 780
    const/4 v0, 0x1

    .line 782
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
