.class public Lcom/ushaqi/zhuishushenqi/model/TweetsResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private code:Ljava/lang/String;

.field private ok:Z

.field private tweets:[Lcom/ushaqi/zhuishushenqi/model/Tweet;

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
.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/TweetsResult;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getTweets()[Lcom/ushaqi/zhuishushenqi/model/Tweet;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/TweetsResult;->tweets:[Lcom/ushaqi/zhuishushenqi/model/Tweet;

    return-object v0
.end method

.method public getUser()Lcom/ushaqi/zhuishushenqi/model/User;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/TweetsResult;->user:Lcom/ushaqi/zhuishushenqi/model/User;

    return-object v0
.end method

.method public isOk()Z
    .locals 1

    .prologue
    .line 14
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/model/TweetsResult;->ok:Z

    return v0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/TweetsResult;->code:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setOk(Z)V
    .locals 0

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/model/TweetsResult;->ok:Z

    .line 19
    return-void
.end method

.method public setTweets([Lcom/ushaqi/zhuishushenqi/model/Tweet;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/TweetsResult;->tweets:[Lcom/ushaqi/zhuishushenqi/model/Tweet;

    .line 27
    return-void
.end method

.method public setUser(Lcom/ushaqi/zhuishushenqi/model/User;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/TweetsResult;->user:Lcom/ushaqi/zhuishushenqi/model/User;

    .line 35
    return-void
.end method
