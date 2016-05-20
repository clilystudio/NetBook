.class public Lcom/ushaqi/zhuishushenqi/model/HotTweetResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private msg:Ljava/lang/String;

.field private ok:Z

.field private tweets:[Lcom/ushaqi/zhuishushenqi/model/TimelineResult$Temp;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/HotTweetResult;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getTweets()[Lcom/ushaqi/zhuishushenqi/model/TimelineResult$Temp;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/HotTweetResult;->tweets:[Lcom/ushaqi/zhuishushenqi/model/TimelineResult$Temp;

    return-object v0
.end method

.method public isOk()Z
    .locals 1

    .prologue
    .line 13
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/model/HotTweetResult;->ok:Z

    return v0
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/HotTweetResult;->msg:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setOk(Z)V
    .locals 0

    .prologue
    .line 17
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/model/HotTweetResult;->ok:Z

    .line 18
    return-void
.end method

.method public setTweets([Lcom/ushaqi/zhuishushenqi/model/TimelineResult$Temp;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/HotTweetResult;->tweets:[Lcom/ushaqi/zhuishushenqi/model/TimelineResult$Temp;

    .line 26
    return-void
.end method
