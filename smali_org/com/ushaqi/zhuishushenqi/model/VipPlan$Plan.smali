.class public Lcom/ushaqi/zhuishushenqi/model/VipPlan$Plan;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private _id:Ljava/lang/String;

.field private currency:I

.field private duration:J

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrency()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/model/VipPlan$Plan;->currency:I

    return v0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 58
    iget-wide v0, p0, Lcom/ushaqi/zhuishushenqi/model/VipPlan$Plan;->duration:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/VipPlan$Plan;->name:Ljava/lang/String;

    return-object v0
.end method

.method public get_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/VipPlan$Plan;->_id:Ljava/lang/String;

    return-object v0
.end method

.method public setCurrency(I)V
    .locals 0

    .prologue
    .line 46
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/model/VipPlan$Plan;->currency:I

    .line 47
    return-void
.end method

.method public setDuration(J)V
    .locals 1

    .prologue
    .line 62
    iput-wide p1, p0, Lcom/ushaqi/zhuishushenqi/model/VipPlan$Plan;->duration:J

    .line 63
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/VipPlan$Plan;->name:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public set_id(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/VipPlan$Plan;->_id:Ljava/lang/String;

    .line 39
    return-void
.end method
