.class public final Lcom/ushaqi/zhuishushenqi/adapter/HomeTopicAdapter;
.super Lcom/ushaqi/zhuishushenqi/adapter/u;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/adapter/u",
        "<",
        "Lcom/ushaqi/zhuishushenqi/model/BookShelfTopic;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/view/LayoutInflater;

.field private b:Lcom/ushaqi/zhuishushenqi/util/ag;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/adapter/u;-><init>()V

    .line 36
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/HomeTopicAdapter;->a:Landroid/view/LayoutInflater;

    .line 37
    invoke-static {p1}, Lcom/ushaqi/zhuishushenqi/util/ag;->a(Landroid/content/Context;)Lcom/ushaqi/zhuishushenqi/util/ag;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/HomeTopicAdapter;->b:Lcom/ushaqi/zhuishushenqi/util/ag;

    .line 38
    return-void
.end method

.method private a(I)Lcom/ushaqi/zhuishushenqi/model/BookShelfTopic;
    .locals 1

    .prologue
    .line 103
    if-nez p1, :cond_0

    .line 104
    const/4 v0, 0x0

    .line 106
    :goto_0
    return-object v0

    :cond_0
    add-int/lit8 v0, p1, -0x1

    invoke-super {p0, v0}, Lcom/ushaqi/zhuishushenqi/adapter/u;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/BookShelfTopic;

    goto :goto_0
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/adapter/HomeTopicAdapter;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 43
    const/4 v0, 0x0

    .line 45
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/ushaqi/zhuishushenqi/adapter/u;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/adapter/HomeTopicAdapter;->a(I)Lcom/ushaqi/zhuishushenqi/model/BookShelfTopic;

    move-result-object v0

    return-object v0
.end method

.method public final getItemViewType(I)I
    .locals 1

    .prologue
    .line 112
    if-nez p1, :cond_0

    .line 113
    const/4 v0, 0x0

    .line 115
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 51
    invoke-virtual {p0, p1}, Lcom/ushaqi/zhuishushenqi/adapter/HomeTopicAdapter;->getItemViewType(I)I

    move-result v1

    .line 53
    if-nez p2, :cond_0

    .line 54
    packed-switch v1, :pswitch_data_0

    .line 68
    :cond_0
    :goto_0
    const/4 v0, 0x1

    if-ne v1, v0, :cond_1

    .line 69
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/adapter/HomeTopicAdapter;->a(I)Lcom/ushaqi/zhuishushenqi/model/BookShelfTopic;

    move-result-object v1

    .line 70
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/adapter/HomeTopicAdapter$ViewHolder;

    .line 71
    iget-object v2, v0, Lcom/ushaqi/zhuishushenqi/adapter/HomeTopicAdapter$ViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/BookShelfTopic;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v2, v0, Lcom/ushaqi/zhuishushenqi/adapter/HomeTopicAdapter$ViewHolder;->mCover:Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/BookShelfTopic;->getFullCover()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f020106

    invoke-virtual {v2, v3, v4}, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;->setImageUrl(Ljava/lang/String;I)V

    .line 74
    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/adapter/HomeTopicAdapter$ViewHolder;->mCount:Landroid/widget/TextView;

    .line 75
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/BookShelfTopic;->getBookId()Ljava/lang/String;

    move-result-object v2

    .line 77
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 78
    const-string v3, ""

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 80
    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/adapter/HomeTopicAdapter;->b:Lcom/ushaqi/zhuishushenqi/util/ag;

    new-instance v4, Lcom/ushaqi/zhuishushenqi/adapter/s;

    invoke-direct {v4, p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/adapter/s;-><init>(Lcom/ushaqi/zhuishushenqi/adapter/HomeTopicAdapter;Landroid/widget/TextView;Lcom/ushaqi/zhuishushenqi/model/BookShelfTopic;)V

    invoke-virtual {v3, v2, v4}, Lcom/ushaqi/zhuishushenqi/util/ag;->a(Ljava/lang/String;Lcom/ushaqi/zhuishushenqi/util/ai;)V

    .line 98
    :cond_1
    return-object p2

    .line 56
    :pswitch_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/HomeTopicAdapter;->a:Landroid/view/LayoutInflater;

    const v2, 0x7f0300c1

    invoke-virtual {v0, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 57
    const-string v2, "\u6211\u7684\u793e\u533a"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object p2, v0

    .line 59
    goto :goto_0

    .line 61
    :pswitch_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/HomeTopicAdapter;->a:Landroid/view/LayoutInflater;

    const v2, 0x7f0300f4

    invoke-virtual {v0, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 62
    new-instance v0, Lcom/ushaqi/zhuishushenqi/adapter/HomeTopicAdapter$ViewHolder;

    invoke-direct {v0, p2}, Lcom/ushaqi/zhuishushenqi/adapter/HomeTopicAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 63
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 54
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final getViewTypeCount()I
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x2

    return v0
.end method
