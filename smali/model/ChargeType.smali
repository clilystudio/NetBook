.class public Lcom/ushaqi/zhuishushenqi/model/ChargeType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x994529e38afbb5aL


# instance fields
.field private plan:[Lcom/ushaqi/zhuishushenqi/model/ChargePlan;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPlan()[Lcom/ushaqi/zhuishushenqi/model/ChargePlan;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/ChargeType;->plan:[Lcom/ushaqi/zhuishushenqi/model/ChargePlan;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/ChargeType;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setPlan([Lcom/ushaqi/zhuishushenqi/model/ChargePlan;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/ChargeType;->plan:[Lcom/ushaqi/zhuishushenqi/model/ChargePlan;

    .line 32
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/ChargeType;->type:Ljava/lang/String;

    .line 24
    return-void
.end method
