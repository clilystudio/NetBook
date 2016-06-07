.class public Lcom/ushaqi/zhuishushenqi/widget/HomeFindGameItem;
.super Lcom/ushaqi/zhuishushenqi/widget/HomeFindItem;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 33
    const-string v0, "\u6e38\u620f\u4e2d\u5fc3"

    const v1, 0x7f020140

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/widget/HomeFindItem;-><init>(Landroid/content/Context;Ljava/lang/String;ILandroid/content/Intent;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/ushaqi/zhuishushenqi/widget/HomeFindItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 50
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/HomeFindGameItem;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->w(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2058
    invoke-virtual {p0, v4}, Lcom/ushaqi/zhuishushenqi/widget/HomeFindGameItem;->setVisibility(I)V

    .line 2059
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/HomeFindGameItem;->mSubFlag:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2060
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/HomeFindGameItem;->mSubText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2061
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/HomeFindGameItem;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "home_game_center_value"

    invoke-static {v0, v1}, Lcom/umeng/a/b;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/HomeFindGameItem;->a:Ljava/lang/String;

    .line 2062
    const-string v0, "1"

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/widget/HomeFindGameItem;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2063
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/HomeFindGameItem;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sp_find_item_game_dot"

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/a/a;->l(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 2064
    if-eqz v0, :cond_0

    .line 2065
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/HomeFindGameItem;->mSubFlag:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2066
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/HomeFindGameItem;->mSubText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2067
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/HomeFindGameItem;->mSubFlag:Landroid/widget/ImageView;

    const v1, 0x7f020209

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 55
    :cond_0
    :goto_0
    return-void

    .line 2069
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/HomeFindGameItem;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "0"

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/widget/HomeFindGameItem;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2070
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/HomeFindGameItem;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sp_find_item_game_tips"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/arcsoft/hpay100/a/a;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2071
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/widget/HomeFindGameItem;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2072
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/HomeFindGameItem;->mSubFlag:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2073
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/HomeFindGameItem;->mSubText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2074
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/HomeFindGameItem;->mSubText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/widget/HomeFindGameItem;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 53
    :cond_2
    invoke-virtual {p0, v3}, Lcom/ushaqi/zhuishushenqi/widget/HomeFindGameItem;->setVisibility(I)V

    goto :goto_0
.end method

.method protected final a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 38
    invoke-static {p1}, Lcom/ushaqi/zhuishushenqi/ui/game/GameTabActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 39
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1080
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/HomeFindGameItem;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1081
    const-string v0, "sp_find_item_game_dot"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/arcsoft/hpay100/a/a;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1082
    const-string v0, "sp_find_item_game_tips"

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/widget/HomeFindGameItem;->a:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/arcsoft/hpay100/a/a;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1083
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/HomeFindGameItem;->mSubFlag:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1084
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/HomeFindGameItem;->mSubText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1457
    :cond_0
    const-string v0, "GameCenterActivity_open"

    invoke-static {p1, v0}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 44
    return-void
.end method
