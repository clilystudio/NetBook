.class public final Lcom/ushaqi/zhuishushenqi/ui/ugcbook/al;
.super Landroid/support/v7/widget/ay;
.source "SourceFile"


# instance fields
.field i:Landroid/widget/TextView;

.field j:Landroid/widget/TableLayout;

.field final synthetic k:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ak;


# direct methods
.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ak;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 495
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/al;->k:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ak;

    .line 496
    invoke-direct {p0, p2}, Landroid/support/v7/widget/ay;-><init>(Landroid/view/View;)V

    .line 497
    const v0, 0x7f0c047f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/al;->i:Landroid/widget/TextView;

    .line 498
    const v0, 0x7f0c0480

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableLayout;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/al;->j:Landroid/widget/TableLayout;

    .line 499
    return-void
.end method
