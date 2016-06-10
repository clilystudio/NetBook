.class public Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$Order;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private _id:Ljava/lang/String;

.field private created:Ljava/util/Date;

.field items:[Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$OrderItem;

.field private payType:Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$PayType;

.field private price:I

.field private type:Ljava/lang/String;

.field private useCurrency:I

.field private useVoucher:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBookName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$Order;->items:[Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$OrderItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$Order;->items:[Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$OrderItem;

    array-length v0, v0

    if-nez v0, :cond_1

    .line 144
    :cond_0
    const-string v0, ""

    .line 146
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$Order;->items:[Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$OrderItem;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$OrderItem;->getBookName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getChapterTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$Order;->items:[Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$OrderItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$Order;->items:[Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$OrderItem;

    array-length v0, v0

    if-nez v0, :cond_1

    .line 151
    :cond_0
    const-string v0, ""

    .line 153
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$Order;->items:[Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$OrderItem;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$OrderItem;->getChapterTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getCreated()Ljava/util/Date;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$Order;->created:Ljava/util/Date;

    return-object v0
.end method

.method public getItems()[Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$OrderItem;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$Order;->items:[Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$OrderItem;

    return-object v0
.end method

.method public getPayType()Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$PayType;
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$Order;->payType:Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$PayType;

    if-nez v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$Order;->type:Ljava/lang/String;

    const-string v1, "single"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 109
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$Order;->type:Ljava/lang/String;

    const-string v1, "auto"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    sget-object v0, Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$PayType;->AUTO_PURCHASE:Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$PayType;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$Order;->payType:Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$PayType;

    .line 117
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$Order;->payType:Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$PayType;

    return-object v0

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$Order;->type:Ljava/lang/String;

    const-string v1, "vip"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 112
    sget-object v0, Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$PayType;->VIP_SERVICE:Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$PayType;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$Order;->payType:Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$PayType;

    goto :goto_0

    .line 114
    :cond_2
    sget-object v0, Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$PayType;->SINGLE_CHAPTER:Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$PayType;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$Order;->payType:Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$PayType;

    goto :goto_0
.end method

.method public getPayTypeString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 129
    sget-object v0, Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$1;->$SwitchMap$com$ushaqi$zhuishushenqi$model$PayConsumeRecord$PayType:[I

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$Order;->getPayType()Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$PayType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$PayType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 139
    const-string v0, ""

    :goto_0
    return-object v0

    .line 131
    :pswitch_0
    const-string v0, "\u5355\u7ae0\u8d2d\u4e70"

    goto :goto_0

    .line 133
    :pswitch_1
    const-string v0, "\u6279\u91cf\u8d2d\u4e70"

    goto :goto_0

    .line 135
    :pswitch_2
    const-string v0, "\u81ea\u52a8\u8d2d\u4e70"

    goto :goto_0

    .line 137
    :pswitch_3
    const-string v0, "\u6574\u672c\u8d2d\u4e70"

    goto :goto_0

    .line 129
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getPrice()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$Order;->price:I

    return v0
.end method

.method public getTitles()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 121
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$Order;->items:[Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$OrderItem;

    array-length v0, v0

    new-array v1, v0, [Ljava/lang/String;

    .line 122
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$Order;->items:[Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$OrderItem;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 123
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$Order;->items:[Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$OrderItem;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$OrderItem;->getChapterTitle()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 122
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 125
    :cond_0
    return-object v1
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$Order;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUseCurrency()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$Order;->useCurrency:I

    return v0
.end method

.method public getUseVoucher()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$Order;->useVoucher:I

    return v0
.end method

.method public get_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$Order;->_id:Ljava/lang/String;

    return-object v0
.end method

.method public setCreated(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$Order;->created:Ljava/util/Date;

    .line 55
    return-void
.end method

.method public setItems([Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$OrderItem;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$Order;->items:[Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$OrderItem;

    .line 95
    return-void
.end method

.method public setPrice(I)V
    .locals 0

    .prologue
    .line 62
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$Order;->price:I

    .line 63
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$Order;->type:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public setUseCurrency(I)V
    .locals 0

    .prologue
    .line 70
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$Order;->useCurrency:I

    .line 71
    return-void
.end method

.method public setUseVoucher(I)V
    .locals 0

    .prologue
    .line 78
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$Order;->useVoucher:I

    .line 79
    return-void
.end method

.method public set_id(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$Order;->_id:Ljava/lang/String;

    .line 87
    return-void
.end method
