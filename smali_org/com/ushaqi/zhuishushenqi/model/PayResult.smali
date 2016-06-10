.class public Lcom/ushaqi/zhuishushenqi/model/PayResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private chargeOrder:Lcom/ushaqi/zhuishushenqi/model/PayChargeRecord$Order;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChargeOrder()Lcom/ushaqi/zhuishushenqi/model/PayChargeRecord$Order;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/PayResult;->chargeOrder:Lcom/ushaqi/zhuishushenqi/model/PayChargeRecord$Order;

    return-object v0
.end method

.method public setChargeOrder(Lcom/ushaqi/zhuishushenqi/model/PayChargeRecord$Order;)V
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/PayResult;->chargeOrder:Lcom/ushaqi/zhuishushenqi/model/PayChargeRecord$Order;

    .line 16
    return-void
.end method
