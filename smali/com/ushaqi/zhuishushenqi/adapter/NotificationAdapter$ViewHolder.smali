.class Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field mAvatar:Lcom/ushaqi/zhuishushenqi/ui/CircularSmartImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c0023
    .end annotation
.end field

.field mMainText:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c0350
    .end annotation
.end field

.field mSubText:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c0351
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 255
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 256
    return-void
.end method
