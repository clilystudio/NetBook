.class public Lcom/ushaqi/zhuishushenqi/model/Tweet;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TYPE_ARTICLE:Ljava/lang/String; = "ARTICLE"

.field public static final TYPE_COMMENT:Ljava/lang/String; = "REVIEW"

.field public static final TYPE_RETWEET:Ljava/lang/String; = "RETWEET"

.field public static final TYPE_TWEET:Ljava/lang/String; = "TWEET"


# instance fields
.field private _id:Ljava/lang/String;

.field private book:Lcom/ushaqi/zhuishushenqi/model/Book;

.field private commented:I

.field private content:Ljava/lang/String;

.field private created:Ljava/util/Date;

.field private deleted:Z

.field private from:Lcom/ushaqi/zhuishushenqi/model/User;

.field private isHot:Z

.field public names:[Ljava/lang/String;

.field private post:Lcom/ushaqi/zhuishushenqi/model/Tweet$Post;

.field private refTweet:Lcom/ushaqi/zhuishushenqi/model/Tweet;

.field private retweeted:I

.field private score:I

.field private shareLinkUrl:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private user:Lcom/ushaqi/zhuishushenqi/model/User;

.field private votes:[Lcom/ushaqi/zhuishushenqi/model/Tweet$VoteOption;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 227
    if-nez p1, :cond_1

    .line 232
    :cond_0
    :goto_0
    return v0

    .line 228
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/ushaqi/zhuishushenqi/model/Tweet;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 231
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/Tweet;->_id:Ljava/lang/String;

    check-cast p1, Lcom/ushaqi/zhuishushenqi/model/Tweet;

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Tweet;->get_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getBook()Lcom/ushaqi/zhuishushenqi/model/Book;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/Tweet;->book:Lcom/ushaqi/zhuishushenqi/model/Book;

    return-object v0
.end method

.method public getCommented()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/model/Tweet;->commented:I

    return v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/Tweet;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getCreated()Ljava/util/Date;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/Tweet;->created:Ljava/util/Date;

    return-object v0
.end method

.method public getFrom()Lcom/ushaqi/zhuishushenqi/model/User;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/Tweet;->from:Lcom/ushaqi/zhuishushenqi/model/User;

    return-object v0
.end method

.method public getNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/Tweet;->names:[Ljava/lang/String;

    return-object v0
.end method

.method public getPost()Lcom/ushaqi/zhuishushenqi/model/Tweet$Post;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/Tweet;->post:Lcom/ushaqi/zhuishushenqi/model/Tweet$Post;

    return-object v0
.end method

.method public getRefTweet()Lcom/ushaqi/zhuishushenqi/model/Tweet;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/Tweet;->refTweet:Lcom/ushaqi/zhuishushenqi/model/Tweet;

    return-object v0
.end method

.method public getRetweeted()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/model/Tweet;->retweeted:I

    return v0
.end method

.method public getScore()I
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/model/Tweet;->score:I

    return v0
.end method

.method public getShareLinkUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/Tweet;->shareLinkUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/Tweet;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/Tweet;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Lcom/ushaqi/zhuishushenqi/model/User;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/Tweet;->user:Lcom/ushaqi/zhuishushenqi/model/User;

    return-object v0
.end method

.method public getVoteCount()I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 236
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/model/Tweet;->votes:[Lcom/ushaqi/zhuishushenqi/model/Tweet$VoteOption;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/model/Tweet;->votes:[Lcom/ushaqi/zhuishushenqi/model/Tweet$VoteOption;

    array-length v1, v1

    if-nez v1, :cond_1

    .line 242
    :cond_0
    return v0

    .line 239
    :cond_1
    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/model/Tweet;->votes:[Lcom/ushaqi/zhuishushenqi/model/Tweet$VoteOption;

    array-length v4, v3

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v2, v3, v1

    .line 240
    iget v2, v2, Lcom/ushaqi/zhuishushenqi/model/Tweet$VoteOption;->count:I

    add-int/2addr v2, v0

    .line 239
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v2

    goto :goto_0
.end method

.method public getVotes()[Lcom/ushaqi/zhuishushenqi/model/Tweet$VoteOption;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/Tweet;->votes:[Lcom/ushaqi/zhuishushenqi/model/Tweet$VoteOption;

    return-object v0
.end method

.method public get_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/Tweet;->_id:Ljava/lang/String;

    return-object v0
.end method

.method public isArticle()Z
    .locals 2

    .prologue
    .line 176
    const-string v0, "ARTICLE"

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/model/Tweet;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isDeleted()Z
    .locals 1

    .prologue
    .line 168
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/model/Tweet;->deleted:Z

    return v0
.end method

.method public isHot()Z
    .locals 1

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/model/Tweet;->isHot:Z

    return v0
.end method

.method public isRetween()Z
    .locals 2

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/model/Tweet;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RETWEET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isTweet()Z
    .locals 2

    .prologue
    .line 180
    const-string v0, "TWEET"

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/model/Tweet;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setBook(Lcom/ushaqi/zhuishushenqi/model/Book;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/Tweet;->book:Lcom/ushaqi/zhuishushenqi/model/Book;

    .line 131
    return-void
.end method

.method public setCommented(I)V
    .locals 0

    .prologue
    .line 110
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/model/Tweet;->commented:I

    .line 111
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/Tweet;->content:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setCreated(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/Tweet;->created:Ljava/util/Date;

    .line 71
    return-void
.end method

.method public setDeleted(Z)V
    .locals 0

    .prologue
    .line 172
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/model/Tweet;->deleted:Z

    .line 173
    return-void
.end method

.method public setFrom(Lcom/ushaqi/zhuishushenqi/model/User;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/Tweet;->from:Lcom/ushaqi/zhuishushenqi/model/User;

    .line 103
    return-void
.end method

.method public setIsHot(Z)V
    .locals 0

    .prologue
    .line 138
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/model/Tweet;->isHot:Z

    .line 139
    return-void
.end method

.method public setNames([Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/Tweet;->names:[Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setPost(Lcom/ushaqi/zhuishushenqi/model/Tweet$Post;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/Tweet;->post:Lcom/ushaqi/zhuishushenqi/model/Tweet$Post;

    .line 197
    return-void
.end method

.method public setRefTweet(Lcom/ushaqi/zhuishushenqi/model/Tweet;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/Tweet;->refTweet:Lcom/ushaqi/zhuishushenqi/model/Tweet;

    .line 147
    return-void
.end method

.method public setRetweeted(I)V
    .locals 0

    .prologue
    .line 78
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/model/Tweet;->retweeted:I

    .line 79
    return-void
.end method

.method public setScore(I)V
    .locals 0

    .prologue
    .line 164
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/model/Tweet;->score:I

    .line 165
    return-void
.end method

.method public setShareLinkUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/Tweet;->shareLinkUrl:Ljava/lang/String;

    .line 156
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/Tweet;->title:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/Tweet;->type:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setUser(Lcom/ushaqi/zhuishushenqi/model/User;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/Tweet;->user:Lcom/ushaqi/zhuishushenqi/model/User;

    .line 95
    return-void
.end method

.method public setVotes([Lcom/ushaqi/zhuishushenqi/model/Tweet$VoteOption;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/Tweet;->votes:[Lcom/ushaqi/zhuishushenqi/model/Tweet$VoteOption;

    .line 189
    return-void
.end method

.method public set_id(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/Tweet;->_id:Ljava/lang/String;

    .line 63
    return-void
.end method
