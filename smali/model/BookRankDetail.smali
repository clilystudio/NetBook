.class public Lcom/ushaqi/zhuishushenqi/model/BookRankDetail;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private _id:Ljava/lang/String;

.field private author:Ljava/lang/String;

.field private cat:Ljava/lang/String;

.field private cover:Ljava/lang/String;

.field private latelyFollower:I

.field private retentionRatio:Ljava/lang/String;

.field private shortIntro:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAuthor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/BookRankDetail;->author:Ljava/lang/String;

    return-object v0
.end method

.method public getCat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/BookRankDetail;->cat:Ljava/lang/String;

    return-object v0
.end method

.method public getCover()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/BookRankDetail;->cover:Ljava/lang/String;

    return-object v0
.end method

.method public getFullCover()Ljava/lang/String;
    .locals 2

    .prologue
    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/model/BookRankDetail;->cover:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-covers"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLatelyFollower()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/model/BookRankDetail;->latelyFollower:I

    return v0
.end method

.method public getRetentionRatio()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/BookRankDetail;->retentionRatio:Ljava/lang/String;

    return-object v0
.end method

.method public getShortIntro()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/BookRankDetail;->shortIntro:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/BookRankDetail;->title:Ljava/lang/String;

    return-object v0
.end method

.method public get_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/BookRankDetail;->_id:Ljava/lang/String;

    return-object v0
.end method

.method public setAuthor(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/BookRankDetail;->author:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setCat(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/BookRankDetail;->cat:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setCover(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/BookRankDetail;->cover:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setLatelyFollower(I)V
    .locals 0

    .prologue
    .line 53
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/model/BookRankDetail;->latelyFollower:I

    .line 54
    return-void
.end method

.method public setRetentionRatio(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/BookRankDetail;->retentionRatio:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setShortIntro(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/BookRankDetail;->shortIntro:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/BookRankDetail;->title:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public set_id(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/BookRankDetail;->_id:Ljava/lang/String;

    .line 26
    return-void
.end method
