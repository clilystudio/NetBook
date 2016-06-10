.class public Lcom/ushaqi/zhuishushenqi/model/UserVipInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
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
.method public getDueInMs()J
    .locals 2

    .prologue
    .line 31
    iget-wide v0, p0, Lcom/ushaqi/zhuishushenqi/model/UserVipInfo;->dueInMs:J

    return-wide v0
.end method

.method public getVipExpire()Ljava/util/Date;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/UserVipInfo;->vipExpire:Ljava/util/Date;

    return-object v0
.end method

.method public isOk()Z
    .locals 1

    .prologue
    .line 15
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/model/UserVipInfo;->ok:Z

    return v0
.end method

.method public setDueInMs(J)V
    .locals 1

    .prologue
    .line 35
    iput-wide p1, p0, Lcom/ushaqi/zhuishushenqi/model/UserVipInfo;->dueInMs:J

    .line 36
    return-void
.end method

.method public setOk(Z)V
    .locals 0

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/model/UserVipInfo;->ok:Z

    .line 20
    return-void
.end method

.method public setVipExpire(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/UserVipInfo;->vipExpire:Ljava/util/Date;

    .line 28
    return-void
.end method
