.class public Lcom/ushaqi/zhuishushenqi/widget/GiftGameGetButton;
.super Lcom/ushaqi/zhuishushenqi/widget/GiftGameGameButton;
.source "SourceFile"


# instance fields
.field private a:Lcom/ushaqi/zhuishushenqi/view/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/ushaqi/zhuishushenqi/widget/GiftGameGameButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 1

    .prologue
    .line 28
    const-string v0, "\u4e0b\u8f7d"

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/GiftGameGetButton;->setText(Ljava/lang/CharSequence;)V

    .line 29
    const v0, 0x7f0b0033

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/GiftGameGetButton;->setBackgroundResource(I)V

    .line 30
    return-void
.end method

.method protected final b()V
    .locals 1

    .prologue
    .line 34
    const-string v0, "\u4e0b\u8f7d\u4e2d"

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/GiftGameGetButton;->setText(Ljava/lang/CharSequence;)V

    .line 35
    const v0, 0x7f0b0031

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/GiftGameGetButton;->setBackgroundResource(I)V

    .line 36
    return-void
.end method

.method protected final c()V
    .locals 1

    .prologue
    .line 40
    const-string v0, "\u5b89\u88c5"

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/GiftGameGetButton;->setText(Ljava/lang/CharSequence;)V

    .line 41
    const v0, 0x7f0b0032

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/GiftGameGetButton;->setBackgroundResource(I)V

    .line 42
    return-void
.end method

.method protected final d()V
    .locals 2

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/GiftGameGetButton;->g()Lcom/ushaqi/zhuishushenqi/model/GiftGame;

    move-result-object v0

    .line 47
    if-nez v0, :cond_1

    .line 1066
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/GiftGameGetButton;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const-string v1, "\u5f00\u59cb\u4e0b\u8f7d..."

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/GiftGameGetButton;->e()V

    .line 1061
    :try_start_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/GiftGameGetButton;->a:Lcom/ushaqi/zhuishushenqi/view/a;

    if-eqz v0, :cond_0

    .line 1062
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/GiftGameGetButton;->a:Lcom/ushaqi/zhuishushenqi/view/a;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/view/a;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1064
    :catch_0
    move-exception v0

    .line 1065
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setBottomDialog(Lcom/ushaqi/zhuishushenqi/view/a;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/widget/GiftGameGetButton;->a:Lcom/ushaqi/zhuishushenqi/view/a;

    .line 57
    return-void
.end method
