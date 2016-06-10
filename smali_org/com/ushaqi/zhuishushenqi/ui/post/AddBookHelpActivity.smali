.class public Lcom/ushaqi/zhuishushenqi/ui/post/AddBookHelpActivity;
.super Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/EditText;

.field private b:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;-><init>()V

    .line 122
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/post/AddBookHelpActivity;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 33
    .line 2061
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddBookHelpActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 2062
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddBookHelpActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 2063
    invoke-static {v1}, Lcom/arcsoft/hpay100/a/a;->Q(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2064
    const-string v1, "\u8bf7\u8f93\u5165\u6807\u9898"

    invoke-static {p0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 2073
    :goto_0
    return v0

    .line 2067
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x4

    if-ge v1, v3, :cond_1

    .line 2068
    const-string v1, "\u6807\u9898\u6587\u5b57\u592a\u5c11\u4e86\u54e6"

    invoke-static {p0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 2071
    :cond_1
    invoke-static {v2}, Lcom/arcsoft/hpay100/a/a;->Q(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2072
    const-string v1, "\u8bf7\u8f93\u5165\u6b63\u6587"

    invoke-static {p0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 2075
    :cond_2
    const/4 v0, 0x1

    .line 33
    goto :goto_0
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/post/AddBookHelpActivity;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 33
    .line 2079
    invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v0

    .line 2080
    if-nez v0, :cond_0

    .line 2081
    const-string v0, "\u8bf7\u767b\u5f55\u540e\u518d\u53d1\u5e03"

    invoke-static {p0, v0}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 2082
    invoke-static {p0}, Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/AddBookHelpActivity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    .line 2084
    :cond_0
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Account;->getToken()Ljava/lang/String;

    move-result-object v1

    .line 2092
    new-instance v2, Luk/me/lewisdeane/ldialogs/h;

    invoke-direct {v2, p0}, Luk/me/lewisdeane/ldialogs/h;-><init>(Landroid/content/Context;)V

    .line 2093
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f0300a2

    invoke-virtual {v0, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 2094
    const v0, 0x7f0c022e

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2095
    const v4, 0x7f0501da

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 2097
    const-string v0, "\u53d1\u5e03"

    .line 3036
    iput-object v0, v2, Luk/me/lewisdeane/ldialogs/h;->d:Ljava/lang/String;

    .line 2098
    const v0, 0x7f0501d7

    invoke-virtual {v2, v0, v5}, Luk/me/lewisdeane/ldialogs/h;->a(ILandroid/content/DialogInterface$OnClickListener;)Luk/me/lewisdeane/ldialogs/h;

    .line 2099
    const v0, 0x7f050011

    new-instance v4, Lcom/ushaqi/zhuishushenqi/ui/post/j;

    invoke-direct {v4, p0}, Lcom/ushaqi/zhuishushenqi/ui/post/j;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/AddBookHelpActivity;)V

    invoke-virtual {v2, v0, v4}, Luk/me/lewisdeane/ldialogs/h;->b(ILandroid/content/DialogInterface$OnClickListener;)Luk/me/lewisdeane/ldialogs/h;

    .line 2106
    invoke-virtual {v2, v3}, Luk/me/lewisdeane/ldialogs/h;->a(Landroid/view/View;)Luk/me/lewisdeane/ldialogs/h;

    move-result-object v0

    invoke-virtual {v0}, Luk/me/lewisdeane/ldialogs/h;->b()Landroid/app/AlertDialog;

    move-result-object v2

    .line 2107
    const v0, 0x1020019

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 2108
    new-instance v3, Lcom/ushaqi/zhuishushenqi/ui/post/k;

    invoke-direct {v3, p0, v2, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/k;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/AddBookHelpActivity;Landroid/app/Dialog;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/ushaqi/zhuishushenqi/ui/post/AddBookHelpActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddBookHelpActivity;->a:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic d(Lcom/ushaqi/zhuishushenqi/ui/post/AddBookHelpActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddBookHelpActivity;->b:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 213
    .line 1179
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddBookHelpActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1180
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddBookHelpActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1181
    invoke-static {v1}, Lcom/arcsoft/hpay100/a/a;->Q(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 213
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    .line 1191
    new-instance v0, Luk/me/lewisdeane/ldialogs/h;

    invoke-direct {v0, p0}, Luk/me/lewisdeane/ldialogs/h;-><init>(Landroid/content/Context;)V

    .line 1192
    const-string v1, "\u63d0\u793a"

    .line 2036
    iput-object v1, v0, Luk/me/lewisdeane/ldialogs/h;->d:Ljava/lang/String;

    .line 1193
    const-string v1, "\u79bb\u5f00\u5c06\u4e22\u5931\u5df2\u8f93\u5165\u7684\u5185\u5bb9\uff0c\u786e\u5b9a\u79bb\u5f00\uff1f"

    .line 2046
    iput-object v1, v0, Luk/me/lewisdeane/ldialogs/h;->e:Ljava/lang/String;

    .line 1194
    const-string v1, "\u7559\u5728\u6b64\u9875"

    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/post/l;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/ui/post/l;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/AddBookHelpActivity;)V

    invoke-virtual {v0, v1, v2}, Luk/me/lewisdeane/ldialogs/h;->b(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Luk/me/lewisdeane/ldialogs/h;

    .line 1200
    const-string v1, "\u79bb\u5f00"

    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/post/m;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/ui/post/m;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/AddBookHelpActivity;)V

    invoke-virtual {v0, v1, v2}, Luk/me/lewisdeane/ldialogs/h;->a(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Luk/me/lewisdeane/ldialogs/h;

    .line 1207
    invoke-virtual {v0}, Luk/me/lewisdeane/ldialogs/h;->a()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 218
    :goto_1
    return-void

    .line 1184
    :cond_1
    invoke-static {v2}, Lcom/arcsoft/hpay100/a/a;->Q(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1187
    const/4 v0, 0x0

    goto :goto_0

    .line 216
    :cond_2
    invoke-super {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->onBackPressed()V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 40
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const v0, 0x7f030022

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/AddBookHelpActivity;->setContentView(I)V

    .line 42
    const v0, 0x7f0500ae

    const v1, 0x7f050150

    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/post/i;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/ui/post/i;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/AddBookHelpActivity;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/ui/post/AddBookHelpActivity;->a(IILcom/ushaqi/zhuishushenqi/ui/aa;)V

    .line 51
    invoke-static {p0}, Lcn/sharesdk/framework/ShareSDK;->initSDK(Landroid/content/Context;)V

    .line 53
    const v0, 0x7f0c00c9

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/AddBookHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddBookHelpActivity;->a:Landroid/widget/EditText;

    .line 54
    const v0, 0x7f0c00ca

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/AddBookHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddBookHelpActivity;->b:Landroid/widget/EditText;

    .line 55
    return-void
.end method
