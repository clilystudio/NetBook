.class public Lcom/ushaqi/zhuishushenqi/model/PostComment;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private _id:Ljava/lang/String;

.field private author:Lcom/ushaqi/zhuishushenqi/model/Author;

.field private content:Ljava/lang/String;

.field private created:Ljava/util/Date;

.field private floor:I

.field private likeCount:I

.field private likedInView:Z

.field private replyTo:Lcom/ushaqi/zhuishushenqi/model/PostComment$PostCommentReply;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    return-void
.end method


# virtual methods
.method public getAuthor()Lcom/ushaqi/zhuishushenqi/model/Author;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/PostComment;->author:Lcom/ushaqi/zhuishushenqi/model/Author;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/PostComment;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getCreated()Ljava/util/Date;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/PostComment;->created:Ljava/util/Date;

    return-object v0
.end method

.method public getFloor()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/model/PostComment;->floor:I

    return v0
.end method

.method public getLikeCount()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/model/PostComment;->likeCount:I

    return v0
.end method

.method public getReplyTo()Lcom/ushaqi/zhuishushenqi/model/PostComment$PostCommentReply;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/PostComment;->replyTo:Lcom/ushaqi/zhuishushenqi/model/PostComment$PostCommentReply;

    return-object v0
.end method

.method public get_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/PostComment;->_id:Ljava/lang/String;

    return-object v0
.end method

.method public isLikedInView()Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/model/PostComment;->likedInView:Z

    return v0
.end method

.method public setAuthor(Lcom/ushaqi/zhuishushenqi/model/Author;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/PostComment;->author:Lcom/ushaqi/zhuishushenqi/model/Author;

    .line 56
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/PostComment;->content:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setCreated(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/PostComment;->created:Ljava/util/Date;

    .line 47
    return-void
.end method

.method public setFloor(I)V
    .locals 0

    .prologue
    .line 63
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/model/PostComment;->floor:I

    .line 64
    return-void
.end method

.method public setLikeCount(I)V
    .locals 0

    .prologue
    .line 80
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/model/PostComment;->likeCount:I

    .line 81
    return-void
.end method

.method public setLikedInView(Z)V
    .locals 0

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/model/PostComment;->likedInView:Z

    .line 89
    return-void
.end method

.method public setReplyTo(Lcom/ushaqi/zhuishushenqi/model/PostComment$PostCommentReply;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/PostComment;->replyTo:Lcom/ushaqi/zhuishushenqi/model/PostComment$PostCommentReply;

    .line 73
    return-void
.end method

.method public set_id(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/PostComment;->_id:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public toRepliedInfo()Lcom/ushaqi/zhuishushenqi/model/ReplyeeInfo;
    .locals 4

    .prologue
    .line 92
    new-instance v0, Lcom/ushaqi/zhuishushenqi/model/CommonReplyeeInfo;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/model/PostComment;->get_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/model/PostComment;->getAuthor()Lcom/ushaqi/zhuishushenqi/model/Author;

    move-result-object v2

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/model/PostComment;->getFloor()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/ushaqi/zhuishushenqi/model/CommonReplyeeInfo;-><init>(Ljava/lang/String;Lcom/ushaqi/zhuishushenqi/model/Author;I)V

    return-object v0
.end method
