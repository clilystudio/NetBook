.class public Lcom/ushaqi/zhuishushenqi/model/YLPayOrder$PayOrder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field SubmitUrl:Ljava/lang/String;

.field orderId:Ljava/lang/String;

.field resultCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getOrderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/YLPayOrder$PayOrder;->orderId:Ljava/lang/String;

    return-object v0
.end method

.method public getResultCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/YLPayOrder$PayOrder;->resultCode:Ljava/lang/String;

    return-object v0
.end method

.method public getSubmitUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/YLPayOrder$PayOrder;->SubmitUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setOrderId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/YLPayOrder$PayOrder;->orderId:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setResultCode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/YLPayOrder$PayOrder;->resultCode:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setSubmitUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/YLPayOrder$PayOrder;->SubmitUrl:Ljava/lang/String;

    .line 47
    return-void
.end method
