.class public Lcom/ushaqi/zhuishushenqi/model/DiscussSummary;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private _id:Ljava/lang/String;

.field private author:Lcom/ushaqi/zhuishushenqi/model/Author;

.field private commentCount:I

.field private created:Ljava/util/Date;

.field public likeCount:I

.field private state:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private updated:Ljava/util/Date;

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
    .line 73
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/DiscussSummary;->author:Lcom/ushaqi/zhuishushenqi/model/Author;

    return-object v0
.end method

.method public getCommentCount()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/model/DiscussSummary;->commentCount:I

    return v0
.end method

.method public getCreated()Ljava/util/Date;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/DiscussSummary;->created:Ljava/util/Date;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/DiscussSummary;->state:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/DiscussSummary;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/DiscussSummary;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdated()Ljava/util/Date;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/DiscussSummary;->updated:Ljava/util/Date;

    return-object v0
.end method

.method public getVoteCount()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/model/DiscussSummary;->voteCount:I

    return v0
.end method

.method public get_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/DiscussSummary;->_id:Ljava/lang/String;

    return-object v0
.end method

.method public setAuthor(Lcom/ushaqi/zhuishushenqi/model/Author;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/DiscussSummary;->author:Lcom/ushaqi/zhuishushenqi/model/Author;

    .line 78
    return-void
.end method

.method public setCommentCount(I)V
    .locals 0

    .prologue
    .line 53
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/model/DiscussSummary;->commentCount:I

    .line 54
    return-void
.end method

.method public setCreated(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/DiscussSummary;->created:Ljava/util/Date;

    .line 62
    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/DiscussSummary;->state:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/DiscussSummary;->title:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/DiscussSummary;->type:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setUpdated(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/DiscussSummary;->updated:Ljava/util/Date;

    .line 70
    return-void
.end method

.method public setVoteCount(I)V
    .locals 0

    .prologue
    .line 93
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/model/DiscussSummary;->voteCount:I

    .line 94
    return-void
.end method

.method public set_id(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/DiscussSummary;->_id:Ljava/lang/String;

    .line 30
    return-void
.end method
