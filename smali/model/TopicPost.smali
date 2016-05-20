.class public Lcom/ushaqi/zhuishushenqi/model/TopicPost;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private _id:Ljava/lang/String;

.field private author:Lcom/ushaqi/zhuishushenqi/model/Author;

.field private block:Ljava/lang/String;

.field private book:Lcom/ushaqi/zhuishushenqi/model/PostBook;

.field private commentCount:I

.field private created:Ljava/util/Date;

.field public likeCount:I

.field private state:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private voteCount:I


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
    .line 50
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/TopicPost;->author:Lcom/ushaqi/zhuishushenqi/model/Author;

    return-object v0
.end method

.method public getBlock()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/TopicPost;->block:Ljava/lang/String;

    return-object v0
.end method

.method public getBook()Lcom/ushaqi/zhuishushenqi/model/PostBook;
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/TopicPost;->book:Lcom/ushaqi/zhuishushenqi/model/PostBook;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lcom/ushaqi/zhuishushenqi/model/PostBook;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/model/PostBook;-><init>()V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/TopicPost;->book:Lcom/ushaqi/zhuishushenqi/model/PostBook;

    .line 61
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/TopicPost;->book:Lcom/ushaqi/zhuishushenqi/model/PostBook;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/model/PostBook;->set_id(Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/TopicPost;->book:Lcom/ushaqi/zhuishushenqi/model/PostBook;

    const-string v1, "\u8be5\u4e66\u4e0d\u5b58\u5728"

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/model/PostBook;->setTitle(Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/TopicPost;->book:Lcom/ushaqi/zhuishushenqi/model/PostBook;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/model/PostBook;->setCover(Ljava/lang/String;)V

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/TopicPost;->book:Lcom/ushaqi/zhuishushenqi/model/PostBook;

    return-object v0
.end method

.method public getCommentCount()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/model/TopicPost;->commentCount:I

    return v0
.end method

.method public getCreated()Ljava/util/Date;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/TopicPost;->created:Ljava/util/Date;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/TopicPost;->state:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/TopicPost;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/TopicPost;->type:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 74
    const-string v0, ""

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/TopicPost;->type:Ljava/lang/String;

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/TopicPost;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getVoteCount()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/model/TopicPost;->voteCount:I

    return v0
.end method

.method public get_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/TopicPost;->_id:Ljava/lang/String;

    return-object v0
.end method

.method public setAuthor(Lcom/ushaqi/zhuishushenqi/model/Author;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/TopicPost;->author:Lcom/ushaqi/zhuishushenqi/model/Author;

    .line 55
    return-void
.end method

.method public setBlock(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/TopicPost;->block:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setBook(Lcom/ushaqi/zhuishushenqi/model/PostBook;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/TopicPost;->book:Lcom/ushaqi/zhuishushenqi/model/PostBook;

    .line 70
    return-void
.end method

.method public setCommentCount(I)V
    .locals 0

    .prologue
    .line 96
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/model/TopicPost;->commentCount:I

    .line 97
    return-void
.end method

.method public setCreated(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/TopicPost;->created:Ljava/util/Date;

    .line 47
    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/TopicPost;->state:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/TopicPost;->title:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/TopicPost;->type:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setVoteCount(I)V
    .locals 0

    .prologue
    .line 88
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/model/TopicPost;->voteCount:I

    .line 89
    return-void
.end method

.method public set_id(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/TopicPost;->_id:Ljava/lang/String;

    .line 31
    return-void
.end method
