.class public Lcom/ushaqi/zhuishushenqi/model/TimelineResult$Temp;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/ushaqi/zhuishushenqi/model/TimelineResult;

.field private tweet:Lcom/ushaqi/zhuishushenqi/model/Tweet;

.field private user:Lcom/ushaqi/zhuishushenqi/model/User;


# direct methods
.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/model/TimelineResult;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/TimelineResult$Temp;->this$0:Lcom/ushaqi/zhuishushenqi/model/TimelineResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTweet()Lcom/ushaqi/zhuishushenqi/model/Tweet;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/TimelineResult$Temp;->tweet:Lcom/ushaqi/zhuishushenqi/model/Tweet;

    return-object v0
.end method

.method public getUser()Lcom/ushaqi/zhuishushenqi/model/User;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/TimelineResult$Temp;->user:Lcom/ushaqi/zhuishushenqi/model/User;

    return-object v0
.end method

.method public setTweet(Lcom/ushaqi/zhuishushenqi/model/Tweet;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/TimelineResult$Temp;->tweet:Lcom/ushaqi/zhuishushenqi/model/Tweet;

    .line 63
    return-void
.end method

.method public setUser(Lcom/ushaqi/zhuishushenqi/model/User;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/TimelineResult$Temp;->user:Lcom/ushaqi/zhuishushenqi/model/User;

    .line 55
    return-void
.end method
