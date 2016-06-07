.class Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter$FeedHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field flag:Lcom/ushaqi/zhuishushenqi/widget/BookShelfFlagView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c037a
    .end annotation
.end field

.field title:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c0269
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 511
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 512
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 513
    return-void
.end method
