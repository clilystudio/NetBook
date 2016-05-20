.class public Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddCollectionActivity;
.super Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Ljava/lang/String;

.field private e:Lcom/ushaqi/zhuishushenqi/model/Author;

.field private f:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;-><init>()V

    .line 168
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddCollectionActivity;)V
    .locals 4

    .prologue
    .line 32
    .line 3384
    invoke-static {p0}, Landroid/support/design/widget/am;->a(Landroid/app/Activity;)Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v0

    .line 3088
    if-eqz v0, :cond_0

    .line 3091
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Account;->getUser()Lcom/ushaqi/zhuishushenqi/model/User;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Account;->getUser()Lcom/ushaqi/zhuishushenqi/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/User;->getLv()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 3092
    const-string v0, "\u7b49\u7ea7\u4e0d\u591f"

    invoke-static {p0, v0}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 3101
    :cond_0
    :goto_0
    return-void

    .line 3096
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddCollectionActivity;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3097
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddCollectionActivity;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3098
    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->Q(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3099
    const-string v0, "\u8bf7\u8f93\u5165\u4e66\u5355\u540d"

    invoke-static {p0, v0}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 3100
    :cond_2
    invoke-static {v1}, Lcom/arcsoft/hpay100/a/a;->Q(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3101
    const-string v0, "\u8bf7\u8f93\u5165\u4e66\u5355\u4e3b\u9898\u4ecb\u7ecd"

    invoke-static {p0, v0}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 3103
    :cond_3
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3104
    const-string v3, "name"

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3105
    const-string v0, "desc"

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3106
    const-string v0, "desc"

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3107
    const-string v0, "ugc_id"

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddCollectionActivity;->c:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3108
    const-string v0, "is_draft"

    iget-boolean v1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddCollectionActivity;->f:Z

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3109
    const-string v0, "my_author"

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddCollectionActivity;->e:Lcom/ushaqi/zhuishushenqi/model/Author;

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 3110
    invoke-virtual {p0, v2}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddCollectionActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddCollectionActivity;)Lcom/ushaqi/zhuishushenqi/model/UGCNewCollection;
    .locals 1

    .prologue
    .line 32
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddCollectionActivity;->e()Lcom/ushaqi/zhuishushenqi/model/UGCNewCollection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddCollectionActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddCollectionActivity;->a:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddCollectionActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddCollectionActivity;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic e(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddCollectionActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddCollectionActivity;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddCollectionActivity;)Lcom/ushaqi/zhuishushenqi/model/UGCNewCollection;
    .locals 1

    .prologue
    .line 32
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddCollectionActivity;->e()Lcom/ushaqi/zhuishushenqi/model/UGCNewCollection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic g(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddCollectionActivity;)Lcom/ushaqi/zhuishushenqi/model/UGCNewCollection;
    .locals 1

    .prologue
    .line 32
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddCollectionActivity;->e()Lcom/ushaqi/zhuishushenqi/model/UGCNewCollection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic h(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddCollectionActivity;)Lcom/ushaqi/zhuishushenqi/model/UGCNewCollection;
    .locals 1

    .prologue
    .line 32
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddCollectionActivity;->e()Lcom/ushaqi/zhuishushenqi/model/UGCNewCollection;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    .prologue
    .line 126
    .line 1115
    const/4 v0, 0x0

    .line 1116
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddCollectionActivity;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1117
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddCollectionActivity;->b:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1118
    invoke-static {v1}, Lcom/arcsoft/hpay100/a/a;->Q(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v2}, Lcom/arcsoft/hpay100/a/a;->Q(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1119
    :cond_0
    const/4 v0, 0x1

    .line 126
    :cond_1
    if-eqz v0, :cond_5

    .line 1140
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddCollectionActivity;->f:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddCollectionActivity;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddCollectionActivity;->c:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddCollectionActivity;->e()Lcom/ushaqi/zhuishushenqi/model/UGCNewCollection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/UGCNewCollection;->getBooks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_4

    .line 1141
    :cond_3
    new-instance v0, Luk/me/lewisdeane/ldialogs/h;

    invoke-direct {v0, p0}, Luk/me/lewisdeane/ldialogs/h;-><init>(Landroid/content/Context;)V

    const-string v1, "\u63d0\u793a"

    .line 2036
    iput-object v1, v0, Luk/me/lewisdeane/ldialogs/h;->d:Ljava/lang/String;

    .line 1141
    const-string v1, "\u79bb\u5f00\u5c06\u4e22\u5931\u5df2\u8f93\u5165\u7684\u5185\u5bb9\uff0c\u786e\u5b9a\u79bb\u5f00\uff1f"

    .line 2046
    iput-object v1, v0, Luk/me/lewisdeane/ldialogs/h;->e:Ljava/lang/String;

    .line 1141
    const-string v1, "\u79bb\u5f00"

    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/D;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/D;-><init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddCollectionActivity;)V

    .line 1142
    invoke-virtual {v0, v1, v2}, Luk/me/lewisdeane/ldialogs/h;->a(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Luk/me/lewisdeane/ldialogs/h;

    move-result-object v0

    const-string v1, "\u7ee7\u7eed\u7f16\u8f91"

    const/4 v2, 0x0

    .line 1148
    invoke-virtual {v0, v1, v2}, Luk/me/lewisdeane/ldialogs/h;->b(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Luk/me/lewisdeane/ldialogs/h;

    move-result-object v0

    .line 1149
    invoke-virtual {v0}, Luk/me/lewisdeane/ldialogs/h;->a()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 131
    :goto_0
    return-void

    .line 1151
    :cond_4
    new-instance v0, Luk/me/lewisdeane/ldialogs/h;

    invoke-direct {v0, p0}, Luk/me/lewisdeane/ldialogs/h;-><init>(Landroid/content/Context;)V

    const-string v1, "\u63d0\u793a"

    .line 3036
    iput-object v1, v0, Luk/me/lewisdeane/ldialogs/h;->d:Ljava/lang/String;

    .line 1151
    const-string v1, "\u79bb\u5f00\u5c06\u4e22\u5931\u5df2\u8f93\u5165\u7684\u5185\u5bb9\uff0c\u662f\u5426\u4fdd\u5b58\u4e3a\u8349\u7a3f\uff1f"

    .line 3046
    iput-object v1, v0, Luk/me/lewisdeane/ldialogs/h;->e:Ljava/lang/String;

    .line 1151
    const-string v1, "\u76f4\u63a5\u79bb\u5f00"

    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/F;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/F;-><init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddCollectionActivity;)V

    .line 1152
    invoke-virtual {v0, v1, v2}, Luk/me/lewisdeane/ldialogs/h;->b(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Luk/me/lewisdeane/ldialogs/h;

    move-result-object v0

    const-string v1, "\u4fdd\u5b58\u5e76\u79bb\u5f00"

    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/E;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/E;-><init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddCollectionActivity;)V

    .line 1158
    invoke-virtual {v0, v1, v2}, Luk/me/lewisdeane/ldialogs/h;->a(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Luk/me/lewisdeane/ldialogs/h;

    move-result-object v0

    .line 1164
    invoke-virtual {v0}, Luk/me/lewisdeane/ldialogs/h;->a()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 129
    :cond_5
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddCollectionActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const v0, 0x7f03005f

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddCollectionActivity;->setContentView(I)V

    .line 47
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/a/b;->a(Ljava/lang/Object;)V

    .line 49
    const v0, 0x7f0c0168

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddCollectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddCollectionActivity;->a:Landroid/widget/TextView;

    .line 50
    const v0, 0x7f0c0169

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddCollectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddCollectionActivity;->b:Landroid/widget/TextView;

    .line 52
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddCollectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ugc_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddCollectionActivity;->c:Ljava/lang/String;

    .line 53
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddCollectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "is_draft"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddCollectionActivity;->f:Z

    .line 54
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddCollectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "my_author"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/Author;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddCollectionActivity;->e:Lcom/ushaqi/zhuishushenqi/model/Author;

    .line 55
    const v0, 0x7f0501c2

    .line 56
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddCollectionActivity;->c:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddCollectionActivity;->c:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 57
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a()Lcom/ushaqi/zhuishushenqi/MyApplication;

    move-result-object v0

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/MyApplication;->a:Lcom/ushaqi/zhuishushenqi/model/UGCNewCollection;

    .line 58
    if-eqz v0, :cond_0

    .line 59
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddCollectionActivity;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/UGCNewCollection;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddCollectionActivity;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/UGCNewCollection;->getDesc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddCollectionActivity;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddCollectionActivity;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 63
    :cond_0
    const v0, 0x7f0501c3

    .line 69
    :goto_0
    const v1, 0x7f050133

    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/C;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/C;-><init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddCollectionActivity;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddCollectionActivity;->a(IILcom/ushaqi/zhuishushenqi/ui/aa;)V

    .line 75
    return-void

    .line 1078
    :cond_1
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a()Lcom/ushaqi/zhuishushenqi/MyApplication;

    move-result-object v1

    .line 1079
    new-instance v2, Lcom/ushaqi/zhuishushenqi/model/UGCNewCollection;

    invoke-direct {v2}, Lcom/ushaqi/zhuishushenqi/model/UGCNewCollection;-><init>()V

    iput-object v2, v1, Lcom/ushaqi/zhuishushenqi/MyApplication;->a:Lcom/ushaqi/zhuishushenqi/model/UGCNewCollection;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 135
    invoke-super {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->onDestroy()V

    .line 136
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/a/b;->b(Ljava/lang/Object;)V

    .line 137
    return-void
.end method

.method public onUgcDraftEvent(Lcom/ushaqi/zhuishushenqi/event/E;)V
    .locals 0
    .annotation runtime Lcom/squareup/a/l;
    .end annotation

    .prologue
    .line 211
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddCollectionActivity;->finish()V

    .line 212
    return-void
.end method
