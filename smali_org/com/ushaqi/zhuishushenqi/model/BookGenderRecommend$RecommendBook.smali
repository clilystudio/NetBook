.class public Lcom/ushaqi/zhuishushenqi/model/BookGenderRecommend$RecommendBook;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private _id:Ljava/lang/String;

.field private author:Ljava/lang/String;

.field private chaptersCount:I

.field private cover:Ljava/lang/String;

.field private lastChapter:Ljava/lang/String;

.field private latelyFollower:I

.field private retentionRatio:D

.field private shortIntro:Ljava/lang/String;

.field final synthetic this$0:Lcom/ushaqi/zhuishushenqi/model/BookGenderRecommend;

.field private title:Ljava/lang/String;

.field private updated:Ljava/util/Date;


# direct methods
.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/model/BookGenderRecommend;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/BookGenderRecommend$RecommendBook;->this$0:Lcom/ushaqi/zhuishushenqi/model/BookGenderRecommend;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAuthor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/BookGenderRecommend$RecommendBook;->author:Ljava/lang/String;

    return-object v0
.end method

.method public getChaptersCount()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/model/BookGenderRecommend$RecommendBook;->chaptersCount:I

    return v0
.end method

.method public getCover()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/BookGenderRecommend$RecommendBook;->cover:Ljava/lang/String;

    return-object v0
.end method

.method public getLastChapter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/BookGenderRecommend$RecommendBook;->lastChapter:Ljava/lang/String;

    return-object v0
.end method

.method public getLatelyFollower()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/model/BookGenderRecommend$RecommendBook;->latelyFollower:I

    return v0
.end method

.method public getRetentionRatio()D
    .locals 2

    .prologue
    .line 100
    iget-wide v0, p0, Lcom/ushaqi/zhuishushenqi/model/BookGenderRecommend$RecommendBook;->retentionRatio:D

    return-wide v0
.end method

.method public getShortIntro()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/BookGenderRecommend$RecommendBook;->shortIntro:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/BookGenderRecommend$RecommendBook;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdated()Ljava/util/Date;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/BookGenderRecommend$RecommendBook;->updated:Ljava/util/Date;

    return-object v0
.end method

.method public get_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/BookGenderRecommend$RecommendBook;->_id:Ljava/lang/String;

    return-object v0
.end method

.method public setAuthor(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/BookGenderRecommend$RecommendBook;->author:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setChaptersCount(I)V
    .locals 0

    .prologue
    .line 112
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/model/BookGenderRecommend$RecommendBook;->chaptersCount:I

    .line 113
    return-void
.end method

.method public setCover(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/BookGenderRecommend$RecommendBook;->cover:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setLastChapter(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/BookGenderRecommend$RecommendBook;->lastChapter:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setLatelyFollower(I)V
    .locals 0

    .prologue
    .line 64
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/model/BookGenderRecommend$RecommendBook;->latelyFollower:I

    .line 65
    return-void
.end method

.method public setRetentionRatio(D)V
    .locals 1

    .prologue
    .line 68
    iput-wide p1, p0, Lcom/ushaqi/zhuishushenqi/model/BookGenderRecommend$RecommendBook;->retentionRatio:D

    .line 69
    return-void
.end method

.method public setShortIntro(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/BookGenderRecommend$RecommendBook;->shortIntro:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/BookGenderRecommend$RecommendBook;->title:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setUpdated(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/BookGenderRecommend$RecommendBook;->updated:Ljava/util/Date;

    .line 121
    return-void
.end method

.method public set_id(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/BookGenderRecommend$RecommendBook;->_id:Ljava/lang/String;

    .line 45
    return-void
.end method
