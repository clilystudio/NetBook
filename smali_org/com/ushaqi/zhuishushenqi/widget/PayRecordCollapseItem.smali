.class public Lcom/ushaqi/zhuishushenqi/widget/PayRecordCollapseItem;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field mItemContainer:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c02ca
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method


# virtual methods
.method public final a([Ljava/lang/String;I)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 37
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/PayRecordCollapseItem;->mItemContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 38
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/PayRecordCollapseItem;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 39
    array-length v4, p1

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v5, p1, v1

    .line 1045
    const v0, 0x7f030134

    iget-object v6, p0, Lcom/ushaqi/zhuishushenqi/widget/PayRecordCollapseItem;->mItemContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0, v6, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1046
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1047
    iget-object v5, p0, Lcom/ushaqi/zhuishushenqi/widget/PayRecordCollapseItem;->mItemContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 39
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 42
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 31
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 32
    invoke-static {p0}, Lbutterknife/ButterKnife;->inject(Landroid/view/View;)V

    .line 33
    return-void
.end method
