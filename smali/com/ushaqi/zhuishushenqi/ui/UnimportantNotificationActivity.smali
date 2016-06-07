.class public Lcom/ushaqi/zhuishushenqi/ui/UnimportantNotificationActivity;
.super Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    const v0, 0x7f030063

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/UnimportantNotificationActivity;->setContentView(I)V

    .line 18
    const-string v0, "\u901a\u77e5"

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/UnimportantNotificationActivity;->b(Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 23
    invoke-super {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->onPause()V

    .line 24
    invoke-static {p0}, Lcom/ushaqi/zhuishushenqi/util/J;->a(Landroid/content/Context;)Lcom/ushaqi/zhuishushenqi/util/J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/util/J;->d()V

    .line 25
    return-void
.end method
