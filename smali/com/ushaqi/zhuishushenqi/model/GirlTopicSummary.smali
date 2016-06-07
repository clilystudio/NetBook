.class public Lcom/ushaqi/zhuishushenqi/model/GirlTopicSummary;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private _id:Ljava/lang/String;

.field private author:Lcom/ushaqi/zhuishushenqi/model/Author;

.field private block:Ljava/lang/String;

.field private commentCount:I

.field private created:Ljava/util/Date;

.field private likeCount:I

.field private state:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private updated:Ljava/util/Date;

.field private voteCount:I

.field private votes:[Lcom/ushaqi/zhuishushenqi/model/Vote;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAuthor()Lcom/ushaqi/zhuishushenqi/model/Author;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/GirlTopicSummary;->author:Lcom/ushaqi/zhuishushenqi/model/Author;

    return-object v0
.end method

.method public getBlock()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/GirlTopicSummary;->block:Ljava/lang/String;

    return-object v0
.end method

.method public getCommentCount()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/model/GirlTopicSummary;->commentCount:I

    return v0
.end method

.method public getCreated()Ljava/util/Date;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/GirlTopicSummary;->created:Ljava/util/Date;

    return-object v0
.end method

.method public getLikeCount()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/model/GirlTopicSummary;->likeCount:I

    return v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/GirlTopicSummary;->state:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/GirlTopicSummary;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/GirlTopicSummary;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdated()Ljava/util/Date;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/GirlTopicSummary;->updated:Ljava/util/Date;

    return-object v0
.end method

.method public getVoteCount()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/model/GirlTopicSummary;->voteCount:I

    return v0
.end method

.method public getVotes()[Lcom/ushaqi/zhuishushenqi/model/Vote;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/GirlTopicSummary;->votes:[Lcom/ushaqi/zhuishushenqi/model/Vote;

    return-object v0
.end method

.method public get_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/GirlTopicSummary;->_id:Ljava/lang/String;

    return-object v0
.end method

.method public setAuthor(Lcom/ushaqi/zhuishushenqi/model/Author;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/GirlTopicSummary;->author:Lcom/ushaqi/zhuishushenqi/model/Author;

    .line 65
    return-void
.end method

.method public setBlock(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/GirlTopicSummary;->block:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setCommentCount(I)V
    .locals 0

    .prologue
    .line 56
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/model/GirlTopicSummary;->commentCount:I

    .line 57
    return-void
.end method

.method public setCreated(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/GirlTopicSummary;->created:Ljava/util/Date;

    .line 49
    return-void
.end method

.method public setLikeCount(I)V
    .locals 0

    .prologue
    .line 113
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/model/GirlTopicSummary;->likeCount:I

    .line 114
    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/GirlTopicSummary;->state:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/GirlTopicSummary;->title:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/GirlTopicSummary;->type:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public setUpdated(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/GirlTopicSummary;->updated:Ljava/util/Date;

    .line 89
    return-void
.end method

.method public setVoteCount(I)V
    .locals 0

    .prologue
    .line 96
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/model/GirlTopicSummary;->voteCount:I

    .line 97
    return-void
.end method

.method public setVotes([Lcom/ushaqi/zhuishushenqi/model/Vote;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/GirlTopicSummary;->votes:[Lcom/ushaqi/zhuishushenqi/model/Vote;

    .line 122
    return-void
.end method

.method public set_id(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/GirlTopicSummary;->_id:Ljava/lang/String;

    .line 33
    return-void
.end method
