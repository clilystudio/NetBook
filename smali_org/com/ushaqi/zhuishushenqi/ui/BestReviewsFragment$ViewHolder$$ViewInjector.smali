.class public Lcom/ushaqi/zhuishushenqi/ui/BestReviewsFragment$ViewHolder$$ViewInjector;
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

.method public static inject(Lbutterknife/ButterKnife$Finder;Lcom/ushaqi/zhuishushenqi/ui/BestReviewsFragment$ViewHolder;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 10
    const v0, 0x7f0c0023

    const-string v1, "field \'avatar\'"

    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 11
    check-cast v0, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;

    iput-object v0, p1, Lcom/ushaqi/zhuishushenqi/ui/BestReviewsFragment$ViewHolder;->avatar:Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;

    .line 12
    const v0, 0x7f0c02fe

    const-string v1, "field \'user\'"

    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 13
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ushaqi/zhuishushenqi/ui/BestReviewsFragment$ViewHolder;->user:Landroid/widget/TextView;

    .line 14
    const v0, 0x7f0c02ff

    const-string v1, "field \'lv\'"

    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 15
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ushaqi/zhuishushenqi/ui/BestReviewsFragment$ViewHolder;->lv:Landroid/widget/TextView;

    .line 16
    const v0, 0x7f0c0047

    const-string v1, "field \'time\'"

    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 17
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ushaqi/zhuishushenqi/ui/BestReviewsFragment$ViewHolder;->time:Landroid/widget/TextView;

    .line 18
    const v0, 0x7f0c0048

    const-string v1, "field \'title\'"

    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 19
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ushaqi/zhuishushenqi/ui/BestReviewsFragment$ViewHolder;->title:Landroid/widget/TextView;

    .line 20
    const v0, 0x7f0c0029

    const-string v1, "field \'content\'"

    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 21
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ushaqi/zhuishushenqi/ui/BestReviewsFragment$ViewHolder;->content:Landroid/widget/TextView;

    .line 22
    const v0, 0x7f0c0302

    const-string v1, "field \'helpfulCount\'"

    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 23
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ushaqi/zhuishushenqi/ui/BestReviewsFragment$ViewHolder;->helpfulCount:Landroid/widget/TextView;

    .line 24
    const v0, 0x7f0c02fd

    const-string v1, "field \'avatarVerify\'"

    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 25
    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/ushaqi/zhuishushenqi/ui/BestReviewsFragment$ViewHolder;->avatarVerify:Landroid/widget/ImageView;

    .line 26
    const v0, 0x7f0c0301

    const-string v1, "field \'rating\'"

    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 27
    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/RatingView;

    iput-object v0, p1, Lcom/ushaqi/zhuishushenqi/ui/BestReviewsFragment$ViewHolder;->rating:Lcom/ushaqi/zhuishushenqi/widget/RatingView;

    .line 28
    const v0, 0x7f0c02fc

    const-string v1, "field \'container\'"

    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 29
    iput-object v0, p1, Lcom/ushaqi/zhuishushenqi/ui/BestReviewsFragment$ViewHolder;->container:Landroid/view/View;

    .line 30
    return-void
.end method

.method public static reset(Lcom/ushaqi/zhuishushenqi/ui/BestReviewsFragment$ViewHolder;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BestReviewsFragment$ViewHolder;->avatar:Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;

    .line 34
    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BestReviewsFragment$ViewHolder;->user:Landroid/widget/TextView;

    .line 35
    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BestReviewsFragment$ViewHolder;->lv:Landroid/widget/TextView;

    .line 36
    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BestReviewsFragment$ViewHolder;->time:Landroid/widget/TextView;

    .line 37
    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BestReviewsFragment$ViewHolder;->title:Landroid/widget/TextView;

    .line 38
    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BestReviewsFragment$ViewHolder;->content:Landroid/widget/TextView;

    .line 39
    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BestReviewsFragment$ViewHolder;->helpfulCount:Landroid/widget/TextView;

    .line 40
    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BestReviewsFragment$ViewHolder;->avatarVerify:Landroid/widget/ImageView;

    .line 41
    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BestReviewsFragment$ViewHolder;->rating:Lcom/ushaqi/zhuishushenqi/widget/RatingView;

    .line 42
    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BestReviewsFragment$ViewHolder;->container:Landroid/view/View;

    .line 43
    return-void
.end method
