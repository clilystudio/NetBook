.class public Lcom/ushaqi/zhuishushenqi/model/CommentDetail;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private comment:Lcom/ushaqi/zhuishushenqi/model/PostComment;

.field private ok:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getComment()Lcom/ushaqi/zhuishushenqi/model/PostComment;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/CommentDetail;->comment:Lcom/ushaqi/zhuishushenqi/model/PostComment;

    return-object v0
.end method

.method public isOk()Z
    .locals 1

    .prologue
    .line 9
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/model/CommentDetail;->ok:Z

    return v0
.end method

.method public setComment(Lcom/ushaqi/zhuishushenqi/model/PostComment;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/CommentDetail;->comment:Lcom/ushaqi/zhuishushenqi/model/PostComment;

    .line 22
    return-void
.end method

.method public setOk(Z)V
    .locals 0

    .prologue
    .line 13
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/model/CommentDetail;->ok:Z

    .line 14
    return-void
.end method
