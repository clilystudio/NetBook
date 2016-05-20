.class public Lcom/ushaqi/zhuishushenqi/ui/home/HomeFindFragment;
.super Lcom/ushaqi/zhuishushenqi/ui/home/HomeFragment;
.source "SourceFile"


# instance fields
.field private a:Landroid/view/ViewGroup;

.field private b:Lcom/ushaqi/zhuishushenqi/widget/HomeFindSecretItem;

.field private c:Lcom/ushaqi/zhuishushenqi/widget/HomeFindGameItem;

.field private d:Lcom/ushaqi/zhuishushenqi/widget/HomeFindLuckyGameItem;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeFragment;-><init>()V

    return-void
.end method

.method public static a(Landroid/os/Bundle;)Lcom/ushaqi/zhuishushenqi/ui/home/HomeFindFragment;
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeFindFragment;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeFindFragment;-><init>()V

    .line 41
    invoke-virtual {v0, p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeFindFragment;->setArguments(Landroid/os/Bundle;)V

    .line 42
    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    const-string v0, "home_find"

    return-object v0
.end method

.method public final a(Z)V
    .locals 2

    .prologue
    .line 107
    if-eqz p1, :cond_1

    .line 108
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeFindFragment;->a:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeFindFragment;->d:Lcom/ushaqi/zhuishushenqi/widget/HomeFindLuckyGameItem;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 109
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeFindFragment;->c:Lcom/ushaqi/zhuishushenqi/widget/HomeFindGameItem;

    if-nez v0, :cond_0

    .line 110
    new-instance v0, Lcom/ushaqi/zhuishushenqi/widget/HomeFindGameItem;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeFindFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/HomeFindGameItem;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeFindFragment;->c:Lcom/ushaqi/zhuishushenqi/widget/HomeFindGameItem;

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeFindFragment;->a:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeFindFragment;->c:Lcom/ushaqi/zhuishushenqi/widget/HomeFindGameItem;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 113
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeFindFragment;->a:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeFindFragment;->d:Lcom/ushaqi/zhuishushenqi/widget/HomeFindLuckyGameItem;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 117
    :goto_0
    return-void

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeFindFragment;->a:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeFindFragment;->c:Lcom/ushaqi/zhuishushenqi/widget/HomeFindGameItem;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9

    .prologue
    const v8, 0x7f05013a

    .line 47
    const v0, 0x7f0300ac

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 49
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeFindFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    .line 50
    const v0, 0x7f0c023f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeFindFragment;->a:Landroid/view/ViewGroup;

    .line 51
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeFindFragment;->a:Landroid/view/ViewGroup;

    new-instance v3, Lcom/ushaqi/zhuishushenqi/widget/HomeFindItem;

    const v4, 0x7f050152

    invoke-virtual {p0, v4}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeFindFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f020146

    new-instance v6, Landroid/content/Intent;

    const-class v7, Lcom/ushaqi/zhuishushenqi/ui/BookRankListActivity;

    invoke-direct {v6, v2, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {v3, v2, v4, v5, v6}, Lcom/ushaqi/zhuishushenqi/widget/HomeFindItem;-><init>(Landroid/content/Context;Ljava/lang/String;ILandroid/content/Intent;)V

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 53
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeFindFragment;->a:Landroid/view/ViewGroup;

    new-instance v3, Lcom/ushaqi/zhuishushenqi/widget/HomeFindItem;

    const v4, 0x7f0501c5

    invoke-virtual {p0, v4}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeFindFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f020149

    new-instance v6, Landroid/content/Intent;

    const-class v7, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;

    invoke-direct {v6, v2, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {v3, v2, v4, v5, v6}, Lcom/ushaqi/zhuishushenqi/widget/HomeFindItem;-><init>(Landroid/content/Context;Ljava/lang/String;ILandroid/content/Intent;)V

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 55
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeFindFragment;->a:Landroid/view/ViewGroup;

    new-instance v3, Lcom/ushaqi/zhuishushenqi/widget/HomeFindItem;

    const v4, 0x7f0500de

    invoke-virtual {p0, v4}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeFindFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f02013f

    .line 56
    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v6

    invoke-direct {v3, v2, v4, v5, v6}, Lcom/ushaqi/zhuishushenqi/widget/HomeFindItem;-><init>(Landroid/content/Context;Ljava/lang/String;ILandroid/content/Intent;)V

    .line 55
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 57
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeFindFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v3, "switch_audiobook"

    invoke-static {v0, v3}, Lcom/arcsoft/hpay100/a/a;->r(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeFindFragment;->a:Landroid/view/ViewGroup;

    new-instance v3, Lcom/ushaqi/zhuishushenqi/widget/HomeFindItem;

    const v4, 0x7f0500ca

    invoke-virtual {p0, v4}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeFindFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f020141

    .line 59
    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v6

    invoke-direct {v3, v2, v4, v5, v6}, Lcom/ushaqi/zhuishushenqi/widget/HomeFindItem;-><init>(Landroid/content/Context;Ljava/lang/String;ILandroid/content/Intent;)V

    .line 58
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 61
    :cond_0
    new-instance v0, Lcom/ushaqi/zhuishushenqi/widget/HomeFindSecretItem;

    invoke-direct {v0, v2}, Lcom/ushaqi/zhuishushenqi/widget/HomeFindSecretItem;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeFindFragment;->b:Lcom/ushaqi/zhuishushenqi/widget/HomeFindSecretItem;

    .line 62
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeFindFragment;->a:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeFindFragment;->b:Lcom/ushaqi/zhuishushenqi/widget/HomeFindSecretItem;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 63
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeFindFragment;->a:Landroid/view/ViewGroup;

    new-instance v3, Lcom/ushaqi/zhuishushenqi/widget/HomeFindItem;

    const v4, 0x7f05012c

    invoke-virtual {p0, v4}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeFindFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f020144

    .line 64
    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/ui/MhdListActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v6

    invoke-direct {v3, v2, v4, v5, v6}, Lcom/ushaqi/zhuishushenqi/widget/HomeFindItem;-><init>(Landroid/content/Context;Ljava/lang/String;ILandroid/content/Intent;)V

    .line 63
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 66
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeFindFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 67
    const-string v3, "game_center_show"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 68
    if-eqz v0, :cond_1

    .line 69
    new-instance v0, Lcom/ushaqi/zhuishushenqi/widget/HomeFindGameItem;

    invoke-direct {v0, v2}, Lcom/ushaqi/zhuishushenqi/widget/HomeFindGameItem;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeFindFragment;->c:Lcom/ushaqi/zhuishushenqi/widget/HomeFindGameItem;

    .line 70
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeFindFragment;->a:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeFindFragment;->c:Lcom/ushaqi/zhuishushenqi/widget/HomeFindGameItem;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 74
    :cond_1
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeFindFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 1637
    const-string v3, "one_yuan_open"

    invoke-static {v0, v3}, Lcom/umeng/a/b;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1638
    const-string v3, "1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 74
    if-eqz v0, :cond_2

    .line 75
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeFindFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->z(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 78
    :try_start_0
    new-instance v0, Lcom/ushaqi/zhuishushenqi/util/InsideLinkIntent;

    const-string v3, "link:http://zssq.1yuan18.com/v/index.html"

    invoke-direct {v0, v2, v3}, Lcom/ushaqi/zhuishushenqi/util/InsideLinkIntent;-><init>(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :goto_0
    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeFindFragment;->a:Landroid/view/ViewGroup;

    new-instance v4, Lcom/ushaqi/zhuishushenqi/widget/HomeFindItem;

    invoke-virtual {p0, v8}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeFindFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f020145

    invoke-direct {v4, v2, v5, v6, v0}, Lcom/ushaqi/zhuishushenqi/widget/HomeFindItem;-><init>(Landroid/content/Context;Ljava/lang/String;ILandroid/content/Intent;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 85
    :cond_2
    new-instance v0, Lcom/ushaqi/zhuishushenqi/widget/HomeFindLuckyGameItem;

    invoke-direct {v0, v2}, Lcom/ushaqi/zhuishushenqi/widget/HomeFindLuckyGameItem;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeFindFragment;->d:Lcom/ushaqi/zhuishushenqi/widget/HomeFindLuckyGameItem;

    .line 86
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeFindFragment;->a:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeFindFragment;->d:Lcom/ushaqi/zhuishushenqi/widget/HomeFindLuckyGameItem;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 88
    return-object v1

    .line 80
    :catch_0
    move-exception v0

    invoke-virtual {p0, v8}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeFindFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "http://zssq.1yuan18.com/v/index.html"

    invoke-static {v2, v0, v3}, Lcom/ushaqi/zhuishushenqi/ui/AdWebViewActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 98
    invoke-super {p0}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeFragment;->onResume()V

    .line 99
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeFindFragment;->b:Lcom/ushaqi/zhuishushenqi/widget/HomeFindSecretItem;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/widget/HomeFindSecretItem;->a()V

    .line 100
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeFindFragment;->c:Lcom/ushaqi/zhuishushenqi/widget/HomeFindGameItem;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeFindFragment;->c:Lcom/ushaqi/zhuishushenqi/widget/HomeFindGameItem;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/widget/HomeFindGameItem;->a()V

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeFindFragment;->d:Lcom/ushaqi/zhuishushenqi/widget/HomeFindLuckyGameItem;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/widget/HomeFindLuckyGameItem;->a()V

    .line 104
    return-void
.end method
