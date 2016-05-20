.class public Lcom/ushaqi/zhuishushenqi/widget/PaySectionItem;
.super Lcom/ushaqi/zhuishushenqi/widget/DividerSection;
.source "SourceFile"


# instance fields
.field mArrow:Landroid/widget/ImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c014f
    .end annotation
.end field

.field mBalance:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c03bf
    .end annotation
.end field

.field mIcon:Landroid/widget/ImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c00a4
    .end annotation
.end field

.field mLabel:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c028b
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/ushaqi/zhuishushenqi/widget/DividerSection;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03012f

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/PaySectionItem;->a()Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 37
    invoke-static {p0}, Lbutterknife/ButterKnife;->inject(Landroid/view/View;)V

    .line 39
    sget-object v0, Lcom/ushaqi/zhuishushenqi/R$styleable;->PaySectionItem:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 40
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 41
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/widget/PaySectionItem;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 43
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/widget/PaySectionItem;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 44
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 45
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/widget/PaySectionItem;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 46
    const v2, 0x7f020210

    if-ne v1, v2, :cond_0

    .line 47
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/widget/PaySectionItem;->mArrow:Landroid/widget/ImageView;

    const-string v2, "\u5145\u503c"

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 48
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 49
    return-void
.end method


# virtual methods
.method public final b()Landroid/view/View;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/PaySectionItem;->mArrow:Landroid/widget/ImageView;

    return-object v0
.end method

.method public setBalance(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/PaySectionItem;->mBalance:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    return-void
.end method

.method public setBalanceDefault()V
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/PaySectionItem;->mBalance:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 53
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/PaySectionItem;->mBalance:Landroid/widget/TextView;

    const-string v1, "--"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    return-void
.end method
