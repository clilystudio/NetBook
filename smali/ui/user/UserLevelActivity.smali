.class public Lcom/ushaqi/zhuishushenqi/ui/user/UserLevelActivity;
.super Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;
.source "SourceFile"


# instance fields
.field mCurrentLevel:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c0180
    .end annotation
.end field

.field mDoTask:Landroid/widget/Button;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c0185
    .end annotation
.end field

.field mLevelProgress:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c0181
    .end annotation
.end field

.field mLevelRank:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c0182
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const v0, 0x7f030066

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/user/UserLevelActivity;->setContentView(I)V

    .line 40
    invoke-static {p0}, Lbutterknife/ButterKnife;->inject(Landroid/app/Activity;)V

    .line 41
    const-string v0, "\u7ecf\u9a8c\u7b49\u7ea7"

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/user/UserLevelActivity;->b(Ljava/lang/String;)V

    .line 43
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a()Lcom/ushaqi/zhuishushenqi/MyApplication;

    move-result-object v0

    const-string v1, "savedObject_userinfo"

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/MyApplication;->b(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/UserInfo;

    .line 44
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/UserInfo;->getLv()I

    move-result v1

    .line 45
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/UserInfo;->getExp()I

    move-result v2

    .line 46
    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(I)I

    move-result v3

    .line 47
    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/ui/user/UserLevelActivity;->mCurrentLevel:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "\u7ea7"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/UserLevelActivity;->mLevelProgress:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/UserInfo;->getRank()F

    move-result v0

    .line 50
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/UserLevelActivity;->mLevelRank:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u8d85\u8fc7"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "%.2f"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/high16 v6, 0x42c80000

    mul-float/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "%\u7684\u8ffd\u4e66\u7528\u6237"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1056
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/UserLevelActivity;->mDoTask:Landroid/widget/Button;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/user/aL;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/user/aL;-><init>(Lcom/ushaqi/zhuishushenqi/ui/user/UserLevelActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    return-void
.end method
