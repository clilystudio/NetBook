.class public final Lcom/ushaqi/zhuishushenqi/adapter/BookRankAdapter;
.super Lcom/ushaqi/zhuishushenqi/adapter/u;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/adapter/u",
        "<",
        "Lcom/ushaqi/zhuishushenqi/model/BookRankSummary;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/view/LayoutInflater;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/BookRankSummary;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/BookRankSummary;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/BookRankSummary;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/BookRankSummary;",
            ">;"
        }
    .end annotation
.end field

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/adapter/u;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/adapter/BookRankAdapter;->a:Landroid/view/LayoutInflater;

    .line 44
    return-void
.end method

.method private a(I)Lcom/ushaqi/zhuishushenqi/model/BookRankSummary;
    .locals 3

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/adapter/BookRankAdapter;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 v0, p1, -0x1

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/adapter/BookRankAdapter;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 105
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/BookRankAdapter;->b:Ljava/util/List;

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/BookRankSummary;

    .line 112
    :goto_0
    return-object v0

    .line 107
    :cond_0
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/BookRankAdapter;->f:I

    sub-int v0, p1, v0

    .line 108
    add-int/lit8 v1, v0, -0x1

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/adapter/BookRankAdapter;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 109
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/adapter/BookRankAdapter;->d:Ljava/util/List;

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/BookRankSummary;

    goto :goto_0

    .line 112
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/adapter/BookRankAdapter;I)Z
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/adapter/BookRankAdapter;->b(I)Z

    move-result v0

    return v0
.end method

.method private b(I)Z
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/BookRankAdapter;->f:I

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/ushaqi/zhuishushenqi/model/BookRankRoot;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 147
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/BookRankRoot;->getMale()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    move v0, v1

    .line 148
    :goto_0
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/BookRankRoot;->getMainMaleList()Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/ushaqi/zhuishushenqi/adapter/BookRankAdapter;->b:Ljava/util/List;

    .line 149
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/BookRankRoot;->getSubMaleList()Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/ushaqi/zhuishushenqi/adapter/BookRankAdapter;->c:Ljava/util/List;

    .line 150
    if-eqz v0, :cond_2

    .line 151
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/BookRankAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v3, v0, 0x1

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/BookRankAdapter;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v3

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/BookRankAdapter;->f:I

    .line 155
    :goto_2
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/BookRankRoot;->getFemale()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    move v0, v1

    .line 156
    :goto_3
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/BookRankRoot;->getMainFemaleList()Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/ushaqi/zhuishushenqi/adapter/BookRankAdapter;->d:Ljava/util/List;

    .line 157
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/BookRankRoot;->getSubFemaleList()Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/ushaqi/zhuishushenqi/adapter/BookRankAdapter;->e:Ljava/util/List;

    .line 158
    if-eqz v0, :cond_5

    .line 159
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/BookRankAdapter;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/adapter/BookRankAdapter;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_4

    :goto_4
    add-int/2addr v0, v1

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/BookRankAdapter;->g:I

    .line 163
    :goto_5
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/adapter/BookRankAdapter;->notifyDataSetInvalidated()V

    .line 164
    return-void

    :cond_0
    move v0, v2

    .line 147
    goto :goto_0

    :cond_1
    move v0, v2

    .line 151
    goto :goto_1

    .line 153
    :cond_2
    iput v2, p0, Lcom/ushaqi/zhuishushenqi/adapter/BookRankAdapter;->f:I

    goto :goto_2

    :cond_3
    move v0, v2

    .line 155
    goto :goto_3

    :cond_4
    move v1, v2

    .line 159
    goto :goto_4

    .line 161
    :cond_5
    iput v2, p0, Lcom/ushaqi/zhuishushenqi/adapter/BookRankAdapter;->g:I

    goto :goto_5
.end method

.method public final getCount()I
    .locals 2

    .prologue
    .line 48
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/BookRankAdapter;->f:I

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/adapter/BookRankAdapter;->g:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/adapter/BookRankAdapter;->a(I)Lcom/ushaqi/zhuishushenqi/model/BookRankSummary;

    move-result-object v0

    return-object v0
.end method

.method public final getItemViewType(I)I
    .locals 4

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 117
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/adapter/BookRankAdapter;->b(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 118
    if-nez p1, :cond_1

    .line 132
    :cond_0
    :goto_0
    return v0

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/BookRankAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    if-ge p1, v0, :cond_2

    move v0, v1

    .line 121
    goto :goto_0

    :cond_2
    move v0, v2

    .line 123
    goto :goto_0

    .line 126
    :cond_3
    iget v3, p0, Lcom/ushaqi/zhuishushenqi/adapter/BookRankAdapter;->f:I

    sub-int v3, p1, v3

    .line 127
    if-eqz v3, :cond_0

    .line 129
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/BookRankAdapter;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    if-ge v3, v0, :cond_4

    move v0, v1

    .line 130
    goto :goto_0

    :cond_4
    move v0, v2

    .line 132
    goto :goto_0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 53
    invoke-virtual {p0, p1}, Lcom/ushaqi/zhuishushenqi/adapter/BookRankAdapter;->getItemViewType(I)I

    move-result v3

    .line 55
    if-nez p2, :cond_0

    .line 56
    packed-switch v3, :pswitch_data_0

    :cond_0
    move-object v1, p2

    .line 72
    :goto_0
    packed-switch v3, :pswitch_data_1

    .line 86
    :goto_1
    return-object v1

    .line 58
    :pswitch_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/BookRankAdapter;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f0300e4

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    .line 59
    check-cast v0, Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/adapter/BookRankAdapter;->b(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "\u7537\u751f"

    :goto_2
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const-string v2, "\u5973\u751f"

    goto :goto_2

    .line 62
    :pswitch_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/BookRankAdapter;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f0300e3

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 63
    new-instance v0, Lcom/ushaqi/zhuishushenqi/adapter/BookRankAdapter$ViewHolder;

    invoke-direct {v0, v1}, Lcom/ushaqi/zhuishushenqi/adapter/BookRankAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 64
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 67
    :pswitch_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/BookRankAdapter;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f0300d6

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 1090
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/adapter/BookRankAdapter;->a(I)Lcom/ushaqi/zhuishushenqi/model/BookRankSummary;

    move-result-object v2

    .line 1091
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/adapter/BookRankAdapter$ViewHolder;

    .line 1092
    iget-object v3, v0, Lcom/ushaqi/zhuishushenqi/adapter/BookRankAdapter$ViewHolder;->cover:Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/BookRankSummary;->getFullCover()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f020106

    invoke-virtual {v3, v4, v5}, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;->setImageUrl(Ljava/lang/String;I)V

    .line 1093
    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/adapter/BookRankAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/BookRankSummary;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1094
    new-instance v0, Lcom/ushaqi/zhuishushenqi/adapter/f;

    invoke-direct {v0, p0, v2, p1}, Lcom/ushaqi/zhuishushenqi/adapter/f;-><init>(Lcom/ushaqi/zhuishushenqi/adapter/BookRankAdapter;Lcom/ushaqi/zhuishushenqi/model/BookRankSummary;I)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :pswitch_4
    move-object v0, v1

    .line 77
    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/RankCollapseItem;

    .line 78
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/adapter/BookRankAdapter;->b(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 79
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/adapter/BookRankAdapter;->c:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/adapter/BookRankAdapter;->b(I)Z

    move-result v3

    invoke-virtual {v0, v2, p1, v3}, Lcom/ushaqi/zhuishushenqi/widget/RankCollapseItem;->a(Ljava/util/List;IZ)V

    goto :goto_1

    .line 81
    :cond_2
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/adapter/BookRankAdapter;->e:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/adapter/BookRankAdapter;->b(I)Z

    move-result v3

    invoke-virtual {v0, v2, p1, v3}, Lcom/ushaqi/zhuishushenqi/widget/RankCollapseItem;->a(Ljava/util/List;IZ)V

    goto :goto_1

    .line 56
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 72
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final getViewTypeCount()I
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x3

    return v0
.end method
