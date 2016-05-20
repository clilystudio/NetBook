.class public Lcom/ushaqi/zhuishushenqi/widget/GameMicroLayoutItemView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field a:Z

.field mAction:Lcom/ushaqi/zhuishushenqi/widget/GameDownloadButton;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c0349
    .end annotation
.end field

.field mImage:Lcom/ushaqi/zhuishushenqi/widget/GameImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c00a1
    .end annotation
.end field

.field mSubTitle:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c009a
    .end annotation
.end field

.field mTitle:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c0048
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/widget/GameMicroLayoutItemView;->a:Z

    .line 42
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 46
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 47
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/GameMicroLayoutItemView;->setOrientation(I)V

    .line 48
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/GameMicroLayoutItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03017d

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 49
    invoke-static {p0}, Lbutterknife/ButterKnife;->inject(Landroid/view/View;)V

    .line 50
    return-void
.end method

.method public setHasPlayed(Z)V
    .locals 0

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/widget/GameMicroLayoutItemView;->a:Z

    .line 29
    return-void
.end method
