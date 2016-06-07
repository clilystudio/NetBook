.class final Lcom/ushaqi/zhuishushenqi/ui/ah;
.super Lcom/ushaqi/zhuishushenqi/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/a/e",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "[",
        "Lcom/ushaqi/zhuishushenqi/model/BookReview;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/BestReviewsFragment;


# direct methods
.method private constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/BestReviewsFragment;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/ah;->a:Lcom/ushaqi/zhuishushenqi/ui/BestReviewsFragment;

    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/a/e;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/BestReviewsFragment;B)V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/ah;-><init>(Lcom/ushaqi/zhuishushenqi/ui/BestReviewsFragment;)V

    return-void
.end method

.method private static varargs a([Ljava/lang/String;)[Lcom/ushaqi/zhuishushenqi/model/BookReview;
    .locals 2

    .prologue
    .line 99
    :try_start_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->a()Lcom/ushaqi/zhuishushenqi/api/b;

    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p0, v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->C(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/BookReviewRoot;

    move-result-object v0

    .line 100
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/ushaqi/zhuishushenqi/model/BookReviewRoot;->ok:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/ushaqi/zhuishushenqi/model/BookReviewRoot;->reviews:[Lcom/ushaqi/zhuishushenqi/model/BookReview;

    if-eqz v1, :cond_0

    .line 101
    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/model/BookReviewRoot;->reviews:[Lcom/ushaqi/zhuishushenqi/model/BookReview;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :goto_0
    return-object v0

    .line 103
    :catch_0
    move-exception v0

    .line 104
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 106
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 94
    check-cast p1, [Ljava/lang/String;

    invoke-static {p1}, Lcom/ushaqi/zhuishushenqi/ui/ah;->a([Ljava/lang/String;)[Lcom/ushaqi/zhuishushenqi/model/BookReview;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 7

    .prologue
    const v6, 0x7f0c0239

    const v4, 0x7f0c0237

    const/16 v5, 0x8

    const/4 v0, 0x2

    const/4 v2, 0x0

    .line 94
    check-cast p1, [Lcom/ushaqi/zhuishushenqi/model/BookReview;

    .line 1111
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/a/e;->onPostExecute(Ljava/lang/Object;)V

    .line 1112
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/ah;->a:Lcom/ushaqi/zhuishushenqi/ui/BestReviewsFragment;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/ui/BestReviewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 1121
    :cond_0
    :goto_0
    return-void

    .line 1115
    :cond_1
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/ah;->a:Lcom/ushaqi/zhuishushenqi/ui/BestReviewsFragment;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/BestReviewsFragment;->a(Lcom/ushaqi/zhuishushenqi/ui/BestReviewsFragment;)Landroid/view/View;

    move-result-object v1

    const v3, 0x7f0c0236

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 1116
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1117
    array-length v1, p1

    .line 1118
    if-nez v1, :cond_2

    .line 1119
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1120
    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1121
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ah;->a:Lcom/ushaqi/zhuishushenqi/ui/BestReviewsFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/BestReviewsFragment;->b(Lcom/ushaqi/zhuishushenqi/ui/BestReviewsFragment;)V

    goto :goto_0

    .line 1123
    :cond_2
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1124
    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1125
    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/ah;->a:Lcom/ushaqi/zhuishushenqi/ui/BestReviewsFragment;

    invoke-static {v3}, Lcom/ushaqi/zhuishushenqi/ui/BestReviewsFragment;->c(Lcom/ushaqi/zhuishushenqi/ui/BestReviewsFragment;)V

    .line 1126
    if-le v1, v0, :cond_4

    :goto_1
    move v1, v2

    .line 1129
    :goto_2
    if-ge v1, v0, :cond_0

    .line 1130
    aget-object v2, p1, v1

    .line 1131
    const/4 v3, 0x1

    if-ne v1, v3, :cond_3

    .line 1132
    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/ah;->a:Lcom/ushaqi/zhuishushenqi/ui/BestReviewsFragment;

    invoke-static {v3}, Lcom/ushaqi/zhuishushenqi/ui/BestReviewsFragment;->d(Lcom/ushaqi/zhuishushenqi/ui/BestReviewsFragment;)V

    .line 1134
    :cond_3
    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/ah;->a:Lcom/ushaqi/zhuishushenqi/ui/BestReviewsFragment;

    invoke-static {v3, v2}, Lcom/ushaqi/zhuishushenqi/ui/BestReviewsFragment;->a(Lcom/ushaqi/zhuishushenqi/ui/BestReviewsFragment;Lcom/ushaqi/zhuishushenqi/model/BookReview;)V

    .line 1129
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_1
.end method
