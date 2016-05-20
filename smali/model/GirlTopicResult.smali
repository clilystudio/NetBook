.class public Lcom/ushaqi/zhuishushenqi/model/GirlTopicResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private ok:Z

.field private post:Lcom/ushaqi/zhuishushenqi/model/GirlTopic;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPost()Lcom/ushaqi/zhuishushenqi/model/GirlTopic;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/GirlTopicResult;->post:Lcom/ushaqi/zhuishushenqi/model/GirlTopic;

    return-object v0
.end method

.method public isOk()Z
    .locals 1

    .prologue
    .line 13
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/model/GirlTopicResult;->ok:Z

    return v0
.end method

.method public setOk(Z)V
    .locals 0

    .prologue
    .line 17
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/model/GirlTopicResult;->ok:Z

    .line 18
    return-void
.end method

.method public setPost(Lcom/ushaqi/zhuishushenqi/model/GirlTopic;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/GirlTopicResult;->post:Lcom/ushaqi/zhuishushenqi/model/GirlTopic;

    .line 26
    return-void
.end method
