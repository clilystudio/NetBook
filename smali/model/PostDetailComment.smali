.class public Lcom/ushaqi/zhuishushenqi/model/PostDetailComment;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private comments:[Lcom/ushaqi/zhuishushenqi/model/PostComment;

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
.method public getComments()[Lcom/ushaqi/zhuishushenqi/model/PostComment;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/PostDetailComment;->comments:[Lcom/ushaqi/zhuishushenqi/model/PostComment;

    return-object v0
.end method

.method public isOk()Z
    .locals 1

    .prologue
    .line 15
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/model/PostDetailComment;->ok:Z

    return v0
.end method

.method public setComments([Lcom/ushaqi/zhuishushenqi/model/PostComment;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/PostDetailComment;->comments:[Lcom/ushaqi/zhuishushenqi/model/PostComment;

    .line 28
    return-void
.end method

.method public setOk(Z)V
    .locals 0

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/model/PostDetailComment;->ok:Z

    .line 20
    return-void
.end method
