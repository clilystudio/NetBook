.class public Lcom/ushaqi/zhuishushenqi/model/ChargeTypes;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private ok:Z

.field private products:[Lcom/ushaqi/zhuishushenqi/model/ChargeType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTypes()[Lcom/ushaqi/zhuishushenqi/model/ChargeType;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/ChargeTypes;->products:[Lcom/ushaqi/zhuishushenqi/model/ChargeType;

    return-object v0
.end method

.method public isOk()Z
    .locals 1

    .prologue
    .line 15
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/model/ChargeTypes;->ok:Z

    return v0
.end method

.method public setOk(Z)V
    .locals 0

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/model/ChargeTypes;->ok:Z

    .line 20
    return-void
.end method

.method public setTypes([Lcom/ushaqi/zhuishushenqi/model/ChargeType;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/ChargeTypes;->products:[Lcom/ushaqi/zhuishushenqi/model/ChargeType;

    .line 28
    return-void
.end method
