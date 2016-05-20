.class public Lcom/ushaqi/zhuishushenqi/model/VoteResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private code:Ljava/lang/String;

.field private msg:Ljava/lang/String;

.field private ok:Z

.field private selected:I


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
    .line 25
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/VoteResult;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/VoteResult;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getSelected()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/model/VoteResult;->selected:I

    return v0
.end method

.method public isOk()Z
    .locals 1

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/model/VoteResult;->ok:Z

    return v0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/VoteResult;->code:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/VoteResult;->msg:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setOk(Z)V
    .locals 0

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/model/VoteResult;->ok:Z

    .line 22
    return-void
.end method

.method public setSelected(I)V
    .locals 0

    .prologue
    .line 37
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/model/VoteResult;->selected:I

    .line 38
    return-void
.end method
