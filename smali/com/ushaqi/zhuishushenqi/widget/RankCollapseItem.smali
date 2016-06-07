.class public Lcom/ushaqi/zhuishushenqi/widget/RankCollapseItem;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Z

.field private b:I

.field mArrow:Landroid/widget/ImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c014f
    .end annotation
.end field

.field mBottomDivdier:Landroid/view/View;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c02e3
    .end annotation
.end field

.field mItemContainer:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c02ca
    .end annotation
.end field

.field mLabel:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c028b
    .end annotation
.end field

.field mLabelContainer:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c02e1
    .end annotation
.end field

.field mTopDivdier:Landroid/view/View;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c02e2
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    return-void
.end method

.method private a()V
    .locals 4

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 89
    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/widget/RankCollapseItem;->mArrow:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/widget/RankCollapseItem;->a:Z

    if-eqz v0, :cond_0

    const v0, 0x7f020231

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 90
    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/widget/RankCollapseItem;->mItemContainer:Landroid/widget/LinearLayout;

    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/widget/RankCollapseItem;->a:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 91
    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/widget/RankCollapseItem;->mBottomDivdier:Landroid/view/View;

    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/widget/RankCollapseItem;->a:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 92
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/RankCollapseItem;->mTopDivdier:Landroid/view/View;

    iget-boolean v3, p0, Lcom/ushaqi/zhuishushenqi/widget/RankCollapseItem;->a:Z

    if-eqz v3, :cond_3

    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 93
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/widget/RankCollapseItem;->mLabel:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/widget/RankCollapseItem;->a:Z

    if-eqz v0, :cond_4

    const v0, -0xa8de

    :goto_4
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 94
    return-void

    .line 89
    :cond_0
    const v0, 0x7f020230

    goto :goto_0

    :cond_1
    move v0, v2

    .line 90
    goto :goto_1

    :cond_2
    move v0, v2

    .line 91
    goto :goto_2

    :cond_3
    move v1, v2

    .line 92
    goto :goto_3

    .line 93
    :cond_4
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/RankCollapseItem;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x1010098

    invoke-static {v0, v2}, Landroid/support/design/widget/am;->a(Landroid/content/Context;I)I

    move-result v0

    goto :goto_4
.end method


# virtual methods
.method public final a(Ljava/util/List;IZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/BookRankSummary;",
            ">;IZ)V"
        }
    .end annotation

    .prologue
    .line 59
    iput p2, p0, Lcom/ushaqi/zhuishushenqi/widget/RankCollapseItem;->b:I

    .line 60
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/RankCollapseItem;->mItemContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 61
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/RankCollapseItem;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 62
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/BookRankSummary;

    .line 1068
    const v1, 0x7f0300d0

    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/widget/RankCollapseItem;->mItemContainer:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    invoke-virtual {v2, v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1069
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookRankSummary;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1070
    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/widget/RankCollapseItem;->mItemContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1071
    new-instance v4, Lcom/ushaqi/zhuishushenqi/widget/at;

    invoke-direct {v4, p0, v0, p3}, Lcom/ushaqi/zhuishushenqi/widget/at;-><init>(Lcom/ushaqi/zhuishushenqi/widget/RankCollapseItem;Lcom/ushaqi/zhuishushenqi/model/BookRankSummary;Z)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 65
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/widget/RankCollapseItem;->a:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/widget/RankCollapseItem;->a:Z

    .line 82
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/widget/RankCollapseItem;->a()V

    .line 83
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/widget/RankCollapseItem;->a:Z

    if-eqz v0, :cond_0

    .line 84
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v0

    new-instance v1, Lcom/ushaqi/zhuishushenqi/event/k;

    iget v2, p0, Lcom/ushaqi/zhuishushenqi/widget/RankCollapseItem;->b:I

    invoke-direct {v1, v2}, Lcom/ushaqi/zhuishushenqi/event/k;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/squareup/a/b;->c(Ljava/lang/Object;)V

    .line 86
    :cond_0
    return-void

    .line 81
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 51
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 52
    invoke-static {p0}, Lbutterknife/ButterKnife;->inject(Landroid/view/View;)V

    .line 53
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/RankCollapseItem;->mLabel:Landroid/widget/TextView;

    const-string v1, "\u522b\u4eba\u5bb6\u7684\u6392\u884c\u699c"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/RankCollapseItem;->mLabelContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/widget/RankCollapseItem;->a()V

    .line 56
    return-void
.end method
