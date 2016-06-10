.class public Lcom/ushaqi/zhuishushenqi/ui/DisclaimerActivity;
.super Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 18
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    const v0, 0x7f030037

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/DisclaimerActivity;->setContentView(I)V

    .line 21
    const v0, 0x7f050101

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/DisclaimerActivity;->b(I)V

    .line 23
    const v0, 0x7f050100

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/DisclaimerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 24
    const v0, 0x7f0c0101

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/DisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 25
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    return-void
.end method
