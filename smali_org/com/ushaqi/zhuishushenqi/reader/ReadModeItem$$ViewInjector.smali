.class public Lcom/ushaqi/zhuishushenqi/reader/ReadModeItem$$ViewInjector;
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

.method public static inject(Lbutterknife/ButterKnife$Finder;Lcom/ushaqi/zhuishushenqi/reader/ReadModeItem;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 10
    const v0, 0x7f0c00a4

    const-string v1, "field \'mIcon\'"

    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/ushaqi/zhuishushenqi/reader/ReadModeItem;->mIcon:Landroid/widget/ImageView;

    .line 12
    const v0, 0x7f0c0040

    const-string v1, "field \'mName\'"

    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 13
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ushaqi/zhuishushenqi/reader/ReadModeItem;->mName:Landroid/widget/TextView;

    .line 14
    const v0, 0x7f0c0347

    const-string v1, "field \'mFlagSelect\'"

    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 15
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ushaqi/zhuishushenqi/reader/ReadModeItem;->mFlagSelect:Landroid/widget/TextView;

    .line 16
    const v0, 0x7f0c0345

    const-string v1, "field \'mFlagWeb\'"

    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 17
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ushaqi/zhuishushenqi/reader/ReadModeItem;->mFlagWeb:Landroid/widget/TextView;

    .line 18
    const v0, 0x7f0c0346

    const-string v1, "field \'mChapter\'"

    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 19
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ushaqi/zhuishushenqi/reader/ReadModeItem;->mChapter:Landroid/widget/TextView;

    .line 20
    return-void
.end method

.method public static reset(Lcom/ushaqi/zhuishushenqi/reader/ReadModeItem;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReadModeItem;->mIcon:Landroid/widget/ImageView;

    .line 24
    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReadModeItem;->mName:Landroid/widget/TextView;

    .line 25
    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReadModeItem;->mFlagSelect:Landroid/widget/TextView;

    .line 26
    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReadModeItem;->mFlagWeb:Landroid/widget/TextView;

    .line 27
    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReadModeItem;->mChapter:Landroid/widget/TextView;

    .line 28
    return-void
.end method
