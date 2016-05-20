.class public Lcom/ushaqi/zhuishushenqi/widget/GameDownloadButton;
.super Landroid/widget/Button;
.source "SourceFile"


# instance fields
.field private a:Lcom/ushaqi/zhuishushenqi/model/Game;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/widget/GameDownloadButton;)Lcom/ushaqi/zhuishushenqi/model/Game;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/GameDownloadButton;->a:Lcom/ushaqi/zhuishushenqi/model/Game;

    return-object v0
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/widget/GameDownloadButton;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/widget/GameDownloadButton;->i()V

    return-void
.end method

.method private i()V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/GameDownloadButton;->a:Lcom/ushaqi/zhuishushenqi/model/Game;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Game;->getAndroidPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 121
    new-instance v0, Lcom/ushaqi/zhuishushenqi/db/DownloadItem;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/widget/GameDownloadButton;->a:Lcom/ushaqi/zhuishushenqi/model/Game;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/Game;->getAndroidPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ushaqi/zhuishushenqi/db/DownloadItem;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/DownloadItem;->save()Ljava/lang/Long;

    .line 123
    :cond_0
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    .prologue
    .line 66
    const-string v0, "\u4e0b\u8f7d"

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/GameDownloadButton;->setText(Ljava/lang/CharSequence;)V

    .line 67
    const v0, 0x7f020254

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/GameDownloadButton;->setBackgroundResource(I)V

    .line 68
    return-void
.end method

.method public final a(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 41
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/GameDownloadButton;->a:Lcom/ushaqi/zhuishushenqi/model/Game;

    if-nez v0, :cond_0

    .line 63
    :goto_0
    return-void

    .line 44
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 59
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/GameDownloadButton;->a()V

    .line 60
    new-instance v0, Lcom/ushaqi/zhuishushenqi/widget/C;

    invoke-direct {v0, p0, v1}, Lcom/ushaqi/zhuishushenqi/widget/C;-><init>(Lcom/ushaqi/zhuishushenqi/widget/GameDownloadButton;B)V

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/GameDownloadButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 47
    :sswitch_0
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/GameDownloadButton;->b()V

    .line 48
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/GameDownloadButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 51
    :sswitch_1
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/GameDownloadButton;->c()V

    .line 52
    new-instance v0, Lcom/ushaqi/zhuishushenqi/widget/A;

    invoke-direct {v0, p0, v1}, Lcom/ushaqi/zhuishushenqi/widget/A;-><init>(Lcom/ushaqi/zhuishushenqi/widget/GameDownloadButton;B)V

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/GameDownloadButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 55
    :sswitch_2
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/GameDownloadButton;->d()V

    .line 56
    new-instance v0, Lcom/ushaqi/zhuishushenqi/widget/B;

    invoke-direct {v0, p0, v1}, Lcom/ushaqi/zhuishushenqi/widget/B;-><init>(Lcom/ushaqi/zhuishushenqi/widget/GameDownloadButton;B)V

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/GameDownloadButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 44
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x8 -> :sswitch_1
        0x20 -> :sswitch_2
    .end sparse-switch
.end method

.method protected b()V
    .locals 1

    .prologue
    .line 71
    const-string v0, "\u4e0b\u8f7d\u4e2d"

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/GameDownloadButton;->setText(Ljava/lang/CharSequence;)V

    .line 72
    const v0, 0x7f020139

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/GameDownloadButton;->setBackgroundResource(I)V

    .line 73
    return-void
.end method

.method protected c()V
    .locals 1

    .prologue
    .line 76
    const-string v0, "\u5b89\u88c5"

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/GameDownloadButton;->setText(Ljava/lang/CharSequence;)V

    .line 77
    const v0, 0x7f02013b

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/GameDownloadButton;->setBackgroundResource(I)V

    .line 78
    return-void
.end method

.method protected d()V
    .locals 1

    .prologue
    .line 81
    const-string v0, "\u6253\u5f00"

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/GameDownloadButton;->setText(Ljava/lang/CharSequence;)V

    .line 82
    const v0, 0x7f020264

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/GameDownloadButton;->setBackgroundResource(I)V

    .line 83
    return-void
.end method

.method protected e()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 86
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/GameDownloadButton;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 87
    instance-of v1, v0, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;

    if-eqz v1, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/GameDownloadButton;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "game_center_detail_install"

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/widget/GameDownloadButton;->a:Lcom/ushaqi/zhuishushenqi/model/Game;

    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/model/Game;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :cond_0
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/widget/GameDownloadButton;->a:Lcom/ushaqi/zhuishushenqi/model/Game;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/Game;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1508
    const-string v2, "game_center_app_download"

    invoke-static {v0, v2, v1}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->r(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v4, :cond_1

    .line 93
    check-cast v0, Landroid/app/Activity;

    const-string v1, "\u5f00\u59cb\u4e0b\u8f7d..."

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/GameDownloadButton;->f()V

    .line 107
    :goto_0
    return-void

    .line 96
    :cond_1
    new-instance v1, Landroid/support/v7/app/k;

    invoke-direct {v1, v0}, Landroid/support/v7/app/k;-><init>(Landroid/content/Context;)V

    const-string v0, "\u6d41\u91cf\u63d0\u9192"

    invoke-virtual {v1, v0}, Landroid/support/v7/app/k;->a(Ljava/lang/CharSequence;)Landroid/support/v7/app/k;

    move-result-object v0

    .line 97
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/GameDownloadButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0500c0

    new-array v3, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/ushaqi/zhuishushenqi/widget/GameDownloadButton;->a:Lcom/ushaqi/zhuishushenqi/model/Game;

    invoke-virtual {v5}, Lcom/ushaqi/zhuishushenqi/model/Game;->getAndroidSize()I

    move-result v5

    invoke-static {v5}, Lcom/arcsoft/hpay100/a/a;->c(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/k;->b(Ljava/lang/CharSequence;)Landroid/support/v7/app/k;

    move-result-object v0

    const v1, 0x7f050138

    new-instance v2, Lcom/ushaqi/zhuishushenqi/widget/z;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/widget/z;-><init>(Lcom/ushaqi/zhuishushenqi/widget/GameDownloadButton;)V

    .line 98
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/k;->a(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/k;

    move-result-object v0

    const v1, 0x7f050011

    const/4 v2, 0x0

    .line 104
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/k;->b(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/k;

    move-result-object v0

    .line 105
    invoke-virtual {v0}, Landroid/support/v7/app/k;->b()Landroid/support/v7/app/j;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/j;->show()V

    goto :goto_0
.end method

.method protected final f()V
    .locals 3

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/widget/GameDownloadButton;->i()V

    .line 111
    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/game/s;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/GameDownloadButton;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/widget/GameDownloadButton;->a:Lcom/ushaqi/zhuishushenqi/model/Game;

    invoke-direct {v1, v0, v2}, Lcom/ushaqi/zhuishushenqi/ui/game/s;-><init>(Landroid/app/Activity;Lcom/ushaqi/zhuishushenqi/model/Game;)V

    .line 112
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/ui/game/s;->a()V

    .line 113
    return-void
.end method

.method protected final g()V
    .locals 2

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/GameDownloadButton;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/widget/GameDownloadButton;->a:Lcom/ushaqi/zhuishushenqi/model/Game;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/Game;->getAndroidPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/design/widget/am;->d(Landroid/content/Context;Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method public final h()Lcom/ushaqi/zhuishushenqi/model/Game;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/GameDownloadButton;->a:Lcom/ushaqi/zhuishushenqi/model/Game;

    return-object v0
.end method

.method public setGame(Lcom/ushaqi/zhuishushenqi/model/Game;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/widget/GameDownloadButton;->a:Lcom/ushaqi/zhuishushenqi/model/Game;

    .line 127
    return-void
.end method

.method public setH5View()V
    .locals 1

    .prologue
    .line 161
    const-string v0, "\u8bd5\u73a9"

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/GameDownloadButton;->setText(Ljava/lang/CharSequence;)V

    .line 162
    const v0, 0x7f020254

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/GameDownloadButton;->setBackgroundResource(I)V

    .line 163
    return-void
.end method

.method public setPlayedView()V
    .locals 1

    .prologue
    .line 166
    const-string v0, "\u7ee7\u7eed"

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/GameDownloadButton;->setText(Ljava/lang/CharSequence;)V

    .line 167
    const v0, 0x7f020254

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/GameDownloadButton;->setBackgroundResource(I)V

    .line 168
    return-void
.end method
