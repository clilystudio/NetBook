.class public Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewRatingActivity;
.super Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;-><init>()V

    return-void
.end method

.method private a(I)V
    .locals 6

    .prologue
    const/4 v5, 0x5

    .line 72
    rsub-int/lit8 v2, p1, 0x6

    .line 73
    new-array v3, v5, [I

    fill-array-data v3, :array_0

    .line 75
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v5, :cond_1

    .line 76
    aget v0, v3, v1

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewRatingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 77
    add-int/lit8 v4, v2, -0x1

    if-ne v1, v4, :cond_0

    .line 78
    const v4, 0x7f02013c

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 75
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 80
    :cond_0
    const v4, 0x7f02013a

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 83
    :cond_1
    return-void

    .line 73
    :array_0
    .array-data 4
        0x7f0c0199
        0x7f0c019b
        0x7f0c019d
        0x7f0c019f
        0x7f0c01a1
    .end array-data
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewRatingActivity;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 22
    .line 2089
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewRatingActivity;->a:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewRatingActivity;->a:I

    const/4 v1, 0x5

    if-le v0, v1, :cond_1

    .line 2090
    :cond_0
    const-string v0, "\u7ed9\u4e66\u7c4d\u6253\u4e2a\u5206\u6570\u5427"

    invoke-static {p0, v0}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    :goto_0
    return-void

    .line 2092
    :cond_1
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewRatingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "bookReviewBookId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2093
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewContentActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2094
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewRatingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2095
    const-string v2, "bookReviewBookId"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2096
    const-string v0, "bookReviewBookRating"

    iget v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewRatingActivity;->a:I

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2097
    const-string v0, "isFromBookReviewList"

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewRatingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "isFromBookReviewList"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2098
    invoke-virtual {p0, v1, v4}, Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewRatingActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewRatingActivity;)V
    .locals 4

    .prologue
    .line 2122
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a()Lcom/ushaqi/zhuishushenqi/MyApplication;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "saveToLocalReviewTitle"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "saveToLocalReviewDesc"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a([Ljava/lang/String;)V

    .line 22
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    const/16 v0, 0x100

    .line 145
    if-ne p2, v0, :cond_0

    .line 146
    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewRatingActivity;->setResult(I)V

    .line 147
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewRatingActivity;->finish()V

    .line 149
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 150
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 128
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewRatingActivity;->a:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewRatingActivity;->a:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_1

    .line 129
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewRatingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "isFromBookReviewList"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1103
    new-instance v0, Luk/me/lewisdeane/ldialogs/h;

    invoke-direct {v0, p0}, Luk/me/lewisdeane/ldialogs/h;-><init>(Landroid/content/Context;)V

    .line 1104
    const-string v1, "\u63d0\u793a"

    .line 2036
    iput-object v1, v0, Luk/me/lewisdeane/ldialogs/h;->d:Ljava/lang/String;

    .line 1105
    const-string v1, "\u79bb\u5f00\u5c06\u4e22\u5931\u5df2\u7f16\u8f91\u7684\u5185\u5bb9\uff0c\u786e\u5b9a\u79bb\u5f00\uff1f"

    .line 2046
    iput-object v1, v0, Luk/me/lewisdeane/ldialogs/h;->e:Ljava/lang/String;

    .line 1106
    const-string v1, "\u7559\u5728\u6b64\u9875"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Luk/me/lewisdeane/ldialogs/h;->b(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Luk/me/lewisdeane/ldialogs/h;

    .line 1107
    const-string v1, "\u79bb\u5f00"

    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/post/H;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/ui/post/H;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewRatingActivity;)V

    invoke-virtual {v0, v1, v2}, Luk/me/lewisdeane/ldialogs/h;->a(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Luk/me/lewisdeane/ldialogs/h;

    .line 1115
    invoke-virtual {v0}, Luk/me/lewisdeane/ldialogs/h;->a()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 140
    :goto_0
    return-void

    .line 132
    :cond_0
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewRatingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 133
    const-string v1, "extraNextRating"

    iget v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewRatingActivity;->a:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 134
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewRatingActivity;->setResult(ILandroid/content/Intent;)V

    .line 135
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewRatingActivity;->finish()V

    goto :goto_0

    .line 138
    :cond_1
    invoke-super {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 68
    :goto_0
    :pswitch_0
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewRatingActivity;->a:I

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewRatingActivity;->a(I)V

    .line 69
    return-void

    .line 53
    :pswitch_1
    const/4 v0, 0x5

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewRatingActivity;->a:I

    goto :goto_0

    .line 56
    :pswitch_2
    const/4 v0, 0x4

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewRatingActivity;->a:I

    goto :goto_0

    .line 59
    :pswitch_3
    const/4 v0, 0x3

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewRatingActivity;->a:I

    goto :goto_0

    .line 62
    :pswitch_4
    const/4 v0, 0x2

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewRatingActivity;->a:I

    goto :goto_0

    .line 65
    :pswitch_5
    const/4 v0, 0x1

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewRatingActivity;->a:I

    goto :goto_0

    .line 51
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c0198
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x5

    .line 28
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const v0, 0x7f03006c

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewRatingActivity;->setContentView(I)V

    .line 30
    const v0, 0x7f0500b9

    const v2, 0x7f050133

    new-instance v3, Lcom/ushaqi/zhuishushenqi/ui/post/G;

    invoke-direct {v3, p0}, Lcom/ushaqi/zhuishushenqi/ui/post/G;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewRatingActivity;)V

    invoke-virtual {p0, v0, v2, v3}, Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewRatingActivity;->a(IILcom/ushaqi/zhuishushenqi/ui/aa;)V

    .line 37
    new-array v2, v4, [I

    fill-array-data v2, :array_0

    move v0, v1

    .line 38
    :goto_0
    if-ge v0, v4, :cond_0

    .line 39
    aget v3, v2, v0

    invoke-virtual {p0, v3}, Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewRatingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewRatingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "AddBookReviewRating"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 43
    if-lez v0, :cond_1

    if-gt v0, v4, :cond_1

    .line 44
    iput v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewRatingActivity;->a:I

    .line 45
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewRatingActivity;->a:I

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewRatingActivity;->a(I)V

    .line 47
    :cond_1
    return-void

    .line 37
    nop

    :array_0
    .array-data 4
        0x7f0c0198
        0x7f0c019a
        0x7f0c019c
        0x7f0c019e
        0x7f0c01a0
    .end array-data
.end method
