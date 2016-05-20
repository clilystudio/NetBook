.class public Lcom/ushaqi/zhuishushenqi/reader/txt/ScanTxtFileActivity$$ViewInjector;
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

.method public static inject(Lbutterknife/ButterKnife$Finder;Lcom/ushaqi/zhuishushenqi/reader/txt/ScanTxtFileActivity;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 10
    const v0, 0x7f0c013c

    const-string v1, "field \'mStatus\'"

    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ushaqi/zhuishushenqi/reader/txt/ScanTxtFileActivity;->mStatus:Landroid/widget/TextView;

    .line 12
    const v0, 0x7f0c003c

    const-string v1, "field \'mList\'"

    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 13
    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p1, Lcom/ushaqi/zhuishushenqi/reader/txt/ScanTxtFileActivity;->mList:Landroid/widget/ListView;

    .line 14
    const v0, 0x7f0c00dd

    const-string v1, "field \'mPbLoading\'"

    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 15
    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p1, Lcom/ushaqi/zhuishushenqi/reader/txt/ScanTxtFileActivity;->mPbLoading:Landroid/widget/ProgressBar;

    .line 16
    const v0, 0x7f0c013d

    const-string v1, "field \'mEmpty\'"

    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 17
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ushaqi/zhuishushenqi/reader/txt/ScanTxtFileActivity;->mEmpty:Landroid/widget/TextView;

    .line 18
    return-void
.end method

.method public static reset(Lcom/ushaqi/zhuishushenqi/reader/txt/ScanTxtFileActivity;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ScanTxtFileActivity;->mStatus:Landroid/widget/TextView;

    .line 22
    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ScanTxtFileActivity;->mList:Landroid/widget/ListView;

    .line 23
    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ScanTxtFileActivity;->mPbLoading:Landroid/widget/ProgressBar;

    .line 24
    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ScanTxtFileActivity;->mEmpty:Landroid/widget/TextView;

    .line 25
    return-void
.end method
