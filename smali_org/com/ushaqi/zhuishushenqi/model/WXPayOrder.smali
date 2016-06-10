.class public Lcom/ushaqi/zhuishushenqi/model/WXPayOrder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private ok:Z

.field private orderId:Ljava/lang/String;

.field private payOrder:Lcom/ushaqi/zhuishushenqi/model/WXPayOrder$PayOrder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method


# virtual methods
.method public getOrderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/WXPayOrder;->orderId:Ljava/lang/String;

    return-object v0
.end method

.method public getPayOrder()Lcom/ushaqi/zhuishushenqi/model/WXPayOrder$PayOrder;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/WXPayOrder;->payOrder:Lcom/ushaqi/zhuishushenqi/model/WXPayOrder$PayOrder;

    return-object v0
.end method

.method public isOk()Z
    .locals 1

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/model/WXPayOrder;->ok:Z

    return v0
.end method

.method public setOk(Z)V
    .locals 0

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/model/WXPayOrder;->ok:Z

    .line 28
    return-void
.end method

.method public setOrderId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/WXPayOrder;->orderId:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public setPayOrder(Lcom/ushaqi/zhuishushenqi/model/WXPayOrder$PayOrder;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/WXPayOrder;->payOrder:Lcom/ushaqi/zhuishushenqi/model/WXPayOrder$PayOrder;

    .line 45
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WXPayOrder{ok="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/ushaqi/zhuishushenqi/model/WXPayOrder;->ok:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", payOrder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/model/WXPayOrder;->payOrder:Lcom/ushaqi/zhuishushenqi/model/WXPayOrder$PayOrder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", orderId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/model/WXPayOrder;->orderId:Ljava/lang/String;

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
