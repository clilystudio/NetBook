.class public final Lcom/ushaqi/zhuishushenqi/ui/RelateUgcFragment$GetUgcsTask;
.super Lcom/ushaqi/zhuishushenqi/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/a/e",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/ushaqi/zhuishushenqi/model/RecommendUgcRoot;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/ushaqi/zhuishushenqi/ui/RelateUgcFragment;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/RelateUgcFragment;)V
    .locals 1

    .prologue
    .line 58
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/RelateUgcFragment$GetUgcsTask;->a:Lcom/ushaqi/zhuishushenqi/ui/RelateUgcFragment;

    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/a/e;-><init>()V

    .line 59
    const-string v0, "\u5171%1$d\u672c\u4e66  |  %2$d\u4eba\u6536\u85cf"

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/RelateUgcFragment$GetUgcsTask;->b:Ljava/lang/String;

    .line 105
    return-void
.end method

.method private static varargs a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/RecommendUgcRoot;
    .locals 3

    .prologue
    .line 64
    :try_start_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->a()Lcom/ushaqi/zhuishushenqi/api/b;

    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p0, v1

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->i(Ljava/lang/String;I)Lcom/ushaqi/zhuishushenqi/model/RecommendUgcRoot;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 68
    :goto_0
    return-object v0

    .line 65
    :catch_0
    move-exception v0

    .line 66
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 68
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 58
    check-cast p1, [Ljava/lang/String;

    invoke-static {p1}, Lcom/ushaqi/zhuishushenqi/ui/RelateUgcFragment$GetUgcsTask;->a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/RecommendUgcRoot;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 12

    .prologue
    const/4 v1, 0x0

    .line 58
    check-cast p1, Lcom/ushaqi/zhuishushenqi/model/RecommendUgcRoot;

    .line 1073
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/a/e;->onPostExecute(Ljava/lang/Object;)V

    .line 1074
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/RelateUgcFragment$GetUgcsTask;->a:Lcom/ushaqi/zhuishushenqi/ui/RelateUgcFragment;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/RelateUgcFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1077
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/RecommendUgcRoot;->getBooklists()[Lcom/ushaqi/zhuishushenqi/model/RecommendUgcRoot$RecommendUGC;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/RecommendUgcRoot;->getBooklists()[Lcom/ushaqi/zhuishushenqi/model/RecommendUgcRoot$RecommendUGC;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    .line 1078
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/RelateUgcFragment$GetUgcsTask;->a:Lcom/ushaqi/zhuishushenqi/ui/RelateUgcFragment;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/RelateUgcFragment;->mRelateUgcRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1079
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/RecommendUgcRoot;->getBooklists()[Lcom/ushaqi/zhuishushenqi/model/RecommendUgcRoot$RecommendUGC;

    move-result-object v2

    .line 1080
    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 1087
    iget-object v5, p0, Lcom/ushaqi/zhuishushenqi/ui/RelateUgcFragment$GetUgcsTask;->a:Lcom/ushaqi/zhuishushenqi/ui/RelateUgcFragment;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/ushaqi/zhuishushenqi/ui/RelateUgcFragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f030115

    iget-object v7, p0, Lcom/ushaqi/zhuishushenqi/ui/RelateUgcFragment$GetUgcsTask;->a:Lcom/ushaqi/zhuishushenqi/ui/RelateUgcFragment;

    iget-object v7, v7, Lcom/ushaqi/zhuishushenqi/ui/RelateUgcFragment;->mUgcContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v6, v7, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 1088
    new-instance v6, Lcom/ushaqi/zhuishushenqi/ui/RelateUgcFragment$GetUgcsTask$ViewHolder;

    invoke-direct {v6, p0, v5}, Lcom/ushaqi/zhuishushenqi/ui/RelateUgcFragment$GetUgcsTask$ViewHolder;-><init>(Lcom/ushaqi/zhuishushenqi/ui/RelateUgcFragment$GetUgcsTask;Landroid/view/View;)V

    .line 1089
    iget-object v7, v6, Lcom/ushaqi/zhuishushenqi/ui/RelateUgcFragment$GetUgcsTask$ViewHolder;->mCover:Lcom/ushaqi/zhuishushenqi/widget/CoverView;

    invoke-virtual {v4}, Lcom/ushaqi/zhuishushenqi/model/RecommendUgcRoot$RecommendUGC;->getFullCover()Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f020106

    invoke-virtual {v7, v8, v9}, Lcom/ushaqi/zhuishushenqi/widget/CoverView;->setImageUrl(Ljava/lang/String;I)V

    .line 1090
    iget-object v7, v6, Lcom/ushaqi/zhuishushenqi/ui/RelateUgcFragment$GetUgcsTask$ViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v4}, Lcom/ushaqi/zhuishushenqi/model/RecommendUgcRoot$RecommendUGC;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1091
    iget-object v7, v6, Lcom/ushaqi/zhuishushenqi/ui/RelateUgcFragment$GetUgcsTask$ViewHolder;->mCount:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/ushaqi/zhuishushenqi/ui/RelateUgcFragment$GetUgcsTask;->b:Ljava/lang/String;

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/ushaqi/zhuishushenqi/model/RecommendUgcRoot$RecommendUGC;->getBookCount()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v1

    const/4 v10, 0x1

    invoke-virtual {v4}, Lcom/ushaqi/zhuishushenqi/model/RecommendUgcRoot$RecommendUGC;->getCollectorCount()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1092
    iget-object v7, v6, Lcom/ushaqi/zhuishushenqi/ui/RelateUgcFragment$GetUgcsTask$ViewHolder;->mAuthor:Landroid/widget/TextView;

    invoke-virtual {v4}, Lcom/ushaqi/zhuishushenqi/model/RecommendUgcRoot$RecommendUGC;->getAuthor()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1093
    iget-object v7, v6, Lcom/ushaqi/zhuishushenqi/ui/RelateUgcFragment$GetUgcsTask$ViewHolder;->mDesc:Landroid/widget/TextView;

    invoke-virtual {v4}, Lcom/ushaqi/zhuishushenqi/model/RecommendUgcRoot$RecommendUGC;->getDesc()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1094
    iget-object v6, v6, Lcom/ushaqi/zhuishushenqi/ui/RelateUgcFragment$GetUgcsTask$ViewHolder;->mContainer:Landroid/view/View;

    new-instance v7, Lcom/ushaqi/zhuishushenqi/ui/bC;

    invoke-direct {v7, p0, v4}, Lcom/ushaqi/zhuishushenqi/ui/bC;-><init>(Lcom/ushaqi/zhuishushenqi/ui/RelateUgcFragment$GetUgcsTask;Lcom/ushaqi/zhuishushenqi/model/RecommendUgcRoot$RecommendUGC;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1102
    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/ui/RelateUgcFragment$GetUgcsTask;->a:Lcom/ushaqi/zhuishushenqi/ui/RelateUgcFragment;

    iget-object v4, v4, Lcom/ushaqi/zhuishushenqi/ui/RelateUgcFragment;->mUgcContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1080
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 58
    :cond_0
    return-void
.end method
