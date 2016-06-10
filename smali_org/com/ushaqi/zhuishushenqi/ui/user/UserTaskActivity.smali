.class public Lcom/ushaqi/zhuishushenqi/ui/user/UserTaskActivity;
.super Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;
.source "SourceFile"


# instance fields
.field mExpInfo:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c0186
    .end annotation
.end field

.field mExpLaunch:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c0187
    .end annotation
.end field

.field mExpShareBook:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c0189
    .end annotation
.end field

.field mExpShareTopic:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c0188
    .end annotation
.end field

.field mExpVote:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c018b
    .end annotation
.end field

.field mVoteView:Landroid/view/View;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c018a
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;-><init>()V

    .line 103
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/user/UserTaskActivity;Z)V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/user/UserTaskActivity;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 3

    .prologue
    .line 132
    if-eqz p1, :cond_0

    .line 133
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/UserTaskActivity;->mExpVote:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/user/UserTaskActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0098

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 135
    :cond_0
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 94
    invoke-super {p0, p1, p2, p3}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 95
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 96
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/user/aN;

    invoke-direct {v0, p0, v1}, Lcom/ushaqi/zhuishushenqi/ui/user/aN;-><init>(Lcom/ushaqi/zhuishushenqi/ui/user/UserTaskActivity;B)V

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/user/aN;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 98
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const v4, 0x7f0b0098

    .line 49
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    const v0, 0x7f030067

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/user/UserTaskActivity;->setContentView(I)V

    .line 51
    invoke-static {p0}, Lbutterknife/ButterKnife;->inject(Landroid/app/Activity;)V

    .line 52
    const-string v0, "\u4efb\u52a1"

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/user/UserTaskActivity;->b(Ljava/lang/String;)V

    .line 54
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a()Lcom/ushaqi/zhuishushenqi/MyApplication;

    move-result-object v0

    const-string v1, "savedObject_userinfo"

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/MyApplication;->b(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/UserInfo;

    .line 1073
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/UserTaskActivity;->mExpInfo:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/user/UserTaskActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1074
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/UserTaskActivity;->mExpLaunch:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/user/UserTaskActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1075
    if-eqz v0, :cond_2

    .line 1076
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/UserInfo;->getToday_tasks()Lcom/ushaqi/zhuishushenqi/model/UserInfo$UserTodayTask;

    move-result-object v1

    .line 1077
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/UserInfo$UserTodayTask;->isShare()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1078
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/user/UserTaskActivity;->mExpShareTopic:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/user/UserTaskActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1080
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/UserInfo$UserTodayTask;->isShare_book()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1081
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/UserTaskActivity;->mExpShareBook:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/user/UserTaskActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1084
    :cond_1
    const-string v1, "xiaomi"

    invoke-static {p0}, Landroid/support/design/widget/am;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1085
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/UserTaskActivity;->mVoteView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 57
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/UserTaskActivity;->mVoteView:Landroid/view/View;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/user/aM;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/user/aM;-><init>(Lcom/ushaqi/zhuishushenqi/ui/user/UserTaskActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    return-void

    .line 1087
    :cond_3
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/UserInfo;->getThis_week_tasks()Lcom/ushaqi/zhuishushenqi/model/UserInfo$ThisWeekTasks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/UserInfo$ThisWeekTasks;->isRate()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/user/UserTaskActivity;->a(Z)V

    goto :goto_0
.end method
