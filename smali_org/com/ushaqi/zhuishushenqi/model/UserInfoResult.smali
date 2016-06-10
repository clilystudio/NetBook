.class public Lcom/ushaqi/zhuishushenqi/model/UserInfoResult;
.super Lcom/ushaqi/zhuishushenqi/model/User;
.source "SourceFile"


# instance fields
.field private followers:I

.field private followings:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/model/User;-><init>()V

    return-void
.end method


# virtual methods
.method public getFollowers()I
    .locals 1

    .prologue
    .line 12
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/model/UserInfoResult;->followers:I

    return v0
.end method

.method public getFollowings()I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/model/UserInfoResult;->followings:I

    return v0
.end method

.method public setFollowers(I)V
    .locals 0

    .prologue
    .line 16
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/model/UserInfoResult;->followers:I

    .line 17
    return-void
.end method

.method public setFollowings(I)V
    .locals 0

    .prologue
    .line 24
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/model/UserInfoResult;->followings:I

    .line 25
    return-void
.end method
