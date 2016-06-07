.class Lcom/ushaqi/zhuishushenqi/adapter/GameGiftGroupAdapter$GiftHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field button:Lcom/ushaqi/zhuishushenqi/widget/GiftGameGiftButton;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c032f
    .end annotation
.end field

.field desc:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c0269
    .end annotation
.end field

.field title:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c0048
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 193
    return-void
.end method
