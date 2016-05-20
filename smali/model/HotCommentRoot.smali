.class public Lcom/ushaqi/zhuishushenqi/model/HotCommentRoot;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private comments:[Lcom/ushaqi/zhuishushenqi/model/PostComment;

.field private ok:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getComments()[Lcom/ushaqi/zhuishushenqi/model/PostComment;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/HotCommentRoot;->comments:[Lcom/ushaqi/zhuishushenqi/model/PostComment;

    return-object v0
.end method

.method public isOk()Z
    .locals 1

    .prologue
    .line 12
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/model/HotCommentRoot;->ok:Z

    return v0
.end method

.method public setComments([Lcom/ushaqi/zhuishushenqi/model/PostComment;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/HotCommentRoot;->comments:[Lcom/ushaqi/zhuishushenqi/model/PostComment;

    .line 25
    return-void
.end method

.method public setOk(Z)V
    .locals 0

    .prologue
    .line 16
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/model/HotCommentRoot;->ok:Z

    .line 17
    return-void
.end method
