.class public Lcom/ushaqi/zhuishushenqi/ui/user/UserFollowWeixinActivity;
.super Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/user/UserFollowWeixinActivity;)V
    .locals 3

    .prologue
    .line 19
    .line 1039
    const-string v0, "clipboard"

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/user/UserFollowWeixinActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 1040
    const-string v1, "simple text"

    const-string v2, "\u8ffd\u4e66\u795e\u5668"

    invoke-static {v1, v2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    .line 1041
    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 19
    return-void
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/user/UserFollowWeixinActivity;)V
    .locals 3

    .prologue
    .line 19
    .line 1046
    new-instance v0, Luk/me/lewisdeane/ldialogs/h;

    invoke-direct {v0, p0}, Luk/me/lewisdeane/ldialogs/h;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0501cf

    invoke-virtual {p0, v1}, Lcom/ushaqi/zhuishushenqi/ui/user/UserFollowWeixinActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2046
    iput-object v1, v0, Luk/me/lewisdeane/ldialogs/h;->e:Ljava/lang/String;

    .line 1046
    const-string v1, "\u53d6\u6d88"

    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/user/az;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/ui/user/az;-><init>(Lcom/ushaqi/zhuishushenqi/ui/user/UserFollowWeixinActivity;)V

    .line 1047
    invoke-virtual {v0, v1, v2}, Luk/me/lewisdeane/ldialogs/h;->b(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Luk/me/lewisdeane/ldialogs/h;

    move-result-object v0

    const-string v1, "\u786e\u5b9a"

    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/user/ay;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/ui/user/ay;-><init>(Lcom/ushaqi/zhuishushenqi/ui/user/UserFollowWeixinActivity;)V

    .line 1052
    invoke-virtual {v0, v1, v2}, Luk/me/lewisdeane/ldialogs/h;->a(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Luk/me/lewisdeane/ldialogs/h;

    move-result-object v0

    .line 1062
    invoke-virtual {v0}, Luk/me/lewisdeane/ldialogs/h;->b()Landroid/app/AlertDialog;

    .line 19
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 23
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    const v0, 0x7f030064

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/user/UserFollowWeixinActivity;->setContentView(I)V

    .line 26
    const v0, 0x7f0501d0

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/user/UserFollowWeixinActivity;->b(I)V

    .line 28
    const v0, 0x7f0c0170

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/user/UserFollowWeixinActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/user/ax;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/user/ax;-><init>(Lcom/ushaqi/zhuishushenqi/ui/user/UserFollowWeixinActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    return-void
.end method
