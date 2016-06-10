.class public Lcom/ushaqi/zhuishushenqi/model/YyfPayOrder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private ok:Z

.field private orderId:Ljava/lang/String;

.field private payOrder:Lcom/ushaqi/zhuishushenqi/model/YyfPayOrder$PayOrder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method


# virtual methods
.method public getOrderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/YyfPayOrder;->orderId:Ljava/lang/String;

    return-object v0
.end method

.method public getPayOrder()Lcom/ushaqi/zhuishushenqi/model/YyfPayOrder$PayOrder;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/YyfPayOrder;->payOrder:Lcom/ushaqi/zhuishushenqi/model/YyfPayOrder$PayOrder;

    return-object v0
.end method

.method public isOk()Z
    .locals 1

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/model/YyfPayOrder;->ok:Z

    return v0
.end method

.method public setOk(Z)V
    .locals 0

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/model/YyfPayOrder;->ok:Z

    .line 28
    return-void
.end method

.method public setOrderId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/YyfPayOrder;->orderId:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public setPayOrder(Lcom/ushaqi/zhuishushenqi/model/YyfPayOrder$PayOrder;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/YyfPayOrder;->payOrder:Lcom/ushaqi/zhuishushenqi/model/YyfPayOrder$PayOrder;

    .line 36
    return-void
.end method
