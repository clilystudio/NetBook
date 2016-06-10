.class public Lcom/ushaqi/zhuishushenqi/ui/RelateBooksFragment$ViewHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field mBook:Lcom/ushaqi/zhuishushenqi/widget/CoverView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c0453
    .end annotation
.end field

.field mContainer:Landroid/view/View;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c02c9
    .end annotation
.end field

.field mTitle:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c0048
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/RelateBooksFragment;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    invoke-static {p0, p2}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 177
    return-void
.end method
