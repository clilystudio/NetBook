.class public Lcom/ushaqi/zhuishushenqi/model/PayChargeRecord$Order;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private _id:Ljava/lang/String;

.field private accountId:Ljava/lang/String;

.field private amount:I

.field private completed:Ljava/util/Date;

.field private created:Ljava/util/Date;

.field private currency:I

.field private payId:Ljava/lang/String;

.field private payType:Ljava/lang/String;

.field private price:F

.field private stat:Ljava/lang/String;

.field private timeflag:Ljava/lang/String;

.field private voucher:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccountId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/PayChargeRecord$Order;->accountId:Ljava/lang/String;

    return-object v0
.end method

.method public getAmount()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/model/PayChargeRecord$Order;->amount:I

    return v0
.end method

.method public getChargeString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/PayChargeRecord$Order;->completed:Ljava/util/Date;

    if-nez v0, :cond_0

    .line 150
    const-string v0, "\u672a\u652f\u4ed8"

    .line 155
    :goto_0
    return-object v0

    .line 152
    :cond_0
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/model/PayChargeRecord$Order;->voucher:I

    if-lez v0, :cond_1

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/model/PayChargeRecord$Order;->currency:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u8ffd\u4e66\u5e01+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/model/PayChargeRecord$Order;->voucher:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u8ffd\u4e66\u5238"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 155
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/model/PayChargeRecord$Order;->currency:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u8ffd\u4e66\u5e01"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getCompleted()Ljava/util/Date;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/PayChargeRecord$Order;->completed:Ljava/util/Date;

    return-object v0
.end method

.method public getCreated()Ljava/util/Date;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/PayChargeRecord$Order;->created:Ljava/util/Date;

    return-object v0
.end method

.method public getCurrency()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/model/PayChargeRecord$Order;->currency:I

    return v0
.end method

.method public getPayId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/PayChargeRecord$Order;->payId:Ljava/lang/String;

    return-object v0
.end method

.method public getPayType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/PayChargeRecord$Order;->payType:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()F
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/model/PayChargeRecord$Order;->price:F

    return v0
.end method

.method public getStat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/PayChargeRecord$Order;->stat:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeflag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/PayChargeRecord$Order;->timeflag:Ljava/lang/String;

    return-object v0
.end method

.method public getVoucher()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/model/PayChargeRecord$Order;->voucher:I

    return v0
.end method

.method public get_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/PayChargeRecord$Order;->_id:Ljava/lang/String;

    return-object v0
.end method

.method public isCompleted()Z
    .locals 2

    .prologue
    .line 137
    const-string v0, "completed"

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/model/PayChargeRecord$Order;->stat:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setAccountId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/PayChargeRecord$Order;->accountId:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setAmount(I)V
    .locals 0

    .prologue
    .line 85
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/model/PayChargeRecord$Order;->amount:I

    .line 86
    return-void
.end method

.method public setCompleted(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/PayChargeRecord$Order;->completed:Ljava/util/Date;

    .line 118
    return-void
.end method

.method public setCreated(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/PayChargeRecord$Order;->created:Ljava/util/Date;

    .line 110
    return-void
.end method

.method public setCurrency(I)V
    .locals 0

    .prologue
    .line 101
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/model/PayChargeRecord$Order;->currency:I

    .line 102
    return-void
.end method

.method public setPayId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/PayChargeRecord$Order;->payId:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setPayType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/PayChargeRecord$Order;->payType:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public setPrice(F)V
    .locals 0

    .prologue
    .line 77
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/model/PayChargeRecord$Order;->price:F

    .line 78
    return-void
.end method

.method public setStat(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/PayChargeRecord$Order;->stat:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public setTimeflag(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/PayChargeRecord$Order;->timeflag:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public setVoucher(I)V
    .locals 0

    .prologue
    .line 93
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/model/PayChargeRecord$Order;->voucher:I

    .line 94
    return-void
.end method

.method public set_id(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/PayChargeRecord$Order;->_id:Ljava/lang/String;

    .line 54
    return-void
.end method
