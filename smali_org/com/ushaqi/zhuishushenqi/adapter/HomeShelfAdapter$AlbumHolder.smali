.class Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter$AlbumHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field check:Landroid/widget/CheckBox;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c0024
    .end annotation
.end field

.field cover:Lcom/ushaqi/zhuishushenqi/widget/CoverView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c02e4
    .end annotation
.end field

.field coverLoadingLayer:Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingLayer;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c002a
    .end annotation
.end field

.field desc:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c0269
    .end annotation
.end field

.field flag:Lcom/ushaqi/zhuishushenqi/widget/BookShelfFlagView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c037a
    .end annotation
.end field

.field title:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c0048
    .end annotation
.end field

.field top:Landroid/view/View;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c0072
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 470
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 471
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 472
    return-void
.end method
