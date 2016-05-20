.class public Lcom/ushaqi/zhuishushenqi/model/Post;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private _id:Ljava/lang/String;

.field private author:Lcom/ushaqi/zhuishushenqi/model/Author;

.field private book:Lcom/ushaqi/zhuishushenqi/model/PostBook;

.field private commentCount:I

.field private content:Ljava/lang/String;

.field private created:Ljava/util/Date;

.field private shareLink:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private type:Ljava/lang/String;

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
    .line 58
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/Post;->author:Lcom/ushaqi/zhuishushenqi/model/Author;

    return-object v0
.end method

.method public getBook()Lcom/ushaqi/zhuishushenqi/model/PostBook;
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/Post;->book:Lcom/ushaqi/zhuishushenqi/model/PostBook;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lcom/ushaqi/zhuishushenqi/model/PostBook;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/model/PostBook;-><init>()V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/Post;->book:Lcom/ushaqi/zhuishushenqi/model/PostBook;

    .line 68
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/Post;->book:Lcom/ushaqi/zhuishushenqi/model/PostBook;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/model/PostBook;->set_id(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/Post;->book:Lcom/ushaqi/zhuishushenqi/model/PostBook;

    const-string v1, "\u6b64\u4e66\u4e0d\u5b58\u5728"

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/model/PostBook;->setTitle(Ljava/lang/String;)V

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/Post;->book:Lcom/ushaqi/zhuishushenqi/model/PostBook;

    return-object v0
.end method

.method public getCommentCount()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/model/Post;->commentCount:I

    return v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/Post;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getCreated()Ljava/util/Date;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/Post;->created:Ljava/util/Date;

    return-object v0
.end method

.method public getShareLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/Post;->shareLink:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/Post;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/Post;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getVoteCount()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/model/Post;->voteCount:I

    return v0
.end method

.method public getVotes()[Lcom/ushaqi/zhuishushenqi/model/Vote;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/Post;->votes:[Lcom/ushaqi/zhuishushenqi/model/Vote;

    return-object v0
.end method

.method public get_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/Post;->_id:Ljava/lang/String;

    return-object v0
.end method

.method public setAuthor(Lcom/ushaqi/zhuishushenqi/model/Author;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/Post;->author:Lcom/ushaqi/zhuishushenqi/model/Author;

    .line 63
    return-void
.end method

.method public setBook(Lcom/ushaqi/zhuishushenqi/model/PostBook;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/Post;->book:Lcom/ushaqi/zhuishushenqi/model/PostBook;

    .line 76
    return-void
.end method

.method public setCommentCount(I)V
    .locals 0

    .prologue
    .line 99
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/model/Post;->commentCount:I

    .line 100
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/Post;->content:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setCreated(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/Post;->created:Ljava/util/Date;

    .line 55
    return-void
.end method

.method public setShareLink(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/Post;->shareLink:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/Post;->title:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/Post;->type:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public setVoteCount(I)V
    .locals 0

    .prologue
    .line 91
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/model/Post;->voteCount:I

    .line 92
    return-void
.end method

.method public setVotes([Lcom/ushaqi/zhuishushenqi/model/Vote;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/Post;->votes:[Lcom/ushaqi/zhuishushenqi/model/Vote;

    .line 84
    return-void
.end method

.method public set_id(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/Post;->_id:Ljava/lang/String;

    .line 31
    return-void
.end method
