.class public Lcom/ushaqi/zhuishushenqi/model/PostPublish;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private _id:Ljava/lang/String;

.field private code:Ljava/lang/String;

.field private msg:Ljava/lang/String;

.field private ok:Z

.field private postId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/PostPublish;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/PostPublish;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getPostId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/PostPublish;->postId:Ljava/lang/String;

    return-object v0
.end method

.method public get_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/PostPublish;->_id:Ljava/lang/String;

    return-object v0
.end method

.method public isOk()Z
    .locals 1

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/model/PostPublish;->ok:Z

    return v0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/PostPublish;->code:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/PostPublish;->msg:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setOk(Z)V
    .locals 0

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/model/PostPublish;->ok:Z

    .line 24
    return-void
.end method

.method public setPostId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/PostPublish;->postId:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public set_id(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/PostPublish;->_id:Ljava/lang/String;

    .line 56
    return-void
.end method
