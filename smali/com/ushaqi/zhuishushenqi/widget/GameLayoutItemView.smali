.class public Lcom/ushaqi/zhuishushenqi/widget/GameLayoutItemView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field mAction:Lcom/ushaqi/zhuishushenqi/widget/GameDownloadButton;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c0349
    .end annotation
.end field

.field mImage:Lcom/ushaqi/zhuishushenqi/widget/GameImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c00a1
    .end annotation
.end field

.field mSubTitle:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c009a
    .end annotation
.end field

.field mTitle:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c0048
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/widget/GameLayoutItemView;Landroid/content/Context;Lcom/ushaqi/zhuishushenqi/model/Game;)V
    .locals 3

    .prologue
    .line 25
    .line 1085
    const-string v0, "aoyou_game_click_count"

    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/Game;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1086
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/maxthon/main/InitActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1087
    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/Game;->getAndroidLink()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1088
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1089
    const-string v1, "dependence"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1090
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 25
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 42
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 43
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/GameLayoutItemView;->setOrientation(I)V

    .line 44
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/GameLayoutItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03017d

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 45
    invoke-static {p0}, Lbutterknife/ButterKnife;->inject(Landroid/view/View;)V

    .line 46
    return-void
.end method
