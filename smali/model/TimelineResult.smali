.class public Lcom/ushaqi/zhuishushenqi/model/TimelineResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private code:Ljava/lang/String;

.field private ok:Z

.field private retweetNames:[Lcom/ushaqi/zhuishushenqi/model/TimelineResult$Names;

.field private timeline:[Lcom/ushaqi/zhuishushenqi/model/TimelineResult$Temp;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/TimelineResult;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getRetweetNames()[Lcom/ushaqi/zhuishushenqi/model/TimelineResult$Names;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/TimelineResult;->retweetNames:[Lcom/ushaqi/zhuishushenqi/model/TimelineResult$Names;

    return-object v0
.end method

.method public getTweets()[Lcom/ushaqi/zhuishushenqi/model/TimelineResult$Temp;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/TimelineResult;->timeline:[Lcom/ushaqi/zhuishushenqi/model/TimelineResult$Temp;

    return-object v0
.end method

.method public isOk()Z
    .locals 1

    .prologue
    .line 14
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/model/TimelineResult;->ok:Z

    return v0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/TimelineResult;->code:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setOk(Z)V
    .locals 0

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/model/TimelineResult;->ok:Z

    .line 19
    return-void
.end method

.method public setRetweetNames([Lcom/ushaqi/zhuishushenqi/model/TimelineResult$Names;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/TimelineResult;->retweetNames:[Lcom/ushaqi/zhuishushenqi/model/TimelineResult$Names;

    .line 35
    return-void
.end method

.method public setTweets([Lcom/ushaqi/zhuishushenqi/model/TimelineResult$Temp;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/TimelineResult;->timeline:[Lcom/ushaqi/zhuishushenqi/model/TimelineResult$Temp;

    .line 27
    return-void
.end method
