.class public Lcom/ushaqi/zhuishushenqi/util/InsideLinkIntent;
.super Landroid/content/Intent;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ParcelCreator"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/ushaqi/zhuishushenqi/model/InsideLink;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/util/InsideLinkIntent;->a:Landroid/content/Context;

    .line 53
    invoke-direct {p0, p2}, Lcom/ushaqi/zhuishushenqi/util/InsideLinkIntent;->a(Lcom/ushaqi/zhuishushenqi/model/InsideLink;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/util/InsideLinkIntent;->a:Landroid/content/Context;

    .line 32
    new-instance v0, Lcom/ushaqi/zhuishushenqi/util/a/b;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/util/a/b;-><init>()V

    .line 33
    if-eqz p2, :cond_0

    .line 34
    invoke-static {p2}, Lcom/ushaqi/zhuishushenqi/util/a/b;->a(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/InsideLink;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/util/InsideLinkIntent;->a(Lcom/ushaqi/zhuishushenqi/model/InsideLink;)V

    return-void

    .line 36
    :cond_0
    new-instance v0, Lcom/ushaqi/zhuishushenqi/exception/UnImplementException;

    const-string v1, "Not implement"

    invoke-direct {v0, v1}, Lcom/ushaqi/zhuishushenqi/exception/UnImplementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/util/InsideLinkIntent;->b:Z

    .line 42
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/util/InsideLinkIntent;->a:Landroid/content/Context;

    .line 43
    new-instance v0, Lcom/ushaqi/zhuishushenqi/util/a/b;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/util/a/b;-><init>()V

    .line 44
    if-eqz p2, :cond_0

    .line 45
    invoke-static {p2}, Lcom/ushaqi/zhuishushenqi/util/a/b;->a(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/InsideLink;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/util/InsideLinkIntent;->a(Lcom/ushaqi/zhuishushenqi/model/InsideLink;)V

    return-void

    .line 47
    :cond_0
    new-instance v0, Lcom/ushaqi/zhuishushenqi/exception/UnImplementException;

    const-string v1, "Not implement"

    invoke-direct {v0, v1}, Lcom/ushaqi/zhuishushenqi/exception/UnImplementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/InsideLinkIntent;->a:Landroid/content/Context;

    instance-of v0, v0, Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;

    if-eqz v0, :cond_0

    .line 137
    const-string v0, "from_splash"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/util/InsideLinkIntent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 139
    :cond_0
    return-void
.end method

.method private a(Lcom/ushaqi/zhuishushenqi/model/InsideLink;)V
    .locals 4

    .prologue
    .line 57
    sget-object v0, Lcom/ushaqi/zhuishushenqi/util/G;->a:[I

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/InsideLink;->getType()Lcom/ushaqi/zhuishushenqi/model/InsideLinkType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/InsideLinkType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 80
    new-instance v0, Lcom/ushaqi/zhuishushenqi/exception/UnImplementException;

    const-string v1, "Not implement"

    invoke-direct {v0, v1}, Lcom/ushaqi/zhuishushenqi/exception/UnImplementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :pswitch_0
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/InsideLink;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 1123
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/util/InsideLinkIntent;->a:Landroid/content/Context;

    const-class v3, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/ushaqi/zhuishushenqi/util/InsideLinkIntent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1124
    const-string v1, "micro"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1125
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/ushaqi/zhuishushenqi/util/InsideLinkIntent;->b:Z

    .line 1126
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1128
    :cond_0
    const-string v1, "game_id"

    invoke-virtual {p0, v1, v0}, Lcom/ushaqi/zhuishushenqi/util/InsideLinkIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1129
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/util/InsideLinkIntent;->b:Z

    if-eqz v0, :cond_1

    .line 1130
    const-string v0, "is_micro_game"

    iget-boolean v1, p0, Lcom/ushaqi/zhuishushenqi/util/InsideLinkIntent;->b:Z

    invoke-virtual {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/util/InsideLinkIntent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1132
    :cond_1
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/util/InsideLinkIntent;->a()V

    .line 78
    :goto_0
    return-void

    .line 2116
    :pswitch_1
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/util/InsideLinkIntent;->a:Landroid/content/Context;

    const-class v2, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/util/InsideLinkIntent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2117
    const-string v0, "PostBookId"

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/InsideLink;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/util/InsideLinkIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2118
    const-string v0, "post_type_key"

    const-string v1, "ramble"

    invoke-virtual {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/util/InsideLinkIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2119
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/util/InsideLinkIntent;->a()V

    goto :goto_0

    .line 3109
    :pswitch_2
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/util/InsideLinkIntent;->a:Landroid/content/Context;

    const-class v2, Lcom/ushaqi/zhuishushenqi/ui/AdWebViewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/util/InsideLinkIntent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3110
    const-string v0, "extra_url"

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/InsideLink;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/util/InsideLinkIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3111
    const-string v0, "extra_title"

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/InsideLink;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/util/InsideLinkIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3112
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/util/InsideLinkIntent;->a()V

    goto :goto_0

    .line 4103
    :pswitch_3
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/util/InsideLinkIntent;->a:Landroid/content/Context;

    const-class v2, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/util/InsideLinkIntent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4104
    const-string v0, "book_id"

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/InsideLink;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/util/InsideLinkIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4105
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/util/InsideLinkIntent;->a()V

    goto :goto_0

    .line 5091
    :pswitch_4
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/util/InsideLinkIntent;->a:Landroid/content/Context;

    const-class v2, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/util/InsideLinkIntent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 5092
    const-string v0, "extraBookHelpId"

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/InsideLink;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/util/InsideLinkIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5093
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/util/InsideLinkIntent;->a()V

    goto :goto_0

    .line 5097
    :pswitch_5
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/util/InsideLinkIntent;->a:Landroid/content/Context;

    const-class v2, Lcom/ushaqi/zhuishushenqi/ui/post/ReviewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/util/InsideLinkIntent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 5098
    const-string v0, "extraReviewId"

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/InsideLink;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/util/InsideLinkIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5099
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/util/InsideLinkIntent;->a()V

    goto/16 :goto_0

    .line 6085
    :pswitch_6
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/util/InsideLinkIntent;->a:Landroid/content/Context;

    const-class v2, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCDetailActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/util/InsideLinkIntent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 6086
    const-string v0, "book_id"

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/InsideLink;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/util/InsideLinkIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6087
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/util/InsideLinkIntent;->a()V

    goto/16 :goto_0

    .line 57
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
