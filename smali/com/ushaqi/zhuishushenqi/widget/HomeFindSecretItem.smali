.class public Lcom/ushaqi/zhuishushenqi/widget/HomeFindSecretItem;
.super Lcom/ushaqi/zhuishushenqi/widget/HomeFindItem;
.source "SourceFile"


# instance fields
.field private a:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 6

    .prologue
    .line 43
    const-string v2, "\u795e\u79d8\u529f\u80fd"

    const v3, 0x7f020147

    const v4, 0x7f020142

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/ushaqi/zhuishushenqi/widget/HomeFindItem;-><init>(Landroid/content/Context;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/ushaqi/zhuishushenqi/widget/HomeFindItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/widget/HomeFindSecretItem;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/HomeFindSecretItem;->a:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private b()Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 116
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/HomeFindSecretItem;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "KEY_SECRET_UNLOCKED"

    invoke-static {v2, v3, v0}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/HomeFindSecretItem;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 2683
    invoke-static {v2}, Landroid/support/design/widget/am;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 2684
    const-string v4, "switch_secret_to_random"

    invoke-static {v2, v4}, Lcom/umeng/a/b;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2685
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    .line 2686
    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 2687
    array-length v5, v4

    move v2, v0

    :goto_0
    if-ge v2, v5, :cond_3

    aget-object v6, v4, v2

    .line 2689
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v2, v1

    .line 116
    :goto_1
    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0

    .line 2687
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    move v2, v0

    .line 2694
    goto :goto_1
.end method


# virtual methods
.method public final a()V
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 61
    .line 62
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/widget/HomeFindSecretItem;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2092
    :cond_0
    :goto_0
    if-eqz v0, :cond_5

    .line 2093
    invoke-virtual {p0, v1}, Lcom/ushaqi/zhuishushenqi/widget/HomeFindSecretItem;->setVisibility(I)V

    .line 2094
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/widget/HomeFindSecretItem;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2095
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/HomeFindSecretItem;->mIcon:Lcom/ushaqi/zhuishushenqi/ui/MaskAbleImageView;

    const v2, 0x7f020148

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/ui/MaskAbleImageView;->setImageResource(I)V

    .line 2106
    :goto_1
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/widget/HomeFindSecretItem;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2107
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/HomeFindSecretItem;->mTitle:Landroid/widget/TextView;

    const-string v1, "\u968f\u673a\u770b\u4e66"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2108
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/HomeFindSecretItem;->mSubFlag:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2099
    :goto_2
    return-void

    .line 65
    :cond_1
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/HomeFindSecretItem;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 66
    const-string v3, "mystery_disabled_at_version"

    invoke-static {v2, v3}, Lcom/umeng/a/b;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 67
    const-string v4, "mystery_enable_time"

    invoke-static {v2, v4}, Lcom/umeng/a/b;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 68
    const-string v5, "mystery_enable_minute_range"

    invoke-static {v2, v5}, Lcom/umeng/a/b;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 69
    invoke-static {v3, v1}, Lcom/arcsoft/hpay100/a/a;->b(Ljava/lang/String;I)I

    move-result v3

    .line 70
    invoke-static {v5, v1}, Lcom/arcsoft/hpay100/a/a;->b(Ljava/lang/String;I)I

    move-result v5

    .line 72
    invoke-static {v2}, Landroid/support/design/widget/am;->f(Landroid/content/Context;)I

    move-result v2

    if-eq v3, v2, :cond_6

    .line 73
    const-string v2, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "0"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 74
    invoke-static {v4}, Lcom/ushaqi/zhuishushenqi/util/t;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 76
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 77
    invoke-virtual {v3, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 78
    const/16 v4, 0xc

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->add(II)V

    .line 80
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    .line 81
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 83
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-lez v2, :cond_2

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    cmp-long v2, v4, v2

    if-ltz v2, :cond_0

    :cond_2
    move v0, v1

    goto/16 :goto_0

    .line 2097
    :cond_3
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/HomeFindSecretItem;->mIcon:Lcom/ushaqi/zhuishushenqi/ui/MaskAbleImageView;

    const v2, 0x7f020147

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/ui/MaskAbleImageView;->setImageResource(I)V

    goto :goto_1

    .line 2110
    :cond_4
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/HomeFindSecretItem;->mTitle:Landroid/widget/TextView;

    const-string v2, "\u795e\u79d8\u529f\u80fd"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2111
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/HomeFindSecretItem;->mSubFlag:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 2101
    :cond_5
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/HomeFindSecretItem;->setVisibility(I)V

    goto :goto_2

    :cond_6
    move v0, v1

    goto/16 :goto_0
.end method

.method protected final a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 48
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/widget/HomeFindSecretItem;->b()Z

    move-result v0

    .line 49
    if-eqz v0, :cond_0

    .line 1120
    const/4 v1, 0x0

    const v2, 0x7f05006a

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2, v3, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/ushaqi/zhuishushenqi/widget/HomeFindSecretItem;->a:Landroid/app/ProgressDialog;

    .line 1121
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a()Lcom/ushaqi/zhuishushenqi/MyApplication;

    move-result-object v1

    const-string v2, "rec_F184E6D9_7F75_01C9_CCA0_2336AEB54B2B"

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/HomeFindSecretItem;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/arcsoft/hpay100/a/a;->o(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v3

    new-instance v4, Lcom/ushaqi/zhuishushenqi/widget/aa;

    invoke-direct {v4, p0, p1}, Lcom/ushaqi/zhuishushenqi/widget/aa;-><init>(Lcom/ushaqi/zhuishushenqi/widget/HomeFindSecretItem;Landroid/content/Context;)V

    invoke-static {v1, v2, v3, v4}, Lcom/a/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/a/a/c;)V

    .line 1449
    :goto_0
    if-eqz v0, :cond_1

    .line 1450
    const-string v0, "home_find_mystery_click"

    const-string v1, "unlock"

    invoke-static {p1, v0, v1}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    .line 54
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/ushaqi/zhuishushenqi/ui/MysteryActivity;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 55
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1452
    :cond_1
    const-string v0, "home_find_mystery_click"

    const-string v1, "lock"

    invoke-static {p1, v0, v1}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
