.class public Lcom/ushaqi/zhuishushenqi/ui/user/MyMessageActivity;
.super Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 19
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    const v0, 0x7f03004b

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/user/MyMessageActivity;->setContentView(I)V

    .line 21
    const-string v0, "\u6211\u7684\u6d88\u606f"

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/user/MyMessageActivity;->b(Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 26
    invoke-super {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->onPause()V

    .line 28
    invoke-static {p0}, Landroid/support/design/widget/am;->j(Landroid/content/Context;)V

    .line 29
    return-void
.end method
