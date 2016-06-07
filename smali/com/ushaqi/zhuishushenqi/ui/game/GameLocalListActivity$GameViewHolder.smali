.class public Lcom/ushaqi/zhuishushenqi/ui/game/GameLocalListActivity$GameViewHolder;
.super Landroid/support/v7/widget/ay;
.source "SourceFile"


# instance fields
.field mContainer:Landroid/view/View;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c0339
    .end annotation
.end field

.field mCount:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c033e
    .end annotation
.end field

.field mIcon:Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c033a
    .end annotation
.end field

.field mIntro:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c033d
    .end annotation
.end field

.field mName:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c033c
    .end annotation
.end field

.field mPlay:Landroid/widget/Button;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c033b
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/game/GameLocalListActivity;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0, p2}, Landroid/support/v7/widget/ay;-><init>(Landroid/view/View;)V

    .line 111
    invoke-static {p0, p2}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 112
    return-void
.end method
