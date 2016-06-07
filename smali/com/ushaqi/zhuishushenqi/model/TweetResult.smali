.class public Lcom/ushaqi/zhuishushenqi/model/TweetResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private ok:Z

.field private tweet:Lcom/ushaqi/zhuishushenqi/model/Tweet;

.field private user:Lcom/ushaqi/zhuishushenqi/model/User;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTweet()Lcom/ushaqi/zhuishushenqi/model/Tweet;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/TweetResult;->tweet:Lcom/ushaqi/zhuishushenqi/model/Tweet;

    return-object v0
.end method

.method public getUser()Lcom/ushaqi/zhuishushenqi/model/User;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/TweetResult;->user:Lcom/ushaqi/zhuishushenqi/model/User;

    return-object v0
.end method

.method public isOk()Z
    .locals 1

    .prologue
    .line 13
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/model/TweetResult;->ok:Z

    return v0
.end method

.method public setOk(Z)V
    .locals 0

    .prologue
    .line 17
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/model/TweetResult;->ok:Z

    .line 18
    return-void
.end method

.method public setTweet(Lcom/ushaqi/zhuishushenqi/model/Tweet;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/TweetResult;->tweet:Lcom/ushaqi/zhuishushenqi/model/Tweet;

    .line 26
    return-void
.end method

.method public setUser(Lcom/ushaqi/zhuishushenqi/model/User;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/TweetResult;->user:Lcom/ushaqi/zhuishushenqi/model/User;

    .line 34
    return-void
.end method
