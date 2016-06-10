.class public Lcom/ushaqi/zhuishushenqi/ui/home/HomeTransparentActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const v3, 0x7f0c010e

    .line 18
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    const v0, 0x7f030042

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeTransparentActivity;->setContentView(I)V

    .line 20
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeTransparentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "onThemeChange"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    invoke-virtual {p0, v3}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeTransparentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f02008c

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 26
    :goto_0
    return-void

    .line 24
    :cond_0
    invoke-virtual {p0, v3}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeTransparentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0200af

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 50
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 51
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 30
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 31
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/home/Q;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/home/Q;-><init>(Lcom/ushaqi/zhuishushenqi/ui/home/HomeTransparentActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 39
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/home/R;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/home/R;-><init>(Lcom/ushaqi/zhuishushenqi/ui/home/HomeTransparentActivity;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 46
    return-void
.end method
