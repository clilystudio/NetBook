.class public Lcom/ushaqi/zhuishushenqi/ui/SettingsActivity;
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
    .line 40
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;-><init>()V

    return-void
.end method

.method private static a(Landroid/view/View;Z)V
    .locals 1

    .prologue
    .line 120
    if-eqz p1, :cond_0

    .line 121
    const-string v0, "\u5df2\u5f00\u542f"

    invoke-virtual {p0, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 126
    :goto_0
    return-void

    .line 123
    :cond_0
    const-string v0, "\u5df2\u5173\u95ed"

    invoke-virtual {p0, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/SettingsActivity;)V
    .locals 3

    .prologue
    .line 40
    .line 3237
    new-instance v0, Luk/me/lewisdeane/ldialogs/h;

    invoke-direct {v0, p0}, Luk/me/lewisdeane/ldialogs/h;-><init>(Landroid/content/Context;)V

    .line 3238
    const v1, 0x7f0501d4

    invoke-virtual {v0, v1}, Luk/me/lewisdeane/ldialogs/h;->a(I)Luk/me/lewisdeane/ldialogs/h;

    .line 3239
    const v1, 0x7f0501d5

    invoke-virtual {v0, v1}, Luk/me/lewisdeane/ldialogs/h;->b(I)Luk/me/lewisdeane/ldialogs/h;

    .line 3240
    const v1, 0x7f050011

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Luk/me/lewisdeane/ldialogs/h;->b(ILandroid/content/DialogInterface$OnClickListener;)Luk/me/lewisdeane/ldialogs/h;

    .line 3241
    const v1, 0x7f0501d3

    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/bZ;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/ui/bZ;-><init>(Lcom/ushaqi/zhuishushenqi/ui/SettingsActivity;)V

    invoke-virtual {v0, v1, v2}, Luk/me/lewisdeane/ldialogs/h;->a(ILandroid/content/DialogInterface$OnClickListener;)Luk/me/lewisdeane/ldialogs/h;

    .line 3247
    invoke-virtual {v0}, Luk/me/lewisdeane/ldialogs/h;->a()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 40
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/SettingsActivity;ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 40
    .line 4186
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SettingsActivity;->a:I

    if-eq v0, p1, :cond_0

    .line 4187
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/ui/SettingsActivity;->a:I

    .line 4188
    const-string v0, "key_shelf_sort"

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/ui/SettingsActivity;->a:I

    invoke-static {p0, v0, v1}, Lcom/arcsoft/hpay100/a/a;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 4189
    const v0, 0x7f0c014e

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4191
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v0

    new-instance v1, Lcom/ushaqi/zhuishushenqi/event/g;

    invoke-direct {v1}, Lcom/ushaqi/zhuishushenqi/event/g;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/a/b;->c(Ljava/lang/Object;)V

    .line 40
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/SettingsActivity;Landroid/view/View;Z)V
    .locals 0

    .prologue
    .line 40
    invoke-static {p1, p2}, Lcom/ushaqi/zhuishushenqi/ui/SettingsActivity;->a(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/SettingsActivity;Z)V
    .locals 3

    .prologue
    .line 40
    .line 4151
    if-eqz p1, :cond_0

    .line 4152
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "2882303761517133731"

    const-string v2, "5941713373731"

    invoke-static {v0, v1, v2}, Lcom/xiaomi/mipush/sdk/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    .line 4154
    :cond_0
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/d;->e(Landroid/content/Context;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/SettingsActivity;)V
    .locals 3

    .prologue
    .line 40
    .line 4138
    invoke-static {p0}, Landroid/support/design/widget/am;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 4139
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4140
    new-instance v1, Landroid/support/v7/app/k;

    invoke-direct {v1, p0}, Landroid/support/v7/app/k;-><init>(Landroid/content/Context;)V

    .line 4141
    invoke-virtual {v1, v0}, Landroid/support/v7/app/k;->b(Ljava/lang/CharSequence;)Landroid/support/v7/app/k;

    .line 4142
    const-string v0, "OK"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/support/v7/app/k;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/k;

    .line 4143
    invoke-virtual {v1}, Landroid/support/v7/app/k;->c()Landroid/support/v7/app/j;

    .line 40
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/ushaqi/zhuishushenqi/ui/SettingsActivity;)V
    .locals 4

    .prologue
    .line 40
    .line 4254
    const-string v0, "\u5df2\u767b\u51fa"

    invoke-static {p0, v0}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 4256
    invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Account;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 4257
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/ca;

    invoke-direct {v2, p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/ca;-><init>(Lcom/ushaqi/zhuishushenqi/ui/SettingsActivity;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 4266
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 4268
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a()Lcom/ushaqi/zhuishushenqi/MyApplication;

    move-result-object v0

    .line 5284
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "account.token"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "user.id"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "user.name"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "user.avatar"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "user.lv"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "user.gender"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a([Ljava/lang/String;)V

    .line 4269
    const-string v0, "pref_new_unimp_notif_time"

    const-string v1, "0"

    invoke-static {p0, v0, v1}, Lcom/arcsoft/hpay100/a/a;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 4270
    const-string v0, "pref_new_imp_notif_time"

    const-string v1, "0"

    invoke-static {p0, v0, v1}, Lcom/arcsoft/hpay100/a/a;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 4271
    const-string v0, "remove_ad_duration"

    const-wide/16 v2, 0x0

    invoke-static {p0, v0, v2, v3}, Lcom/arcsoft/hpay100/a/a;->b(Landroid/content/Context;Ljava/lang/String;J)V

    .line 4272
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/SettingsActivity;->finish()V

    .line 4273
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v0

    new-instance v1, Lcom/ushaqi/zhuishushenqi/event/u;

    invoke-direct {v1}, Lcom/ushaqi/zhuishushenqi/event/u;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/a/b;->c(Ljava/lang/Object;)V

    .line 40
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x2

    .line 212
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 231
    :goto_0
    :pswitch_0
    return-void

    .line 1159
    :pswitch_1
    new-instance v0, Luk/me/lewisdeane/ldialogs/h;

    invoke-direct {v0, p0}, Luk/me/lewisdeane/ldialogs/h;-><init>(Landroid/content/Context;)V

    .line 1161
    new-array v2, v7, [I

    fill-array-data v2, :array_0

    .line 1162
    new-array v3, v7, [I

    fill-array-data v3, :array_1

    .line 1163
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/SettingsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f030160

    invoke-virtual {v4, v5, v6, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 1165
    const-string v5, "\u4e66\u67b6\u6392\u5e8f\u65b9\u5f0f"

    .line 2036
    iput-object v5, v0, Luk/me/lewisdeane/ldialogs/h;->d:Ljava/lang/String;

    .line 1166
    invoke-virtual {v0, v4}, Luk/me/lewisdeane/ldialogs/h;->a(Landroid/view/View;)Luk/me/lewisdeane/ldialogs/h;

    move-result-object v0

    const-string v5, "\u53d6\u6d88"

    invoke-virtual {v0, v5, v6}, Luk/me/lewisdeane/ldialogs/h;->b(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Luk/me/lewisdeane/ldialogs/h;

    move-result-object v0

    invoke-virtual {v0}, Luk/me/lewisdeane/ldialogs/h;->a()Landroid/app/AlertDialog;

    move-result-object v5

    .line 1167
    const v0, 0x7f0c0460

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    .line 1168
    iget v6, p0, Lcom/ushaqi/zhuishushenqi/ui/SettingsActivity;->a:I

    aget v6, v2, v6

    invoke-virtual {v0, v6}, Landroid/widget/RadioGroup;->check(I)V

    .line 1170
    :goto_1
    if-ge v1, v7, :cond_0

    .line 1172
    aget v0, v2, v1

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 1173
    new-instance v6, Lcom/ushaqi/zhuishushenqi/ui/bY;

    invoke-direct {v6, p0, v5, v1, v3}, Lcom/ushaqi/zhuishushenqi/ui/bY;-><init>(Lcom/ushaqi/zhuishushenqi/ui/SettingsActivity;Landroid/app/AlertDialog;I[I)V

    invoke-virtual {v0, v6}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1170
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 1182
    :cond_0
    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 218
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ushaqi/zhuishushenqi/ui/DisclaimerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 221
    :pswitch_3
    const-string v0, "android-feedback"

    invoke-static {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 222
    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 225
    :pswitch_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "market://details?id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/SettingsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u6253\u5f00\u5e94\u7528\u5e02\u573a\u5931\u8d25"

    invoke-static {p0, v0, v1}, Landroid/support/design/widget/am;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 228
    :pswitch_5
    const-string v0, "http://www.lagou.com/gongsi/493.html?speedShow=true"

    .line 2494
    invoke-static {p0, v0, v6}, Landroid/support/design/widget/am;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 212
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c014d
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_5
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 1161
    :array_0
    .array-data 4
        0x7f0c0461
        0x7f0c0462
    .end array-data

    .line 1162
    :array_1
    .array-data 4
        0x7f050174
        0x7f050173
    .end array-data
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const v2, 0x7f050175

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 47
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const v0, 0x7f030059

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/SettingsActivity;->setContentView(I)V

    .line 49
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "from_user_info"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    const-string v0, "\u9000\u51fa\u767b\u5f55"

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/bU;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/bU;-><init>(Lcom/ushaqi/zhuishushenqi/ui/SettingsActivity;)V

    invoke-virtual {p0, v2, v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/SettingsActivity;->a(ILjava/lang/String;Lcom/ushaqi/zhuishushenqi/ui/aa;)V

    .line 1064
    :goto_0
    const v0, 0x7f0c014d

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1065
    const v0, 0x7f0c0152

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1066
    const v0, 0x7f0c0155

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1067
    const v0, 0x7f0c0156

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1068
    const v0, 0x7f0c0157

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1069
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Landroid/support/design/widget/am;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1129
    const-string v1, "COMMIT_ID"

    invoke-static {p0, v1}, Landroid/support/design/widget/am;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1130
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v5, :cond_2

    .line 1131
    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1069
    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1070
    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/bV;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/bV;-><init>(Lcom/ushaqi/zhuishushenqi/ui/SettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1077
    const-string v0, "update_notice_key"

    invoke-static {p0, v0}, Lcom/arcsoft/hpay100/a/a;->l(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    .line 1078
    const-string v0, "save_bandwidth"

    invoke-static {p0, v0, v4}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    .line 1079
    const v0, 0x7f0c0150

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SwitchCompat;

    .line 1080
    const v1, 0x7f0c0151

    invoke-virtual {p0, v1}, Lcom/ushaqi/zhuishushenqi/ui/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/SwitchCompat;

    .line 1082
    invoke-virtual {v0, v2}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    .line 1083
    invoke-static {v0, v2}, Lcom/ushaqi/zhuishushenqi/ui/SettingsActivity;->a(Landroid/view/View;Z)V

    .line 1084
    invoke-virtual {v1, v3}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    .line 1085
    invoke-static {v1, v3}, Lcom/ushaqi/zhuishushenqi/ui/SettingsActivity;->a(Landroid/view/View;Z)V

    .line 1086
    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/bW;

    invoke-direct {v2, p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/bW;-><init>(Lcom/ushaqi/zhuishushenqi/ui/SettingsActivity;Landroid/support/v7/widget/SwitchCompat;)V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1095
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/bX;

    invoke-direct {v0, p0, v1}, Lcom/ushaqi/zhuishushenqi/ui/bX;-><init>(Lcom/ushaqi/zhuishushenqi/ui/SettingsActivity;Landroid/support/v7/widget/SwitchCompat;)V

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1103
    const-string v0, "enable_job"

    invoke-static {p0, v0}, Lcom/umeng/a/b;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1104
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1105
    const v0, 0x7f0c0153

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1106
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1107
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1108
    const v0, 0x7f0c0154

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1111
    :cond_0
    const-string v0, "key_shelf_sort"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/ui/SettingsActivity;->a:I

    .line 1112
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 1113
    iget v1, p0, Lcom/ushaqi/zhuishushenqi/ui/SettingsActivity;->a:I

    aget-object v1, v0, v1

    .line 1114
    const v0, 0x7f0c014e

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1115
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    return-void

    .line 57
    :cond_1
    invoke-virtual {p0, v2}, Lcom/ushaqi/zhuishushenqi/ui/SettingsActivity;->b(I)V

    goto/16 :goto_0

    .line 1133
    :cond_2
    const/4 v1, 0x0

    goto/16 :goto_1
.end method
