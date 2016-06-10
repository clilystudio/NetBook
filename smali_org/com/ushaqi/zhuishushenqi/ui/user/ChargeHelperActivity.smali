.class public Lcom/ushaqi/zhuishushenqi/ui/user/ChargeHelperActivity;
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
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    const v0, 0x7f030033

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/user/ChargeHelperActivity;->setContentView(I)V

    .line 19
    const v0, 0x7f0500fa

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/user/ChargeHelperActivity;->b(I)V

    .line 20
    return-void
.end method
