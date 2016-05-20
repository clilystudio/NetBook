.class public Lcom/ushaqi/zhuishushenqi/ui/post/AddGamePostActivity;
.super Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;-><init>()V

    .line 122
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 41
    new-instance v0, Lcom/ushaqi/zhuishushenqi/d;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/d;-><init>()V

    const-class v1, Lcom/ushaqi/zhuishushenqi/ui/post/AddGamePostActivity;

    invoke-virtual {v0, p0, v1}, Lcom/ushaqi/zhuishushenqi/d;->a(Landroid/content/Context;Ljava/lang/Class;)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    const-string v1, "post_game_id"

    invoke-virtual {v0, v1, p1}, Lcom/ushaqi/zhuishushenqi/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/d;->a()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/post/AddGamePostActivity;)Z
    .locals 1

    .prologue
    .line 35
    .line 2065
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddGamePostActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 2066
    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->Q(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2067
    const-string v0, "\u8bf7\u8f93\u5165\u6b63\u6587"

    invoke-static {p0, v0}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 2068
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 2070
    :cond_0
    const/4 v0, 0x1

    .line 35
    goto :goto_0
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/post/AddGamePostActivity;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 35
    .line 2074
    invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v0

    .line 2075
    if-nez v0, :cond_0

    .line 2076
    const-string v0, "\u8bf7\u767b\u5f55\u540e\u518d\u53d1\u5e03"

    invoke-static {p0, v0}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 2077
    invoke-static {p0}, Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/AddGamePostActivity;->startActivity(Landroid/content/Intent;)V

    .line 2081
    :goto_0
    return-void

    .line 2079
    :cond_0
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Account;->getUser()Lcom/ushaqi/zhuishushenqi/model/User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/User;->getLv()I

    move-result v1

    .line 2080
    const/4 v2, 0x2

    if-lt v1, v2, :cond_1

    .line 2081
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
    const v4, 0x7f0501d9

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

    new-instance v4, Lcom/ushaqi/zhuishushenqi/ui/post/p;

    invoke-direct {v4, p0}, Lcom/ushaqi/zhuishushenqi/ui/post/p;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/AddGamePostActivity;)V

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
    new-instance v3, Lcom/ushaqi/zhuishushenqi/ui/post/q;

    invoke-direct {v3, p0, v2, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/q;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/AddGamePostActivity;Landroid/app/Dialog;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 2083
    :cond_1
    const-string v0, "\u5f88\u62b1\u6b49\uff0c\u60a8\u7684\u7b49\u7ea7\u4e0d\u591f"

    invoke-static {p0, v0}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/ushaqi/zhuishushenqi/ui/post/AddGamePostActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddGamePostActivity;->a:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    .prologue
    .line 208
    .line 1178
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddGamePostActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1179
    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->Q(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1180
    const/4 v0, 0x1

    .line 208
    :goto_0
    if-eqz v0, :cond_1

    .line 1186
    new-instance v0, Luk/me/lewisdeane/ldialogs/h;

    invoke-direct {v0, p0}, Luk/me/lewisdeane/ldialogs/h;-><init>(Landroid/content/Context;)V

    .line 1187
    const-string v1, "\u63d0\u793a"

    .line 2036
    iput-object v1, v0, Luk/me/lewisdeane/ldialogs/h;->d:Ljava/lang/String;

    .line 1188
    const-string v1, "\u79bb\u5f00\u5c06\u4e22\u5931\u5df2\u8f93\u5165\u7684\u5185\u5bb9\uff0c\u786e\u5b9a\u79bb\u5f00\uff1f"

    .line 2046
    iput-object v1, v0, Luk/me/lewisdeane/ldialogs/h;->e:Ljava/lang/String;

    .line 1189
    const-string v1, "\u7559\u5728\u6b64\u9875"

    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/post/r;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/ui/post/r;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/AddGamePostActivity;)V

    invoke-virtual {v0, v1, v2}, Luk/me/lewisdeane/ldialogs/h;->b(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Luk/me/lewisdeane/ldialogs/h;

    .line 1195
    const-string v1, "\u79bb\u5f00"

    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/post/s;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/ui/post/s;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/AddGamePostActivity;)V

    invoke-virtual {v0, v1, v2}, Luk/me/lewisdeane/ldialogs/h;->a(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Luk/me/lewisdeane/ldialogs/h;

    .line 1202
    invoke-virtual {v0}, Luk/me/lewisdeane/ldialogs/h;->a()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 213
    :goto_1
    return-void

    .line 1182
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 211
    :cond_1
    invoke-super {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->onBackPressed()V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const v0, 0x7f030023

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/AddGamePostActivity;->setContentView(I)V

    .line 48
    const v0, 0x7f0500b5

    const v1, 0x7f050150

    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/post/o;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/ui/post/o;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/AddGamePostActivity;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/ui/post/AddGamePostActivity;->a(IILcom/ushaqi/zhuishushenqi/ui/aa;)V

    .line 57
    invoke-static {p0}, Lcn/sharesdk/framework/ShareSDK;->initSDK(Landroid/content/Context;)V

    .line 58
    const v0, 0x7f0c00cb

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/AddGamePostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddGamePostActivity;->a:Landroid/widget/EditText;

    .line 59
    return-void
.end method
