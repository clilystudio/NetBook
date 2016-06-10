.class public Lcom/ushaqi/zhuishushenqi/model/PaySheetItem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private chargeType:Lcom/ushaqi/zhuishushenqi/model/ChargeType;

.field private enable:Z

.field private iconId:I

.field private id:I

.field private textId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getItem(Landroid/content/Context;Lcom/ushaqi/zhuishushenqi/model/ChargeType;)Lcom/ushaqi/zhuishushenqi/model/PaySheetItem;
    .locals 3

    .prologue
    .line 79
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/ChargeType;->getType()Ljava/lang/String;

    move-result-object v1

    .line 80
    const/4 v0, 0x0

    .line 81
    const-string v2, "alipay"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 82
    new-instance v0, Lcom/ushaqi/zhuishushenqi/model/PaySheetItem;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/model/PaySheetItem;-><init>()V

    .line 83
    const/4 v1, 0x0

    iput v1, v0, Lcom/ushaqi/zhuishushenqi/model/PaySheetItem;->id:I

    .line 84
    const v1, 0x7f02020e

    iput v1, v0, Lcom/ushaqi/zhuishushenqi/model/PaySheetItem;->iconId:I

    .line 85
    const v1, 0x7f05013b

    iput v1, v0, Lcom/ushaqi/zhuishushenqi/model/PaySheetItem;->textId:I

    .line 101
    :cond_0
    :goto_0
    iput-object p1, v0, Lcom/ushaqi/zhuishushenqi/model/PaySheetItem;->chargeType:Lcom/ushaqi/zhuishushenqi/model/ChargeType;

    .line 102
    return-object v0

    .line 86
    :cond_1
    const-string v2, "weixinpay"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 87
    new-instance v0, Lcom/ushaqi/zhuishushenqi/model/PaySheetItem;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/model/PaySheetItem;-><init>()V

    .line 88
    const/4 v1, 0x1

    iput v1, v0, Lcom/ushaqi/zhuishushenqi/model/PaySheetItem;->id:I

    .line 89
    invoke-static {p0}, Lcom/ushaqi/zhuishushenqi/pay/weixin/a;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 90
    const v1, 0x7f02021c

    iput v1, v0, Lcom/ushaqi/zhuishushenqi/model/PaySheetItem;->iconId:I

    .line 94
    :goto_1
    const v1, 0x7f05013d

    iput v1, v0, Lcom/ushaqi/zhuishushenqi/model/PaySheetItem;->textId:I

    goto :goto_0

    .line 92
    :cond_2
    const v1, 0x7f02021e

    iput v1, v0, Lcom/ushaqi/zhuishushenqi/model/PaySheetItem;->iconId:I

    goto :goto_1

    .line 95
    :cond_3
    const-string v2, "youyifupay"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    new-instance v0, Lcom/ushaqi/zhuishushenqi/model/PaySheetItem;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/model/PaySheetItem;-><init>()V

    .line 97
    const/4 v1, 0x2

    iput v1, v0, Lcom/ushaqi/zhuishushenqi/model/PaySheetItem;->id:I

    .line 98
    const v1, 0x7f020217

    iput v1, v0, Lcom/ushaqi/zhuishushenqi/model/PaySheetItem;->iconId:I

    .line 99
    const v1, 0x7f05013c

    iput v1, v0, Lcom/ushaqi/zhuishushenqi/model/PaySheetItem;->textId:I

    goto :goto_0
.end method

.method public static getItems(Landroid/content/Context;[Lcom/ushaqi/zhuishushenqi/model/ChargeType;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Lcom/ushaqi/zhuishushenqi/model/ChargeType;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/PaySheetItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 69
    array-length v2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, p1, v0

    .line 70
    invoke-static {p0, v3}, Lcom/ushaqi/zhuishushenqi/model/PaySheetItem;->getItem(Landroid/content/Context;Lcom/ushaqi/zhuishushenqi/model/ChargeType;)Lcom/ushaqi/zhuishushenqi/model/PaySheetItem;

    move-result-object v3

    .line 71
    if-eqz v3, :cond_0

    .line 72
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 75
    :cond_1
    return-object v1
.end method


# virtual methods
.method public getChargeType()Lcom/ushaqi/zhuishushenqi/model/ChargeType;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/PaySheetItem;->chargeType:Lcom/ushaqi/zhuishushenqi/model/ChargeType;

    return-object v0
.end method

.method public getIconId()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/model/PaySheetItem;->iconId:I

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/model/PaySheetItem;->id:I

    return v0
.end method

.method public getTextId()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/model/PaySheetItem;->textId:I

    return v0
.end method

.method public isEnable()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/model/PaySheetItem;->enable:Z

    return v0
.end method

.method public setChargeType(Lcom/ushaqi/zhuishushenqi/model/ChargeType;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/PaySheetItem;->chargeType:Lcom/ushaqi/zhuishushenqi/model/ChargeType;

    .line 64
    return-void
.end method

.method public setEnable(Z)V
    .locals 0

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/model/PaySheetItem;->enable:Z

    .line 56
    return-void
.end method

.method public setIconId(I)V
    .locals 0

    .prologue
    .line 39
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/model/PaySheetItem;->iconId:I

    .line 40
    return-void
.end method

.method public setId(I)V
    .locals 0

    .prologue
    .line 31
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/model/PaySheetItem;->id:I

    .line 32
    return-void
.end method

.method public setTextId(I)V
    .locals 0

    .prologue
    .line 47
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/model/PaySheetItem;->textId:I

    .line 48
    return-void
.end method
