.class public Lcom/ushaqi/zhuishushenqi/model/ResultStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private code:Ljava/lang/String;

.field private msg:Ljava/lang/String;

.field private ok:Z


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
    .line 24
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/ResultStatus;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/ResultStatus;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public isOk()Z
    .locals 1

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/model/ResultStatus;->ok:Z

    return v0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/ResultStatus;->code:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/ResultStatus;->msg:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setOk(Z)V
    .locals 0

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/model/ResultStatus;->ok:Z

    .line 21
    return-void
.end method
