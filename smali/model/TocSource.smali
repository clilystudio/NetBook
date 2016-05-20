.class public Lcom/ushaqi/zhuishushenqi/model/TocSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x28aa7b0fcf5ce1b5L


# instance fields
.field private _id:Ljava/lang/String;

.field private book:Ljava/lang/String;

.field private chapterCount:I

.field private lastChapter:Ljava/lang/String;

.field private priority:Z

.field private source:Ljava/lang/String;

.field private sourceId:Ljava/lang/String;

.field private updated:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBook()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/TocSource;->book:Ljava/lang/String;

    return-object v0
.end method

.method public getChapterCount()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/model/TocSource;->chapterCount:I

    return v0
.end method

.method public getFullSource()Ljava/lang/String;
    .locals 2

    .prologue
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/model/TocSource;->source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".com"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/TocSource;->_id:Ljava/lang/String;

    return-object v0
.end method

.method public getLastChapter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/TocSource;->lastChapter:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/TocSource;->source:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/TocSource;->sourceId:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdated()Ljava/util/Date;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/TocSource;->updated:Ljava/util/Date;

    return-object v0
.end method

.method public isPriority()Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/model/TocSource;->priority:Z

    return v0
.end method

.method public setBook(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/TocSource;->book:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setChapterCount(I)V
    .locals 0

    .prologue
    .line 90
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/model/TocSource;->chapterCount:I

    .line 91
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/TocSource;->_id:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setLastChapter(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/TocSource;->lastChapter:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setPriority(Z)V
    .locals 0

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/model/TocSource;->priority:Z

    .line 83
    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/TocSource;->source:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setSourceId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/TocSource;->sourceId:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setUpdated(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/TocSource;->updated:Ljava/util/Date;

    .line 75
    return-void
.end method
