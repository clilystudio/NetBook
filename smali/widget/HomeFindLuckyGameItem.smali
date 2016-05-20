.class public Lcom/ushaqi/zhuishushenqi/widget/HomeFindLuckyGameItem;
.super Lcom/ushaqi/zhuishushenqi/widget/HomeFindItem;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 28
    const-string v0, "\u53ec\u5524\u795e\u5668"

    const v1, 0x7f020143

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/widget/HomeFindItem;-><init>(Landroid/content/Context;Ljava/lang/String;ILandroid/content/Intent;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/ushaqi/zhuishushenqi/widget/HomeFindItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 61
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/HomeFindLuckyGameItem;->setVisibility(I)V

    .line 62
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/HomeFindLuckyGameItem;->mSubFlag:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 63
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/HomeFindLuckyGameItem;->mSubText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 64
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 51
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/HomeFindLuckyGameItem;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 1746
    invoke-static {v2}, Landroid/support/design/widget/am;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 1747
    const-string v4, "home_lucky_game_channel"

    invoke-static {v2, v4}, Lcom/umeng/a/b;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1748
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 1749
    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1750
    array-length v5, v4

    move v2, v1

    :goto_0
    if-ge v2, v5, :cond_1

    aget-object v6, v4, v2

    .line 1752
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v2, v0

    .line 51
    :goto_1
    if-eqz v2, :cond_2

    .line 52
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/widget/HomeFindLuckyGameItem;->b()V

    .line 58
    :goto_2
    return-void

    .line 1750
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v1

    .line 1757
    goto :goto_1

    .line 53
    :cond_2
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/HomeFindLuckyGameItem;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 2732
    const-string v3, "home_lucky_game_toggle"

    invoke-static {v2, v3}, Lcom/umeng/a/b;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2733
    invoke-static {v3, v1}, Lcom/arcsoft/hpay100/a/a;->b(Ljava/lang/String;I)I

    move-result v3

    .line 2734
    invoke-static {v2}, Landroid/support/design/widget/am;->f(Landroid/content/Context;)I

    move-result v2

    .line 2736
    if-ge v2, v3, :cond_3

    .line 53
    :goto_3
    if-eqz v0, :cond_4

    .line 54
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/widget/HomeFindLuckyGameItem;->b()V

    goto :goto_2

    :cond_3
    move v0, v1

    .line 2736
    goto :goto_3

    .line 56
    :cond_4
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/HomeFindLuckyGameItem;->setVisibility(I)V

    goto :goto_2
.end method

.method protected final a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 33
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Landroid/support/design/widget/am;->a(Landroid/app/Activity;)Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v0

    .line 34
    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Account;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 1042
    const-string v1, "http://share.zhuishushenqi.com/game/index?token=%s"

    .line 1043
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 36
    invoke-static {p1, p2, v0}, Lcom/ushaqi/zhuishushenqi/ui/LuckyGameWebActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 37
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 39
    :cond_0
    return-void
.end method
