.class public Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;
.super Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/EditText;

.field private b:Landroid/widget/EditText;

.field private c:Landroid/view/View;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Z

.field private i:[Ljava/lang/String;

.field private j:I

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;-><init>()V

    .line 248
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;->a:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 33
    .line 3208
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 3209
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x2710

    if-le v0, v2, :cond_1

    const/4 v0, 0x1

    .line 3124
    :goto_0
    if-eqz v0, :cond_2

    .line 3125
    const v0, 0x7f0500c1

    invoke-static {p0, v0}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;I)V

    .line 4201
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 3209
    goto :goto_0

    .line 3129
    :cond_2
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;->g:Z

    if-eqz v0, :cond_4

    .line 3130
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3131
    invoke-static {p0, p1}, Landroid/support/design/widget/am;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 4146
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4147
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4148
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteItemActivity;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4149
    const-string v4, "book_post_list_bookId"

    iget-object v5, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;->e:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4150
    const-string v4, "book_post_list_bookTitle"

    iget-object v5, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;->f:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4151
    const-string v4, "add_vote_title"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4152
    const-string v0, "add_vote_desc"

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4153
    const-string v0, "book_post_list_from_reader"

    iget-boolean v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;->h:Z

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4154
    const-string v0, "block"

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;->l:Ljava/lang/String;

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4155
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;->i:[Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 4156
    const-string v0, "lastContentArray"

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;->i:[Ljava/lang/String;

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 4158
    :cond_3
    invoke-virtual {p0, v3, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 3135
    :cond_4
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3136
    invoke-static {p0, p1}, Landroid/support/design/widget/am;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 4198
    invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v0

    .line 4199
    if-nez v0, :cond_5

    .line 4200
    const-string v0, "\u8bf7\u767b\u5f55\u540e\u518d\u53d1\u5e03"

    invoke-static {p0, v0}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 4201
    invoke-static {p0}, Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 4203
    :cond_5
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Account;->getToken()Ljava/lang/String;

    move-result-object v1

    .line 4216
    new-instance v2, Luk/me/lewisdeane/ldialogs/h;

    invoke-direct {v2, p0}, Luk/me/lewisdeane/ldialogs/h;-><init>(Landroid/content/Context;)V

    .line 4217
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f0300a2

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 4218
    const v0, 0x7f0c022e

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 4219
    iget v4, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;->j:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_6

    .line 4220
    const v4, 0x7f0501dd

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 4224
    :goto_2
    const-string v0, "\u53d1\u5e03"

    .line 5036
    iput-object v0, v2, Luk/me/lewisdeane/ldialogs/h;->d:Ljava/lang/String;

    .line 4225
    const v0, 0x7f0501d7

    new-instance v4, Lcom/ushaqi/zhuishushenqi/ui/post/L;

    invoke-direct {v4, p0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/L;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;Ljava/lang/String;)V

    invoke-virtual {v2, v0, v4}, Luk/me/lewisdeane/ldialogs/h;->a(ILandroid/content/DialogInterface$OnClickListener;)Luk/me/lewisdeane/ldialogs/h;

    .line 4235
    const v0, 0x7f050011

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/post/M;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/post/M;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;)V

    invoke-virtual {v2, v0, v1}, Luk/me/lewisdeane/ldialogs/h;->b(ILandroid/content/DialogInterface$OnClickListener;)Luk/me/lewisdeane/ldialogs/h;

    .line 4242
    invoke-virtual {v2, v3}, Luk/me/lewisdeane/ldialogs/h;->a(Landroid/view/View;)Luk/me/lewisdeane/ldialogs/h;

    move-result-object v0

    invoke-virtual {v0}, Luk/me/lewisdeane/ldialogs/h;->b()Landroid/app/AlertDialog;

    goto/16 :goto_1

    .line 4222
    :cond_6
    const v4, 0x7f0501dc

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;->b:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic c(Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;)I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;->j:I

    return v0
.end method

.method static synthetic e(Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;->l:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;->f:Ljava/lang/String;

    return-object v0
.end method

.method private f()Z
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v0, 0x0

    .line 173
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 175
    iget v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;->j:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    .line 176
    invoke-static {v1}, Lcom/arcsoft/hpay100/a/a;->Q(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 177
    const-string v1, "\t\t\u8bf7\u8f93\u5165\u5e16\u5b50\u6807\u9898\t\t"

    invoke-static {p0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 194
    :goto_0
    return v0

    .line 180
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v4, :cond_1

    .line 181
    const-string v1, "\t\t\u6807\u9898\u6587\u5b57\u592a\u5c11\u4e86\u54e6\t\t"

    invoke-static {p0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 185
    :cond_1
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 186
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/arcsoft/hpay100/a/a;->Q(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 187
    :cond_2
    const-string v1, "\t\t\u8bf7\u8f93\u5165\u6b63\u6587\t\t"

    invoke-static {p0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 190
    :cond_3
    iget v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;->j:I

    if-ne v2, v4, :cond_4

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x12c

    if-ge v1, v2, :cond_4

    .line 191
    const-string v1, "\t\t\u6587\u7ae0\u6b63\u6587\u4e0d\u5c11\u4e8e300\u5b57\t\t"

    invoke-static {p0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 194
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic g(Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;)Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;->h:Z

    return v0
.end method


# virtual methods
.method protected b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;->k:Ljava/lang/String;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 163
    invoke-super {p0, p1, p2, p3}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 164
    if-nez p1, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 165
    const-string v0, "contentArray"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;->i:[Ljava/lang/String;

    .line 167
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 364
    .line 1350
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1351
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1352
    invoke-static {v1}, Lcom/arcsoft/hpay100/a/a;->Q(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 364
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    .line 2326
    new-instance v0, Luk/me/lewisdeane/ldialogs/h;

    invoke-direct {v0, p0}, Luk/me/lewisdeane/ldialogs/h;-><init>(Landroid/content/Context;)V

    .line 2327
    const-string v1, "\u63d0\u793a"

    .line 3036
    iput-object v1, v0, Luk/me/lewisdeane/ldialogs/h;->d:Ljava/lang/String;

    .line 2328
    const-string v1, "\u79bb\u5f00\u5c06\u4e22\u5931\u5df2\u8f93\u5165\u7684\u5185\u5bb9\uff0c\u786e\u5b9a\u79bb\u5f00\uff1f"

    .line 3046
    iput-object v1, v0, Luk/me/lewisdeane/ldialogs/h;->e:Ljava/lang/String;

    .line 2329
    const-string v1, "\u7559\u5728\u6b64\u9875"

    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/post/N;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/ui/post/N;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;)V

    invoke-virtual {v0, v1, v2}, Luk/me/lewisdeane/ldialogs/h;->b(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Luk/me/lewisdeane/ldialogs/h;

    .line 2336
    const-string v1, "\u79bb\u5f00"

    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/post/O;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/ui/post/O;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;)V

    invoke-virtual {v0, v1, v2}, Luk/me/lewisdeane/ldialogs/h;->a(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Luk/me/lewisdeane/ldialogs/h;

    .line 2343
    invoke-virtual {v0}, Luk/me/lewisdeane/ldialogs/h;->a()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 369
    :goto_1
    return-void

    .line 1355
    :cond_1
    invoke-static {v2}, Lcom/arcsoft/hpay100/a/a;->Q(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1358
    const/4 v0, 0x0

    goto :goto_0

    .line 367
    :cond_2
    invoke-super {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->onBackPressed()V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const v4, 0x7f050120

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 59
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    const v0, 0x7f030026

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;->setContentView(I)V

    .line 62
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/a;->a()Lcom/ushaqi/zhuishushenqi/a;

    invoke-static {p0}, Lcom/ushaqi/zhuishushenqi/a;->a(Landroid/app/Activity;)V

    .line 64
    const v0, 0x7f0c00d0

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;->a:Landroid/widget/EditText;

    .line 65
    const v0, 0x7f0c00d2

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;->b:Landroid/widget/EditText;

    .line 66
    const v0, 0x7f0c00d1

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;->c:Landroid/view/View;

    .line 68
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "add_post_mode"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;->l:Ljava/lang/String;

    .line 69
    const-string v0, "ramble"

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    const/4 v0, 0x1

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;->j:I

    .line 71
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setHint(I)V

    .line 72
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;->b:Landroid/widget/EditText;

    const v1, 0x7f05011f

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 73
    const-string v0, "\u8bdd\u9898"

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;->k:Ljava/lang/String;

    .line 101
    :goto_0
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "add_post_category"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;->g:Z

    .line 104
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;->g:Z

    if-eqz v0, :cond_5

    .line 105
    const-string v0, "\u4e0b\u4e00\u6b65"

    .line 106
    const-string v1, "\u6295\u7968"

    iput-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;->k:Ljava/lang/String;

    .line 111
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u7f16\u8f91"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/post/K;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/ui/post/K;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;)V

    invoke-virtual {p0, v1, v0, v2}, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;->a(Ljava/lang/String;Ljava/lang/String;Lcom/ushaqi/zhuishushenqi/ui/aa;)V

    .line 117
    return-void

    .line 74
    :cond_0
    const-string v0, "android-feedback"

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    const/4 v0, 0x2

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;->j:I

    .line 76
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;->a:Landroid/widget/EditText;

    const v1, 0x7f050122

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 77
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;->b:Landroid/widget/EditText;

    const v1, 0x7f050121

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 78
    const-string v0, "\u610f\u89c1\u53cd\u9988"

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;->k:Ljava/lang/String;

    goto :goto_0

    .line 79
    :cond_1
    const-string v0, "TWEET"

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 80
    const/4 v0, 0x3

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;->j:I

    .line 81
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 82
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;->c:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 83
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;->b:Landroid/widget/EditText;

    const v1, 0x7f050123

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 84
    const-string v0, "\u52a8\u6001"

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;->k:Ljava/lang/String;

    goto :goto_0

    .line 85
    :cond_2
    const-string v0, "ARTICLE"

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 86
    const/4 v0, 0x4

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;->j:I

    .line 87
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setHint(I)V

    .line 88
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;->b:Landroid/widget/EditText;

    const v1, 0x7f05011e

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 89
    const-string v0, "\u6587\u7ae0"

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;->k:Ljava/lang/String;

    goto/16 :goto_0

    .line 90
    :cond_3
    const-string v0, "girl"

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 91
    const/4 v0, 0x5

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;->j:I

    .line 92
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;->a:Landroid/widget/EditText;

    const v1, 0x7f0500b4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 93
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;->b:Landroid/widget/EditText;

    const v1, 0x7f0500b2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 94
    const-string v0, "\u5973\u751f\u533a"

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;->k:Ljava/lang/String;

    goto/16 :goto_0

    .line 96
    :cond_4
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "book_post_list_bookId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;->e:Ljava/lang/String;

    .line 97
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "book_post_list_bookTitle"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;->f:Ljava/lang/String;

    .line 98
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "book_post_list_from_reader"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;->h:Z

    .line 99
    iput v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;->j:I

    goto/16 :goto_0

    .line 108
    :cond_5
    const-string v0, "\u53d1\u5e03"

    goto/16 :goto_1
.end method
