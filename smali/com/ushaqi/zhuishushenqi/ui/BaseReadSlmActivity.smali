.class public Lcom/ushaqi/zhuishushenqi/ui/BaseReadSlmActivity;
.super Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingFragmentActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 19
    invoke-super {p0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 1083
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingFragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03011f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingFragmentActivity;->setBehindContentView(Landroid/view/View;)V

    .line 22
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 32
    invoke-super {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingFragmentActivity;->onPause()V

    .line 33
    invoke-static {p0}, Lcom/umeng/a/b;->a(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 26
    invoke-super {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingFragmentActivity;->onResume()V

    .line 27
    invoke-static {p0}, Lcom/umeng/a/b;->b(Landroid/content/Context;)V

    .line 28
    return-void
.end method
