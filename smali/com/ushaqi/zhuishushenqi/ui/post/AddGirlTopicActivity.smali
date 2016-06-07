.class public Lcom/ushaqi/zhuishushenqi/ui/post/AddGirlTopicActivity;
.super Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/EditText;

.field private b:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;-><init>()V

    .line 120
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/post/AddGirlTopicActivity;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 31
    .line 2059
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddGirlTopicActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 2060
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddGirlTopicActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 2061
    invoke-static {v1}, Lcom/arcsoft/hpay100/a/a;->Q(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2062
    const-string v1, "\u8bf7\u8f93\u5165\u6807\u9898"

    invoke-static {p0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 2071
    :goto_0
    return v0

    .line 2065
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x4

    if-ge v1, v3, :cond_1

    .line 2066
    const-string v1, "\u6807\u9898\u6587\u5b57\u592a\u5c11\u4e86\u54e6"

    invoke-static {p0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 2069
    :cond_1
    invoke-static {v2}, Lcom/arcsoft/hpay100/a/a;->Q(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2070
    const-string v1, "\u8bf7\u8f93\u5165\u6b63\u6587"

    invoke-static {p0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 2073
    :cond_2
    const/4 v0, 0x1

    .line 31
    goto :goto_0
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/post/AddGirlTopicActivity;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 31
    .line 2077
    invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v0

    .line 2078
    if-nez v0, :cond_0

    .line 2079
    const-string v0, "\u8bf7\u767b\u5f55\u540e\u518d\u53d1\u5e03"

    invoke-static {p0, v0}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 2080
    invoke-static {p0}, Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/AddGirlTopicActivity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    .line 2082
    :cond_0
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Account;->getToken()Ljava/lang/String;

    move-result-object v1

    .line 2090
    new-instance v2, Luk/me/lewisdeane/ldialogs/h;

    invoke-direct {v2, p0}, Luk/me/lewisdeane/ldialogs/h;-><init>(Landroid/content/Context;)V

    .line 2091
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f0300a2

    invoke-virtual {v0, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 2092
    const v0, 0x7f0c022e

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2093
    const v4, 0x7f0501de

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 2095
    const-string v0, "\u53d1\u5e03"

    .line 3036
    iput-object v0, v2, Luk/me/lewisdeane/ldialogs/h;->d:Ljava/lang/String;

    .line 2096
    const v0, 0x7f0501d7

    invoke-virtual {v2, v0, v5}, Luk/me/lewisdeane/ldialogs/h;->a(ILandroid/content/DialogInterface$OnClickListener;)Luk/me/lewisdeane/ldialogs/h;

    .line 2097
    const v0, 0x7f050011

    new-instance v4, Lcom/ushaqi/zhuishushenqi/ui/post/v;

    invoke-direct {v4, p0}, Lcom/ushaqi/zhuishushenqi/ui/post/v;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/AddGirlTopicActivity;)V

    invoke-virtual {v2, v0, v4}, Luk/me/lewisdeane/ldialogs/h;->b(ILandroid/content/DialogInterface$OnClickListener;)Luk/me/lewisdeane/ldialogs/h;

    .line 2104
    invoke-virtual {v2, v3}, Luk/me/lewisdeane/ldialogs/h;->a(Landroid/view/View;)Luk/me/lewisdeane/ldialogs/h;

    move-result-object v0

    invoke-virtual {v0}, Luk/me/lewisdeane/ldialogs/h;->b()Landroid/app/AlertDialog;

    move-result-object v2

    .line 2105
    const v0, 0x1020019

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 2106
    new-instance v3, Lcom/ushaqi/zhuishushenqi/ui/post/w;

    invoke-direct {v3, p0, v2, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/w;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/AddGirlTopicActivity;Landroid/app/Dialog;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/ushaqi/zhuishushenqi/ui/post/AddGirlTopicActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddGirlTopicActivity;->a:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic d(Lcom/ushaqi/zhuishushenqi/ui/post/AddGirlTopicActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddGirlTopicActivity;->b:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 211
    .line 1177
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddGirlTopicActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1178
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddGirlTopicActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1179
    invoke-static {v1}, Lcom/arcsoft/hpay100/a/a;->Q(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 211
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    .line 1189
    new-instance v0, Luk/me/lewisdeane/ldialogs/h;

    invoke-direct {v0, p0}, Luk/me/lewisdeane/ldialogs/h;-><init>(Landroid/content/Context;)V

    .line 1190
    const-string v1, "\u63d0\u793a"

    .line 2036
    iput-object v1, v0, Luk/me/lewisdeane/ldialogs/h;->d:Ljava/lang/String;

    .line 1191
    const-string v1, "\u79bb\u5f00\u5c06\u4e22\u5931\u5df2\u8f93\u5165\u7684\u5185\u5bb9\uff0c\u786e\u5b9a\u79bb\u5f00\uff1f"

    .line 2046
    iput-object v1, v0, Luk/me/lewisdeane/ldialogs/h;->e:Ljava/lang/String;

    .line 1192
    const-string v1, "\u7559\u5728\u6b64\u9875"

    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/post/x;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/ui/post/x;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/AddGirlTopicActivity;)V

    invoke-virtual {v0, v1, v2}, Luk/me/lewisdeane/ldialogs/h;->b(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Luk/me/lewisdeane/ldialogs/h;

    .line 1198
    const-string v1, "\u79bb\u5f00"

    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/post/y;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/ui/post/y;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/AddGirlTopicActivity;)V

    invoke-virtual {v0, v1, v2}, Luk/me/lewisdeane/ldialogs/h;->a(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Luk/me/lewisdeane/ldialogs/h;

    .line 1205
    invoke-virtual {v0}, Luk/me/lewisdeane/ldialogs/h;->a()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 216
    :goto_1
    return-void

    .line 1182
    :cond_1
    invoke-static {v2}, Lcom/arcsoft/hpay100/a/a;->Q(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1185
    const/4 v0, 0x0

    goto :goto_0

    .line 214
    :cond_2
    invoke-super {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->onBackPressed()V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const v0, 0x7f030024

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/AddGirlTopicActivity;->setContentView(I)V

    .line 40
    const v0, 0x7f0500b3

    const v1, 0x7f050150

    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/post/u;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/ui/post/u;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/AddGirlTopicActivity;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/ui/post/AddGirlTopicActivity;->a(IILcom/ushaqi/zhuishushenqi/ui/aa;)V

    .line 49
    invoke-static {p0}, Lcn/sharesdk/framework/ShareSDK;->initSDK(Landroid/content/Context;)V

    .line 51
    const v0, 0x7f0c00cc

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/AddGirlTopicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddGirlTopicActivity;->a:Landroid/widget/EditText;

    .line 52
    const v0, 0x7f0c00cd

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/AddGirlTopicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddGirlTopicActivity;->b:Landroid/widget/EditText;

    .line 53
    return-void
.end method
