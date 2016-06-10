.class public Lcom/ushaqi/zhuishushenqi/model/AliPayOrder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private ok:Z

.field private orderId:Ljava/lang/String;

.field private payOrder:Lcom/ushaqi/zhuishushenqi/model/AliPayOrder$PayOrder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method


# virtual methods
.method public getOrderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/AliPayOrder;->orderId:Ljava/lang/String;

    return-object v0
.end method

.method public getPayOrder()Lcom/ushaqi/zhuishushenqi/model/AliPayOrder$PayOrder;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/AliPayOrder;->payOrder:Lcom/ushaqi/zhuishushenqi/model/AliPayOrder$PayOrder;

    return-object v0
.end method

.method public isOk()Z
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/model/AliPayOrder;->ok:Z

    return v0
.end method

.method public setOk(Z)V
    .locals 0

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/model/AliPayOrder;->ok:Z

    .line 31
    return-void
.end method

.method public setOrderId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/AliPayOrder;->orderId:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public setPayOrder(Lcom/ushaqi/zhuishushenqi/model/AliPayOrder$PayOrder;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/AliPayOrder;->payOrder:Lcom/ushaqi/zhuishushenqi/model/AliPayOrder$PayOrder;

    .line 39
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AliPayOrder{ok="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/ushaqi/zhuishushenqi/model/AliPayOrder;->ok:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", payOrder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/model/AliPayOrder;->payOrder:Lcom/ushaqi/zhuishushenqi/model/AliPayOrder$PayOrder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", orderId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/model/AliPayOrder;->orderId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
