.class public Lcom/ushaqi/zhuishushenqi/model/UGCBookDetail$UGCBookContainer$UGCBookItem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private _id:Ljava/lang/String;

.field private author:Ljava/lang/String;

.field private cover:Ljava/lang/String;

.field private latelyFollower:I

.field private title:Ljava/lang/String;

.field private wordCount:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAuthor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/UGCBookDetail$UGCBookContainer$UGCBookItem;->author:Ljava/lang/String;

    return-object v0
.end method

.method public getCover()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/UGCBookDetail$UGCBookContainer$UGCBookItem;->cover:Ljava/lang/String;

    return-object v0
.end method

.method public getFullCover()Ljava/lang/String;
    .locals 2

    .prologue
    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/model/UGCBookDetail$UGCBookContainer$UGCBookItem;->cover:Ljava/lang/String;

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
    .line 114
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/model/UGCBookDetail$UGCBookContainer$UGCBookItem;->latelyFollower:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/UGCBookDetail$UGCBookContainer$UGCBookItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getWordCount()J
    .locals 2

    .prologue
    .line 158
    iget-wide v0, p0, Lcom/ushaqi/zhuishushenqi/model/UGCBookDetail$UGCBookContainer$UGCBookItem;->wordCount:J

    return-wide v0
.end method

.method public get_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/UGCBookDetail$UGCBookContainer$UGCBookItem;->_id:Ljava/lang/String;

    return-object v0
.end method

.method public setAuthor(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/UGCBookDetail$UGCBookContainer$UGCBookItem;->author:Ljava/lang/String;

    .line 147
    return-void
.end method

.method public setCover(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/UGCBookDetail$UGCBookContainer$UGCBookItem;->cover:Ljava/lang/String;

    .line 139
    return-void
.end method

.method public setLatelyFollower(I)V
    .locals 0

    .prologue
    .line 118
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/model/UGCBookDetail$UGCBookContainer$UGCBookItem;->latelyFollower:I

    .line 119
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/UGCBookDetail$UGCBookContainer$UGCBookItem;->title:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public setWordCount(J)V
    .locals 1

    .prologue
    .line 162
    iput-wide p1, p0, Lcom/ushaqi/zhuishushenqi/model/UGCBookDetail$UGCBookContainer$UGCBookItem;->wordCount:J

    .line 163
    return-void
.end method

.method public set_id(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/UGCBookDetail$UGCBookContainer$UGCBookItem;->_id:Ljava/lang/String;

    .line 155
    return-void
.end method
