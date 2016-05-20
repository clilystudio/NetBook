.class public Lcom/ushaqi/zhuishushenqi/model/PurchaseVipResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private code:Ljava/lang/String;

.field private dueInMs:J

.field private ok:Z

.field private vipExpire:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/PurchaseVipResult;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getDueInMs()J
    .locals 2

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/ushaqi/zhuishushenqi/model/PurchaseVipResult;->dueInMs:J

    return-wide v0
.end method

.method public getVipExpire()Ljava/util/Date;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/PurchaseVipResult;->vipExpire:Ljava/util/Date;

    return-object v0
.end method

.method public isOk()Z
    .locals 1

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/model/PurchaseVipResult;->ok:Z

    return v0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/PurchaseVipResult;->code:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setDueInMs(J)V
    .locals 1

    .prologue
    .line 36
    iput-wide p1, p0, Lcom/ushaqi/zhuishushenqi/model/PurchaseVipResult;->dueInMs:J

    .line 37
    return-void
.end method

.method public setOk(Z)V
    .locals 0

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/model/PurchaseVipResult;->ok:Z

    .line 21
    return-void
.end method

.method public setVipExpire(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/PurchaseVipResult;->vipExpire:Ljava/util/Date;

    .line 29
    return-void
.end method
