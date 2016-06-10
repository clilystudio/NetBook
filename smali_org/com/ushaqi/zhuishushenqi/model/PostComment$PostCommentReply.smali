.class public Lcom/ushaqi/zhuishushenqi/model/PostComment$PostCommentReply;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private _id:Ljava/lang/String;

.field private author:Lcom/ushaqi/zhuishushenqi/model/Author;

.field private floor:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAuthor()Lcom/ushaqi/zhuishushenqi/model/Author;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/PostComment$PostCommentReply;->author:Lcom/ushaqi/zhuishushenqi/model/Author;

    return-object v0
.end method

.method public getFloor()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/model/PostComment$PostCommentReply;->floor:I

    return v0
.end method

.method public get_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/PostComment$PostCommentReply;->_id:Ljava/lang/String;

    return-object v0
.end method

.method public setAuthor(Lcom/ushaqi/zhuishushenqi/model/Author;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/PostComment$PostCommentReply;->author:Lcom/ushaqi/zhuishushenqi/model/Author;

    .line 123
    return-void
.end method

.method public setFloor(I)V
    .locals 0

    .prologue
    .line 114
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/model/PostComment$PostCommentReply;->floor:I

    .line 115
    return-void
.end method

.method public set_id(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/PostComment$PostCommentReply;->_id:Ljava/lang/String;

    .line 107
    return-void
.end method
