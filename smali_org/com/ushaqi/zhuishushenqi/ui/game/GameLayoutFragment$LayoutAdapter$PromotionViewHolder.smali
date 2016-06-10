.class public Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment$LayoutAdapter$PromotionViewHolder;
.super Landroid/support/v7/widget/ay;
.source "SourceFile"


# instance fields
.field mDesc:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c0269
    .end annotation
.end field

.field mDownload:Lcom/ushaqi/zhuishushenqi/widget/NewGameDownloadButton;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c0034
    .end annotation
.end field

.field mIcon:Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c00a4
    .end annotation
.end field

.field mName:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c0040
    .end annotation
.end field

.field mPlayingCount:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c026a
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment$LayoutAdapter;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 243
    invoke-direct {p0, p2}, Landroid/support/v7/widget/ay;-><init>(Landroid/view/View;)V

    .line 244
    invoke-static {p0, p2}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 245
    return-void
.end method
