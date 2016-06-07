.class public Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewActivity;
.super Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;
.source "SourceFile"


# instance fields
.field private a:Lcom/ushaqi/zhuishushenqi/adapter/a;

.field private b:Ljava/lang/String;

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewActivity;->c:I

    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewActivity;->b:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewActivity;)V
    .locals 3

    .prologue
    .line 28
    .line 2104
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewActivity;->a:Lcom/ushaqi/zhuishushenqi/adapter/a;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/adapter/a;->b()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2105
    const-string v0, "\u4f60\u8fd8\u6ca1\u6709\u9009\u62e9\u8bc4\u8bba\u7684\u4e66\u7c4d"

    invoke-static {p0, v0}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    :goto_0
    return-void

    .line 2107
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewRatingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2108
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 2109
    if-eqz v1, :cond_1

    .line 2110
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2112
    :cond_1
    const-string v1, "bookReviewBookId"

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2114
    iget v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewActivity;->c:I

    if-eqz v1, :cond_2

    .line 2115
    const-string v1, "AddBookReviewRating"

    iget v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewActivity;->c:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2117
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewActivity;)Lcom/ushaqi/zhuishushenqi/adapter/a;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewActivity;->a:Lcom/ushaqi/zhuishushenqi/adapter/a;

    return-object v0
.end method

.method static synthetic c(Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewActivity;)V
    .locals 4

    .prologue
    .line 2141
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

    .line 28
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 73
    invoke-super {p0, p1, p2, p3}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 74
    if-nez p1, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 76
    const-string v0, "extraNextRating"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewActivity;->c:I

    .line 78
    :cond_0
    const/16 v0, 0x100

    if-ne p2, v0, :cond_1

    .line 79
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewActivity;->finish()V

    .line 81
    :cond_1
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 146
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewActivity;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewActivity;->c:I

    if-eqz v0, :cond_1

    .line 1122
    :cond_0
    new-instance v0, Luk/me/lewisdeane/ldialogs/h;

    invoke-direct {v0, p0}, Luk/me/lewisdeane/ldialogs/h;-><init>(Landroid/content/Context;)V

    .line 1123
    const-string v1, "\u63d0\u793a"

    .line 2036
    iput-object v1, v0, Luk/me/lewisdeane/ldialogs/h;->d:Ljava/lang/String;

    .line 1124
    const-string v1, "\u79bb\u5f00\u5c06\u4e22\u5931\u5df2\u7f16\u8f91\u7684\u5185\u5bb9\uff0c\u786e\u5b9a\u79bb\u5f00\uff1f"

    .line 2046
    iput-object v1, v0, Luk/me/lewisdeane/ldialogs/h;->e:Ljava/lang/String;

    .line 1125
    const-string v1, "\u7559\u5728\u6b64\u9875"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Luk/me/lewisdeane/ldialogs/h;->b(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Luk/me/lewisdeane/ldialogs/h;

    .line 1126
    const-string v1, "\u79bb\u5f00"

    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/post/C;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/ui/post/C;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewActivity;)V

    invoke-virtual {v0, v1, v2}, Luk/me/lewisdeane/ldialogs/h;->a(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Luk/me/lewisdeane/ldialogs/h;

    .line 1134
    invoke-virtual {v0}, Luk/me/lewisdeane/ldialogs/h;->a()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 151
    :goto_0
    return-void

    .line 149
    :cond_1
    invoke-super {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const v0, 0x7f03006b

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewActivity;->setContentView(I)V

    .line 43
    const v0, 0x7f0500ba

    const v2, 0x7f050133

    new-instance v3, Lcom/ushaqi/zhuishushenqi/ui/post/A;

    invoke-direct {v3, p0}, Lcom/ushaqi/zhuishushenqi/ui/post/A;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewActivity;)V

    invoke-virtual {p0, v0, v2, v3}, Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewActivity;->a(IILcom/ushaqi/zhuishushenqi/ui/aa;)V

    .line 50
    const v0, 0x7f0c0196

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 51
    const v0, 0x7f0c0197

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 52
    new-instance v3, Lcom/ushaqi/zhuishushenqi/ui/post/B;

    invoke-direct {v3, p0}, Lcom/ushaqi/zhuishushenqi/ui/post/B;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 60
    new-instance v3, Lcom/ushaqi/zhuishushenqi/adapter/a;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/ushaqi/zhuishushenqi/adapter/a;-><init>(Landroid/view/LayoutInflater;)V

    iput-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewActivity;->a:Lcom/ushaqi/zhuishushenqi/adapter/a;

    .line 61
    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewActivity;->a:Lcom/ushaqi/zhuishushenqi/adapter/a;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1090
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->getAll()Ljava/util/List;

    move-result-object v0

    .line 1091
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 1093
    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewActivity;->a:Lcom/ushaqi/zhuishushenqi/adapter/a;

    invoke-virtual {v3, v0}, Lcom/ushaqi/zhuishushenqi/adapter/a;->a(Ljava/util/Collection;)V

    .line 1094
    const/4 v0, 0x1

    .line 64
    :goto_0
    if-eqz v0, :cond_1

    .line 65
    const/16 v0, 0x8

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 69
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 1096
    goto :goto_0

    .line 67
    :cond_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method
