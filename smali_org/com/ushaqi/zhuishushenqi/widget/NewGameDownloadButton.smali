.class public Lcom/ushaqi/zhuishushenqi/widget/NewGameDownloadButton;
.super Lcom/ushaqi/zhuishushenqi/widget/GameDownloadButton;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/ushaqi/zhuishushenqi/widget/GameDownloadButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    sget-object v0, Lcom/ushaqi/zhuishushenqi/R$styleable;->NewGameDownloadButton:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 20
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ushaqi/zhuishushenqi/widget/NewGameDownloadButton;->a:Ljava/lang/String;

    .line 21
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 22
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 0

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/NewGameDownloadButton;->c()V

    .line 33
    return-void
.end method

.method protected final b()V
    .locals 1

    .prologue
    .line 37
    const-string v0, "\u4e0b\u8f7d\u4e2d"

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/NewGameDownloadButton;->setText(Ljava/lang/CharSequence;)V

    .line 38
    const v0, -0x8a8a8b

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/NewGameDownloadButton;->setTextColor(I)V

    .line 39
    const v0, 0x7f0200e1

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/NewGameDownloadButton;->setBackgroundResource(I)V

    .line 40
    return-void
.end method

.method protected c()V
    .locals 1

    .prologue
    .line 44
    const-string v0, "\u5b89\u88c5"

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/NewGameDownloadButton;->setText(Ljava/lang/CharSequence;)V

    .line 45
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/NewGameDownloadButton;->setTextColor(I)V

    .line 46
    const v0, 0x7f0200e0

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/NewGameDownloadButton;->setBackgroundResource(I)V

    .line 47
    return-void
.end method

.method protected final d()V
    .locals 1

    .prologue
    .line 51
    const-string v0, "\u6253\u5f00"

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/NewGameDownloadButton;->setText(Ljava/lang/CharSequence;)V

    .line 52
    const v0, -0xddddde

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/NewGameDownloadButton;->setTextColor(I)V

    .line 53
    const v0, 0x7f0200e3

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/NewGameDownloadButton;->setBackgroundResource(I)V

    .line 54
    return-void
.end method

.method protected final e()V
    .locals 3

    .prologue
    .line 58
    invoke-super {p0}, Lcom/ushaqi/zhuishushenqi/widget/GameDownloadButton;->e()V

    .line 59
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/NewGameDownloadButton;->h()Lcom/ushaqi/zhuishushenqi/model/Game;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 60
    const-string v0, "promotion"

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/widget/NewGameDownloadButton;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/NewGameDownloadButton;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "game_center_main_install_promotion"

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/NewGameDownloadButton;->h()Lcom/ushaqi/zhuishushenqi/model/Game;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/Game;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/NewGameDownloadButton;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "game_center_main_install"

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/NewGameDownloadButton;->h()Lcom/ushaqi/zhuishushenqi/model/Game;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/Game;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-super {p0}, Lcom/ushaqi/zhuishushenqi/widget/GameDownloadButton;->onFinishInflate()V

    .line 27
    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/ushaqi/zhuishushenqi/widget/NewGameDownloadButton;->setPadding(IIII)V

    .line 28
    return-void
.end method
