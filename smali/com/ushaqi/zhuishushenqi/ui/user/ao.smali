.class final Lcom/ushaqi/zhuishushenqi/ui/user/ao;
.super Landroid/support/v7/widget/ay;
.source "SourceFile"


# instance fields
.field i:Landroid/widget/TextView;

.field j:Landroid/widget/Button;

.field k:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/user/RemoveAdActivity;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 210
    invoke-direct {p0, p2}, Landroid/support/v7/widget/ay;-><init>(Landroid/view/View;)V

    .line 211
    const v0, 0x7f0c013a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/ao;->i:Landroid/widget/TextView;

    .line 212
    const v0, 0x7f0c0369

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/ao;->j:Landroid/widget/Button;

    .line 213
    const v0, 0x7f0c00ea

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/ao;->k:Landroid/view/View;

    .line 214
    return-void
.end method
