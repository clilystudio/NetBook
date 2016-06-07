.class public Lcom/ushaqi/zhuishushenqi/model/VipPlan;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private ok:Z

.field private plans:[Lcom/ushaqi/zhuishushenqi/model/VipPlan$Plan;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method


# virtual methods
.method public getPlans()[Lcom/ushaqi/zhuishushenqi/model/VipPlan$Plan;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/VipPlan;->plans:[Lcom/ushaqi/zhuishushenqi/model/VipPlan$Plan;

    return-object v0
.end method

.method public isOk()Z
    .locals 1

    .prologue
    .line 12
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/model/VipPlan;->ok:Z

    return v0
.end method

.method public setOk(Z)V
    .locals 0

    .prologue
    .line 16
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/model/VipPlan;->ok:Z

    .line 17
    return-void
.end method

.method public setPlans([Lcom/ushaqi/zhuishushenqi/model/VipPlan$Plan;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/VipPlan;->plans:[Lcom/ushaqi/zhuishushenqi/model/VipPlan$Plan;

    .line 25
    return-void
.end method
