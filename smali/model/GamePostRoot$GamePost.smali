.class public Lcom/ushaqi/zhuishushenqi/model/GamePostRoot$GamePost;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private _id:Ljava/lang/String;

.field private author:Lcom/ushaqi/zhuishushenqi/model/Author;

.field private block:Ljava/lang/String;

.field private commentCount:I

.field private content:Ljava/lang/String;

.field private created:Ljava/util/Date;

.field private likeCount:I

.field private state:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAuthor()Lcom/ushaqi/zhuishushenqi/model/Author;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/GamePostRoot$GamePost;->author:Lcom/ushaqi/zhuishushenqi/model/Author;

    return-object v0
.end method

.method public getBlock()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/GamePostRoot$GamePost;->block:Ljava/lang/String;

    return-object v0
.end method

.method public getCommentCount()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/model/GamePostRoot$GamePost;->commentCount:I

    return v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/GamePostRoot$GamePost;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getCreated()Ljava/util/Date;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/GamePostRoot$GamePost;->created:Ljava/util/Date;

    return-object v0
.end method

.method public getLikeCount()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/model/GamePostRoot$GamePost;->likeCount:I

    return v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/GamePostRoot$GamePost;->state:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/GamePostRoot$GamePost;->type:Ljava/lang/String;

    return-object v0
.end method

.method public get_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/GamePostRoot$GamePost;->_id:Ljava/lang/String;

    return-object v0
.end method

.method public setAuthor(Lcom/ushaqi/zhuishushenqi/model/Author;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/GamePostRoot$GamePost;->author:Lcom/ushaqi/zhuishushenqi/model/Author;

    .line 66
    return-void
.end method

.method public setBlock(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/GamePostRoot$GamePost;->block:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setCommentCount(I)V
    .locals 0

    .prologue
    .line 97
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/model/GamePostRoot$GamePost;->commentCount:I

    .line 98
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/GamePostRoot$GamePost;->content:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setCreated(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/GamePostRoot$GamePost;->created:Ljava/util/Date;

    .line 114
    return-void
.end method

.method public setLikeCount(I)V
    .locals 0

    .prologue
    .line 105
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/model/GamePostRoot$GamePost;->likeCount:I

    .line 106
    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/GamePostRoot$GamePost;->state:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/GamePostRoot$GamePost;->type:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public set_id(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/GamePostRoot$GamePost;->_id:Ljava/lang/String;

    .line 50
    return-void
.end method
