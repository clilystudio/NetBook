.class public Lcom/ushaqi/zhuishushenqi/model/RecommendUgcRoot$RecommendUGC;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private author:Ljava/lang/String;

.field private bookCount:I

.field private collectorCount:I

.field private cover:Ljava/lang/String;

.field private desc:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAuthor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/RecommendUgcRoot$RecommendUGC;->author:Ljava/lang/String;

    return-object v0
.end method

.method public getBookCount()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/model/RecommendUgcRoot$RecommendUGC;->bookCount:I

    return v0
.end method

.method public getCollectorCount()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/model/RecommendUgcRoot$RecommendUGC;->collectorCount:I

    return v0
.end method

.method public getCover()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/RecommendUgcRoot$RecommendUGC;->cover:Ljava/lang/String;

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/RecommendUgcRoot$RecommendUGC;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getFullCover()Ljava/lang/String;
    .locals 2

    .prologue
    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/model/RecommendUgcRoot$RecommendUGC;->cover:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-covers"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/RecommendUgcRoot$RecommendUGC;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/RecommendUgcRoot$RecommendUGC;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setAuthor(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/RecommendUgcRoot$RecommendUGC;->author:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setBookCount(I)V
    .locals 0

    .prologue
    .line 54
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/model/RecommendUgcRoot$RecommendUGC;->bookCount:I

    .line 55
    return-void
.end method

.method public setCollectorCount(I)V
    .locals 0

    .prologue
    .line 94
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/model/RecommendUgcRoot$RecommendUGC;->collectorCount:I

    .line 95
    return-void
.end method

.method public setCover(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/RecommendUgcRoot$RecommendUGC;->cover:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/RecommendUgcRoot$RecommendUGC;->desc:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/RecommendUgcRoot$RecommendUGC;->id:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/RecommendUgcRoot$RecommendUGC;->title:Ljava/lang/String;

    .line 79
    return-void
.end method
