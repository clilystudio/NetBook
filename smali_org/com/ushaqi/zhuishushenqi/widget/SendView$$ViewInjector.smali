.class public Lcom/ushaqi/zhuishushenqi/widget/SendView$$ViewInjector;
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

.method public static inject(Lbutterknife/ButterKnife$Finder;Lcom/ushaqi/zhuishushenqi/widget/SendView;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 10
    const v0, 0x7f0c0474

    const-string v1, "field \'mSendContent\'"

    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/ushaqi/zhuishushenqi/widget/SendView;->mSendContent:Landroid/widget/EditText;

    .line 12
    const v0, 0x7f0c0475

    const-string v1, "field \'mSendView\'"

    invoke-virtual {p0, p2, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 13
    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/ushaqi/zhuishushenqi/widget/SendView;->mSendView:Landroid/widget/ImageView;

    .line 14
    return-void
.end method

.method public static reset(Lcom/ushaqi/zhuishushenqi/widget/SendView;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/SendView;->mSendContent:Landroid/widget/EditText;

    .line 18
    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/SendView;->mSendView:Landroid/widget/ImageView;

    .line 19
    return-void
.end method
