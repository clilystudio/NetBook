.class public final Lcom/ushaqi/zhuishushenqi/adapter/x;
.super Lcom/ushaqi/zhuishushenqi/util/W;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/util/W",
        "<",
        "Lcom/ushaqi/zhuishushenqi/model/ChargePlan;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/LayoutInflater;)V
    .locals 1

    .prologue
    .line 24
    const v0, 0x7f030131

    invoke-direct {p0, p2, v0}, Lcom/ushaqi/zhuishushenqi/util/W;-><init>(Landroid/view/LayoutInflater;I)V

    .line 25
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/adapter/x;->a:Landroid/app/Activity;

    .line 27
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/adapter/x;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/x;->a:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method protected final synthetic a(ILjava/lang/Object;)V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 18
    check-cast p2, Lcom/ushaqi/zhuishushenqi/model/ChargePlan;

    .line 1040
    const-class v0, Landroid/view/View;

    invoke-virtual {p0, v2, v0}, Lcom/ushaqi/zhuishushenqi/adapter/x;->a(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1046
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/ChargePlan;->getPriceDsc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u5143"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lcom/ushaqi/zhuishushenqi/adapter/x;->a(ILjava/lang/CharSequence;)Landroid/widget/TextView;

    .line 1047
    const/4 v3, 0x2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/ChargePlan;->getCurrency()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\u8ffd\u4e66\u5e01"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/ushaqi/zhuishushenqi/adapter/x;->a(ILjava/lang/CharSequence;)Landroid/widget/TextView;

    .line 1048
    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/ChargePlan;->getVoucher()I

    move-result v3

    if-gtz v3, :cond_0

    :goto_0
    invoke-virtual {p0, v6, v1}, Lcom/ushaqi/zhuishushenqi/adapter/x;->a(IZ)Landroid/view/View;

    .line 1049
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "+"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/ushaqi/zhuishushenqi/model/ChargePlan;->getVoucher()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u8ffd\u4e66\u5238"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v6, v1}, Lcom/ushaqi/zhuishushenqi/adapter/x;->a(ILjava/lang/CharSequence;)Landroid/widget/TextView;

    .line 1050
    new-instance v1, Lcom/ushaqi/zhuishushenqi/adapter/y;

    invoke-direct {v1, p0, p2}, Lcom/ushaqi/zhuishushenqi/adapter/y;-><init>(Lcom/ushaqi/zhuishushenqi/adapter/x;Lcom/ushaqi/zhuishushenqi/model/ChargePlan;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    return-void

    :cond_0
    move v1, v2

    .line 1048
    goto :goto_0
.end method

.method protected final a()[I
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x7f0c03c7
        0x7f0c03c8
        0x7f0c03c9
        0x7f0c03ca
    .end array-data
.end method
