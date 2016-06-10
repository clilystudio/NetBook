.class public Lcom/ushaqi/zhuishushenqi/model/FollowingsResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private code:Ljava/lang/String;

.field private followings:[Lcom/ushaqi/zhuishushenqi/model/Follower;

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
.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/FollowingsResult;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getFollowings()[Lcom/ushaqi/zhuishushenqi/model/Follower;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/FollowingsResult;->followings:[Lcom/ushaqi/zhuishushenqi/model/Follower;

    return-object v0
.end method

.method public isOk()Z
    .locals 1

    .prologue
    .line 14
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/model/FollowingsResult;->ok:Z

    return v0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/FollowingsResult;->code:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setFollowings([Lcom/ushaqi/zhuishushenqi/model/Follower;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/FollowingsResult;->followings:[Lcom/ushaqi/zhuishushenqi/model/Follower;

    .line 27
    return-void
.end method

.method public setOk(Z)V
    .locals 0

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/model/FollowingsResult;->ok:Z

    .line 19
    return-void
.end method
