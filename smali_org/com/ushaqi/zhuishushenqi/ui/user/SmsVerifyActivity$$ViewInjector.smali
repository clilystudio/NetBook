.class public Lcom/ushaqi/zhuishushenqi/ui/user/SmsVerifyActivity$$ViewInjector;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inject(Lbutterknife/ButterKnife$Finder;Lcom/ushaqi/zhuishushenqi/ui/user/SmsVerifyActivity;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 10
    const v0, 0x7f0c0164

    const-string v1, "field \'mCodeText\'"

    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/ushaqi/zhuishushenqi/ui/user/SmsVerifyActivity;->mCodeText:Landroid/widget/EditText;

    .line 12
    const v0, 0x7f0c015f

    const-string v1, "field \'mAppNameText\'"

    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 13
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ushaqi/zhuishushenqi/ui/user/SmsVerifyActivity;->mAppNameText:Landroid/widget/TextView;

    .line 14
    const v0, 0x7f0c0160

    const-string v1, "field \'mGoodsText\'"

    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 15
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ushaqi/zhuishushenqi/ui/user/SmsVerifyActivity;->mGoodsText:Landroid/widget/TextView;

    .line 16
    const v0, 0x7f0c0161

    const-string v1, "field \'mPriceText\'"

    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 17
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ushaqi/zhuishushenqi/ui/user/SmsVerifyActivity;->mPriceText:Landroid/widget/TextView;

    .line 18
    const v0, 0x7f0c0162

    const-string v1, "field \'mPhoneText\'"

    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 19
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ushaqi/zhuishushenqi/ui/user/SmsVerifyActivity;->mPhoneText:Landroid/widget/TextView;

    .line 20
    const v0, 0x7f0c0163

    const-string v1, "field \'mSendCodeBtn\'"

    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 21
    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/ushaqi/zhuishushenqi/ui/user/SmsVerifyActivity;->mSendCodeBtn:Landroid/widget/Button;

    .line 22
    const v0, 0x7f0c0165

    const-string v1, "field \'mCommitBtn\'"

    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 23
    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/ushaqi/zhuishushenqi/ui/user/SmsVerifyActivity;->mCommitBtn:Landroid/widget/Button;

    .line 24
    return-void
.end method

.method public static reset(Lcom/ushaqi/zhuishushenqi/ui/user/SmsVerifyActivity;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/SmsVerifyActivity;->mCodeText:Landroid/widget/EditText;

    .line 28
    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/SmsVerifyActivity;->mAppNameText:Landroid/widget/TextView;

    .line 29
    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/SmsVerifyActivity;->mGoodsText:Landroid/widget/TextView;

    .line 30
    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/SmsVerifyActivity;->mPriceText:Landroid/widget/TextView;

    .line 31
    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/SmsVerifyActivity;->mPhoneText:Landroid/widget/TextView;

    .line 32
    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/SmsVerifyActivity;->mSendCodeBtn:Landroid/widget/Button;

    .line 33
    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/SmsVerifyActivity;->mCommitBtn:Landroid/widget/Button;

    .line 34
    return-void
.end method
