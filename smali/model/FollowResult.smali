.class public Lcom/ushaqi/zhuishushenqi/model/FollowResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private followed:Z

.field private ok:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isFollowed()Z
    .locals 1

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/model/FollowResult;->followed:Z

    return v0
.end method

.method public isOk()Z
    .locals 1

    .prologue
    .line 13
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/model/FollowResult;->ok:Z

    return v0
.end method

.method public setFollowed(Z)V
    .locals 0

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/model/FollowResult;->followed:Z

    .line 26
    return-void
.end method

.method public setOk(Z)V
    .locals 0

    .prologue
    .line 17
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/model/FollowResult;->ok:Z

    .line 18
    return-void
.end method
