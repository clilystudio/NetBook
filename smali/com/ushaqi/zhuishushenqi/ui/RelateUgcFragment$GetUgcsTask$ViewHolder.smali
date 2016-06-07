.class public Lcom/ushaqi/zhuishushenqi/ui/RelateUgcFragment$GetUgcsTask$ViewHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field mAuthor:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c01c5
    .end annotation
.end field

.field mContainer:Landroid/view/View;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c02c9
    .end annotation
.end field

.field mCount:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c0177
    .end annotation
.end field

.field mCover:Lcom/ushaqi/zhuishushenqi/widget/CoverView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c02e4
    .end annotation
.end field

.field mDesc:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c0269
    .end annotation
.end field

.field mTitle:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c0048
    .end annotation
.end field

.field mUpdated:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c0397
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/RelateUgcFragment$GetUgcsTask;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    invoke-static {p0, p2}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 123
    return-void
.end method
