.class final Lcom/ushaqi/zhuishushenqi/ui/post/bl;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lcom/ushaqi/zhuishushenqi/widget/CoverView;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/bj;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    const v0, 0x7f0c0023

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/CoverView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bl;->a:Lcom/ushaqi/zhuishushenqi/widget/CoverView;

    .line 128
    const v0, 0x7f0c0040

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bl;->b:Landroid/widget/TextView;

    .line 129
    const v0, 0x7f0c02d6

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bl;->c:Landroid/widget/TextView;

    .line 130
    return-void
.end method
