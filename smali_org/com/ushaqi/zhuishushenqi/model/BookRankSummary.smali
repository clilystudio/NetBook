.class public Lcom/ushaqi/zhuishushenqi/model/BookRankSummary;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private _id:Ljava/lang/String;

.field private collapse:Z

.field private cover:Ljava/lang/String;

.field private monthRank:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private totalRank:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCover()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/BookRankSummary;->cover:Ljava/lang/String;

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

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/model/BookRankSummary;->cover:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIds()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 73
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/model/BookRankSummary;->_id:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/model/BookRankSummary;->monthRank:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/model/BookRankSummary;->totalRank:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 74
    return-object v0
.end method

.method public getMonthRank()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/BookRankSummary;->monthRank:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/BookRankSummary;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalRank()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/BookRankSummary;->totalRank:Ljava/lang/String;

    return-object v0
.end method

.method public get_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/BookRankSummary;->_id:Ljava/lang/String;

    return-object v0
.end method

.method public isCollapse()Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/model/BookRankSummary;->collapse:Z

    return v0
.end method

.method public setCollapse(Z)V
    .locals 0

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/model/BookRankSummary;->collapse:Z

    .line 54
    return-void
.end method

.method public setCover(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/BookRankSummary;->cover:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setMonthRank(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/BookRankSummary;->monthRank:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/BookRankSummary;->title:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setTotalRank(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/BookRankSummary;->totalRank:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public set_id(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/BookRankSummary;->_id:Ljava/lang/String;

    .line 26
    return-void
.end method
