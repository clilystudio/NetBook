.class public Lcom/ushaqi/zhuishushenqi/model/YLPayOrder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private ok:Z

.field private payOrder:Lcom/ushaqi/zhuishushenqi/model/YLPayOrder$PayOrder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method


# virtual methods
.method public getPayOrder()Lcom/ushaqi/zhuishushenqi/model/YLPayOrder$PayOrder;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/YLPayOrder;->payOrder:Lcom/ushaqi/zhuishushenqi/model/YLPayOrder$PayOrder;

    return-object v0
.end method

.method public isOk()Z
    .locals 1

    .prologue
    .line 13
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/model/YLPayOrder;->ok:Z

    return v0
.end method

.method public setOk(Z)V
    .locals 0

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/model/YLPayOrder;->ok:Z

    .line 26
    return-void
.end method

.method public setPayOrder(Lcom/ushaqi/zhuishushenqi/model/YLPayOrder$PayOrder;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/YLPayOrder;->payOrder:Lcom/ushaqi/zhuishushenqi/model/YLPayOrder$PayOrder;

    .line 22
    return-void
.end method
