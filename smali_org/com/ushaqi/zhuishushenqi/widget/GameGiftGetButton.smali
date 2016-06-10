.class public Lcom/ushaqi/zhuishushenqi/widget/GameGiftGetButton;
.super Lcom/ushaqi/zhuishushenqi/widget/GameDownloadButton;
.source "SourceFile"


# instance fields
.field private a:Lcom/ushaqi/zhuishushenqi/widget/GameGiftItemView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/ushaqi/zhuishushenqi/widget/GameDownloadButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1057
    :try_start_0
    check-cast p1, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;

    .line 1058
    invoke-virtual {p1, p0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->a(Lcom/ushaqi/zhuishushenqi/widget/GameGiftGetButton;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1061
    :goto_0
    return-void

    .line 1059
    :catch_0
    move-exception v0

    .line 1060
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected final a()V
    .locals 1

    .prologue
    .line 26
    const-string v0, "\u4e0b\u8f7d"

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/GameGiftGetButton;->setText(Ljava/lang/CharSequence;)V

    .line 27
    const v0, 0x7f0b0033

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/GameGiftGetButton;->setBackgroundResource(I)V

    .line 28
    return-void
.end method

.method protected final b()V
    .locals 1

    .prologue
    .line 32
    const-string v0, "\u4e0b\u8f7d\u4e2d"

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/GameGiftGetButton;->setText(Ljava/lang/CharSequence;)V

    .line 33
    const v0, 0x7f0b0031

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/GameGiftGetButton;->setBackgroundResource(I)V

    .line 34
    return-void
.end method

.method protected final c()V
    .locals 1

    .prologue
    .line 38
    const-string v0, "\u5b89\u88c5"

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/GameGiftGetButton;->setText(Ljava/lang/CharSequence;)V

    .line 39
    const v0, 0x7f0b0032

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/GameGiftGetButton;->setBackgroundResource(I)V

    .line 40
    return-void
.end method

.method protected final d()V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/GameGiftGetButton;->a:Lcom/ushaqi/zhuishushenqi/widget/GameGiftItemView;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/GameGiftGetButton;->a:Lcom/ushaqi/zhuishushenqi/widget/GameGiftItemView;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/widget/GameGiftItemView;->a()V

    .line 50
    :cond_0
    return-void
.end method

.method public setGiftItemView(Lcom/ushaqi/zhuishushenqi/widget/GameGiftItemView;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/widget/GameGiftGetButton;->a:Lcom/ushaqi/zhuishushenqi/widget/GameGiftItemView;

    .line 66
    return-void
.end method
