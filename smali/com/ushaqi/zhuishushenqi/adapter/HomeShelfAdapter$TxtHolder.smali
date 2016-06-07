.class Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter$TxtHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field check:Landroid/widget/CheckBox;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c0024
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

.field top:Landroid/view/View;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c0072
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 485
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 486
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 487
    return-void
.end method
