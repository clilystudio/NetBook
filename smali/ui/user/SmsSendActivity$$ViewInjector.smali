.class public Lcom/ushaqi/zhuishushenqi/ui/user/SmsSendActivity$$ViewInjector;
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

.method public static inject(Lbutterknife/ButterKnife$Finder;Lcom/ushaqi/zhuishushenqi/ui/user/SmsSendActivity;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 10
    const v0, 0x7f0c015a

    const-string v1, "field \'mNumberText\'"

    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/ushaqi/zhuishushenqi/ui/user/SmsSendActivity;->mNumberText:Landroid/widget/EditText;

    .line 12
    const v0, 0x7f0c015b

    const-string v1, "field \'mNormalLine\'"

    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 13
    iput-object v0, p1, Lcom/ushaqi/zhuishushenqi/ui/user/SmsSendActivity;->mNormalLine:Landroid/view/View;

    .line 14
    const v0, 0x7f0c015c

    const-string v1, "field \'mErrorLine\'"

    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 15
    iput-object v0, p1, Lcom/ushaqi/zhuishushenqi/ui/user/SmsSendActivity;->mErrorLine:Landroid/view/View;

    .line 16
    const v0, 0x7f0c015d

    const-string v1, "field \'mWrongText\'"

    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 17
    iput-object v0, p1, Lcom/ushaqi/zhuishushenqi/ui/user/SmsSendActivity;->mWrongText:Landroid/view/View;

    .line 18
    const v0, 0x7f0c015e

    const-string v1, "field \'mNextBtn\'"

    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 19
    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/ushaqi/zhuishushenqi/ui/user/SmsSendActivity;->mNextBtn:Landroid/widget/Button;

    .line 20
    return-void
.end method

.method public static reset(Lcom/ushaqi/zhuishushenqi/ui/user/SmsSendActivity;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/SmsSendActivity;->mNumberText:Landroid/widget/EditText;

    .line 24
    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/SmsSendActivity;->mNormalLine:Landroid/view/View;

    .line 25
    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/SmsSendActivity;->mErrorLine:Landroid/view/View;

    .line 26
    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/SmsSendActivity;->mWrongText:Landroid/view/View;

    .line 27
    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/SmsSendActivity;->mNextBtn:Landroid/widget/Button;

    .line 28
    return-void
.end method
