.class public Lcom/ushaqi/zhuishushenqi/model/UGCBookListRoot$UGCBook;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private _id:Ljava/lang/String;

.field private author:Ljava/lang/String;

.field private bookCount:I

.field private collectorCount:I

.field private cover:Ljava/lang/String;

.field private desc:Ljava/lang/String;

.field private isDraft:Z

.field private title:Ljava/lang/String;

.field private updated:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAuthor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/UGCBookListRoot$UGCBook;->author:Ljava/lang/String;

    return-object v0
.end method

.method public getBookCount()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/model/UGCBookListRoot$UGCBook;->bookCount:I

    return v0
.end method

.method public getCollectorCount()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/model/UGCBookListRoot$UGCBook;->collectorCount:I

    return v0
.end method

.method public getCover()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/UGCBookListRoot$UGCBook;->cover:Ljava/lang/String;

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/UGCBookListRoot$UGCBook;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getFullCover()Ljava/lang/String;
    .locals 2

    .prologue
    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/model/UGCBookListRoot$UGCBook;->cover:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-covers"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/UGCBookListRoot$UGCBook;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdated()Ljava/util/Date;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/UGCBookListRoot$UGCBook;->updated:Ljava/util/Date;

    return-object v0
.end method

.method public get_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/UGCBookListRoot$UGCBook;->_id:Ljava/lang/String;

    return-object v0
.end method

.method public isDraft()Z
    .locals 1

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/model/UGCBookListRoot$UGCBook;->isDraft:Z

    return v0
.end method

.method public setAuthor(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/UGCBookListRoot$UGCBook;->author:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setBookCount(I)V
    .locals 0

    .prologue
    .line 57
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/model/UGCBookListRoot$UGCBook;->bookCount:I

    .line 58
    return-void
.end method

.method public setCollectorCount(I)V
    .locals 0

    .prologue
    .line 97
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/model/UGCBookListRoot$UGCBook;->collectorCount:I

    .line 98
    return-void
.end method

.method public setCover(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/UGCBookListRoot$UGCBook;->cover:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/UGCBookListRoot$UGCBook;->desc:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setIsDraft(Z)V
    .locals 0

    .prologue
    .line 117
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/model/UGCBookListRoot$UGCBook;->isDraft:Z

    .line 118
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/UGCBookListRoot$UGCBook;->title:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setUpdated(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/UGCBookListRoot$UGCBook;->updated:Ljava/util/Date;

    .line 110
    return-void
.end method

.method public set_id(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/UGCBookListRoot$UGCBook;->_id:Ljava/lang/String;

    .line 90
    return-void
.end method
