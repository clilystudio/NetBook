.class public Lcom/ushaqi/zhuishushenqi/ui/BestReviewsFragment$ViewHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field avatar:Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c0023
    .end annotation
.end field

.field avatarVerify:Landroid/widget/ImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c02fd
    .end annotation
.end field

.field container:Landroid/view/View;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c02fc
    .end annotation
.end field

.field content:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c0029
    .end annotation
.end field

.field helpfulCount:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c0302
    .end annotation
.end field

.field lv:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c02ff
    .end annotation
.end field

.field rating:Lcom/ushaqi/zhuishushenqi/widget/RatingView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c0301
    .end annotation
.end field

.field time:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c0047
    .end annotation
.end field

.field title:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c0048
    .end annotation
.end field

.field user:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c02fe
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/BestReviewsFragment;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    invoke-static {p0, p2}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 221
    return-void
.end method
