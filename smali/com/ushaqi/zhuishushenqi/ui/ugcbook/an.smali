.class public final Lcom/ushaqi/zhuishushenqi/ui/ugcbook/an;
.super Landroid/support/v7/widget/ay;
.source "SourceFile"


# instance fields
.field i:Landroid/widget/TextView;

.field j:Ljava/lang/String;

.field final synthetic k:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ak;


# direct methods
.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ak;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 461
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/an;->k:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ak;

    .line 462
    invoke-direct {p0, p2}, Landroid/support/v7/widget/ay;-><init>(Landroid/view/View;)V

    .line 463
    const v0, 0x7f0c047c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/an;->i:Landroid/widget/TextView;

    .line 464
    const v0, 0x7f0c047b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 465
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ao;

    invoke-direct {v0, p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ao;-><init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/an;Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ak;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 476
    return-void
.end method
