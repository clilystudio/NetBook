.class public Lcom/ushaqi/zhuishushenqi/adapter/G;
.super Lcom/ushaqi/zhuishushenqi/adapter/u;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Z

.field private c:Z

.field private d:Landroid/view/View;

.field private e:Lcom/ushaqi/zhuishushenqi/model/Tweet;

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-class v0, Lcom/ushaqi/zhuishushenqi/adapter/G;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;ZZ)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 80
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/adapter/u;-><init>()V

    .line 71
    iput-boolean v2, p0, Lcom/ushaqi/zhuishushenqi/adapter/G;->f:Z

    .line 81
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/adapter/G;->a:Landroid/content/Context;

    .line 82
    iput-boolean p2, p0, Lcom/ushaqi/zhuishushenqi/adapter/G;->c:Z

    .line 83
    iput-boolean p3, p0, Lcom/ushaqi/zhuishushenqi/adapter/G;->b:Z

    .line 85
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/G;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 86
    const v1, 0x7f0202b1

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 87
    const/4 v1, 0x1

    const v2, 0x7f0202af

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 88
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 90
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/G;->a:Landroid/content/Context;

    const-string v1, "community_user_gender_icon_toggle"

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/a/a;->r(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/G;->f:Z

    .line 91
    return-void

    .line 85
    nop

    :array_0
    .array-data 4
        0x7f010024
        0x7f010023
    .end array-data
.end method

.method private a(Lcom/ushaqi/zhuishushenqi/model/Tweet;)I
    .locals 6

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 622
    :goto_0
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Tweet;->getType()Ljava/lang/String;

    move-result-object v4

    const/4 v3, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_0
    :goto_1
    packed-switch v3, :pswitch_data_0

    .line 632
    :goto_2
    :pswitch_0
    return v0

    .line 622
    :sswitch_0
    const-string v5, "TWEET"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v3, v0

    goto :goto_1

    :sswitch_1
    const-string v5, "RETWEET"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v3, v1

    goto :goto_1

    :sswitch_2
    const-string v5, "REVIEW"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v3, v2

    goto :goto_1

    :sswitch_3
    const-string v5, "ARTICLE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x3

    goto :goto_1

    .line 626
    :pswitch_1
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Tweet;->getRefTweet()Lcom/ushaqi/zhuishushenqi/model/Tweet;

    move-result-object p1

    goto :goto_0

    :pswitch_2
    move v0, v1

    .line 628
    goto :goto_2

    :pswitch_3
    move v0, v2

    .line 630
    goto :goto_2

    .line 622
    :sswitch_data_0
    .sparse-switch
        -0x701e14a8 -> :sswitch_2
        -0xdba72a -> :sswitch_3
        0x4c84e51 -> :sswitch_0
        0x6c45abfe -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/adapter/G;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/G;->a:Landroid/content/Context;

    return-object v0
.end method

.method private a(Landroid/view/View;ILandroid/view/ViewGroup;I)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 103
    if-nez p1, :cond_0

    .line 104
    packed-switch p2, :pswitch_data_0

    .line 120
    :cond_0
    :goto_0
    return-object p1

    .line 2142
    :pswitch_0
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030111

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2143
    new-instance v0, Lcom/ushaqi/zhuishushenqi/adapter/R;

    invoke-direct {v0, p0, p1}, Lcom/ushaqi/zhuishushenqi/adapter/R;-><init>(Lcom/ushaqi/zhuishushenqi/adapter/G;Landroid/view/View;)V

    .line 2144
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 3133
    :pswitch_1
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030113

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 3134
    const v0, 0x7f0c01e4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 3135
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3136
    new-instance v0, Lcom/ushaqi/zhuishushenqi/adapter/R;

    invoke-direct {v0, p0, p1}, Lcom/ushaqi/zhuishushenqi/adapter/R;-><init>(Lcom/ushaqi/zhuishushenqi/adapter/G;Landroid/view/View;)V

    .line 3137
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 4124
    :pswitch_2
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030112

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 4126
    new-instance v0, Lcom/ushaqi/zhuishushenqi/adapter/R;

    invoke-direct {v0, p0, p1}, Lcom/ushaqi/zhuishushenqi/adapter/R;-><init>(Lcom/ushaqi/zhuishushenqi/adapter/G;Landroid/view/View;)V

    .line 4127
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 116
    :pswitch_3
    invoke-virtual {p0, p4}, Lcom/ushaqi/zhuishushenqi/adapter/G;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/Tweet;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Tweet;->getRefTweet()Lcom/ushaqi/zhuishushenqi/model/Tweet;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/adapter/G;->a(Lcom/ushaqi/zhuishushenqi/model/Tweet;)I

    move-result v0

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/ushaqi/zhuishushenqi/adapter/G;->a(Landroid/view/View;ILandroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 104
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/adapter/G;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/adapter/G;->d:Landroid/view/View;

    return-object p1
.end method

.method private a(ILandroid/view/View;Lcom/ushaqi/zhuishushenqi/model/Tweet;)V
    .locals 1

    .prologue
    .line 197
    packed-switch p1, :pswitch_data_0

    .line 237
    :goto_0
    return-void

    .line 199
    :pswitch_0
    new-instance v0, Lcom/ushaqi/zhuishushenqi/adapter/H;

    invoke-direct {v0, p0, p3}, Lcom/ushaqi/zhuishushenqi/adapter/H;-><init>(Lcom/ushaqi/zhuishushenqi/adapter/G;Lcom/ushaqi/zhuishushenqi/model/Tweet;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 212
    :pswitch_1
    new-instance v0, Lcom/ushaqi/zhuishushenqi/adapter/I;

    invoke-direct {v0, p0, p3}, Lcom/ushaqi/zhuishushenqi/adapter/I;-><init>(Lcom/ushaqi/zhuishushenqi/adapter/G;Lcom/ushaqi/zhuishushenqi/model/Tweet;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 225
    :pswitch_2
    new-instance v0, Lcom/ushaqi/zhuishushenqi/adapter/J;

    invoke-direct {v0, p0, p3}, Lcom/ushaqi/zhuishushenqi/adapter/J;-><init>(Lcom/ushaqi/zhuishushenqi/adapter/G;Lcom/ushaqi/zhuishushenqi/model/Tweet;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 197
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static a(Landroid/view/View;IIII)V
    .locals 7

    .prologue
    const/16 v2, 0xf

    .line 806
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/view/View;

    new-instance v0, Lcom/ushaqi/zhuishushenqi/adapter/Q;

    move-object v1, p0

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/ushaqi/zhuishushenqi/adapter/Q;-><init>(Landroid/view/View;IIII)V

    invoke-virtual {v6, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 825
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/adapter/G;Lcom/ushaqi/zhuishushenqi/adapter/R;Lcom/ushaqi/zhuishushenqi/model/User;)V
    .locals 5

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 52
    .line 8474
    invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v0

    if-nez v0, :cond_1

    .line 8475
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/G;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/adapter/G;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 8481
    :cond_0
    :goto_0
    return-void

    .line 8477
    :cond_1
    iget-boolean v1, p0, Lcom/ushaqi/zhuishushenqi/adapter/G;->b:Z

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    .line 8478
    invoke-static {v0, p2}, Lcom/ushaqi/zhuishushenqi/adapter/G;->a(Lcom/ushaqi/zhuishushenqi/model/Account;Lcom/ushaqi/zhuishushenqi/model/User;)Z

    move-result v1

    .line 8479
    if-eqz v1, :cond_2

    .line 8480
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/adapter/G;->b(Lcom/ushaqi/zhuishushenqi/adapter/R;)V

    .line 8481
    new-instance v1, Lcom/ushaqi/zhuishushenqi/adapter/V;

    invoke-direct {v1, p0, v3}, Lcom/ushaqi/zhuishushenqi/adapter/V;-><init>(Lcom/ushaqi/zhuishushenqi/adapter/G;B)V

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Account;->getToken()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/User;->getId()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-virtual {v1, v2}, Lcom/ushaqi/zhuishushenqi/adapter/V;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 8483
    :cond_2
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/adapter/G;->a(Lcom/ushaqi/zhuishushenqi/adapter/R;)V

    .line 8484
    new-instance v1, Lcom/ushaqi/zhuishushenqi/adapter/T;

    invoke-direct {v1, p0, v3}, Lcom/ushaqi/zhuishushenqi/adapter/T;-><init>(Lcom/ushaqi/zhuishushenqi/adapter/G;B)V

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Account;->getToken()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/User;->getId()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-virtual {v1, v2}, Lcom/ushaqi/zhuishushenqi/adapter/T;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/adapter/G;Lcom/ushaqi/zhuishushenqi/model/Tweet;)V
    .locals 4

    .prologue
    .line 52
    .line 6277
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Tweet;->getPost()Lcom/ushaqi/zhuishushenqi/model/Tweet$Post;

    move-result-object v0

    if-nez v0, :cond_0

    .line 6278
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/G;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/adapter/G;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Tweet;->get_id()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TWEET"

    invoke-static {v1, v2, v3}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    .line 6280
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/G;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/adapter/G;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Tweet;->getPost()Lcom/ushaqi/zhuishushenqi/model/Tweet$Post;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/Tweet$Post;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Tweet;->getPost()Lcom/ushaqi/zhuishushenqi/model/Tweet$Post;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/model/Tweet$Post;->getBlock()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/adapter/G;Lcom/ushaqi/zhuishushenqi/model/Tweet;Lcom/ushaqi/zhuishushenqi/adapter/R;)V
    .locals 3

    .prologue
    .line 52
    .line 8431
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Tweet;->isRetween()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Tweet;->getRefTweet()Lcom/ushaqi/zhuishushenqi/model/Tweet;

    move-result-object v0

    .line 8432
    :goto_0
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Tweet;->getRetweeted()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 8433
    invoke-virtual {p1, v0}, Lcom/ushaqi/zhuishushenqi/model/Tweet;->setRetweeted(I)V

    .line 8434
    iget-object v1, p2, Lcom/ushaqi/zhuishushenqi/adapter/R;->g:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    return-void

    :cond_0
    move-object v0, p1

    .line 8431
    goto :goto_0
.end method

.method private a(Lcom/ushaqi/zhuishushenqi/adapter/R;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 636
    iget-object v0, p1, Lcom/ushaqi/zhuishushenqi/adapter/R;->h:Landroid/widget/TextView;

    const-string v1, "\u5df2\u5173\u6ce8"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 637
    iget-object v0, p1, Lcom/ushaqi/zhuishushenqi/adapter/R;->h:Landroid/widget/TextView;

    const v1, -0x58da00

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 638
    iget-object v0, p1, Lcom/ushaqi/zhuishushenqi/adapter/R;->h:Landroid/widget/TextView;

    const/high16 v1, 0x41200000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 639
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/G;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02017f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 640
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    mul-int/lit8 v1, v1, 0x9

    div-int/lit8 v1, v1, 0x10

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    mul-int/lit8 v2, v2, 0x9

    div-int/lit8 v2, v2, 0x10

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 641
    iget-object v1, p1, Lcom/ushaqi/zhuishushenqi/adapter/R;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 643
    return-void
.end method

.method private a(Lcom/ushaqi/zhuishushenqi/adapter/R;Lcom/ushaqi/zhuishushenqi/model/Tweet;Lcom/ushaqi/zhuishushenqi/model/User;Z)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/16 v1, 0xf

    .line 449
    iget-object v0, p1, Lcom/ushaqi/zhuishushenqi/adapter/R;->h:Landroid/widget/TextView;

    invoke-static {v0, v1, v1, v1, v1}, Lcom/ushaqi/zhuishushenqi/adapter/G;->a(Landroid/view/View;IIII)V

    .line 450
    iget-object v0, p1, Lcom/ushaqi/zhuishushenqi/adapter/R;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 451
    if-eqz p4, :cond_0

    .line 5497
    const-string v0, "\u5220\u9664"

    .line 5499
    iget-object v1, p1, Lcom/ushaqi/zhuishushenqi/adapter/R;->h:Landroid/widget/TextView;

    new-instance v2, Lcom/ushaqi/zhuishushenqi/adapter/N;

    invoke-direct {v2, p0, p1, p2}, Lcom/ushaqi/zhuishushenqi/adapter/N;-><init>(Lcom/ushaqi/zhuishushenqi/adapter/G;Lcom/ushaqi/zhuishushenqi/adapter/R;Lcom/ushaqi/zhuishushenqi/model/Tweet;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5518
    iget-object v1, p1, Lcom/ushaqi/zhuishushenqi/adapter/R;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5519
    iget-object v0, p1, Lcom/ushaqi/zhuishushenqi/adapter/R;->h:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201b6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 5520
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 5521
    iget-object v1, p1, Lcom/ushaqi/zhuishushenqi/adapter/R;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 5522
    iget-object v0, p1, Lcom/ushaqi/zhuishushenqi/adapter/R;->h:Landroid/widget/TextView;

    const v1, -0x555556

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 463
    :goto_0
    return-void

    .line 453
    :cond_0
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/G;->b:Z

    if-eqz v0, :cond_3

    .line 5532
    invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v0

    .line 5533
    if-eqz v0, :cond_1

    .line 5534
    invoke-static {v0, p3}, Lcom/ushaqi/zhuishushenqi/adapter/G;->a(Lcom/ushaqi/zhuishushenqi/model/Account;Lcom/ushaqi/zhuishushenqi/model/User;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5535
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/adapter/G;->a(Lcom/ushaqi/zhuishushenqi/adapter/R;)V

    .line 455
    :cond_1
    :goto_1
    iget-object v0, p1, Lcom/ushaqi/zhuishushenqi/adapter/R;->h:Landroid/widget/TextView;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/adapter/M;

    invoke-direct {v1, p0, p1, p3}, Lcom/ushaqi/zhuishushenqi/adapter/M;-><init>(Lcom/ushaqi/zhuishushenqi/adapter/G;Lcom/ushaqi/zhuishushenqi/adapter/R;Lcom/ushaqi/zhuishushenqi/model/User;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 5538
    :cond_2
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/adapter/G;->b(Lcom/ushaqi/zhuishushenqi/adapter/R;)V

    goto :goto_1

    .line 462
    :cond_3
    iget-object v0, p1, Lcom/ushaqi/zhuishushenqi/adapter/R;->h:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private a(Lcom/ushaqi/zhuishushenqi/model/Tweet;Lcom/ushaqi/zhuishushenqi/adapter/R;)V
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x1

    const/16 v3, 0x8

    const/4 v8, 0x0

    const/4 v4, 0x0

    .line 285
    .line 4604
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Tweet;->isRetween()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4605
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Tweet;->getFrom()Lcom/ushaqi/zhuishushenqi/model/User;

    move-result-object v0

    .line 286
    :goto_0
    iget-boolean v1, p0, Lcom/ushaqi/zhuishushenqi/adapter/G;->b:Z

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Tweet;->isHot()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Tweet;->isRetween()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Tweet;->getRefTweet()Lcom/ushaqi/zhuishushenqi/model/Tweet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/Tweet;->isHot()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 287
    :cond_0
    iget-object v1, p2, Lcom/ushaqi/zhuishushenqi/adapter/R;->k:Lcom/ushaqi/zhuishushenqi/widget/PostFlag;

    invoke-virtual {v1, v4}, Lcom/ushaqi/zhuishushenqi/widget/PostFlag;->setVisibility(I)V

    .line 288
    iget-object v1, p2, Lcom/ushaqi/zhuishushenqi/adapter/R;->k:Lcom/ushaqi/zhuishushenqi/widget/PostFlag;

    const-string v2, "hot"

    invoke-virtual {v1, v2}, Lcom/ushaqi/zhuishushenqi/widget/PostFlag;->a(Ljava/lang/String;)Z

    .line 289
    iget-object v1, p2, Lcom/ushaqi/zhuishushenqi/adapter/R;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 295
    :goto_1
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Tweet;->isRetween()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 296
    iget-object v1, p2, Lcom/ushaqi/zhuishushenqi/adapter/R;->l:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 297
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Tweet;->getUser()Lcom/ushaqi/zhuishushenqi/model/User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/User;->getNickname()Ljava/lang/String;

    move-result-object v1

    .line 298
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Tweet;->getNames()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p1, Lcom/ushaqi/zhuishushenqi/model/Tweet;->names:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_4

    .line 299
    const-string v1, ""

    move-object v2, v1

    move v1, v4

    .line 300
    :goto_2
    if-ge v1, v10, :cond_3

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Tweet;->getNames()[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    if-ge v1, v5, :cond_3

    .line 301
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Tweet;->getNames()[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v1

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " , "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 300
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 4607
    :cond_1
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Tweet;->getUser()Lcom/ushaqi/zhuishushenqi/model/User;

    move-result-object v0

    goto :goto_0

    .line 291
    :cond_2
    iget-object v1, p2, Lcom/ushaqi/zhuishushenqi/adapter/R;->k:Lcom/ushaqi/zhuishushenqi/widget/PostFlag;

    invoke-virtual {v1, v3}, Lcom/ushaqi/zhuishushenqi/widget/PostFlag;->setVisibility(I)V

    .line 292
    iget-object v1, p2, Lcom/ushaqi/zhuishushenqi/adapter/R;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 303
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v2, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 304
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Tweet;->getNames()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-le v2, v10, :cond_4

    .line 305
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u7b49"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Tweet;->getNames()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u4eba"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 309
    :cond_4
    iget-object v2, p2, Lcom/ushaqi/zhuishushenqi/adapter/R;->l:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " \u8f6c\u53d1\u4e86\u8fd9\u6761\u52a8\u6001"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    iget-object v1, p2, Lcom/ushaqi/zhuishushenqi/adapter/R;->e:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Tweet;->getCreated()Ljava/util/Date;

    move-result-object v2

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/util/t;->e(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 312
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Tweet;->getRefTweet()Lcom/ushaqi/zhuishushenqi/model/Tweet;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Tweet;->getFrom()Lcom/ushaqi/zhuishushenqi/model/User;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ushaqi/zhuishushenqi/model/Tweet;->setUser(Lcom/ushaqi/zhuishushenqi/model/User;)V

    .line 313
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Tweet;->getRefTweet()Lcom/ushaqi/zhuishushenqi/model/Tweet;

    move-result-object p1

    .line 318
    :goto_3
    iget-object v1, p2, Lcom/ushaqi/zhuishushenqi/adapter/R;->a:Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/User;->getFullAvatar()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;->setImageUrl(Ljava/lang/String;)V

    .line 319
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/adapter/G;->a(Lcom/ushaqi/zhuishushenqi/model/Tweet;)I

    move-result v1

    if-eqz v1, :cond_5

    .line 320
    iget-object v1, p2, Lcom/ushaqi/zhuishushenqi/adapter/R;->i:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Tweet;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    :cond_5
    iget-object v1, p2, Lcom/ushaqi/zhuishushenqi/adapter/R;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/User;->getNickname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    iget-object v1, p2, Lcom/ushaqi/zhuishushenqi/adapter/R;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Tweet;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 323
    iget-object v1, p2, Lcom/ushaqi/zhuishushenqi/adapter/R;->d:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "lv."

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/User;->getLv()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 324
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Tweet;->getCommented()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 325
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Tweet;->getRetweeted()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 327
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Tweet;->getVotes()[Lcom/ushaqi/zhuishushenqi/model/Tweet$VoteOption;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Tweet;->getVotes()[Lcom/ushaqi/zhuishushenqi/model/Tweet$VoteOption;

    move-result-object v5

    array-length v5, v5

    if-nez v5, :cond_d

    .line 328
    :cond_6
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Tweet;->getCommented()I

    move-result v5

    const/16 v6, 0x270f

    if-le v5, v6, :cond_7

    .line 329
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Tweet;->getCommented()I

    move-result v1

    invoke-static {v1}, Lcom/arcsoft/hpay100/a/a;->i(I)Ljava/lang/String;

    move-result-object v1

    .line 331
    :cond_7
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Tweet;->getRetweeted()I

    move-result v5

    const/16 v6, 0x270f

    if-le v5, v6, :cond_8

    .line 332
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Tweet;->getRetweeted()I

    move-result v2

    invoke-static {v2}, Lcom/arcsoft/hpay100/a/a;->i(I)Ljava/lang/String;

    move-result-object v2

    .line 334
    :cond_8
    iget-object v5, p0, Lcom/ushaqi/zhuishushenqi/adapter/G;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f02018e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 335
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v6

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v7

    invoke-virtual {v5, v4, v4, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 336
    iget-object v6, p2, Lcom/ushaqi/zhuishushenqi/adapter/R;->f:Landroid/widget/TextView;

    invoke-virtual {v6, v5, v8, v8, v8}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 337
    iget-object v5, p2, Lcom/ushaqi/zhuishushenqi/adapter/R;->f:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Tweet;->getCommented()I

    move-result v6

    if-nez v6, :cond_9

    const-string v1, "\u8bc4\u8bba"

    :cond_9
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 344
    :goto_4
    iget-object v1, p2, Lcom/ushaqi/zhuishushenqi/adapter/R;->g:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Tweet;->getRetweeted()I

    move-result v5

    if-nez v5, :cond_a

    const-string v2, "\u8f6c\u53d1"

    :cond_a
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 346
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/adapter/G;->a:Landroid/content/Context;

    .line 5388
    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    .line 5389
    const-string v2, "USER_ID"

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Tweet;->getUser()Lcom/ushaqi/zhuishushenqi/model/User;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ushaqi/zhuishushenqi/model/User;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5390
    const-string v2, "USER_NAME"

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Tweet;->getUser()Lcom/ushaqi/zhuishushenqi/model/User;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ushaqi/zhuishushenqi/model/User;->getNickname()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 347
    iget-object v2, p2, Lcom/ushaqi/zhuishushenqi/adapter/R;->a:Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;

    new-instance v5, Lcom/ushaqi/zhuishushenqi/adapter/K;

    invoke-direct {v5, p0, v1}, Lcom/ushaqi/zhuishushenqi/adapter/K;-><init>(Lcom/ushaqi/zhuishushenqi/adapter/G;Landroid/content/Intent;)V

    invoke-virtual {v2, v5}, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 353
    if-eqz p1, :cond_b

    .line 354
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/adapter/G;->a(Lcom/ushaqi/zhuishushenqi/model/Tweet;)I

    move-result v1

    if-ne v9, v1, :cond_b

    .line 355
    iget-object v1, p2, Lcom/ushaqi/zhuishushenqi/adapter/R;->m:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Tweet;->getBook()Lcom/ushaqi/zhuishushenqi/model/Book;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/Book;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 356
    iget-object v1, p2, Lcom/ushaqi/zhuishushenqi/adapter/R;->n:Lcom/ushaqi/zhuishushenqi/widget/RatingView;

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Tweet;->getScore()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ushaqi/zhuishushenqi/widget/RatingView;->setValue(I)V

    .line 357
    iget-object v1, p2, Lcom/ushaqi/zhuishushenqi/adapter/R;->o:Lcom/ushaqi/zhuishushenqi/widget/CoverView;

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Tweet;->getBook()Lcom/ushaqi/zhuishushenqi/model/Book;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/Book;->getCover()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ushaqi/zhuishushenqi/widget/CoverView;->setImageUrl(Ljava/lang/String;)V

    .line 358
    iget-object v2, p2, Lcom/ushaqi/zhuishushenqi/adapter/R;->j:Landroid/view/View;

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Tweet;->getBook()Lcom/ushaqi/zhuishushenqi/model/Book;

    move-result-object v1

    if-nez v1, :cond_f

    move v1, v3

    :goto_5
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 362
    :cond_b
    iget-boolean v1, p0, Lcom/ushaqi/zhuishushenqi/adapter/G;->f:Z

    if-eqz v1, :cond_12

    .line 363
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/User;->getGenderFlag()I

    move-result v1

    if-nez v1, :cond_10

    .line 364
    iget-object v0, p2, Lcom/ushaqi/zhuishushenqi/adapter/R;->p:Landroid/widget/ImageView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 365
    iget-object v0, p2, Lcom/ushaqi/zhuishushenqi/adapter/R;->p:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 385
    :goto_6
    return-void

    .line 315
    :cond_c
    iget-object v1, p2, Lcom/ushaqi/zhuishushenqi/adapter/R;->l:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 316
    iget-object v1, p2, Lcom/ushaqi/zhuishushenqi/adapter/R;->e:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Tweet;->getCreated()Ljava/util/Date;

    move-result-object v2

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/util/t;->e(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 339
    :cond_d
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/adapter/G;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f0201d3

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 340
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v6

    invoke-virtual {v1, v4, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 341
    iget-object v5, p2, Lcom/ushaqi/zhuishushenqi/adapter/R;->f:Landroid/widget/TextView;

    invoke-virtual {v5, v1, v8, v8, v8}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 342
    iget-object v5, p2, Lcom/ushaqi/zhuishushenqi/adapter/R;->f:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Tweet;->getVoteCount()I

    move-result v1

    if-nez v1, :cond_e

    const-string v1, "\u8bc4\u8bba"

    :goto_7
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Tweet;->getVoteCount()I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    :cond_f
    move v1, v4

    .line 358
    goto :goto_5

    .line 366
    :cond_10
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/User;->getGenderFlag()I

    move-result v0

    if-ne v0, v9, :cond_11

    .line 367
    iget-object v0, p2, Lcom/ushaqi/zhuishushenqi/adapter/R;->p:Landroid/widget/ImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 368
    iget-object v0, p2, Lcom/ushaqi/zhuishushenqi/adapter/R;->p:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_6

    .line 370
    :cond_11
    iget-object v0, p2, Lcom/ushaqi/zhuishushenqi/adapter/R;->p:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 371
    iget-object v0, p2, Lcom/ushaqi/zhuishushenqi/adapter/R;->p:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_6

    .line 374
    :cond_12
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/User;->isOfficial()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 375
    iget-object v0, p2, Lcom/ushaqi/zhuishushenqi/adapter/R;->p:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 376
    iget-object v0, p2, Lcom/ushaqi/zhuishushenqi/adapter/R;->p:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_6

    .line 377
    :cond_13
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/User;->isDoyan()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 378
    iget-object v0, p2, Lcom/ushaqi/zhuishushenqi/adapter/R;->p:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 379
    iget-object v0, p2, Lcom/ushaqi/zhuishushenqi/adapter/R;->p:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_6

    .line 381
    :cond_14
    iget-object v0, p2, Lcom/ushaqi/zhuishushenqi/adapter/R;->p:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_6
.end method

.method public static a(Lcom/ushaqi/zhuishushenqi/model/Account;Lcom/ushaqi/zhuishushenqi/model/Tweet;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 573
    invoke-static {p1, p0}, Lcom/ushaqi/zhuishushenqi/adapter/G;->a(Lcom/ushaqi/zhuishushenqi/model/Tweet;Lcom/ushaqi/zhuishushenqi/model/Account;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 581
    :cond_0
    :goto_0
    return v0

    .line 577
    :cond_1
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Tweet;->isRetween()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Tweet;->getRefTweet()Lcom/ushaqi/zhuishushenqi/model/Tweet;

    move-result-object p1

    .line 578
    :cond_2
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Tweet;->get_id()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/ushaqi/zhuishushenqi/adapter/G;->a(Lcom/ushaqi/zhuishushenqi/model/Account;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 581
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static a(Lcom/ushaqi/zhuishushenqi/model/Account;Lcom/ushaqi/zhuishushenqi/model/User;)Z
    .locals 2

    .prologue
    .line 562
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/model/Account;->getUser()Lcom/ushaqi/zhuishushenqi/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/User;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/User;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/db/FollowRecord;->isFollowed(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static a(Lcom/ushaqi/zhuishushenqi/model/Account;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 593
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/model/Account;->getUser()Lcom/ushaqi/zhuishushenqi/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/User;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/ushaqi/zhuishushenqi/db/RetweenRecord;->isRetweened(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static a(Lcom/ushaqi/zhuishushenqi/model/Tweet;Lcom/ushaqi/zhuishushenqi/model/Account;)Z
    .locals 2

    .prologue
    .line 551
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/model/Tweet;->getUser()Lcom/ushaqi/zhuishushenqi/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/User;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Account;->getUser()Lcom/ushaqi/zhuishushenqi/model/User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/User;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/adapter/G;)Landroid/view/View;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/G;->d:Landroid/view/View;

    return-object v0
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/adapter/G;Lcom/ushaqi/zhuishushenqi/model/Tweet;)V
    .locals 4

    .prologue
    .line 52
    .line 7269
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Tweet;->getPost()Lcom/ushaqi/zhuishushenqi/model/Tweet$Post;

    move-result-object v0

    if-nez v0, :cond_0

    .line 7270
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/G;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/adapter/G;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Tweet;->get_id()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ARTICLE"

    invoke-static {v1, v2, v3}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetDetailActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    .line 7272
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/G;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/adapter/G;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Tweet;->getPost()Lcom/ushaqi/zhuishushenqi/model/Tweet$Post;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/Tweet$Post;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Tweet;->getPost()Lcom/ushaqi/zhuishushenqi/model/Tweet$Post;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/model/Tweet$Post;->getBlock()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private b(Lcom/ushaqi/zhuishushenqi/adapter/R;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 646
    iget-object v0, p1, Lcom/ushaqi/zhuishushenqi/adapter/R;->h:Landroid/widget/TextView;

    const-string v1, "\u5173\u6ce8"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 647
    iget-object v0, p1, Lcom/ushaqi/zhuishushenqi/adapter/R;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/adapter/G;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00d7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 648
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/G;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02012b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 649
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 651
    iget-object v1, p1, Lcom/ushaqi/zhuishushenqi/adapter/R;->h:Landroid/widget/TextView;

    const/high16 v2, 0x41200000

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 652
    iget-object v1, p1, Lcom/ushaqi/zhuishushenqi/adapter/R;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 654
    return-void
.end method

.method static synthetic c(Lcom/ushaqi/zhuishushenqi/adapter/G;)Lcom/ushaqi/zhuishushenqi/model/Tweet;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/G;->e:Lcom/ushaqi/zhuishushenqi/model/Tweet;

    return-object v0
.end method

.method static synthetic c(Lcom/ushaqi/zhuishushenqi/adapter/G;Lcom/ushaqi/zhuishushenqi/model/Tweet;)V
    .locals 4

    .prologue
    .line 52
    .line 8241
    const/4 v0, 0x0

    .line 8244
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Tweet;->getPost()Lcom/ushaqi/zhuishushenqi/model/Tweet$Post;

    move-result-object v1

    if-nez v1, :cond_1

    .line 8245
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/adapter/G;->a:Landroid/content/Context;

    const-class v2, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 8246
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Tweet;->get_id()Ljava/lang/String;

    move-result-object v1

    .line 8247
    const-string v2, "BOOK_COMMENT"

    .line 8249
    const-string v3, "extraReviewId"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8250
    const-string v1, "EXTRA_TYPE_NAME"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8265
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/adapter/G;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 52
    return-void

    .line 8252
    :cond_1
    const-string v1, "review"

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Tweet;->getPost()Lcom/ushaqi/zhuishushenqi/model/Tweet$Post;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/Tweet$Post;->getBlock()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 8253
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/adapter/G;->a:Landroid/content/Context;

    const-class v2, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 8254
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Tweet;->getPost()Lcom/ushaqi/zhuishushenqi/model/Tweet$Post;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/Tweet$Post;->getId()Ljava/lang/String;

    move-result-object v1

    .line 8255
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Tweet;->getPost()Lcom/ushaqi/zhuishushenqi/model/Tweet$Post;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/Tweet$Post;->getBlock()Ljava/lang/String;

    move-result-object v2

    .line 8257
    const-string v3, "extraReviewId"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8258
    const-string v1, "EXTRA_TYPE_NAME"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 8259
    :cond_2
    const-string v1, "book"

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Tweet;->getPost()Lcom/ushaqi/zhuishushenqi/model/Tweet$Post;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/Tweet$Post;->getBlock()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8260
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Tweet;->getPost()Lcom/ushaqi/zhuishushenqi/model/Tweet$Post;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Tweet$Post;->getId()Ljava/lang/String;

    move-result-object v0

    .line 8261
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Tweet;->getPost()Lcom/ushaqi/zhuishushenqi/model/Tweet$Post;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/Tweet$Post;->getBlock()Ljava/lang/String;

    move-result-object v1

    .line 8262
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/adapter/G;->a:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic d(Lcom/ushaqi/zhuishushenqi/adapter/G;Lcom/ushaqi/zhuishushenqi/model/Tweet;)Lcom/ushaqi/zhuishushenqi/model/Tweet;
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/adapter/G;->e:Lcom/ushaqi/zhuishushenqi/model/Tweet;

    return-object p1
.end method


# virtual methods
.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 617
    invoke-virtual {p0, p1}, Lcom/ushaqi/zhuishushenqi/adapter/G;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/Tweet;

    .line 618
    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/adapter/G;->a(Lcom/ushaqi/zhuishushenqi/model/Tweet;)I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .prologue
    const/16 v6, 0xf

    .line 95
    invoke-virtual {p0, p1}, Lcom/ushaqi/zhuishushenqi/adapter/G;->getItemViewType(I)I

    move-result v2

    .line 96
    invoke-direct {p0, p2, v2, p3, p1}, Lcom/ushaqi/zhuishushenqi/adapter/G;->a(Landroid/view/View;ILandroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v3

    .line 1151
    invoke-virtual {p0, p1}, Lcom/ushaqi/zhuishushenqi/adapter/G;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 1152
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/Tweet;

    .line 1157
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ushaqi/zhuishushenqi/adapter/R;

    .line 1158
    packed-switch v2, :pswitch_data_0

    .line 1182
    :goto_0
    iget-boolean v2, p0, Lcom/ushaqi/zhuishushenqi/adapter/G;->c:Z

    if-eqz v2, :cond_0

    .line 1183
    const/4 v2, 0x0

    const/4 v4, 0x1

    invoke-direct {p0, v1, v0, v2, v4}, Lcom/ushaqi/zhuishushenqi/adapter/G;->a(Lcom/ushaqi/zhuishushenqi/adapter/R;Lcom/ushaqi/zhuishushenqi/model/Tweet;Lcom/ushaqi/zhuishushenqi/model/User;Z)V

    .line 98
    :goto_1
    return-object v3

    .line 1160
    :pswitch_0
    invoke-direct {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/adapter/G;->a(Lcom/ushaqi/zhuishushenqi/model/Tweet;Lcom/ushaqi/zhuishushenqi/adapter/R;)V

    .line 1161
    invoke-direct {p0, v2, v3, v0}, Lcom/ushaqi/zhuishushenqi/adapter/G;->a(ILandroid/view/View;Lcom/ushaqi/zhuishushenqi/model/Tweet;)V

    goto :goto_0

    .line 1165
    :pswitch_1
    iget-object v4, v1, Lcom/ushaqi/zhuishushenqi/adapter/R;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Tweet;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1166
    invoke-direct {p0, v2, v3, v0}, Lcom/ushaqi/zhuishushenqi/adapter/G;->a(ILandroid/view/View;Lcom/ushaqi/zhuishushenqi/model/Tweet;)V

    .line 1167
    invoke-direct {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/adapter/G;->a(Lcom/ushaqi/zhuishushenqi/model/Tweet;Lcom/ushaqi/zhuishushenqi/adapter/R;)V

    goto :goto_0

    .line 1171
    :pswitch_2
    iget-object v4, v1, Lcom/ushaqi/zhuishushenqi/adapter/R;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Tweet;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1172
    invoke-direct {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/adapter/G;->a(Lcom/ushaqi/zhuishushenqi/model/Tweet;Lcom/ushaqi/zhuishushenqi/adapter/R;)V

    .line 1173
    invoke-direct {p0, v2, v3, v0}, Lcom/ushaqi/zhuishushenqi/adapter/G;->a(ILandroid/view/View;Lcom/ushaqi/zhuishushenqi/model/Tweet;)V

    goto :goto_0

    .line 1176
    :pswitch_3
    invoke-direct {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/adapter/G;->a(Lcom/ushaqi/zhuishushenqi/model/Tweet;Lcom/ushaqi/zhuishushenqi/adapter/R;)V

    .line 1178
    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/adapter/G;->a(Lcom/ushaqi/zhuishushenqi/model/Tweet;)I

    move-result v2

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Tweet;->getRefTweet()Lcom/ushaqi/zhuishushenqi/model/Tweet;

    move-result-object v4

    invoke-direct {p0, v2, v3, v4}, Lcom/ushaqi/zhuishushenqi/adapter/G;->a(ILandroid/view/View;Lcom/ushaqi/zhuishushenqi/model/Tweet;)V

    goto :goto_0

    .line 1185
    :cond_0
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Tweet;->getUser()Lcom/ushaqi/zhuishushenqi/model/User;

    move-result-object v2

    const/4 v4, 0x0

    invoke-direct {p0, v1, v0, v2, v4}, Lcom/ushaqi/zhuishushenqi/adapter/G;->a(Lcom/ushaqi/zhuishushenqi/adapter/R;Lcom/ushaqi/zhuishushenqi/model/Tweet;Lcom/ushaqi/zhuishushenqi/model/User;Z)V

    .line 1401
    iget-object v2, v1, Lcom/ushaqi/zhuishushenqi/adapter/R;->g:Landroid/widget/TextView;

    invoke-static {v2, v6, v6, v6, v6}, Lcom/ushaqi/zhuishushenqi/adapter/G;->a(Landroid/view/View;IIII)V

    .line 1402
    iget-object v2, v1, Lcom/ushaqi/zhuishushenqi/adapter/R;->g:Landroid/widget/TextView;

    new-instance v4, Lcom/ushaqi/zhuishushenqi/adapter/L;

    invoke-direct {v4, p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/adapter/L;-><init>(Lcom/ushaqi/zhuishushenqi/adapter/G;Lcom/ushaqi/zhuishushenqi/model/Tweet;Lcom/ushaqi/zhuishushenqi/adapter/R;)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 1158
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 612
    const/4 v0, 0x3

    return v0
.end method
