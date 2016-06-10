.class public Lcom/ushaqi/zhuishushenqi/ui/user/ChargeActivity;
.super Lcom/ushaqi/zhuishushenqi/ui/BaseLoadingActivity;
.source "SourceFile"


# instance fields
.field private a:Lcom/ushaqi/zhuishushenqi/model/ChargeType;

.field private b:Lcom/ushaqi/zhuishushenqi/adapter/x;

.field private c:Z

.field private e:Ljava/lang/String;

.field private f:Lcom/ushaqi/zhuishushenqi/pay/a/a;

.field private g:Lcom/ushaqi/zhuishushenqi/pay/weixin/a;

.field private h:Lcom/ushaqi/zhuishushenqi/pay/b/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseLoadingActivity;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/ChargeActivity;->c:Z

    .line 213
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/ushaqi/zhuishushenqi/model/ChargeType;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 55
    new-instance v0, Lcom/ushaqi/zhuishushenqi/d;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/d;-><init>()V

    const-class v1, Lcom/ushaqi/zhuishushenqi/ui/user/ChargeActivity;

    invoke-virtual {v0, p0, v1}, Lcom/ushaqi/zhuishushenqi/d;->a(Landroid/content/Context;Ljava/lang/Class;)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    const-string v1, "key_pay_type"

    .line 56
    invoke-virtual {v0, v1, p1}, Lcom/ushaqi/zhuishushenqi/d;->a(Ljava/lang/String;Ljava/io/Serializable;)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/d;->a()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/user/ChargeActivity;)V
    .locals 2

    .prologue
    .line 41
    .line 1106
    const-string v0, "alipay"

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/ChargeActivity;->a:Lcom/ushaqi/zhuishushenqi/model/ChargeType;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/ChargeType;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/ChargeActivity;->f:Lcom/ushaqi/zhuishushenqi/pay/a/a;

    if-nez v0, :cond_1

    .line 1107
    new-instance v0, Lcom/ushaqi/zhuishushenqi/pay/a/a;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/pay/a/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/ChargeActivity;->f:Lcom/ushaqi/zhuishushenqi/pay/a/a;

    .line 1109
    :cond_0
    :goto_0
    return-void

    .line 1108
    :cond_1
    const-string v0, "weixinpay"

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/ChargeActivity;->a:Lcom/ushaqi/zhuishushenqi/model/ChargeType;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/ChargeType;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/ChargeActivity;->g:Lcom/ushaqi/zhuishushenqi/pay/weixin/a;

    if-nez v0, :cond_2

    .line 1109
    new-instance v0, Lcom/ushaqi/zhuishushenqi/pay/weixin/a;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/pay/weixin/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/ChargeActivity;->g:Lcom/ushaqi/zhuishushenqi/pay/weixin/a;

    goto :goto_0

    .line 1110
    :cond_2
    const-string v0, "youyifupay"

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/ChargeActivity;->a:Lcom/ushaqi/zhuishushenqi/model/ChargeType;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/ChargeType;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/ChargeActivity;->h:Lcom/ushaqi/zhuishushenqi/pay/b/a;

    if-nez v0, :cond_0

    .line 1111
    new-instance v0, Lcom/ushaqi/zhuishushenqi/pay/b/a;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/pay/b/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/ChargeActivity;->h:Lcom/ushaqi/zhuishushenqi/pay/b/a;

    goto :goto_0
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/user/ChargeActivity;)Lcom/ushaqi/zhuishushenqi/adapter/x;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/ChargeActivity;->b:Lcom/ushaqi/zhuishushenqi/adapter/x;

    return-object v0
.end method

.method static synthetic c(Lcom/ushaqi/zhuishushenqi/ui/user/ChargeActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/ChargeActivity;->e:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/ushaqi/zhuishushenqi/model/ChargePlan;)V
    .locals 2

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/ChargeActivity;->c:Z

    if-eqz v0, :cond_0

    .line 143
    :goto_0
    return-void

    .line 125
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/ChargeActivity;->c:Z

    .line 126
    const-string v0, "alipay"

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/ChargeActivity;->a:Lcom/ushaqi/zhuishushenqi/model/ChargeType;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/ChargeType;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 127
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/ChargeActivity;->f:Lcom/ushaqi/zhuishushenqi/pay/a/a;

    if-nez v0, :cond_1

    .line 128
    new-instance v0, Lcom/ushaqi/zhuishushenqi/pay/a/a;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/pay/a/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/ChargeActivity;->f:Lcom/ushaqi/zhuishushenqi/pay/a/a;

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/ChargeActivity;->f:Lcom/ushaqi/zhuishushenqi/pay/a/a;

    invoke-virtual {v0, p1}, Lcom/ushaqi/zhuishushenqi/pay/a/a;->a(Lcom/ushaqi/zhuishushenqi/model/ChargePlan;)V

    .line 142
    :cond_2
    :goto_1
    const-string v0, "charge_money_click"

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/ChargePlan;->getPriceDsc()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 131
    :cond_3
    const-string v0, "weixinpay"

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/ChargeActivity;->a:Lcom/ushaqi/zhuishushenqi/model/ChargeType;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/ChargeType;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 132
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/ChargeActivity;->g:Lcom/ushaqi/zhuishushenqi/pay/weixin/a;

    if-nez v0, :cond_4

    .line 133
    new-instance v0, Lcom/ushaqi/zhuishushenqi/pay/weixin/a;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/pay/weixin/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/ChargeActivity;->g:Lcom/ushaqi/zhuishushenqi/pay/weixin/a;

    .line 135
    :cond_4
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/ChargeActivity;->g:Lcom/ushaqi/zhuishushenqi/pay/weixin/a;

    invoke-virtual {v0, p1}, Lcom/ushaqi/zhuishushenqi/pay/weixin/a;->a(Lcom/ushaqi/zhuishushenqi/model/ChargePlan;)V

    goto :goto_1

    .line 136
    :cond_5
    const-string v0, "youyifupay"

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/ChargeActivity;->a:Lcom/ushaqi/zhuishushenqi/model/ChargeType;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/ChargeType;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 137
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/ChargeActivity;->h:Lcom/ushaqi/zhuishushenqi/pay/b/a;

    if-nez v0, :cond_6

    .line 138
    new-instance v0, Lcom/ushaqi/zhuishushenqi/pay/b/a;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/pay/b/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/ChargeActivity;->h:Lcom/ushaqi/zhuishushenqi/pay/b/a;

    .line 140
    :cond_6
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/ChargeActivity;->h:Lcom/ushaqi/zhuishushenqi/pay/b/a;

    invoke-virtual {v0, p1}, Lcom/ushaqi/zhuishushenqi/pay/b/a;->a(Lcom/ushaqi/zhuishushenqi/model/ChargePlan;)V

    goto :goto_1
.end method

.method protected final b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 117
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/user/ChargeActivity;->i()V

    .line 118
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/user/j;

    invoke-direct {v0, p0, v1}, Lcom/ushaqi/zhuishushenqi/ui/user/j;-><init>(Lcom/ushaqi/zhuishushenqi/ui/user/ChargeActivity;B)V

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/user/j;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 119
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    .prologue
    const v8, 0x7f0500ec

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 61
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/BaseLoadingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    const v0, 0x7f03004e

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/user/ChargeActivity;->a(I)V

    .line 64
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/a/b;->a(Ljava/lang/Object;)V

    .line 66
    new-instance v0, Lcom/ushaqi/zhuishushenqi/adapter/x;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/ushaqi/zhuishushenqi/adapter/x;-><init>(Landroid/app/Activity;Landroid/view/LayoutInflater;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/ChargeActivity;->b:Lcom/ushaqi/zhuishushenqi/adapter/x;

    .line 67
    const v0, 0x7f0c011f

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/user/ChargeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/ScrollGridView;

    .line 68
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/ChargeActivity;->b:Lcom/ushaqi/zhuishushenqi/adapter/x;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/ScrollGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 70
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/user/ChargeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "key_pay_type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/ChargeType;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/ChargeActivity;->a:Lcom/ushaqi/zhuishushenqi/model/ChargeType;

    .line 71
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/ChargeActivity;->a:Lcom/ushaqi/zhuishushenqi/model/ChargeType;

    if-eqz v0, :cond_3

    .line 72
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/ChargeActivity;->a:Lcom/ushaqi/zhuishushenqi/model/ChargeType;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/ChargeType;->getType()Ljava/lang/String;

    move-result-object v1

    .line 1036
    const/4 v0, 0x0

    .line 1037
    const-string v2, "alipay"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1038
    const-string v0, "\u652f\u4ed8\u5b9d"

    .line 72
    :cond_0
    :goto_0
    const v1, 0x7f0500fa

    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/user/g;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/ui/user/g;-><init>(Lcom/ushaqi/zhuishushenqi/ui/user/ChargeActivity;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/ui/user/ChargeActivity;->a(Ljava/lang/String;ILcom/ushaqi/zhuishushenqi/ui/aa;)V

    .line 79
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/ChargeActivity;->b:Lcom/ushaqi/zhuishushenqi/adapter/x;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/ChargeActivity;->a:Lcom/ushaqi/zhuishushenqi/model/ChargeType;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/ChargeType;->getPlan()[Lcom/ushaqi/zhuishushenqi/model/ChargePlan;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/adapter/x;->a([Ljava/lang/Object;)V

    .line 1087
    :goto_1
    const v0, 0x7f0c0120

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/user/ChargeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1088
    const v1, 0x7f0c0121

    invoke-virtual {p0, v1}, Lcom/ushaqi/zhuishushenqi/ui/user/ChargeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1089
    const v2, 0x7f0c0123

    invoke-virtual {p0, v2}, Lcom/ushaqi/zhuishushenqi/ui/user/ChargeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1090
    const v3, 0x7f0c0122

    invoke-virtual {p0, v3}, Lcom/ushaqi/zhuishushenqi/ui/user/ChargeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 1091
    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/ui/user/ChargeActivity;->a:Lcom/ushaqi/zhuishushenqi/model/ChargeType;

    invoke-virtual {v4}, Lcom/ushaqi/zhuishushenqi/model/ChargeType;->getType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "youyifupay"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1092
    const v3, 0x7f0500ea

    invoke-virtual {p0, v3}, Lcom/ushaqi/zhuishushenqi/ui/user/ChargeActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    const/16 v5, 0x32

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1093
    const v0, 0x7f0500eb

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 1094
    invoke-virtual {p0, v8}, Lcom/ushaqi/zhuishushenqi/ui/user/ChargeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    return-void

    .line 1039
    :cond_1
    const-string v2, "weixinpay"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1040
    const-string v0, "\u5fae\u4fe1\u652f\u4ed8"

    goto :goto_0

    .line 1041
    :cond_2
    const-string v2, "youyifupay"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1042
    const-string v0, "\u77ed\u4fe1\u652f\u4ed8"

    goto/16 :goto_0

    .line 81
    :cond_3
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/user/ChargeActivity;->b()V

    goto :goto_1

    .line 1096
    :cond_4
    const v2, 0x7f0500e9

    invoke-virtual {p0, v2}, Lcom/ushaqi/zhuishushenqi/ui/user/ChargeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v4, v7, [Ljava/lang/Object;

    const/16 v5, 0x64

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1097
    invoke-virtual {p0, v8}, Lcom/ushaqi/zhuishushenqi/ui/user/ChargeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1098
    const/16 v0, 0x8

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 159
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/a/b;->b(Ljava/lang/Object;)V

    .line 160
    invoke-super {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseLoadingActivity;->onDestroy()V

    .line 161
    return-void
.end method

.method public onPayFinish(Lcom/ushaqi/zhuishushenqi/event/y;)V
    .locals 2
    .annotation runtime Lcom/squareup/a/l;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 171
    iput-boolean v1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/ChargeActivity;->c:Z

    .line 172
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/event/y;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/user/ChargeActivity;->finish()V

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/ChargeActivity;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 176
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/user/i;

    invoke-direct {v0, p0, v1}, Lcom/ushaqi/zhuishushenqi/ui/user/i;-><init>(Lcom/ushaqi/zhuishushenqi/ui/user/ChargeActivity;B)V

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/user/i;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public onPayStart(Lcom/ushaqi/zhuishushenqi/event/z;)V
    .locals 1
    .annotation runtime Lcom/squareup/a/l;
    .end annotation

    .prologue
    .line 165
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/event/z;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/ChargeActivity;->e:Ljava/lang/String;

    .line 167
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 147
    invoke-super {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseLoadingActivity;->onResume()V

    .line 148
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/ChargeActivity;->c:Z

    .line 149
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/user/h;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/user/h;-><init>(Lcom/ushaqi/zhuishushenqi/ui/user/ChargeActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 155
    return-void
.end method
