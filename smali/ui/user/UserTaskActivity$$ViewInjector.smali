.class public Lcom/ushaqi/zhuishushenqi/ui/user/UserTaskActivity$$ViewInjector;
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

.method public static inject(Lbutterknife/ButterKnife$Finder;Lcom/ushaqi/zhuishushenqi/ui/user/UserTaskActivity;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 10
    const v0, 0x7f0c0186

    const-string v1, "field \'mExpInfo\'"

    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ushaqi/zhuishushenqi/ui/user/UserTaskActivity;->mExpInfo:Landroid/widget/TextView;

    .line 12
    const v0, 0x7f0c0187

    const-string v1, "field \'mExpLaunch\'"

    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 13
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ushaqi/zhuishushenqi/ui/user/UserTaskActivity;->mExpLaunch:Landroid/widget/TextView;

    .line 14
    const v0, 0x7f0c0188

    const-string v1, "field \'mExpShareTopic\'"

    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 15
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ushaqi/zhuishushenqi/ui/user/UserTaskActivity;->mExpShareTopic:Landroid/widget/TextView;

    .line 16
    const v0, 0x7f0c0189

    const-string v1, "field \'mExpShareBook\'"

    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 17
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ushaqi/zhuishushenqi/ui/user/UserTaskActivity;->mExpShareBook:Landroid/widget/TextView;

    .line 18
    const v0, 0x7f0c018b

    const-string v1, "field \'mExpVote\'"

    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 19
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ushaqi/zhuishushenqi/ui/user/UserTaskActivity;->mExpVote:Landroid/widget/TextView;

    .line 20
    const v0, 0x7f0c018a

    const-string v1, "field \'mVoteView\'"

    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 21
    iput-object v0, p1, Lcom/ushaqi/zhuishushenqi/ui/user/UserTaskActivity;->mVoteView:Landroid/view/View;

    .line 22
    return-void
.end method

.method public static reset(Lcom/ushaqi/zhuishushenqi/ui/user/UserTaskActivity;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/UserTaskActivity;->mExpInfo:Landroid/widget/TextView;

    .line 26
    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/UserTaskActivity;->mExpLaunch:Landroid/widget/TextView;

    .line 27
    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/UserTaskActivity;->mExpShareTopic:Landroid/widget/TextView;

    .line 28
    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/UserTaskActivity;->mExpShareBook:Landroid/widget/TextView;

    .line 29
    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/UserTaskActivity;->mExpVote:Landroid/widget/TextView;

    .line 30
    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/UserTaskActivity;->mVoteView:Landroid/view/View;

    .line 31
    return-void
.end method
