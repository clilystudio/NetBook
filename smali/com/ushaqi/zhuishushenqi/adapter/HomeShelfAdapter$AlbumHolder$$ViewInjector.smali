.class public Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter$AlbumHolder$$ViewInjector;
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

.method public static inject(Lbutterknife/ButterKnife$Finder;Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter$AlbumHolder;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 10
    const v0, 0x7f0c0048

    const-string v1, "field \'title\'"

    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter$AlbumHolder;->title:Landroid/widget/TextView;

    .line 12
    const v0, 0x7f0c0269

    const-string v1, "field \'desc\'"

    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 13
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter$AlbumHolder;->desc:Landroid/widget/TextView;

    .line 14
    const v0, 0x7f0c037a

    const-string v1, "field \'flag\'"

    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 15
    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/BookShelfFlagView;

    iput-object v0, p1, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter$AlbumHolder;->flag:Lcom/ushaqi/zhuishushenqi/widget/BookShelfFlagView;

    .line 16
    const v0, 0x7f0c0072

    const-string v1, "field \'top\'"

    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 17
    iput-object v0, p1, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter$AlbumHolder;->top:Landroid/view/View;

    .line 18
    const v0, 0x7f0c02e4

    const-string v1, "field \'cover\'"

    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 19
    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/CoverView;

    iput-object v0, p1, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter$AlbumHolder;->cover:Lcom/ushaqi/zhuishushenqi/widget/CoverView;

    .line 20
    const v0, 0x7f0c002a

    const-string v1, "field \'coverLoadingLayer\'"

    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 21
    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;

    iput-object v0, p1, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter$AlbumHolder;->coverLoadingLayer:Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;

    .line 22
    const v0, 0x7f0c0024

    const-string v1, "field \'check\'"

    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 23
    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p1, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter$AlbumHolder;->check:Landroid/widget/CheckBox;

    .line 24
    return-void
.end method

.method public static reset(Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter$AlbumHolder;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter$AlbumHolder;->title:Landroid/widget/TextView;

    .line 28
    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter$AlbumHolder;->desc:Landroid/widget/TextView;

    .line 29
    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter$AlbumHolder;->flag:Lcom/ushaqi/zhuishushenqi/widget/BookShelfFlagView;

    .line 30
    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter$AlbumHolder;->top:Landroid/view/View;

    .line 31
    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter$AlbumHolder;->cover:Lcom/ushaqi/zhuishushenqi/widget/CoverView;

    .line 32
    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter$AlbumHolder;->coverLoadingLayer:Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;

    .line 33
    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter$AlbumHolder;->check:Landroid/widget/CheckBox;

    .line 34
    return-void
.end method
