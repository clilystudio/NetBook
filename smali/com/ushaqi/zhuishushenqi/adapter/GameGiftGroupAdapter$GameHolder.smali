.class Lcom/ushaqi/zhuishushenqi/adapter/GameGiftGroupAdapter$GameHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field button:Lcom/ushaqi/zhuishushenqi/widget/GiftGameGameButton;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c0034
    .end annotation
.end field

.field desc:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c0269
    .end annotation
.end field

.field icon:Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c00a4
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
    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 180
    return-void
.end method
