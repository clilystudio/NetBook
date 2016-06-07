.class public Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewContentActivity;
.super Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Landroid/widget/EditText;

.field private e:Landroid/widget/EditText;

.field private f:Z

.field private g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewContentActivity;->b:I

    .line 149
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewContentActivity;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 33
    .line 2076
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewContentActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 2077
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewContentActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 2078
    invoke-static {v1}, Lcom/arcsoft/hpay100/a/a;->Q(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2079
    const-string v1, "\u8bf7\u8f93\u5165\u4e66\u8bc4\u6807\u9898"

    invoke-static {p0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 2093
    :goto_0
    return v0

    .line 2082
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x4

    if-ge v1, v3, :cond_1

    .line 2083
    const-string v1, "\u6807\u9898\u5b57\u6570\u4e0d\u80fd\u5c11\u4e8e4\u5b57"

    invoke-static {p0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 2086
    :cond_1
    invoke-static {v2}, Lcom/arcsoft/hpay100/a/a;->Q(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2087
    const-string v1, "\u8bf7\u8f93\u5165\u4e66\u8bc4\u6b63\u6587"

    invoke-static {p0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 2090
    :cond_2
    invoke-static {v2}, Lcom/arcsoft/hpay100/a/a;->Q(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2091
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x32

    if-ge v1, v2, :cond_3

    .line 2092
    const-string v1, "\u5185\u5bb9\u5b57\u6570\u4e0d\u80fd\u5c11\u4e8e50\u5b57"

    invoke-static {p0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 2096
    :cond_3
    const/4 v0, 0x1

    .line 33
    goto :goto_0
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewContentActivity;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 33
    .line 2100
    invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v0

    .line 2101
    if-nez v0, :cond_0

    .line 2102
    const-string v0, "\u8bf7\u767b\u5f55\u540e\u518d\u53d1\u5e03"

    invoke-static {p0, v0}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 2103
    invoke-static {p0}, Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewContentActivity;->startActivity(Landroid/content/Intent;)V

    .line 2108
    :goto_0
    return-void

    .line 2106
    :cond_0
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Account;->getUser()Lcom/ushaqi/zhuishushenqi/model/User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/User;->getLv()I

    move-result v1

    .line 2107
    const/4 v2, 0x3

    if-lt v1, v2, :cond_1

    .line 2108
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Account;->getToken()Ljava/lang/String;

    move-result-object v1

    .line 2119
    new-instance v2, Luk/me/lewisdeane/ldialogs/h;

    invoke-direct {v2, p0}, Luk/me/lewisdeane/ldialogs/h;-><init>(Landroid/content/Context;)V

    .line 2120
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f0300a2

    invoke-virtual {v0, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 2121
    const v0, 0x7f0c022e

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2122
    const v4, 0x7f0501db

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 2124
    const-string v0, "\u53d1\u5e03"

    .line 3036
    iput-object v0, v2, Luk/me/lewisdeane/ldialogs/h;->d:Ljava/lang/String;

    .line 2125
    const v0, 0x7f0501d7

    invoke-virtual {v2, v0, v5}, Luk/me/lewisdeane/ldialogs/h;->a(ILandroid/content/DialogInterface$OnClickListener;)Luk/me/lewisdeane/ldialogs/h;

    .line 2126
    const v0, 0x7f050011

    invoke-virtual {v2, v0, v5}, Luk/me/lewisdeane/ldialogs/h;->b(ILandroid/content/DialogInterface$OnClickListener;)Luk/me/lewisdeane/ldialogs/h;

    .line 2128
    invoke-virtual {v2, v3}, Luk/me/lewisdeane/ldialogs/h;->a(Landroid/view/View;)Luk/me/lewisdeane/ldialogs/h;

    move-result-object v0

    invoke-virtual {v0}, Luk/me/lewisdeane/ldialogs/h;->b()Landroid/app/AlertDialog;

    move-result-object v2

    .line 2130
    const v0, 0x1020019

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 2131
    new-instance v3, Lcom/ushaqi/zhuishushenqi/ui/post/E;

    invoke-direct {v3, p0, v2, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/E;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewContentActivity;Landroid/app/Dialog;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 2110
    :cond_1
    const-string v0, "\u5f88\u62b1\u6b49\uff0c\u60a8\u7684\u7b49\u7ea7\u4e0d\u591f"

    invoke-static {p0, v0}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewContentActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewContentActivity;->c:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic d(Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewContentActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewContentActivity;->e:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic e(Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewContentActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewContentActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewContentActivity;)I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewContentActivity;->b:I

    return v0
.end method

.method static synthetic g(Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewContentActivity;)Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewContentActivity;->g:Z

    return v0
.end method

.method static synthetic h(Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewContentActivity;)Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewContentActivity;->f:Z

    return v0
.end method

.method static synthetic i(Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewContentActivity;)V
    .locals 4

    .prologue
    .line 3242
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

    .line 33
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 4

    .prologue
    .line 247
    .line 1219
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewContentActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1220
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewContentActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1221
    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->Q(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v1}, Lcom/arcsoft/hpay100/a/a;->Q(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    const/4 v0, 0x1

    .line 247
    :goto_0
    if-eqz v0, :cond_2

    .line 1228
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewContentActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1229
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewContentActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1230
    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->Q(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1231
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a()Lcom/ushaqi/zhuishushenqi/MyApplication;

    move-result-object v2

    const-string v3, "saveToLocalReviewTitle"

    invoke-virtual {v2, v3, v0}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1233
    :cond_1
    invoke-static {v1}, Lcom/arcsoft/hpay100/a/a;->Q(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1234
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a()Lcom/ushaqi/zhuishushenqi/MyApplication;

    move-result-object v0

    const-string v2, "saveToLocalReviewDesc"

    invoke-virtual {v0, v2, v1}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    :cond_2
    invoke-super {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->onBackPressed()V

    .line 251
    return-void

    .line 1221
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 45
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const v0, 0x7f030025

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewContentActivity;->setContentView(I)V

    .line 48
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewContentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 49
    if-eqz v0, :cond_0

    .line 50
    const-string v1, "BOOK_COMMENT"

    const-string v2, "INTENT_TYPE_NAME"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewContentActivity;->g:Z

    .line 53
    :cond_0
    const v0, 0x7f0500b7

    const v1, 0x7f050150

    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/post/D;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/ui/post/D;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewContentActivity;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewContentActivity;->a(IILcom/ushaqi/zhuishushenqi/ui/aa;)V

    .line 62
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewContentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "bookReviewBookId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewContentActivity;->a:Ljava/lang/String;

    .line 63
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewContentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "bookReviewBookRating"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewContentActivity;->b:I

    .line 64
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewContentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "isFromBookReviewList"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewContentActivity;->f:Z

    .line 65
    const v0, 0x7f0c00ce

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewContentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewContentActivity;->c:Landroid/widget/EditText;

    .line 66
    const v0, 0x7f0c00cf

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewContentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewContentActivity;->e:Landroid/widget/EditText;

    .line 68
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewContentActivity;->c:Landroid/widget/EditText;

    const-string v1, "saveToLocalReviewTitle"

    invoke-static {v0, v1}, Landroid/support/design/widget/am;->a(Landroid/widget/EditText;Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewContentActivity;->e:Landroid/widget/EditText;

    const-string v1, "saveToLocalReviewDesc"

    invoke-static {v0, v1}, Landroid/support/design/widget/am;->a(Landroid/widget/EditText;Ljava/lang/String;)V

    .line 70
    return-void
.end method
