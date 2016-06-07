.class public Lcom/ushaqi/zhuishushenqi/model/BookSummary;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x24c20e9635fb2f55L


# instance fields
.field private _id:Ljava/lang/String;

.field private appendComment:Ljava/lang/String;

.field private author:Ljava/lang/String;

.field private cat:Ljava/lang/String;

.field private cover:Ljava/lang/String;

.field private isSelected:Z

.field private lastChapter:Ljava/lang/String;

.field private latelyFollower:I

.field private promLink:Ljava/lang/String;

.field private retentionRatio:F

.field private shortIntro:Ljava/lang/String;

.field private tags:[Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private updated:Ljava/util/Date;

.field private wordCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppendComment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/BookSummary;->appendComment:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/BookSummary;->author:Ljava/lang/String;

    return-object v0
.end method

.method public getCat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/BookSummary;->cat:Ljava/lang/String;

    return-object v0
.end method

.method public getCover()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/BookSummary;->cover:Ljava/lang/String;

    return-object v0
.end method

.method public getFullCover()Ljava/lang/String;
    .locals 2

    .prologue
    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/model/BookSummary;->cover:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-covers"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFullCoverLarge()Ljava/lang/String;
    .locals 2

    .prologue
    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/model/BookSummary;->cover:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-coverl"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/BookSummary;->_id:Ljava/lang/String;

    return-object v0
.end method

.method public getLastChapter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/BookSummary;->lastChapter:Ljava/lang/String;

    return-object v0
.end method

.method public getLatelyFollower()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/model/BookSummary;->latelyFollower:I

    return v0
.end method

.method public getPromLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/BookSummary;->promLink:Ljava/lang/String;

    return-object v0
.end method

.method public getRetentionRatio()F
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/model/BookSummary;->retentionRatio:F

    return v0
.end method

.method public getShortIntro()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/BookSummary;->shortIntro:Ljava/lang/String;

    return-object v0
.end method

.method public getTags()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/BookSummary;->tags:[Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/BookSummary;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdated()Ljava/util/Date;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/BookSummary;->updated:Ljava/util/Date;

    return-object v0
.end method

.method public getWordCount()I
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/model/BookSummary;->wordCount:I

    return v0
.end method

.method public isSelected()Z
    .locals 1

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/model/BookSummary;->isSelected:Z

    return v0
.end method

.method public setAppendComment(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/BookSummary;->appendComment:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public setAuthor(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/BookSummary;->author:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public setCat(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/BookSummary;->cat:Ljava/lang/String;

    .line 143
    return-void
.end method

.method public setCover(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/BookSummary;->cover:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/BookSummary;->_id:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setLastChapter(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/BookSummary;->lastChapter:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setLatelyFollower(I)V
    .locals 0

    .prologue
    .line 70
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/model/BookSummary;->latelyFollower:I

    .line 71
    return-void
.end method

.method public setRetentionRatio(F)V
    .locals 0

    .prologue
    .line 110
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/model/BookSummary;->retentionRatio:F

    .line 111
    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    .prologue
    .line 118
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/model/BookSummary;->isSelected:Z

    .line 119
    return-void
.end method

.method public setShortIntro(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/BookSummary;->shortIntro:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setTags([Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/BookSummary;->tags:[Ljava/lang/String;

    .line 151
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/BookSummary;->title:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setUpdated(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/BookSummary;->updated:Ljava/util/Date;

    .line 63
    return-void
.end method

.method public setWordCount(I)V
    .locals 0

    .prologue
    .line 158
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/model/BookSummary;->wordCount:I

    .line 159
    return-void
.end method
