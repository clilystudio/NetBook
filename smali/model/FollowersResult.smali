.class public Lcom/ushaqi/zhuishushenqi/model/FollowersResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private followers:[Lcom/ushaqi/zhuishushenqi/model/Follower;

.field private ok:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFollowers()[Lcom/ushaqi/zhuishushenqi/model/Follower;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/FollowersResult;->followers:[Lcom/ushaqi/zhuishushenqi/model/Follower;

    return-object v0
.end method

.method public isOk()Z
    .locals 1

    .prologue
    .line 12
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/model/FollowersResult;->ok:Z

    return v0
.end method

.method public setFollowers([Lcom/ushaqi/zhuishushenqi/model/Follower;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/FollowersResult;->followers:[Lcom/ushaqi/zhuishushenqi/model/Follower;

    .line 25
    return-void
.end method

.method public setOk(Z)V
    .locals 0

    .prologue
    .line 16
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/model/FollowersResult;->ok:Z

    .line 17
    return-void
.end method
