.class public Lcom/ushaqi/zhuishushenqi/ui/BestReviewsFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/widget/LinearLayout;

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BestReviewsFragment;->c:Z

    .line 197
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/BestReviewsFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BestReviewsFragment;->a:Landroid/view/View;

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/ui/BestReviewsFragment;
    .locals 3

    .prologue
    .line 46
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/BestReviewsFragment;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/ui/BestReviewsFragment;-><init>()V

    .line 47
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 48
    const-string v2, "args_book_id"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const-string v2, "args_book_title"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/BestReviewsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 51
    return-object v0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/BestReviewsFragment;Lcom/ushaqi/zhuishushenqi/model/BookReview;)V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 36
    .line 3141
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/BestReviewsFragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300e5

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/BestReviewsFragment;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 3142
    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/BestReviewsFragment$ViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/BestReviewsFragment$ViewHolder;-><init>(Lcom/ushaqi/zhuishushenqi/ui/BestReviewsFragment;Landroid/view/View;)V

    .line 3143
    iget-object v2, p1, Lcom/ushaqi/zhuishushenqi/model/BookReview;->author:Lcom/ushaqi/zhuishushenqi/model/Author;

    .line 3144
    iget-object v3, v1, Lcom/ushaqi/zhuishushenqi/ui/BestReviewsFragment$ViewHolder;->avatar:Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/Author;->getScaleAvatar()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f02006e

    invoke-virtual {v3, v4, v5}, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;->setImageUrl(Ljava/lang/String;I)V

    .line 3145
    iget-object v3, v1, Lcom/ushaqi/zhuishushenqi/ui/BestReviewsFragment$ViewHolder;->user:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/Author;->getNickname()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3146
    iget-object v3, v1, Lcom/ushaqi/zhuishushenqi/ui/BestReviewsFragment$ViewHolder;->lv:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "lv."

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/Author;->getLv()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3147
    iget-object v3, v1, Lcom/ushaqi/zhuishushenqi/ui/BestReviewsFragment$ViewHolder;->time:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3148
    iget-object v3, v1, Lcom/ushaqi/zhuishushenqi/ui/BestReviewsFragment$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v4, p1, Lcom/ushaqi/zhuishushenqi/model/BookReview;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3149
    iget-object v3, v1, Lcom/ushaqi/zhuishushenqi/ui/BestReviewsFragment$ViewHolder;->content:Landroid/widget/TextView;

    iget-object v4, p1, Lcom/ushaqi/zhuishushenqi/model/BookReview;->content:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3150
    iget-object v3, v1, Lcom/ushaqi/zhuishushenqi/ui/BestReviewsFragment$ViewHolder;->helpfulCount:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Lcom/ushaqi/zhuishushenqi/model/BookReview;->helpful:Lcom/ushaqi/zhuishushenqi/model/ReviewHelpful;

    invoke-virtual {v5}, Lcom/ushaqi/zhuishushenqi/model/ReviewHelpful;->getYes()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3151
    iget-object v3, v1, Lcom/ushaqi/zhuishushenqi/ui/BestReviewsFragment$ViewHolder;->container:Landroid/view/View;

    new-instance v4, Lcom/ushaqi/zhuishushenqi/ui/ag;

    invoke-direct {v4, p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/ag;-><init>(Lcom/ushaqi/zhuishushenqi/ui/BestReviewsFragment;Lcom/ushaqi/zhuishushenqi/model/BookReview;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3160
    iget-boolean v3, p0, Lcom/ushaqi/zhuishushenqi/ui/BestReviewsFragment;->c:Z

    if-eqz v3, :cond_2

    .line 3161
    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/Author;->getGender()Ljava/lang/String;

    move-result-object v2

    .line 3162
    const-string v3, "male"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3163
    iget-object v2, v1, Lcom/ushaqi/zhuishushenqi/ui/BestReviewsFragment$ViewHolder;->avatarVerify:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3164
    iget-object v2, v1, Lcom/ushaqi/zhuishushenqi/ui/BestReviewsFragment$ViewHolder;->avatarVerify:Landroid/widget/ImageView;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 3187
    :goto_0
    iget-object v1, v1, Lcom/ushaqi/zhuishushenqi/ui/BestReviewsFragment$ViewHolder;->rating:Lcom/ushaqi/zhuishushenqi/widget/RatingView;

    iget v2, p1, Lcom/ushaqi/zhuishushenqi/model/BookReview;->rating:I

    invoke-virtual {v1, v2}, Lcom/ushaqi/zhuishushenqi/widget/RatingView;->setValue(I)V

    .line 3189
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/BestReviewsFragment;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 36
    return-void

    .line 3165
    :cond_0
    const-string v3, "female"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3166
    iget-object v2, v1, Lcom/ushaqi/zhuishushenqi/ui/BestReviewsFragment$ViewHolder;->avatarVerify:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3167
    iget-object v2, v1, Lcom/ushaqi/zhuishushenqi/ui/BestReviewsFragment$ViewHolder;->avatarVerify:Landroid/widget/ImageView;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageLevel(I)V

    goto :goto_0

    .line 3169
    :cond_1
    iget-object v2, v1, Lcom/ushaqi/zhuishushenqi/ui/BestReviewsFragment$ViewHolder;->avatarVerify:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3170
    iget-object v2, v1, Lcom/ushaqi/zhuishushenqi/ui/BestReviewsFragment$ViewHolder;->avatarVerify:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageLevel(I)V

    goto :goto_0

    .line 3174
    :cond_2
    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/Author;->getType()Ljava/lang/String;

    move-result-object v2

    .line 3175
    const-string v3, "official"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3176
    iget-object v2, v1, Lcom/ushaqi/zhuishushenqi/ui/BestReviewsFragment$ViewHolder;->avatarVerify:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3177
    iget-object v2, v1, Lcom/ushaqi/zhuishushenqi/ui/BestReviewsFragment$ViewHolder;->avatarVerify:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageLevel(I)V

    goto :goto_0

    .line 3178
    :cond_3
    const-string v3, "doyen"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3179
    iget-object v2, v1, Lcom/ushaqi/zhuishushenqi/ui/BestReviewsFragment$ViewHolder;->avatarVerify:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3180
    iget-object v2, v1, Lcom/ushaqi/zhuishushenqi/ui/BestReviewsFragment$ViewHolder;->avatarVerify:Landroid/widget/ImageView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageLevel(I)V

    goto :goto_0

    .line 3182
    :cond_4
    iget-object v2, v1, Lcom/ushaqi/zhuishushenqi/ui/BestReviewsFragment$ViewHolder;->avatarVerify:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/BestReviewsFragment;)V
    .locals 2

    .prologue
    .line 36
    .line 1082
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BestReviewsFragment;->a:Landroid/view/View;

    const v1, 0x7f0c023a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1083
    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/af;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/af;-><init>(Lcom/ushaqi/zhuishushenqi/ui/BestReviewsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    return-void
.end method

.method static synthetic c(Lcom/ushaqi/zhuishushenqi/ui/BestReviewsFragment;)V
    .locals 2

    .prologue
    .line 36
    .line 2070
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BestReviewsFragment;->a:Landroid/view/View;

    const v1, 0x7f0c0238

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2071
    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/ae;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/ae;-><init>(Lcom/ushaqi/zhuishushenqi/ui/BestReviewsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    return-void
.end method

.method static synthetic d(Lcom/ushaqi/zhuishushenqi/ui/BestReviewsFragment;)V
    .locals 4

    .prologue
    .line 36
    .line 2193
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/BestReviewsFragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300c2

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/BestReviewsFragment;->b:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 2194
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/BestReviewsFragment;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 36
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 65
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 66
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/ah;

    invoke-direct {v0, p0, v4}, Lcom/ushaqi/zhuishushenqi/ui/ah;-><init>(Lcom/ushaqi/zhuishushenqi/ui/BestReviewsFragment;B)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/BestReviewsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "args_book_id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/ah;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 67
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 56
    const v0, 0x7f0300a8

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BestReviewsFragment;->a:Landroid/view/View;

    .line 57
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BestReviewsFragment;->a:Landroid/view/View;

    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 58
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BestReviewsFragment;->a:Landroid/view/View;

    const v1, 0x7f0c023b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BestReviewsFragment;->b:Landroid/widget/LinearLayout;

    .line 59
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BestReviewsFragment;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "community_user_gender_icon_toggle"

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/a/a;->r(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BestReviewsFragment;->c:Z

    .line 60
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BestReviewsFragment;->a:Landroid/view/View;

    return-object v0
.end method
