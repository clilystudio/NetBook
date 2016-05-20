.class public Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter$AdHolder$$ViewInjector;
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

.method public static inject(Lbutterknife/ButterKnife$Finder;Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter$AdHolder;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 10
    const v0, 0x7f0c0048

    const-string v1, "field \'title\'"

    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter$AdHolder;->title:Landroid/widget/TextView;

    .line 12
    const v0, 0x7f0c0269

    const-string v1, "field \'desc\'"

    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 13
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter$AdHolder;->desc:Landroid/widget/TextView;

    .line 14
    const v0, 0x7f0c037a

    const-string v1, "field \'flag\'"

    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 15
    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/BookShelfFlagView;

    iput-object v0, p1, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter$AdHolder;->flag:Lcom/ushaqi/zhuishushenqi/widget/BookShelfFlagView;

    .line 16
    const v0, 0x7f0c02e4

    const-string v1, "field \'cover\'"

    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 17
    check-cast v0, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;

    iput-object v0, p1, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter$AdHolder;->cover:Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;

    .line 18
    return-void
.end method

.method public static reset(Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter$AdHolder;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter$AdHolder;->title:Landroid/widget/TextView;

    .line 22
    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter$AdHolder;->desc:Landroid/widget/TextView;

    .line 23
    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter$AdHolder;->flag:Lcom/ushaqi/zhuishushenqi/widget/BookShelfFlagView;

    .line 24
    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter$AdHolder;->cover:Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;

    .line 25
    return-void
.end method
