.class public Lcom/ushaqi/zhuishushenqi/ui/user/PayAccountActivity;
.super Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/ushaqi/zhuishushenqi/widget/PaySectionItem;

.field private c:Lcom/ushaqi/zhuishushenqi/widget/PaySectionItem;

.field private e:Ljava/lang/String;

.field private f:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;-><init>()V

    .line 199
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 52
    new-instance v0, Lcom/ushaqi/zhuishushenqi/d;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/d;-><init>()V

    const-class v1, Lcom/ushaqi/zhuishushenqi/ui/user/PayAccountActivity;

    invoke-virtual {v0, p0, v1}, Lcom/ushaqi/zhuishushenqi/d;->a(Landroid/content/Context;Ljava/lang/Class;)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    const-string v1, "key_token"

    .line 53
    invoke-virtual {v0, v1, p1}, Lcom/ushaqi/zhuishushenqi/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/d;->a()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/user/PayAccountActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/PayAccountActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/user/PayAccountActivity;)Lcom/ushaqi/zhuishushenqi/widget/PaySectionItem;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/PayAccountActivity;->b:Lcom/ushaqi/zhuishushenqi/widget/PaySectionItem;

    return-object v0
.end method

.method static synthetic c(Lcom/ushaqi/zhuishushenqi/ui/user/PayAccountActivity;)Lcom/ushaqi/zhuishushenqi/widget/PaySectionItem;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/PayAccountActivity;->c:Lcom/ushaqi/zhuishushenqi/widget/PaySectionItem;

    return-object v0
.end method

.method static synthetic d(Lcom/ushaqi/zhuishushenqi/ui/user/PayAccountActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/PayAccountActivity;->f:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 94
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 119
    :goto_0
    return-void

    .line 97
    :sswitch_0
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/user/PayAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "key_token"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherActivity;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 98
    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/user/PayAccountActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 101
    :sswitch_1
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/user/PayAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "key_token"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u5145\u503c\u8bb0\u5f55"

    invoke-static {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/user/PayChargeActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 102
    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/user/PayAccountActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 105
    :sswitch_2
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/user/PayAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "key_token"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u6d88\u8d39\u8bb0\u5f55"

    invoke-static {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/user/PayConsumeActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 106
    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/user/PayAccountActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 109
    :sswitch_3
    const-string v0, "user_remove_ad_click"

    invoke-static {p0, v0}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 110
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ushaqi/zhuishushenqi/ui/user/RemoveAdActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 111
    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/user/PayAccountActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 115
    :sswitch_4
    new-instance v0, Lcom/ushaqi/zhuishushenqi/util/p;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/util/p;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/util/p;->a()V

    .line 116
    const-string v0, "charge_click_count"

    invoke-static {p0, v0}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 94
    :sswitch_data_0
    .sparse-switch
        0x7f0c014f -> :sswitch_4
        0x7f0c03ab -> :sswitch_0
        0x7f0c03ac -> :sswitch_1
        0x7f0c03ad -> :sswitch_2
        0x7f0c03af -> :sswitch_3
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 58
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/a/b;->a(Ljava/lang/Object;)V

    .line 60
    const v0, 0x7f030121

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/user/PayAccountActivity;->setContentView(I)V

    .line 61
    const-string v0, "\u6211\u7684\u8d26\u6237"

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/user/PayAccountActivity;->b(Ljava/lang/String;)V

    .line 63
    const v0, 0x7f0c03aa

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/user/PayAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/PaySectionItem;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/PayAccountActivity;->b:Lcom/ushaqi/zhuishushenqi/widget/PaySectionItem;

    .line 64
    const v0, 0x7f0c03ab

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/user/PayAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/PaySectionItem;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/PayAccountActivity;->c:Lcom/ushaqi/zhuishushenqi/widget/PaySectionItem;

    .line 65
    const v0, 0x7f0c03ac

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/user/PayAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/PaySectionItem;

    .line 66
    const v1, 0x7f0c03ad

    invoke-virtual {p0, v1}, Lcom/ushaqi/zhuishushenqi/ui/user/PayAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/ushaqi/zhuishushenqi/widget/PaySectionItem;

    .line 67
    const v2, 0x7f0c03af

    invoke-virtual {p0, v2}, Lcom/ushaqi/zhuishushenqi/ui/user/PayAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/ushaqi/zhuishushenqi/widget/PaySectionItem;

    .line 70
    const v3, 0x7f0c03ae

    invoke-virtual {p0, v3}, Lcom/ushaqi/zhuishushenqi/ui/user/PayAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 71
    invoke-static {p0}, Lcom/arcsoft/hpay100/a/a;->y(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 72
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 73
    invoke-virtual {v2, v5}, Lcom/ushaqi/zhuishushenqi/widget/PaySectionItem;->setVisibility(I)V

    .line 76
    :cond_0
    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/user/PayAccountActivity;->b:Lcom/ushaqi/zhuishushenqi/widget/PaySectionItem;

    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/widget/PaySectionItem;->setBalanceDefault()V

    .line 77
    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/user/PayAccountActivity;->c:Lcom/ushaqi/zhuishushenqi/widget/PaySectionItem;

    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/widget/PaySectionItem;->setBalanceDefault()V

    .line 79
    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/user/PayAccountActivity;->b:Lcom/ushaqi/zhuishushenqi/widget/PaySectionItem;

    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/widget/PaySectionItem;->b()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/user/PayAccountActivity;->c:Lcom/ushaqi/zhuishushenqi/widget/PaySectionItem;

    invoke-virtual {v3, p0}, Lcom/ushaqi/zhuishushenqi/widget/PaySectionItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    invoke-virtual {v0, p0}, Lcom/ushaqi/zhuishushenqi/widget/PaySectionItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    invoke-virtual {v1, p0}, Lcom/ushaqi/zhuishushenqi/widget/PaySectionItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    invoke-virtual {v2, p0}, Lcom/ushaqi/zhuishushenqi/widget/PaySectionItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    const v0, 0x7f0c0269

    invoke-virtual {v2, v0}, Lcom/ushaqi/zhuishushenqi/widget/PaySectionItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/PayAccountActivity;->f:Landroid/widget/TextView;

    .line 86
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/user/PayAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "key_token"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/PayAccountActivity;->a:Ljava/lang/String;

    .line 87
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/user/I;

    invoke-direct {v0, p0, p0}, Lcom/ushaqi/zhuishushenqi/ui/user/I;-><init>(Lcom/ushaqi/zhuishushenqi/ui/user/PayAccountActivity;Landroid/app/Activity;)V

    new-array v1, v6, [Ljava/lang/String;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/user/PayAccountActivity;->a:Ljava/lang/String;

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/user/I;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 88
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/user/J;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/ui/user/J;-><init>(Lcom/ushaqi/zhuishushenqi/ui/user/PayAccountActivity;)V

    new-array v1, v6, [Ljava/lang/String;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/user/PayAccountActivity;->a:Ljava/lang/String;

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/user/J;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 89
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 123
    invoke-super {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->onDestroy()V

    .line 124
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/a/b;->b(Ljava/lang/Object;)V

    .line 125
    return-void
.end method

.method public onHideAdEvent(Lcom/ushaqi/zhuishushenqi/event/s;)V
    .locals 4
    .annotation runtime Lcom/squareup/a/l;
    .end annotation

    .prologue
    .line 232
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/PayAccountActivity;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/event/s;->a()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 233
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 234
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/PayAccountActivity;->f:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u622a\u6b62\u81f3"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/event/s;->a()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/PayAccountActivity;->f:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 237
    :cond_0
    return-void
.end method

.method public onPayFinish(Lcom/ushaqi/zhuishushenqi/event/y;)V
    .locals 4
    .annotation runtime Lcom/squareup/a/l;
    .end annotation

    .prologue
    .line 134
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/event/y;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/user/H;

    const-string v1, "\u6b63\u5728\u67e5\u8be2\u652f\u4ed8\u7ed3\u679c..."

    invoke-direct {v0, p0, p0, v1}, Lcom/ushaqi/zhuishushenqi/ui/user/H;-><init>(Lcom/ushaqi/zhuishushenqi/ui/user/PayAccountActivity;Landroid/app/Activity;Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/user/PayAccountActivity;->e:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/user/H;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 137
    :cond_0
    return-void
.end method

.method public onPayStart(Lcom/ushaqi/zhuishushenqi/event/z;)V
    .locals 1
    .annotation runtime Lcom/squareup/a/l;
    .end annotation

    .prologue
    .line 129
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/event/z;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/PayAccountActivity;->e:Ljava/lang/String;

    .line 130
    return-void
.end method
