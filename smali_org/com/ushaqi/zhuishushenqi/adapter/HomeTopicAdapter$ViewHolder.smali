.class Lcom/ushaqi/zhuishushenqi/adapter/HomeTopicAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field mCount:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c0177
    .end annotation
.end field

.field mCover:Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c02e4
    .end annotation
.end field

.field mTitle:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c0048
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 134
    return-void
.end method
