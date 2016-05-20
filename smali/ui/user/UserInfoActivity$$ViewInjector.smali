.class public Lcom/ushaqi/zhuishushenqi/ui/user/UserInfoActivity$$ViewInjector;
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

.method public static inject(Lbutterknife/ButterKnife$Finder;Lcom/ushaqi/zhuishushenqi/ui/user/UserInfoActivity;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 10
    const v0, 0x7f0c011a

    const-string v1, "field \'mPortrait\'"

    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 11
    check-cast v0, Lcom/ushaqi/zhuishushenqi/ui/CircularSmartImageView;

    iput-object v0, p1, Lcom/ushaqi/zhuishushenqi/ui/user/UserInfoActivity;->mPortrait:Lcom/ushaqi/zhuishushenqi/ui/CircularSmartImageView;

    .line 12
    const v0, 0x7f0c0040

    const-string v1, "field \'mName\'"

    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 13
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ushaqi/zhuishushenqi/ui/user/UserInfoActivity;->mName:Landroid/widget/TextView;

    .line 14
    const v0, 0x7f0c0172

    const-string v1, "field \'mExp\'"

    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 15
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ushaqi/zhuishushenqi/ui/user/UserInfoActivity;->mExp:Landroid/widget/TextView;

    .line 16
    const v0, 0x7f0c0171

    const-string v1, "field \'mLevel\'"

    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 17
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ushaqi/zhuishushenqi/ui/user/UserInfoActivity;->mLevel:Landroid/widget/TextView;

    .line 18
    const v0, 0x7f0c0173

    const-string v1, "field \'mExpProgress\'"

    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 19
    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p1, Lcom/ushaqi/zhuishushenqi/ui/user/UserInfoActivity;->mExpProgress:Landroid/widget/ProgressBar;

    .line 20
    const v0, 0x7f0c0177

    const-string v1, "field \'mMessageCount\'"

    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 21
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ushaqi/zhuishushenqi/ui/user/UserInfoActivity;->mMessageCount:Landroid/widget/TextView;

    .line 22
    return-void
.end method

.method public static reset(Lcom/ushaqi/zhuishushenqi/ui/user/UserInfoActivity;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/UserInfoActivity;->mPortrait:Lcom/ushaqi/zhuishushenqi/ui/CircularSmartImageView;

    .line 26
    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/UserInfoActivity;->mName:Landroid/widget/TextView;

    .line 27
    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/UserInfoActivity;->mExp:Landroid/widget/TextView;

    .line 28
    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/UserInfoActivity;->mLevel:Landroid/widget/TextView;

    .line 29
    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/UserInfoActivity;->mExpProgress:Landroid/widget/ProgressBar;

    .line 30
    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/UserInfoActivity;->mMessageCount:Landroid/widget/TextView;

    .line 31
    return-void
.end method
