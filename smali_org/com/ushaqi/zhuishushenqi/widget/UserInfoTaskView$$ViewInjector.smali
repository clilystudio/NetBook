.class public Lcom/ushaqi/zhuishushenqi/widget/UserInfoTaskView$$ViewInjector;
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

.method public static inject(Lbutterknife/ButterKnife$Finder;Lcom/ushaqi/zhuishushenqi/widget/UserInfoTaskView;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 10
    const v0, 0x7f0c00a4

    const-string v1, "field \'mIcon\'"

    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/ushaqi/zhuishushenqi/widget/UserInfoTaskView;->mIcon:Landroid/widget/ImageView;

    .line 12
    const v0, 0x7f0c0048

    const-string v1, "field \'mTitle\'"

    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 13
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ushaqi/zhuishushenqi/widget/UserInfoTaskView;->mTitle:Landroid/widget/TextView;

    .line 14
    const v0, 0x7f0c0172

    const-string v1, "field \'mExp\'"

    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 15
    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/ExpView;

    iput-object v0, p1, Lcom/ushaqi/zhuishushenqi/widget/UserInfoTaskView;->mExp:Lcom/ushaqi/zhuishushenqi/widget/ExpView;

    .line 16
    return-void
.end method

.method public static reset(Lcom/ushaqi/zhuishushenqi/widget/UserInfoTaskView;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/UserInfoTaskView;->mIcon:Landroid/widget/ImageView;

    .line 20
    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/UserInfoTaskView;->mTitle:Landroid/widget/TextView;

    .line 21
    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/UserInfoTaskView;->mExp:Lcom/ushaqi/zhuishushenqi/widget/ExpView;

    .line 22
    return-void
.end method
